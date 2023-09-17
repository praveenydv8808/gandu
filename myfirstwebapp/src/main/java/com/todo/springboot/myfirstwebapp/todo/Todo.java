package com.todo.springboot.myfirstwebapp.todo;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Size;

@Entity
public class Todo {

	@Id
	@GeneratedValue
	private int id;
	private String username;
	@Size(min = 10, message = "Enter atleast 10 charater.")
	private String discription;
	private boolean done;
	private LocalDate targetDate;
	
	public Todo() {
		
	}
	
	public Todo(int id, String username, String discription, LocalDate targetDate, boolean done) {
		super();
		this.id = id;
		this.username = username;
		this.discription = discription;
		this.done = done;
		this.targetDate = targetDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
	}

	public boolean isDone() {
		return done;
	}

	public void setDone(boolean done) {
		this.done = done;
	}

	public LocalDate getTargetDate() {
		return targetDate;
	}

	public void setTargetDate(LocalDate targetDate) {
		this.targetDate = targetDate;
	}

	@Override
	public String toString() {
		return "Todo [id=" + id + ", username=" + username + ", discription=" + discription + ", done=" + done
				+ ", targetDate=" + targetDate + "]";
	}

}
