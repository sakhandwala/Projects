package com.validations;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.FacesValidator;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;

@FacesValidator("com.validations.DateValidator")
public class DateValidator implements Validator{
 
	private static final String EMAIL_PATTERN1 = "/^[0-9]-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/"; 
	private Pattern pattern;
	private Matcher matcher;
 
	public DateValidator(){
		  pattern = Pattern.compile(EMAIL_PATTERN1);
	}
 
	@Override
	public void validate(FacesContext context, UIComponent component,
			Object value) throws ValidatorException {
 
		matcher = pattern.matcher(value.toString());
		if(!matcher.matches()){
 
			FacesMessage msg = 
				new FacesMessage("Date validation failed.", 
						"Date format.");
			msg.setSeverity(FacesMessage.SEVERITY_ERROR);
			throw new ValidatorException(msg);
 
		}
 
	}
}