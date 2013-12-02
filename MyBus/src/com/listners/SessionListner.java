package com.listners;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

/**
 * Application Lifecycle Listener implementation class SessionListner
 *
 */
@WebListener
public class SessionListner implements HttpSessionAttributeListener {

    /**
     * Default constructor. 
     */
    public SessionListner() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
     */
    public void attributeRemoved(HttpSessionBindingEvent se) {
    	System.out.println("attribute removed");
        String aname=se.getName();
        //return type is object
        String avalue=(String)se.getValue();
        System.out.println("name"+aname);
        System.out.println("value"+avalue);
        System.out.println();
    }

	/**
     * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
     */
    public void attributeAdded(HttpSessionBindingEvent se) {
        System.out.println("attribute added");
        String aname=se.getName();
        //return type is object
        String avalue=(String)se.getValue();
        System.out.println("name"+aname);
        System.out.println("value"+avalue);
        System.out.println();
    }

	/**
     * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
     */
    public void attributeReplaced(HttpSessionBindingEvent se) {
        System.out.println("attribute Replaced");
        String aname=se.getName();
        //return type is object
        String avalue=(String)se.getValue();
        System.out.println("name"+aname);
        System.out.println("value"+avalue);
        System.out.println();

    }
	
}
