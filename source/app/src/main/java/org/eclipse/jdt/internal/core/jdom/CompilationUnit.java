package org.eclipse.jdt.internal.core.jdom;

import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import yd.C16181m;

public class CompilationUnit implements ICompilationUnit {
    protected char[] fContents;
    protected char[] fFileName;
    protected char[] fMainTypeName;

    public CompilationUnit(char[] cArr, char[] cArr2) {
        this.fContents = cArr;
        this.fFileName = cArr2;
        String str = new String(cArr2);
        int lastIndexOf = str.lastIndexOf("/") + 1;
        lastIndexOf = (lastIndexOf == 0 || lastIndexOf < str.lastIndexOf(C16181m.f130232i)) ? str.lastIndexOf(C16181m.f130232i) + 1 : lastIndexOf;
        int lastIndexOf2 = str.lastIndexOf(".");
        this.fMainTypeName = str.substring(lastIndexOf, lastIndexOf2 == -1 ? str.length() : lastIndexOf2).toCharArray();
    }

    @Override
    public char[] getContents() {
        return this.fContents;
    }

    @Override
    public char[] getFileName() {
        return this.fFileName;
    }

    @Override
    public char[] getMainTypeName() {
        return this.fMainTypeName;
    }

    @Override
    public char[] getModuleName() {
        return null;
    }

    @Override
    public char[][] getPackageName() {
        return null;
    }

    @Override
    public boolean ignoreOptionalProblems() {
        return false;
    }

    public String toString() {
        return "CompilationUnit[" + new String(this.fFileName) + "]";
    }
}
