package com.helloworld.hello;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class HelloApplication {
	
	@GetMapping("/mentalidades")
	public String Exercicio1() {
		return "Persistência e Orientação ao Detalhe!";
	}
	
	@GetMapping("/objetivo")
	public String Exercicio2() {
		return "Aprender sobre Spring!";
	}

	public static void main(String[] args) {
		SpringApplication.run(HelloApplication.class, args);
	}

}
