package com.tp.deliver.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.tp.deliver.model.Food;
import com.tp.deliver.repository.FoodRepository;
import com.tp.deliver.service.FoodService;

public class FoodServiceImpl implements FoodService {
	
	private FoodRepository foodRepository;

	@Autowired
	public FoodServiceImpl(FoodRepository foodRepository) {
		super();
		this.foodRepository = foodRepository;
	}
	@Override
	public Food saveFood(Food food) {
return foodRepository.save(food);
	}

	@Override
	public List<Food> getAllFoods() {
return foodRepository.findAll();
	}

	@Override
	public Food getFoodById(long id) {
return foodRepository.findById(id).orElseThrow(()->null);
	}

	@Override
	public Food updateFoodById(Food food, long id) {
Food existingFood = foodRepository.findById(id).orElseThrow(()->null);
foodRepository.save(existingFood);
return existingFood;
	}

	@Override
	public void deleteFoodById(long id) {
		foodRepository.findById(id).orElseThrow(()-> null);
		foodRepository.deleteById(id);

	}
}
