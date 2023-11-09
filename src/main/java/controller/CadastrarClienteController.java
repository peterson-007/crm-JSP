package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class CadastrarClienteController
 */
public class CadastrarClienteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastrarClienteController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nomeCompleto = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");
		String dataNascimento = request.getParameter("dataNascimento");
		String masculino = request.getParameter("masculino-check");
		String feminino = request.getParameter("feminino-check");
		String nenhum = request.getParameter("nenhum-check");
		String endereco = request.getParameter("endereco");
		String genero = verificarGenero(masculino, feminino, nenhum);
		String mensagem = "";
		
		if(nomeCompleto != "" && cpf != "" && email != "" && telefone != ""
				&& dataNascimento != "" && genero != "" &&	endereco != "") {
		mensagem = "Cadastro realizado com sucesso!";		
		request.setAttribute("nome", nomeCompleto);
		request.setAttribute("cpf", cpf);
		request.setAttribute("email", email);
		request.setAttribute("telefone", telefone);
		request.setAttribute("genero", verificarGenero(masculino, feminino, nenhum));
		request.setAttribute("dataNascimento", dataNascimento);
		request.setAttribute("endereco", endereco);
		request.setAttribute("mensagem", mensagem);
		//request.setAttribute serve para definir os atributos no lado DO SERVIDOR
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("listar.jsp");
		dispatcher.forward(request, response);
		} else {
			mensagem = "Preencher todos os campos!";		
			request.setAttribute("nome", nomeCompleto);
			request.setAttribute("cpf", cpf);
			request.setAttribute("email", email);
			request.setAttribute("telefone", telefone);
			request.setAttribute("genero", verificarGenero(masculino, feminino, nenhum));
			request.setAttribute("dataNascimento", dataNascimento);
			request.setAttribute("endereco", endereco);
			request.setAttribute("mensagem", mensagem);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("cadastro.jsp");
			dispatcher.forward(request, response);
		}		
		
		
	}
	
	public String verificarGenero(String masculino, String feminino, String nenhum) {
		
			if(feminino == null && masculino == null && nenhum == null) {
				return "";
			} else if(feminino == null && masculino == null) {
			return "N";
		} else if (feminino != null && masculino == null) {
			return "F";
		}  else if (feminino == null && masculino != null) {
			return "M";
		} else {
			return "N";
		}
	}

}
