package com.tp.deliver.service;

import java.util.List;

import com.tp.deliver.model.Deliver;
import com.tp.deliver.model.Food;

public interface DeliverService {
Deliver saveDeliver(Deliver deliver);
List<Deliver> getAllDelivers();
Deliver getDeliverById(long id);
Deliver updateDeliverById(Deliver deliver, long id);
void deleteDeliverById(long id);


}
