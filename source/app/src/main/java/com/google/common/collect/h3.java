package com.google.common.collect;

import java.io.Serializable;

@X
@v2.b(serializable = true)
public final class h3 extends Ordering<Object> implements Serializable {

    public static final h3 f66658d = new h3();

    public static final long f66659e = 0;

    private Object I() {
        return f66658d;
    }

    @Override
    public int compare(Object obj, Object obj2) {
        return obj.toString().compareTo(obj2.toString());
    }

    public String toString() {
        return "Ordering.usingToString()";
    }
}
