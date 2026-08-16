package com.android.tools.r8.internal;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;

public final class C6189Xe implements InterfaceC10164wt0 {

    public final C6139Wh f45778b;

    public C6189Xe(C6139Wh c6139Wh) {
        this.f45778b = c6139Wh;
    }

    @Override
    public final AbstractC9997vt0 a(C5713Oz c5713Oz, C5009Cu0 c5009Cu0) {
        Type type = c5009Cu0.f39379b;
        Class cls = c5009Cu0.f39378a;
        if (!Collection.class.isAssignableFrom(cls)) {
            return null;
        }
        Type b10 = AbstractC6848d.b(type, cls, Collection.class);
        Class cls2 = b10 instanceof ParameterizedType ? ((ParameterizedType) b10).getActualTypeArguments()[0] : Object.class;
        return new C6132We(c5713Oz, cls2, c5713Oz.a(new C5009Cu0(cls2)), this.f45778b.a(c5009Cu0));
    }
}
