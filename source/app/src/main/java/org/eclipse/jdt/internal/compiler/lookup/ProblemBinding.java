package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;

public class ProblemBinding extends Binding {
    public char[] name;
    private int problemId;
    public ReferenceBinding searchType;

    public ProblemBinding(char[][] cArr, int i10) {
        this(CharOperation.concatWith(cArr, '.'), i10);
    }

    @Override
    public final int kind() {
        return 7;
    }

    @Override
    public final int problemId() {
        return this.problemId;
    }

    @Override
    public char[] readableName() {
        return this.name;
    }

    public ProblemBinding(char[][] cArr, ReferenceBinding referenceBinding, int i10) {
        this(CharOperation.concatWith(cArr, '.'), referenceBinding, i10);
    }

    public ProblemBinding(char[] cArr, int i10) {
        this.name = cArr;
        this.problemId = i10;
    }

    public ProblemBinding(char[] cArr, ReferenceBinding referenceBinding, int i10) {
        this(cArr, i10);
        this.searchType = referenceBinding;
    }
}
