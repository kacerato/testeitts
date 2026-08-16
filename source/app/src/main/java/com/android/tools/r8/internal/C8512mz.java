package com.android.tools.r8.internal;

import com.google.protobuf.C12667d1;
import java.lang.reflect.Method;

public final class C8512mz {

    public final Method f50471a;

    public final Method f50472b;

    public final Method f50473c;

    public final Method f50474d;

    public final Method f50475e;

    public final Method f50476f;

    public final Method f50477g;

    public final Method f50478h;

    public final Method f50479i;

    public C8512mz(String str, Class cls, Class cls2) {
        this.f50471a = AbstractC10181wz.access$1000(cls, AbstractC4917Be0.a("get", str, C12667d1.f69075a), new Class[0]);
        this.f50472b = AbstractC10181wz.access$1000(cls2, AbstractC4917Be0.a("get", str, C12667d1.f69075a), new Class[0]);
        String a10 = AbstractC5091Ee0.a("get", str);
        Class<Integer> cls3 = Integer.TYPE;
        Method access$1000 = AbstractC10181wz.access$1000(cls, a10, new Class[]{cls3});
        this.f50473c = access$1000;
        this.f50474d = AbstractC10181wz.access$1000(cls2, AbstractC5091Ee0.a("get", str), new Class[]{cls3});
        Class<?> returnType = access$1000.getReturnType();
        this.f50475e = AbstractC10181wz.access$1000(cls2, AbstractC5091Ee0.a("set", str), new Class[]{cls3, returnType});
        this.f50476f = AbstractC10181wz.access$1000(cls2, AbstractC5091Ee0.a("add", str), new Class[]{returnType});
        this.f50477g = AbstractC10181wz.access$1000(cls, AbstractC4917Be0.a("get", str, "Count"), new Class[0]);
        this.f50478h = AbstractC10181wz.access$1000(cls2, AbstractC4917Be0.a("get", str, "Count"), new Class[0]);
        this.f50479i = AbstractC10181wz.access$1000(cls2, AbstractC5091Ee0.a("clear", str), new Class[0]);
    }
}
