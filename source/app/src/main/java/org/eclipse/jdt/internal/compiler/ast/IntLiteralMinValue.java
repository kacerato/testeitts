package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.impl.IntConstant;

public class IntLiteralMinValue extends IntLiteral {
    static final char[] CharValue = {'-', '2', '1', '4', '7', '4', '8', '3', '6', '4', '8'};

    public IntLiteralMinValue(char[] cArr, char[] cArr2, int i10, int i11) {
        super(cArr, cArr2, i10, i11, Integer.MIN_VALUE, IntConstant.fromValue(Integer.MIN_VALUE));
    }

    @Override
    public void computeConstant() {
    }
}
