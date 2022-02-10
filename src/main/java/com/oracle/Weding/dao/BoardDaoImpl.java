package com.oracle.Weding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oracle.Weding.dto.Board;

import lombok.extern.java.Log;


@Repository
@Log
public class BoardDaoImpl implements BoardDao {
	@Autowired
	private SqlSession session;
	
	@Override
	public int total() {
		int tot = 0;
		System.out.println("BoardDaoImpl total Start...");
		try {
			tot = session.selectOne("boardTotal"); // mapping id 바꿔주세요
		}catch (Exception e) {
			System.out.println("BoardDaoImpl total Exception -> " + e.getMessage());
		}
		return tot;
	}

	@Override
	public List<Board> listBoard(Board board) {
		List<Board> boardList = null;
		System.out.println("BoardDaoImpl listBoard Start...");
		try {
			boardList = session.selectList("boardList", board); // mapping id 바꿔주세요
		} catch (Exception e) {
			System.out.println("BoardDaoImpl listBoard Exception -> " + e.getMessage());
		}
		return boardList;
	}

	
	/**
	 * 관리자 qna 목록 갯수
	 */
	@Override
	public int qnaBoardListTotal() {
		int tot = 0;
		try {
			tot = session.selectOne("qnaBoardListTotal");
		}catch (Exception e) {
			System.out.println("qnaBoardListTotal Exception -> " + e.getMessage());
		}
		return tot;
	}

	/**
	 * 관리자 qna
	 */
	@Override
	public List<Board> qnaBoardList(Board board) {
		List<Board> qnaBoardList = null;
		try {
			qnaBoardList = session.selectList("qnaBoardList", board);
			log.info(qnaBoardList == null? "qnaBoardList is null":"qnaBoardList is not null");
		} catch (Exception e) {
			log.info("qnaBoardList(): " + e.getMessage());
		}
		return qnaBoardList;
	}

	/**
	 * 리뷰 목록
	 */
	@Override
	public List<Board> reviewBoardList(Board board) {
		List<Board> reviewBoardList = null;
		try {
			reviewBoardList = session.selectList("reviewBoardList", board);
			log.info(reviewBoardList == null? "qnaBoardList is null":"qnaBoardList is not null");
		} catch (Exception e) {
			log.info("reviewBoardList(): " + e.getMessage());
		}
		return reviewBoardList;
	}

	/**
	 * 리뷰 작성
	 */
	@Override
	public int reviewBoardWrite(Board board) {
		int result = 0;
		try {
			result = session.insert("reviewBoardWrite", board);
		} catch (Exception e) {
			log.info("reviewBoardWrite(): " + e.getMessage());
		}
		return result;
	}

	/**
	 * 리뷰 글 목록 갯수
	 */
	@Override
	public int reviewBoardListTotal() {
		int tot = 0;
		try {
			tot = session.selectOne("reviewBoardListTotal");
		}catch (Exception e) {
			System.out.println("reviewBoardListTotal Exception -> " + e.getMessage());
		}
		return tot;
	}
	
	/**
	 * 글 보기
	 */
	@Override
	public Board detail(String b_num) {
		Board board = null;
		try {
			board = session.selectOne("boardDetailView", b_num);
		} catch (Exception e) {
			log.info("detail : " + e.getMessage());
		}
		return board;
	}
	
	
	
	
	
	
	

	
}
