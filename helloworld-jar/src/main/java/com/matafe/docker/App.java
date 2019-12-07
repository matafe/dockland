
package com.matafe.docker;

import java.util.concurrent.TimeUnit;

public class App {

	public static void main(String[] args) throws InterruptedException {
		final App app = new App();
		System.out.println(app.getMessage());

		final String sleep = System.getProperty("sleep", "0");

		try {
			TimeUnit.MILLISECONDS.sleep(Long.valueOf(sleep));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}

		System.out.printf("Terminated. [sleep=%sms]\n", sleep);
	}

	public String getMessage() {
		return "Hello World Docker";
	}

}
