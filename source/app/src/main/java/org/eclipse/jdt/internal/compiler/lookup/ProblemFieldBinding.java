package org.eclipse.jdt.internal.compiler.lookup;

public class ProblemFieldBinding extends FieldBinding {
    public FieldBinding closestMatch;
    private int problemId;

    public ProblemFieldBinding(ReferenceBinding referenceBinding, char[] cArr, int i10) {
        this(null, referenceBinding, cArr, i10);
    }

    @Override
    public final int problemId() {
        return this.problemId;
    }

    public ProblemFieldBinding(FieldBinding fieldBinding, ReferenceBinding referenceBinding, char[] cArr, int i10) {
        this.closestMatch = fieldBinding;
        this.declaringClass = referenceBinding;
        this.name = cArr;
        this.problemId = i10;
    }
}
