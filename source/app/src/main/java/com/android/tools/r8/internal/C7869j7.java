package com.android.tools.r8.internal;

import java.util.function.Consumer;

public final class C7869j7 extends AbstractC10377y80 {
    public C7869j7(B50 b50) {
        super(b50);
    }

    @Override
    public final boolean a(Object obj, String str, Object obj2, Consumer consumer) {
        if (!EnumC7704i7.f48844b.equals((EnumC7704i7) obj) || !(obj2 instanceof Boolean)) {
            return false;
        }
        consumer.accept((Boolean) obj2);
        return true;
    }
}
