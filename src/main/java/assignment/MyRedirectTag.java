package assignment;

import java.io.IOException;
import java.net.URLConnection;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.JspTag;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

public class MyRedirectTag extends SimpleTagSupport {

	private JspTag url;
//	private String context;

	public void setUrl(JspTag url) {
		this.url = url;
	}

//	public void setContext(String context) {
//		this.context = context;
//	}

	@Override
	public void doTag() throws JspException, IOException {

		JspWriter out = getJspContext().getOut();
		if (url != null) {

			URLConnection connection = (URLConnection) url;
			connection.getURL();

		} else {
			out.print("Your Url is invalid");
		}

	}

}
