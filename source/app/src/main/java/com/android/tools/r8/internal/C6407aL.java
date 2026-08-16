package com.android.tools.r8.internal;

public final class C6407aL implements InterfaceC10164wt0 {

    public final C6139Wh f46491b;

    public C6407aL(C6139Wh c6139Wh) {
        this.f46491b = c6139Wh;
    }

    public static AbstractC9997vt0 a(C6139Wh c6139Wh, C5713Oz c5713Oz, C5009Cu0 c5009Cu0, ZK zk2) {
        AbstractC9997vt0 c7161et0;
        Object a10 = c6139Wh.a(new C5009Cu0(zk2.value())).a();
        boolean nullSafe = zk2.nullSafe();
        if (a10 instanceof AbstractC9997vt0) {
            c7161et0 = (AbstractC9997vt0) a10;
        } else if (a10 instanceof InterfaceC10164wt0) {
            c7161et0 = ((InterfaceC10164wt0) a10).a(c5713Oz, c5009Cu0);
        } else if (a10 instanceof InterfaceC6740cL) {
            c7161et0 = new C7161et0(a10 instanceof InterfaceC6740cL ? (InterfaceC6740cL) a10 : null, c5713Oz, c5009Cu0, null, nullSafe);
            nullSafe = false;
        } else {
            throw new IllegalArgumentException("Invalid attempt to bind an instance of " + a10.getClass().getName() + " as a @JsonAdapter for " + AbstractC6848d.c(c5009Cu0.f39379b) + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
        }
        return (c7161et0 == null || !nullSafe) ? c7161et0 : new C9830ut0(c7161et0);
    }

    @Override
    public final AbstractC9997vt0 a(C5713Oz c5713Oz, C5009Cu0 c5009Cu0) {
        ZK zk2 = (ZK) c5009Cu0.f39378a.getAnnotation(ZK.class);
        if (zk2 == null) {
            return null;
        }
        return a(this.f46491b, c5713Oz, c5009Cu0, zk2);
    }
}
