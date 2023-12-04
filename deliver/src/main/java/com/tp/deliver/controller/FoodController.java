package com.tp.deliver.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.tp.deliver.model.Food;
import com.tp.deliver.service.FoodService;

@RestController
@RequestMapping("/foods")
@CrossOrigin(origins = "http://localhost:3000", methods = { RequestMethod.GET, RequestMethod.POST })
public class FoodController {

	private FoodService foodService;

	@Autowired
	public FoodController(FoodService foodService) {
		super();
		this.foodService = foodService;
	}

	@GetMapping("test")
	public ResponseEntity<String> test() {
		return new ResponseEntity<>("테스트 성공!", HttpStatus.OK);
	}

	@PostMapping()
	public ResponseEntity<Food> saveFood(@RequestBody Food food) {
		return new ResponseEntity<Food>(foodService.saveFood(food), HttpStatus.CREATED);
	}

	@GetMapping()
	public ResponseEntity<List<Food>> getAllFoods() {
		return new ResponseEntity<List<Food>>(foodService.getAllFoods(), HttpStatus.OK);
	}

	@GetMapping("{id}")
	public ResponseEntity<Food> getFoodById(@PathVariable long id) {
		return new ResponseEntity<Food>(foodService.getFoodById(id), HttpStatus.OK);
	}

//	foods 부분

}
