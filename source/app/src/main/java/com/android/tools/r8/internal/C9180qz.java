package com.android.tools.r8.internal;

import java.lang.reflect.Method;

public final class C9180qz {

    public final Method f51920a;

    public final Method f51921b;

    public final Method f51922c;

    public final Method f51923d;

    public final Method f51924e;

    public final Method f51925f;

    public final Method f51926g;

    public final Method f51927h;

    public C9180qz(String str, Class cls, Class cls2, String str2, boolean z10, boolean z11) {
        Method access$1000 = AbstractC10181wz.access$1000(cls, AbstractC5091Ee0.a("get", str), new Class[0]);
        this.f51920a = access$1000;
        this.f51921b = AbstractC10181wz.access$1000(cls2, AbstractC5091Ee0.a("get", str), new Class[0]);
        this.f51922c = AbstractC10181wz.access$1000(cls2, AbstractC5091Ee0.a("set", str), new Class[]{access$1000.getReturnType()});
        this.f51923d = z11 ? AbstractC10181wz.access$1000(cls, AbstractC5091Ee0.a("has", str), new Class[0]) : null;
        this.f51924e = z11 ? AbstractC10181wz.access$1000(cls2, AbstractC5091Ee0.a("has", str), new Class[0]) : null;
        this.f51925f = AbstractC10181wz.access$1000(cls2, AbstractC5091Ee0.a("clear", str), new Class[0]);
        this.f51926g = z10 ? AbstractC10181wz.access$1000(cls, AbstractC4917Be0.a("get", str2, "Case"), new Class[0]) : null;
        this.f51927h = z10 ? AbstractC10181wz.access$1000(cls2, AbstractC4917Be0.a("get", str2, "Case"), new Class[0]) : null;
    }
}
