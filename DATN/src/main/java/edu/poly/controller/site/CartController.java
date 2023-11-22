package edu.poly.controller.site;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.poly.dao.ServiceDAO;
import edu.poly.model.CartItem;
import edu.poly.model.Services;
import edu.poly.service.ServiceforService;
import edu.poly.service.ShoppingCartService;

@Controller
@RequestMapping("home")
public class CartController {
	@Autowired
	ServiceforService dao;
	@Autowired
	ShoppingCartService cartService;
	@Autowired
	ServiceDAO Sdao;

	@GetMapping("cart")
	public String viewCart(Model model) {
		model.addAttribute("CART_ITEMS", cartService.getAllItems());
		return "home/cart";
	}

//	@PostMapping("/cart/add")
//	public String addToCart(@RequestParam("id") String productId, HttpSession session) {
//	    Service product = Service.findById(id);
//	    CartItem cart = (CartItem) session.getAttribute("cart");
//	    if (cart == null) {
//	        cart = new CartItem();
//	        session.setAttribute("cart", cart);
//	    }
//	    cart.addProduct(product);
//	    return "redirect:/cart";
//	}
	@GetMapping("/add/{id}")
	public String addCart(@PathVariable("id") String id) {
		List<Services> xx = Sdao.findAll();
		Services service = new Services();
		for (Services services : xx) {
			if (services.getId().equals(id)) {
				service = services;
			}
		}
		if (service != null) {
			CartItem item = new CartItem();
			item.setServiceid(service.getId());
			item.setName(service.getName());
			item.setPrice(service.getPrice());
			item.setQty(1);
			cartService.add(item);
			System.err.println(item.getName());
		} else {
			System.out.println("ngu");
		}
		return "home/cart";
	}
}