package com.android.tools.r8.internal;

import java.util.function.Consumer;

public final class C7864j50 extends AbstractC10377y80 {
    public C7864j50(B50 b50) {
        super(b50);
    }

    @Override
    public final boolean a(Object obj, String str, Object obj2, Consumer consumer) {
        if (((EnumC7699i50) obj).ordinal() != 0) {
            return false;
        }
        consumer.accept(C7248fP.a((String) obj2));
        return true;
    }
}
