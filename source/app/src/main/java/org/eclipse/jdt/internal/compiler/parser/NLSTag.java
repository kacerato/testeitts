package org.eclipse.jdt.internal.compiler.parser;

import org.openjdk.tools.doclint.DocLint;

public class NLSTag {
    public int end;
    public int index;
    public int lineNumber;
    public int start;

    public NLSTag(int i10, int i11, int i12, int i13) {
        this.start = i10;
        this.end = i11;
        this.lineNumber = i12;
        this.index = i13;
    }

    public String toString() {
        return "NLSTag(" + this.start + DocLint.SEPARATOR + this.end + DocLint.SEPARATOR + this.lineNumber + ")";
    }
}
