package com.todo.springboot.myfirstwebapp.todo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import jakarta.transaction.Transactional;

@Repository
public interface TodoRepository extends JpaRepository<Todo, Integer> {
	
	public List<Todo> findByUsername(String username);

}
