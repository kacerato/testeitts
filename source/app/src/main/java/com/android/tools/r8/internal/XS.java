package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;

public final class XS implements InterfaceC5407Jq0 {

    public static final XS f45708a = new XS();

    @Override
    public final int a(Object obj, Object obj2, AbstractC8953pf abstractC8953pf) {
        YS ys = (YS) obj;
        YS ys2 = (YS) obj2;
        int a10 = abstractC8953pf.a(AbstractC4291c.b(ys.R()), AbstractC4291c.b(ys2.R()));
        return a10 != 0 ? a10 : ys.a(ys2, abstractC8953pf);
    }

    @Override
    public final void a(Object obj, AbstractC9213rA abstractC9213rA) {
        YS ys = (YS) obj;
        ((C9547tA) abstractC9213rA).f52553a.a(AbstractC4291c.b(ys.R()));
        ys.b(abstractC9213rA);
    }
}
