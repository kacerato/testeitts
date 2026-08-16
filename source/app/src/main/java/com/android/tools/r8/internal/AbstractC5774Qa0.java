package com.android.tools.r8.internal;

public abstract class AbstractC5774Qa0 {
    public static final M90 a(C9879v90 c9879v90, C4951Bu0 c4951Bu0) {
        GJ.c(c9879v90, "<this>");
        GJ.c(c4951Bu0, "typeTable");
        int i10 = c9879v90.f53028d;
        if ((i10 & 8) == 8) {
            M90 m90 = c9879v90.f53032h;
            GJ.b(m90, "getReturnType(...)");
            return m90;
        }
        if ((i10 & 16) == 16) {
            return (M90) c4951Bu0.f39036a.get(c9879v90.f53033i);
        }
        throw new IllegalStateException("No returnType in ProtoBuf.Property");
    }

    public static final M90 a(Z90 z90, C4951Bu0 c4951Bu0) {
        GJ.c(z90, "<this>");
        GJ.c(c4951Bu0, "typeTable");
        int i10 = z90.f46176d;
        if ((i10 & 4) == 4) {
            M90 m90 = z90.f46179g;
            GJ.b(m90, "getType(...)");
            return m90;
        }
        if ((i10 & 8) == 8) {
            return (M90) c4951Bu0.f39036a.get(z90.f46180h);
        }
        throw new IllegalStateException("No type in ProtoBuf.ValueParameter");
    }
}
