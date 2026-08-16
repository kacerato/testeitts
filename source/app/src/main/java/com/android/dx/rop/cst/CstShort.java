package com.android.dx.rop.cst;

import com.android.dx.rop.type.Type;
import com.android.dx.util.Hex;
import org.eclipse.jdt.internal.core.JavaElement;

public final class CstShort extends CstLiteral32 {
    public static final CstShort VALUE_0 = make((short) 0);

    private CstShort(short s10) {
        super(s10);
    }

    public static CstShort make(short s10) {
        return new CstShort(s10);
    }

    @Override
    public Type getType() {
        return Type.SHORT;
    }

    public short getValue() {
        return (short) getIntBits();
    }

    @Override
    public String toHuman() {
        return Integer.toString(getIntBits());
    }

    public String toString() {
        int intBits = getIntBits();
        return "short{0x" + Hex.u2(intBits) + " / " + intBits + JavaElement.JEM_ANNOTATION;
    }

    @Override
    public String typeName() {
        return "short";
    }

    public static CstShort make(int i10) {
        short s10 = (short) i10;
        if (s10 == i10) {
            return make(s10);
        }
        throw new IllegalArgumentException("bogus short value: " + i10);
    }
}
