package com.listners;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class SessionListner2
 *
 */
@WebListener
public class SessionListner2 implements HttpSessionListener {

    static int sessioncount;
    public int getSessioncount()
    {
    	return sessioncount;
    }
    public SessionListner2() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent arg0) {
    	sessioncount++;
       System.out.println("created ,no.of active sessions "+getSessioncount());
       
       
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent arg0) {
       sessioncount--;
    	System.out.println("Destroyed ,no.of active sessions "+getSessioncount());
    	
    }
	
}
