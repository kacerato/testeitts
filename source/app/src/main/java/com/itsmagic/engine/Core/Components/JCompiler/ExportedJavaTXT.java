package com.itsmagic.engine.Core.Components.JCompiler;

import com.google.gson.annotations.Expose;
import java.io.Serializable;

public class ExportedJavaTXT implements Serializable {

    public static final String f72510b = "&e4@j#sseg77@#*f$#eq5!68#@asd@#%64aa!54@";

    @Expose
    public String author;

    @Expose
    public String txt;

    @Expose
    public String version = "1";

    @Expose
    public String validateString = f72510b;

    public ExportedJavaTXT(String txt) {
        this.txt = txt;
    }

    public ExportedJavaTXT(String txt, String author) {
        this.txt = txt;
        this.author = author;
    }
}
