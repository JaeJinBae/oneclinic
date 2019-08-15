package com.webaid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webaid.domain.AdviceVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.persistence.AdviceDao;

@Service
public class AdviceServiceImpl implements AdviceService {

	@Autowired
	private AdviceDao dao;

	@Override
	public List<AdviceVO> selectAll() {
		return dao.selectAll();
	}

	@Override
	public AdviceVO selectOne(int no) {
		return dao.selectOne(no);
	}

	@Override
	public List<AdviceVO> selectNoReply() {
		return dao.selectNoReply();
	}

	@Override
	public void insert(AdviceVO vo) {
		dao.insert(vo);
	}

	@Override
	public void update(AdviceVO vo) {
		dao.update(vo);
	}

	@Override
	public void updateReply(AdviceVO vo) {
		dao.updateReply(vo);
	}

	@Override
	public void updateCnt(int no) {
		dao.updateCnt(no);
	}

	@Override
	public void updateCntDown(int no) {
		dao.updateCntDown(no);
	}

	@Override
	public void delete(int no) {
		dao.delete(no);
	}

	@Override
	public List<AdviceVO> listSearch(SearchCriteria cri) {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) {
		return dao.listSearchCount(cri);
	}

}
