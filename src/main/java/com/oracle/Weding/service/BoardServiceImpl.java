package com.oracle.Weding.service;

import java.util.List;  

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.Weding.dao.BoardDao;
import com.oracle.Weding.dto.Board;

import lombok.extern.java.Log;

@Service
@Log
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDao bd;
	
	@Override
	public int total() {
		System.out.println("BoardServiceImpl total Start...");
		int totCnt = bd.total();
		System.out.println("BoardServiceImpl total totCnt ->" + totCnt);
		return totCnt;
	}

	@Override
	public List<Board> listBoard(Board board) {
		List<Board> boardList = null;
		System.out.println("BoardServiceImpl listBoard Start...");
		boardList = bd.listBoard(board);
		System.out.println("BoardServiceImpl listBoard boardList.size() -> " + boardList.size());
		return boardList;
	}
	
	/**
	 * 관리자 qna 게시글 갯수
	 */
	@Override
	public int qnaBoardListTotal() {
		int totCnt = bd.qnaBoardListTotal();
		log.info("qnaBoardListTotal totCnt: " + totCnt);
		return totCnt;
	}
	
	/**
	 * 관리자 qna
	 */
	@Override
	public List<Board> qnaBoardList(Board board) {
		List<Board> qnaBoardList = bd.qnaBoardList(board);
		return qnaBoardList;
	}

	/**
	 * 리뷰 목록
	 */
	@Override
	public List<Board> reviewBoardList(Board board) {
		List<Board> reviewBoardList = bd.reviewBoardList(board);
		return reviewBoardList;
	}

	/**
	 * 리뷰 작성
	 */
	@Override
	public int reviewBoardWrite(Board board) {
		int result = bd.reviewBoardWrite(board);
		return result;
	}

	/**
	 * 리뷰 글 목록 갯수
	 */
	@Override
	public int reviewBoardListTotal() {
		int totCnt = bd.reviewBoardListTotal();
		log.info("reviewBoardListTotal totCnt: " + totCnt);
		return totCnt;
	}

	/**
	 * 글 보기
	 */
	@Override
	public Board detail(String b_num) {
		Board board = bd.detail(b_num);
		return board;
	}
	
	
	
	


	
	
	
	

}
