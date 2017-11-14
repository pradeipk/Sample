package com.pradeip.curiosity.mvc;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.pradeip.curiosity.pojo.Message;

//@Controller is Normal controller, For Rest Controller use  @RestController
@RestController
public class HelloWorldRestController {

	@RequestMapping("/")
	public String welcome() {// Welcome page, non-rest
		return "Welcome to RestTemplate Example.";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/hello/{player}")
	public Message message(@PathVariable String player) {

		Message msg = new Message(player, "Hello " + player);
		return msg;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/hello", consumes = "application/json")
	public Message postMessage(@RequestBody Message message) {
		System.out.println("Post is called -----------------------28 :"
				+ message.toString());
		// Message msg = new Message(player, "Hello " + player);
		return new Message("success", "true");
	}
}
