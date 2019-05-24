package com.webaid.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webaid.domain.CommentVO;
import com.webaid.domain.SearchCriteria;

@Repository
public class CommentDaoImpl implements CommentDao {

	private static final String namespace = "com.webaid.mappers.CommentMapper";

	@Autowired
	private SqlSession session;

	@Override
	public List<CommentVO> selectAll() {
		return session.selectList(namespace + ".selectAll");
	}

	@Override
	public CommentVO selectOne(int no) {
		return session.selectOne(namespace + ".selectOne", no);
	}

	@Override
	public CommentVO selectBefore(int no) {
		return session.selectOne(namespace + ".selectBefore", no);
	}

	@Override
	public CommentVO selectAfter(int no) {
		return session.selectOne(namespace + ".selectAfter", no);
	}

	@Override
	public void insert(CommentVO vo) {
		session.insert(namespace + ".insert", vo);
	}

	@Override
	public void update(CommentVO vo) {
		session.update(namespace + ".update", vo);
	}

	@Override
	public void updateCnt(int no) {
		session.update(namespace + ".updateCnt", no);
	}

	@Override
	public void delete(int no) {
		session.delete(namespace + ".delete", no);
	}

	@Override
	public List<CommentVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount", cri);
	}

}
