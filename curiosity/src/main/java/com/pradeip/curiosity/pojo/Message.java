package com.pradeip.curiosity.pojo;

public class Message {
	 
    String name;
    String text;
 
    public Message(String name, String text) {
        this.name = name;
        this.text = text;
    }
 
    public String getName() {
        return name;
    }
 
    public String getText() {
        return text;
    }

	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		
		return  "{ name:" + this.name + "}";
		
	}
	
	
 
}