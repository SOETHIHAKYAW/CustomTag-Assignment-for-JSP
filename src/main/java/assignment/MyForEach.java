package assignment;

import java.io.IOException;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

public class MyForEach extends SimpleTagSupport {

	private int begin;
	private int end;
	private int step;


	public void setBegin(int begin) {
		this.begin = begin;
	}


	public void setEnd(int end) {
		this.end = end;
	}

	
	public void setStep(int step) {
		this.step = step;
	}

	@Override
	public void doTag() throws JspException, IOException {

		JspWriter out = getJspContext().getOut();
		
			for(int i = begin ; i <= end; i+=step) {
				
				out.println(i+"<br>");
			}


	}

}
