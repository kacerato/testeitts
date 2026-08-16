package com.android.tools.r8.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.naming.AbstractC10992r0;

public final class Z6 extends AbstractC5399Jm0 {

    public static final Z6 f46167c = new Z6();

    @Override
    public final com.android.tools.r8.graph.M2 a(C4724u1 c4724u1) {
        return c4724u1.f37849E1;
    }

    @Override
    public final String getTypeName() {
        return TypedValues.Custom.S_BOOLEAN;
    }

    @Override
    public final Object a(AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC10992r0 abstractC10992r0) {
        throw new C5417Jv0("Unexpected value type: " + ((Object) this));
    }
}
