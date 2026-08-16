package org.eclipse.jdt.internal.compiler.codegen;

public abstract class Label {
    public static final int POS_NOT_SET = -1;
    public CodeStream codeStream;
    public int position = -1;

    public Label() {
    }

    public abstract void place();

    public Label(CodeStream codeStream) {
        this.codeStream = codeStream;
    }
}
