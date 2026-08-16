package com.android.tools.r8.internal;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumMap;

public final class C5967Th implements InterfaceC10529z30 {

    public final Type f44545a;

    public C5967Th(Type type) {
        this.f44545a = type;
    }

    @Override
    public final Object a() {
        Type type = this.f44545a;
        if (!(type instanceof ParameterizedType)) {
            throw new C7073eL("Invalid EnumMap type: " + this.f44545a.toString());
        }
        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
        if (type2 instanceof Class) {
            return new EnumMap((Class) type2);
        }
        throw new C7073eL("Invalid EnumMap type: " + this.f44545a.toString());
    }
}
