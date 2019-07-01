package com.webaid.service;

import java.util.List;

import com.webaid.domain.AdviceVO;
import com.webaid.domain.SearchCriteria;

public interface AdviceService {
	public List<AdviceVO> selectAll();
	public AdviceVO selectOne(int no);
	public void insert(AdviceVO vo);
	public void updateReply(AdviceVO vo);
	public void updateCnt(int no);
	public void delete(int no);
	public List<AdviceVO> listSearch(SearchCriteria cri);
	public int listSearchCount(SearchCriteria cri);
}