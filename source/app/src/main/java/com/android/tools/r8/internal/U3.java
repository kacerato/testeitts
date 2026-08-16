package com.android.tools.r8.internal;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

public final class U3 implements InterfaceC10164wt0 {
    @Override
    public final AbstractC9997vt0 a(C5713Oz c5713Oz, C5009Cu0 c5009Cu0) {
        Type type = c5009Cu0.f39379b;
        boolean z10 = type instanceof GenericArrayType;
        if (!z10 && (!(type instanceof Class) || !((Class) type).isArray())) {
            return null;
        }
        Type genericComponentType = z10 ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
        return new V3(c5713Oz, c5713Oz.a(new C5009Cu0(genericComponentType)), AbstractC6848d.b(genericComponentType));
    }
}
