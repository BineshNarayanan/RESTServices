package com.rest;

import java.util.Random;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 * Root resource (exposed at "myresource" path)
 */
@Path("myresource")
public class RestResource {

    /**
     * Method handling HTTP GET requests. The returned object will be sent
     * to the client as "text/plain" media type.
     *
     * @return String that will be returned as a text/plain response.
     */
    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String getIt() {
        return "Got it!";
    }
    
    @GET
    @Path("data")
    public String getAllData(){
    	return "Retrieved All Data";
    }
    
    @GET
    @Path("data/{id}")
    public String getData(@PathParam("id") String id){
    	return "Data With id ::" +id;
    }
    
    
    @POST
    @Path("data")
    public String postNewData(){
    	Random random = new Random();
    	return "Added New Data With id" + random.nextInt(100);
    }
    
    @POST
    @Path("data/{id}")
    public String updateData(@PathParam("id") String id, String input){
    	return "Updated Data of id :: " + id + "with data" + input;
    }
    
    
}
