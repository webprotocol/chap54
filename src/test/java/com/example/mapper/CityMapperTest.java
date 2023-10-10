package com.example.mapper;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;

import org.apache.ibatis.jdbc.SQL;
import org.junit.jupiter.api.Test;
import org.mybatis.spring.MyBatisSystemException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class CityMapperTest {

	@Autowired
	CityMapper mapper;
	
	@Test
	void autowired() {
		assertThat(mapper).isNotNull();
	}
	
	@Test
	void selectAll() {
		var list = mapper.selectAll();
		System.out.println(list);
		System.out.println(list.size());
		System.out.println(list.get(0));
		
		assertThat(list.size()).isEqualTo(4079);
	}
	
	@Test
	void selectCountryCodes() {
		var list = mapper.selectCountryCodes();
		list.forEach(m -> System.out.println(m));
//		list.forEach(m -> System.out.println(m.get("CODE")));
	}
	
	@Test
	void selectAllByCode() {
		var list = mapper.selectAllByCode(null);
		assertThat(list).isEmpty();
		
		list = mapper.selectAllByCode("");
		assertThat(list).isEmpty();
		
		list = mapper.selectAllByCode("KOR");
		list.forEach(c -> System.out.println(c));

		
//		assertThatThrownBy(() -> {		
//			mapper.selectAllByCode(null);
//		}).isInstanceOf(MyBatisSystemException.class);
	}
	
	@Test
	void searchAll1() {
		System.out.println("1. null, null");
		System.out.println(searchSQL(null, null));
		System.out.println("2. \"\", null");
		System.out.println(searchSQL("", null));
		System.out.println("3. \"KOR\", null");
		System.out.println(searchSQL("KOR", null));
		System.out.println("4. null, 10000");
		System.out.println(searchSQL(null, 1000L));
		System.out.println("5. KOR, 10000");
		System.out.println(searchSQL("KOR", 1000L));
	}
	
	String searchSQL(String code, Long population) {
		var s = new SQL();
		s.SELECT("*");
		s.FROM("city");
		if (code != null && !code.trim().equals(""))
			s.WHERE(String.format("country_code = '%s'", code));
		if (population != null)
			s.WHERE(String.format("population >= %d", population));
		
		return s.toString();
	}
	
	@Test
	void searchAll2() {
		var list = mapper.searchAll(null, null);
		assertThat(list.size()).isEqualTo(4079);
		list = mapper.searchAll("    ", null);
		assertThat(list.size()).isEqualTo(4079);
		
		list = mapper.searchAll("KOR", null);
		list = mapper.searchAll(null, 9000000L);
		list = mapper.searchAll("KOR", 9000000L);
	}
}
