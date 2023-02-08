package com.hyeonuk.myweb;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyeonuk.myweb.command.TripVO;
import com.hyeonuk.myweb.trip.service.TripMapper;

@RunWith(SpringJUnit4ClassRunner.class) //1
@ContextConfiguration("file:src/main/webapp/WEB-INF/config/root-context.xml")
public class PageTest {

	@Autowired
	TripMapper tripMapper;
	
//	
//	@Test
//	public void testCode01() {
//		
//		for(int i = 1; i <=300; i++) {
//			TripVO vo = new TripVO(0, "2023-02-08", "admin" +i, "test" + i, "example" + i, 0, null);
//			tripMapper.noticeRegist(vo);			
//		}
//		
//	}
}
