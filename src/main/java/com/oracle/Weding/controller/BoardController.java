package com.oracle.Weding.controller;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oracle.Weding.dto.Board;
import com.oracle.Weding.service.BoardService;
import com.oracle.Weding.service.Paging;

import lombok.extern.java.Log;

@Controller
@Log
public class BoardController {
	
	@Autowired private BoardService bs;
	
	@RequestMapping(value = "/board/boardList")
	public String boardlist(Board board, String currentPage, Model model) {
		System.out.println("BoardController list Start...");
		int total = bs.total();
		System.out.println("BoardController total ->" + total);
		System.out.println("BoardController currentPage -> " + currentPage);
		
		Paging pg = new Paging(total, currentPage);
		board.setStart(pg.getStart());
		board.setEnd(pg.getEnd());
		List<Board> listBoard = bs.listBoard(board);
		System.out.println("BoardController list listBoard.size() ->" + listBoard.size());
		model.addAttribute("listBoard", listBoard);
		model.addAttribute("pg", pg);
		model.addAttribute("total", total);
		return "/board/boardList";
	}
	
	/**
	 * 관리자 Q&A 리스트
	 * 작성자 - 장동호
	 * 목적 - 관리자 Q&A 리스트 출력
	 *
	 * @param board
	 * @param currentPage
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "qnaBoardList")
	public String qnaBoardList(Board board, String currentPage, Model model) {
		int total = bs.qnaBoardListTotal();
		Paging pg = new Paging(total, currentPage);
		board.setStart(pg.getStart());
		board.setEnd(pg.getEnd());
		List<Board> qnaBoardList = bs.qnaBoardList(board);
		log.info(qnaBoardList == null? "qnaBoardList is null":"qnaBoardList is not null");
		model.addAttribute("qnaBoardList", qnaBoardList);
		model.addAttribute("pg", pg);
		model.addAttribute("total", total);
		return "/admin/qna";
	}
	
	
	/**
	 * 리뷰 게시판 목록 조회
	 * 작성자 - 장동호
	 * 목적 - 리뷰 게시판 목록 조회
	 * 
	 * @param model
	 * @param board
	 * @param currentPage
	 * @return
	 */
	@RequestMapping(value = "reviewBoardList")
	@ResponseBody
	public List<Board> reviewBoardList(Model model, Board board, String currentPage) {
		log.info("reviewBoardList()");
		int total = bs.reviewBoardListTotal();
		Paging pg = new Paging(total, currentPage);
		board.setStart(pg.getStart());
		board.setEnd(pg.getEnd());
		List<Board> reviewBoardList = bs.reviewBoardList(board);
		model.addAttribute("pg", pg);
		model.addAttribute("total", total);
		return reviewBoardList;
	}
	
	
	/**
	 * 리뷰 작성 처리
	 * 작성자 - 장동호
	 * 목적 - 리뷰 작성글을 Board 테이블에 insert
	 * 
	 * @param board
	 * @return
	 */
	@RequestMapping(value = "reviewBoardWrite")
	@ResponseBody
	public int reviewBoardWrite(Board board) {
		log.info("reviewBoardWrite()");
		int result = bs.reviewBoardWrite(board);
		return result;
	}
	

	
	/**
	 * 게시글 상세보기
	 * 작성자 - 장동호
	 * 목적 - 게시글 번호에 해당하는 게시글 정보 조회
	 * 
	 * @param b_num
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "boardDetail")
	public String boardDetail(String b_num, Model model) {
		Board board = bs.detail(b_num);
		model.addAttribute("board", board);
		return "/board/boardDetail";
	}
	
	
	
}
