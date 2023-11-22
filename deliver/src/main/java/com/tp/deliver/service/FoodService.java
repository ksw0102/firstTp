package com.tp.deliver.service;

import java.util.List;

import com.tp.deliver.model.Food;

public interface FoodService {
Food saveFood(Food food);
List<Food> getAllFoods();
Food getFoodById(long id);
Food updateFoodById(Food food, long id);
void deleteFoodById(long id);


}
