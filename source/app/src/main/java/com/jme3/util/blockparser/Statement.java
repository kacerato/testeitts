package com.jme3.util.blockparser;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.geometry.VectorFormat;

public class Statement {
    protected List<Statement> contents = new ArrayList();
    protected String line;
    protected int lineNumber;

    public Statement(int i10, String str) {
        this.lineNumber = i10;
        this.line = str;
    }

    public void addStatement(Statement statement) {
        this.contents.add(statement);
    }

    public List<Statement> getContents() {
        return this.contents;
    }

    public String getIndent(int i10) {
        return "                               ".substring(0, i10);
    }

    public String getLine() {
        return this.line;
    }

    public int getLineNumber() {
        return this.lineNumber;
    }

    public String toString(int i10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getIndent(i10));
        sb2.append(this.line);
        if (this.contents != null) {
            sb2.append(" {\n");
            Iterator<Statement> it = this.contents.iterator();
            while (it.hasNext()) {
                sb2.append(it.next().toString(i10 + 4));
                sb2.append("\n");
            }
            sb2.append(getIndent(i10));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
        }
        return sb2.toString();
    }

    public void addStatement(int i10, Statement statement) {
        this.contents.add(i10, statement);
    }

    public String toString() {
        return toString(0);
    }
}
