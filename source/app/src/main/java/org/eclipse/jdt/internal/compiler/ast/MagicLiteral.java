package org.eclipse.jdt.internal.compiler.ast;

public abstract class MagicLiteral extends Literal {
    public MagicLiteral(int i10, int i11) {
        super(i10, i11);
    }

    @Override
    public boolean isValidJavaStatement() {
        return false;
    }

    @Override
    public char[] source() {
        return null;
    }
}
