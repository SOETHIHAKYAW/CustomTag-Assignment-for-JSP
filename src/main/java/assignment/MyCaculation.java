package assignment;

import java.io.IOException;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

public class MyCaculation extends SimpleTagSupport {

	private int num1;
	private int num2;
	private String opt;

	public void setNum1(int num1) {
		this.num1 = num1;
	}

	public void setNum2(int num2) {
		this.num2 = num2;
	}

	public void setOpt(String opt) {
		this.opt = opt;
	}

	@Override
	public void doTag() throws JspException, IOException {

		JspWriter out = getJspContext().getOut();

		switch (opt) {
		case "+":
			out.println(num1 + " + " + num2 + " = " + (num1 + num2));
			break;
		case "-":
			out.println(num1 + " - " + num2 + " = " + (num1 - num2));
			break;
		case "*":
			out.println(num1 + "*" + num2 + "=" + (num1 * num2));
			break;
		case "/":
			out.println(num1 + "/" + num2 + "=" + (num1 / num2));
			break;
		case "%":
			out.println(num1 + "%" + num2 + "=" + (num1 % num2));
			break;

		default:
			out.println("Invalid!Plase Try Again....");
			break;
		}

	}

}
