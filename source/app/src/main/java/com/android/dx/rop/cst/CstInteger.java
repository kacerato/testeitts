package com.android.dx.rop.cst;

import com.android.dx.rop.type.Type;
import com.android.dx.util.Hex;
import org.eclipse.jdt.internal.core.JavaElement;

public final class CstInteger extends CstLiteral32 {
    private static final CstInteger[] cache = new CstInteger[511];
    public static final CstInteger VALUE_M1 = make(-1);
    public static final CstInteger VALUE_0 = make(0);
    public static final CstInteger VALUE_1 = make(1);
    public static final CstInteger VALUE_2 = make(2);
    public static final CstInteger VALUE_3 = make(3);
    public static final CstInteger VALUE_4 = make(4);
    public static final CstInteger VALUE_5 = make(5);

    private CstInteger(int i10) {
        super(i10);
    }

    public static CstInteger make(int i10) {
        CstInteger[] cstIntegerArr = cache;
        int length = (Integer.MAX_VALUE & i10) % cstIntegerArr.length;
        CstInteger cstInteger = cstIntegerArr[length];
        if (cstInteger != null && cstInteger.getValue() == i10) {
            return cstInteger;
        }
        CstInteger cstInteger2 = new CstInteger(i10);
        cstIntegerArr[length] = cstInteger2;
        return cstInteger2;
    }

    @Override
    public Type getType() {
        return Type.INT;
    }

    public int getValue() {
        return getIntBits();
    }

    @Override
    public String toHuman() {
        return Integer.toString(getIntBits());
    }

    public String toString() {
        int intBits = getIntBits();
        return "int{0x" + Hex.u4(intBits) + " / " + intBits + JavaElement.JEM_ANNOTATION;
    }

    @Override
    public String typeName() {
        return "int";
    }
}
