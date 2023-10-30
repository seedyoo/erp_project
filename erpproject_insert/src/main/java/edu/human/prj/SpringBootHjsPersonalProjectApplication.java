package edu.human.prj;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan(value = {"edu.human.prj.mapper"})
@SpringBootApplication
public class SpringBootHjsPersonalProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootHjsPersonalProjectApplication.class, args);
	}

}
