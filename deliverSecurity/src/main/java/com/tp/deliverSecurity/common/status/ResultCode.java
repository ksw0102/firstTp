package com.tp.deliverSecurity.common.status;

public enum ResultCode {

	SUCCESS("정상 처리 완료."),
	ERROR("에러 발생 처리 실패");
	
	private final String msg;
	
	private ResultCode(String msg) {
		this.msg = msg;
	}
	
	public String getMsg() {
		return msg;
	}
}
