package com.android.dx.rop.cst;

import com.android.dx.rop.type.Type;
import com.android.dx.util.Hex;
import org.eclipse.jdt.internal.core.JavaElement;

public final class CstByte extends CstLiteral32 {
    public static final CstByte VALUE_0 = make((byte) 0);

    private CstByte(byte b10) {
        super(b10);
    }

    public static CstByte make(byte b10) {
        return new CstByte(b10);
    }

    @Override
    public Type getType() {
        return Type.BYTE;
    }

    public byte getValue() {
        return (byte) getIntBits();
    }

    @Override
    public String toHuman() {
        return Integer.toString(getIntBits());
    }

    public String toString() {
        int intBits = getIntBits();
        return "byte{0x" + Hex.u1(intBits) + " / " + intBits + JavaElement.JEM_ANNOTATION;
    }

    @Override
    public String typeName() {
        return "byte";
    }

    public static CstByte make(int i10) {
        byte b10 = (byte) i10;
        if (b10 == i10) {
            return make(b10);
        }
        throw new IllegalArgumentException("bogus byte value: " + i10);
    }
}
