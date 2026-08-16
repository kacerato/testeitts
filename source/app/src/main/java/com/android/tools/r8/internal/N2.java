package com.android.tools.r8.internal;

import java.lang.annotation.RetentionPolicy;
import java.util.function.Consumer;

public final class N2 extends AbstractC10377y80 {

    public static final boolean f42484g = true;

    public N2(I50 i50) {
        super(i50);
    }

    @Override
    public final boolean b(Object obj, String str, String str2, Consumer consumer) {
        O2 o22 = (O2) obj;
        if (!f42484g && o22 != O2.f42765b) {
            throw new AssertionError();
        }
        if (!"Ljava/lang/annotation/RetentionPolicy;".equals(str)) {
            return false;
        }
        consumer.accept(RetentionPolicy.valueOf(str2));
        return true;
    }
}
