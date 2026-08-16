package com.android.tools.r8.internal;

import java.util.function.Consumer;

public final class C7819iq0 extends AbstractC10377y80 {

    public static final boolean f49071g = true;

    public C7819iq0(B50 b50) {
        super(b50);
    }

    @Override
    public final boolean a(Object obj, String str, Object obj2, Consumer consumer) {
        EnumC7653hq0 enumC7653hq0 = (EnumC7653hq0) obj;
        if (!f49071g && !EnumC7653hq0.f48721b.equals(enumC7653hq0)) {
            throw new AssertionError();
        }
        if (!(obj2 instanceof String)) {
            return false;
        }
        consumer.accept((String) obj2);
        return true;
    }
}
