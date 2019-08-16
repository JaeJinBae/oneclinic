package com.webaid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webaid.domain.SearchCriteria;
import com.webaid.domain.StatisticVO;
import com.webaid.persistence.StatisticDao;

@Service
public class StatisticServiceImpl implements StatisticService {

	@Autowired
	private StatisticDao dao;

	@Override
	public int selectTotalCount() {
		return dao.selectTotalCount();
	}

	@Override
	public int selectCountDate(String connectdate) {
		return dao.selectCountDate(connectdate);
	}

	@Override
	public int selectCountDevice(StatisticVO vo) {
		return dao.selectCountDevice(vo);
	}

	@Override
	public List<StatisticVO> selectByDate(SearchCriteria cri) {
		return dao.selectByDate(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) {
		return dao.listSearchCount(cri);
	}

	@Override
	public void insert(StatisticVO vo) {
		dao.insert(vo);
	}

}
