package io.github.rochimfn.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class DemoRemoteDebugApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoRemoteDebugApplication.class, args);
	}

	@GetMapping("/")
	public String index() {
		return "<a href=\"/hello\">/hello</a>";
	}

	@GetMapping("/hello")
    public String hello(@RequestParam(value = "name", defaultValue = "World") String name) {
      return String.format("Hello %s!", name);
    }

}
