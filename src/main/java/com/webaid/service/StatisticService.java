package com.webaid.service;

import java.util.List;

import com.webaid.domain.SearchCriteria;
import com.webaid.domain.StatisticVO;

public interface StatisticService {
	public int selectTotalCount();
	public int selectCountDate(String connectdate);
	public int selectCountDevice(StatisticVO vo);
	public List<StatisticVO> selectByDate(SearchCriteria cri);
	public int listSearchCount(SearchCriteria cri);
	public void insert(StatisticVO vo);
}
