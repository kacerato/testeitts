package com.android.dx.rop.cst;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.android.dx.rop.type.Type;
import com.android.dx.util.Hex;
import org.eclipse.jdt.internal.core.JavaElement;

public final class CstFloat extends CstLiteral32 {
    public static final CstFloat VALUE_0 = make(Float.floatToIntBits(0.0f));
    public static final CstFloat VALUE_1 = make(Float.floatToIntBits(1.0f));
    public static final CstFloat VALUE_2 = make(Float.floatToIntBits(2.0f));

    private CstFloat(int i10) {
        super(i10);
    }

    public static CstFloat make(int i10) {
        return new CstFloat(i10);
    }

    @Override
    public Type getType() {
        return Type.FLOAT;
    }

    public float getValue() {
        return Float.intBitsToFloat(getIntBits());
    }

    @Override
    public String toHuman() {
        return Float.toString(Float.intBitsToFloat(getIntBits()));
    }

    public String toString() {
        int intBits = getIntBits();
        return "float{0x" + Hex.u4(intBits) + " / " + Float.intBitsToFloat(intBits) + JavaElement.JEM_ANNOTATION;
    }

    @Override
    public String typeName() {
        return TypedValues.Custom.S_FLOAT;
    }
}
