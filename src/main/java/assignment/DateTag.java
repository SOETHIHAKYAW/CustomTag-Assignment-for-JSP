package assignment;

import java.io.IOException;
import java.io.StringWriter;
import java.util.Date;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

public class DateTag extends SimpleTagSupport {

	private String date;

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public void doTag() throws JspException, IOException {

		StringWriter writer = new StringWriter();
		JspWriter out = getJspContext().getOut();

		Date today = new Date();

		if (this.date != null) {
			out.print(today + "</br>");
		} else {

			getJspBody().invoke(writer);

			out.print(writer.toString() + "</br>");
		}

	}

}
