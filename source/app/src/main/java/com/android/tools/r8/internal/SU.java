package com.android.tools.r8.internal;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.Properties;

public final class SU implements InterfaceC10164wt0 {

    public final C6139Wh f44220b;

    public SU(C6139Wh c6139Wh) {
        this.f44220b = c6139Wh;
    }

    @Override
    public final AbstractC9997vt0 a(C5713Oz c5713Oz, C5009Cu0 c5009Cu0) {
        Type[] actualTypeArguments;
        Type type = c5009Cu0.f39379b;
        Class cls = c5009Cu0.f39378a;
        if (!Map.class.isAssignableFrom(cls)) {
            return null;
        }
        if (type == Properties.class) {
            actualTypeArguments = new Type[]{String.class, String.class};
        } else {
            Type b10 = AbstractC6848d.b(type, cls, Map.class);
            actualTypeArguments = b10 instanceof ParameterizedType ? ((ParameterizedType) b10).getActualTypeArguments() : new Type[]{Object.class, Object.class};
        }
        Type type2 = actualTypeArguments[0];
        return new RU(this, c5713Oz, actualTypeArguments[0], (type2 == Boolean.TYPE || type2 == Boolean.class) ? AbstractC8164ku0.f49811c : c5713Oz.a(new C5009Cu0(type2)), actualTypeArguments[1], c5713Oz.a(new C5009Cu0(actualTypeArguments[1])), this.f44220b.a(c5009Cu0));
    }
}
