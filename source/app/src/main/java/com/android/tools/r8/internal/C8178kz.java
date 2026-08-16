package com.android.tools.r8.internal;

import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collections;

public final class C8178kz {

    public final C4990Cl f49849a;

    public final Method f49850b;

    public final Method f49851c;

    public final Method f49852d;

    public final C5685Ol f49853e;

    public C8178kz(C4990Cl c4990Cl, int i10, String str, Class cls, Class cls2) {
        this.f49849a = c4990Cl;
        C5685Ol[] c5685OlArr = ((C5917Sl) Collections.unmodifiableList(Arrays.asList(c4990Cl.f39347j)).get(i10)).f44308h;
        if (c5685OlArr.length == 1 && c5685OlArr[0].f43021g) {
            this.f49850b = null;
            this.f49851c = null;
            this.f49853e = (C5685Ol) Collections.unmodifiableList(Arrays.asList(c5685OlArr)).get(0);
        } else {
            this.f49850b = AbstractC10181wz.access$1000(cls, AbstractC4917Be0.a("get", str, "Case"), new Class[0]);
            this.f49851c = AbstractC10181wz.access$1000(cls2, AbstractC4917Be0.a("get", str, "Case"), new Class[0]);
            this.f49853e = null;
        }
        this.f49852d = AbstractC10181wz.access$1000(cls2, AbstractC5091Ee0.a("clear", str), new Class[0]);
    }
}
