package com.jme3.material.plugins;

import com.jme3.util.blockparser.Statement;
import java.io.IOException;

public class MatParseException extends IOException {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MatParseException(String str, String str2, Statement statement) {
        super(r0.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Error On line ");
        sb2.append(statement.getLineNumber());
        sb2.append(" : ");
        sb2.append(statement.getLine());
        sb2.append("\n->Expected ");
        sb2.append(str == null ? "a statement" : str);
        sb2.append(", got '");
        sb2.append(str2);
        sb2.append("'!");
    }

    public MatParseException(String str, Statement statement) {
        super("Error On line " + statement.getLineNumber() + " : " + statement.getLine() + "\n->" + str);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MatParseException(String str, String str2, Statement statement, Throwable th2) {
        super(r0.toString(), th2);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Error On line ");
        sb2.append(statement.getLineNumber());
        sb2.append(" : ");
        sb2.append(statement.getLine());
        sb2.append("\n->Expected ");
        sb2.append(str == null ? "a statement" : str);
        sb2.append(", got '");
        sb2.append(str2);
        sb2.append("'!");
    }

    public MatParseException(String str, Statement statement, Throwable th2) {
        super("Error On line " + statement.getLineNumber() + " : " + statement.getLine() + "\n->" + str, th2);
    }
}
