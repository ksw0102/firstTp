package com.tp.deliver.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.deliver.model.Deliver;
import com.tp.deliver.repository.DeliverRepository;
import com.tp.deliver.service.DeliverService;

@Service
public class DeliverServiceImpl implements DeliverService {

	private DeliverRepository deliverRepository;

	@Autowired
	public DeliverServiceImpl(DeliverRepository deliverRepository) {
		super();
		this.deliverRepository = deliverRepository;
	}

	@Override
	public Deliver saveDeliver(Deliver deliver) {
		return deliverRepository.save(deliver);
	}

	@Override
	public List<Deliver> getAllDelivers() {
return deliverRepository.findAll();
	}

	@Override
	public Deliver getDeliverById(long id) {
	return deliverRepository.findById(id).orElseThrow(()->null);
	}

	@Override
	public Deliver updateDeliverById(Deliver deliver, long id) {
		Deliver existingDeliver = deliverRepository.findById(id).orElseThrow(()->null);
		deliverRepository.save(existingDeliver);
		return existingDeliver;
	}

	@Override
	public void deleteDeliverById(long id) {
	deliverRepository.findById(id).orElseThrow(()->null);
	deliverRepository.deleteById(id);
	}


}
