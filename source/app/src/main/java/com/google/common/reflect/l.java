package com.google.common.reflect;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import w2.H;

@d
public abstract class l<T> {
    public final Type a() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        H.u(genericSuperclass instanceof ParameterizedType, "%s isn't parameterized", genericSuperclass);
        return ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0];
    }
}
