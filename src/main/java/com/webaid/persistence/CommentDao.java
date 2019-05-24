package com.webaid.persistence;

import java.util.List;

import com.webaid.domain.CommentVO;
import com.webaid.domain.SearchCriteria;

public interface CommentDao {
	public List<CommentVO> selectAll();
	public CommentVO selectOne(int no);
	public CommentVO selectBefore(int no);
	public CommentVO selectAfter(int no);
	public void insert(CommentVO vo);
	public void update(CommentVO vo);
	public void updateCnt(int no);
	public void delete(int no);
	public List<CommentVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
