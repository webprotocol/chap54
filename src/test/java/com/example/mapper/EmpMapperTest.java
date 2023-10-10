package com.example.mapper;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.ApplicationContext;

@SpringBootTest
public class EmpMapperTest {

	@Autowired
	EmpMapper mapper;
	
	@Autowired
	ApplicationContext factory;
	
	@Test
	void autowire() {
		assertThat(factory).isNotNull();
		var mapper = factory.getBean(EmpMapper.class);
		assertThat(mapper).isNotNull();
		System.out.println(this.mapper == mapper);
		System.out.println(this.mapper.equals(mapper));
		System.out.println(this.mapper.equals(this.mapper));
		assertThat(this.mapper == mapper).isTrue();
	}
	
	@Test
	void selectAll() {
		var list = mapper.selectAll();
		System.out.println(list);
		assertThat(list).isNotNull();
		assertThat(list).isNotEmpty();
		assertThat(list.size()).isEqualTo(14);
	}
	
	@Test
	void selectByDeptno() {
		var list = mapper.selectByDeptno(10);
		assertThat(list.size()).isEqualTo(3);
		
		list = mapper.selectByDeptno(20);
		assertThat(list.size()).isEqualTo(5);
		
		list = mapper.selectByDeptno(30);
		assertThat(list.size()).isEqualTo(6);
		
		list = mapper.selectByDeptno(40);
		assertThat(list.size()).isEqualTo(0);
	}
	
	@Test
	void selectBySearch() {
		var list = mapper.selectBySearch(null, "");
		System.out.println(list);
		assertThat(list.size()).isEqualTo(14);
		
		list = mapper.selectBySearch(null, "사");
		System.out.println(list);
		assertThat(list.size()).isEqualTo(5);
		
		list = mapper.selectBySearch(20, "");
		System.out.println(list);
		assertThat(list.size()).isEqualTo(5);
		
		list = mapper.selectBySearch(20, "사");
		System.out.println(list);
		assertThat(list.size()).isEqualTo(3);
		
		
	}
	
}
