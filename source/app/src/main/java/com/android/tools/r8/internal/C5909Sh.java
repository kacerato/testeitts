package com.android.tools.r8.internal;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;

public final class C5909Sh implements InterfaceC10529z30 {

    public final Type f44271a;

    public C5909Sh(Type type) {
        this.f44271a = type;
    }

    @Override
    public final Object a() {
        Type type = this.f44271a;
        if (!(type instanceof ParameterizedType)) {
            throw new C7073eL("Invalid EnumSet type: " + this.f44271a.toString());
        }
        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
        if (type2 instanceof Class) {
            return EnumSet.noneOf((Class) type2);
        }
        throw new C7073eL("Invalid EnumSet type: " + this.f44271a.toString());
    }
}
