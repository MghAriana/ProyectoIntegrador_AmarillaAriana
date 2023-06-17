
package com.PortfolioA.miprimerproyecto.Security.jwt;

class CustomException extends Exception {
    private String requestId;
    private String message;
    private String errorCode;
    
    public CustomException(String message){
     super(message);
     this.message = message;
    }
    
    public CustomException(String requestId, String message , String errorCode){
       super(message);
       this.requestId = requestId;
       this.message = message;
       this.errorCode = errorCode;
    }
    
    public String getRequestId(){
        return this.requestId;
                }
    
    public void setRequest(String requestId){
        this.requestId = requestId;
    }
    
    
    public String getMessage(String message){
        return this.message;
    }
    
    public void setMessage(String message){
        this.message = message;
    }
    
    public String getErrorCode(){
    return this.errorCode;
            }
    
    public void setErrorCode(String errorCode){
        this.errorCode = errorCode;
    }
   
}
