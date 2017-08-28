package com.claim.controller;

import java.util.Iterator;
import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;

import org.springframework.transaction.TransactionSystemException;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@ControllerAdvice
public class ExceptionController {


	@ExceptionHandler(value=org.springframework.web.bind.ServletRequestBindingException.class)
	public String invalidSession(Exception e)
	{
		System.out.println("                      invalid seession                ");
		e.printStackTrace();
		return "redirect:login";
		
	}
	
	@ResponseBody
	@ExceptionHandler
	public String exception(Exception e)
	{
		System.out.println("*****exception******");
		e.printStackTrace();
		return e+""+e.getMessage()+"<br>"+e.getCause()+"<br><hr>";
	}
}

