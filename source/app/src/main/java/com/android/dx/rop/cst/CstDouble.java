package com.android.dx.rop.cst;

import com.android.dx.rop.type.Type;
import com.android.dx.util.Hex;
import org.eclipse.jdt.internal.core.JavaElement;

public final class CstDouble extends CstLiteral64 {
    public static final CstDouble VALUE_0 = new CstDouble(Double.doubleToLongBits(0.0d));
    public static final CstDouble VALUE_1 = new CstDouble(Double.doubleToLongBits(1.0d));

    private CstDouble(long j10) {
        super(j10);
    }

    public static CstDouble make(long j10) {
        return new CstDouble(j10);
    }

    @Override
    public Type getType() {
        return Type.DOUBLE;
    }

    public double getValue() {
        return Double.longBitsToDouble(getLongBits());
    }

    @Override
    public String toHuman() {
        return Double.toString(Double.longBitsToDouble(getLongBits()));
    }

    public String toString() {
        long longBits = getLongBits();
        return "double{0x" + Hex.u8(longBits) + " / " + Double.longBitsToDouble(longBits) + JavaElement.JEM_ANNOTATION;
    }

    @Override
    public String typeName() {
        return "double";
    }
}
