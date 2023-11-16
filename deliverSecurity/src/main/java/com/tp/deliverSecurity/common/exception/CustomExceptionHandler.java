package com.tp.deliverSecurity.common.exception;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tp.deliverSecurity.common.dto.BaseResponse;
import com.tp.deliverSecurity.common.status.ResultCode;

@ControllerAdvice
public class CustomExceptionHandler {

	@ExceptionHandler(MethodArgumentNotValidException.class)
	@ResponseBody
	protected ResponseEntity<BaseResponse<Map<String, String>>> handleValidationExceptions(
			MethodArgumentNotValidException ex) {
		Map<String, String> errors = new HashMap<String, String>();
		ex.getBindingResult().getAllErrors().forEach(error -> {
			String fieldName = ((FieldError) error).getField();
			String errorMessage = error.getDefaultMessage();
			errors.put(fieldName, errorMessage != null ? errorMessage : "This Message is Not Exception Message");
		});
		return ResponseEntity.badRequest()
				.body(new BaseResponse<>(ResultCode.ERROR.name(), errors, ResultCode.ERROR.getMsg()));
	}

	@ExceptionHandler(InvalidInputException.class)
	protected ResponseEntity<BaseResponse<Map<String, String>>> invalidInputExecption(InvalidInputException ex) {
		Map<String, String> errors = Map.of(ex.getFieldName(),
				(ex.getMessage() != null ? ex.getMessage() : "This Message is Not Exception Message!!!"));
		return new ResponseEntity<>(new BaseResponse<>(ResultCode.ERROR.name(), errors, ResultCode.ERROR.getMsg()),
				HttpStatus.BAD_REQUEST);
	}

	@ExceptionHandler(Exception.class)
	protected ResponseEntity<BaseResponse<Map<String, String>>> defaultException(Exception ex) {
		Map<String, String> errors = Map.of("미처리에러",
				(ex.getMessage() != null ? ex.getMessage() : "This is Not Exception Message"));
		return new ResponseEntity<>(new BaseResponse<>(ResultCode.ERROR.name(), errors, ResultCode.ERROR.getMsg()),
				HttpStatus.BAD_REQUEST);
	}
}
