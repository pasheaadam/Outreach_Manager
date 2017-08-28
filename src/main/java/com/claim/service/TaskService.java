package com.claim.service;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.claim.entity.Task;
import com.claim.repository.TaskRepository;

@Service
public class TaskService {

	@Autowired
	private TaskRepository taskRepository;
		
	@Transactional
	public void save(Task task){
		this.taskRepository.save(task);
	}
	
	public Task getByFundraiser(String fundraiser)
	{
		return taskRepository.findByFundraiser(fundraiser);	
	}
	
	@Transactional
	public Task getByTaskId(int id)
	{
		return taskRepository.findBytaskId(id);
	}
}