package com.claim.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.claim.entity.Task;


@Repository
public interface TaskRepository extends JpaRepository<Task, String>{	
	Task findByTaskId(Integer task_id);
	
	@Query("select fundraiser from Task u where u.taskId = :id")
	String findByCompanyId(@Param("id")Integer id);
	
	Task findByFundraiser(String fundraiser);
	
	Task findBytaskId(int taskid);
}