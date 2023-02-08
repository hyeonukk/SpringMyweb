package com.hyeonuk.myweb.trip.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyeonuk.myweb.command.TripVO;

@Service("tripService")
public class TripServiceImpl implements TripService{

	@Autowired
private TripMapper tripMapper;

	@Override
	public int noticeRegist(TripVO vo) {
		
		return tripMapper.noticeRegist(vo);
	}
	//tripMapper의 noticeRegist(vo) 리턴

	@Override
	public ArrayList<TripVO> getList() {
		return tripMapper.getList();
	}

	@Override
	public TripVO getContent(int tno) {
		return tripMapper.getContent(tno);
	}

	@Override
	public int noticeModify(TripVO vo) {
		return tripMapper.noticeModify(vo);
	}

	@Override
	public int noticeDelete(int tno) {
		return tripMapper.noticeDelete(tno);
	
		
	}

	@Override
	public void upHit(int tno) {
		tripMapper.upHit(tno);
	}

	@Override
	public ArrayList<TripVO> getPrevNext(int tno) {
		return tripMapper.getPrevNext(tno);
	}	
}
