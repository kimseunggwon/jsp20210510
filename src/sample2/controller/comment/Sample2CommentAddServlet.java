package sample2.controller.comment;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javafx.concurrent.Service;
import sample2.bean.Comment;
import sample2.service.comment.CommentService;

/**
 * Servlet implementation class Sample2CommentAddServlet
 */
@WebServlet("/sample2/comment/add")
public class Sample2CommentAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private CommentService service;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sample2CommentAddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {
    	// TODO Auto-generated method stub
    	super.init();
    	service = new CommentService();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 파라미터 수집
		String comment = request.getParameter("comment"); //댓글 본문
		String memberId = request.getParameter("memberId"); //누가 작성했는지
		String boardId = request.getParameter("boardId"); //게시물 아이디
		
		// 빈 생성 및 프로퍼티 세팅 ( 빈객체 만들어서 (다오대신에) 서비스에 보내준다)
		Comment commentBean = new Comment();
		
		commentBean.setComment(comment);
		commentBean.setMemberId(memberId);
		commentBean.setBoardId(Integer.parseInt(boardId));
		
		// 서비스에게 일 시킴
		service.add(commentBean);
		
		// view에 전송(forward) 또는 redirect
		String path = request.getContextPath() + "/sample2/board/detail?id=" + boardId;
		response.sendRedirect(path);
	}

}


















