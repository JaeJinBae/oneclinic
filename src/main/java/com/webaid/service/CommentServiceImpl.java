package com.webaid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webaid.domain.CommentVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.persistence.CommentDao;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentDao dao;

	@Override
	public List<CommentVO> selectAll() {
		return dao.selectAll();
	}

	@Override
	public CommentVO selectOne(int no) {
		return dao.selectOne(no);
	}

	@Override
	public CommentVO selectBefore(int no) {
		return dao.selectBefore(no);
	}

	@Override
	public CommentVO selectAfter(int no) {
		return dao.selectAfter(no);
	}

	@Override
	public void insert(CommentVO vo) {
		dao.insert(vo);
	}

	@Override
	public void update(CommentVO vo) {
		dao.update(vo);
	}

	@Override
	public void updateCnt(int no) {
		dao.updateCnt(no);
	}

	@Override
	public void delete(int no) {
		dao.delete(no);
	}

	@Override
	public List<CommentVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

}
