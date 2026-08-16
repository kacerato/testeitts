package com.android.dx.rop.cst;

import com.android.dx.rop.type.Type;
import com.android.dx.util.Hex;
import org.eclipse.jdt.internal.core.JavaElement;

public final class CstChar extends CstLiteral32 {
    public static final CstChar VALUE_0 = make((char) 0);

    private CstChar(char c10) {
        super(c10);
    }

    public static CstChar make(char c10) {
        return new CstChar(c10);
    }

    @Override
    public Type getType() {
        return Type.CHAR;
    }

    public char getValue() {
        return (char) getIntBits();
    }

    @Override
    public String toHuman() {
        return Integer.toString(getIntBits());
    }

    public String toString() {
        int intBits = getIntBits();
        return "char{0x" + Hex.u2(intBits) + " / " + intBits + JavaElement.JEM_ANNOTATION;
    }

    @Override
    public String typeName() {
        return "char";
    }

    public static CstChar make(int i10) {
        char c10 = (char) i10;
        if (c10 == i10) {
            return make(c10);
        }
        throw new IllegalArgumentException("bogus char value: " + i10);
    }
}
