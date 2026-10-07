package com.mmccaw.owasp_helpdesk_lab;

import org.springframework.boot.SpringApplication;

public class TestOwaspHelpdeskLabApplication {

	public static void main(String[] args) {
		SpringApplication.from(OwaspHelpdeskLabApplication::main).with(TestcontainersConfiguration.class).run(args);
	}

}
