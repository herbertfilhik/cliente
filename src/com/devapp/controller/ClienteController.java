package com.devapp.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.devapp.model.Cliente;

@Controller
public class ClienteController {

	@RequestMapping(value = { "/", "index" }, method = RequestMethod.GET)
	public ModelAndView cliente() {
		return new ModelAndView("index", "command", new Cliente());
	}

	@RequestMapping(value = "/addCliente", method = RequestMethod.POST)
	public String adicionarCliente(@ModelAttribute("SpringWeb") Cliente cliente, ModelMap model,
			HttpServletRequest request) {

		/*Calendar calendar = Calendar.getInstance();
		calendar.setTime(cliente.getDataNascimento());
		int diaDoMes = calendar.get(Calendar.DAY_OF_MONTH)-1;
		int mes = calendar.get(Calendar.MONTH)+1;
		calendar.set(Calendar.DAY_OF_MONTH, mes);
		calendar.set(Calendar.MONTH, diaDoMes);
		cliente.setDataNascimento(calendar.getTime());*/ 
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

		model.addAttribute("nome", cliente.getNome());
		model.addAttribute("nomeFilme", cliente.getNomeFilme());
		model.addAttribute("cpf", cliente.getCpf());
		model.addAttribute("descricao", cliente.getDescricao());
		model.addAttribute("telefone", cliente.getTelefone());
		model.addAttribute("endereco", cliente.getEndereco());
		model.addAttribute("rg", cliente.getRg());
		model.addAttribute("salario", cliente.getSalario());
		model.addAttribute("dataNascimento", cliente.getDataNascimento());
		model.addAttribute("dataLancamento", cliente.getDataLancamento());
		model.addAttribute("profissao", cliente.getProfissao());
		
		System.out.println(cliente.getDataNascimento());
		System.out.println(cliente.getDataLancamento());

		List<Cliente> clientes = (List<Cliente>) request.getSession().getAttribute("clientes");
		if (clientes == null) {
			clientes = new ArrayList<Cliente>();
		}
		clientes.add(cliente);
		request.getSession().setAttribute("clientes", clientes);

		return "exibeCliente";
	}

	@RequestMapping(value = "/listaClientes", method = RequestMethod.GET)
	public String listarClientes(@ModelAttribute("SpringWeb") ModelMap model, HttpServletRequest request) {

		List<Cliente> clientes = (List<Cliente>) request.getAttribute("clientes");

		model.addAttribute("clientes", clientes);

		return "listaClientes";
	}
}