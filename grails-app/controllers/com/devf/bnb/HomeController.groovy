package com.devf.bnb
import org.apache.shiro.SecurityUtils

class HomeController {

    def index() {
        if(SecurityUtils.subject.isAuthenticated()){
            redirect(controller:"reservacion", action:"explorar")
        }
    }
}
