package com.android.tools.r8.internal;

import java.lang.reflect.Method;

public final class C9513sz extends C9346rz {

    public final Method f52492f;

    public final Method f52493g;

    public C9513sz(C5685Ol c5685Ol, String str, Class cls, Class cls2, String str2) {
        super(c5685Ol, str, cls, cls2, str2);
        this.f52492f = AbstractC10181wz.access$1000(this.f52234a, "newBuilder", new Class[0]);
        this.f52493g = AbstractC10181wz.access$1000(cls2, AbstractC4917Be0.a("get", str, "Builder"), new Class[0]);
    }

    @Override
    public final void a(AbstractC7345fz abstractC7345fz, Object obj) {
        if (!this.f52234a.isInstance(obj)) {
            obj = ((InterfaceC7095eW) AbstractC10181wz.access$1100(this.f52492f, null, new Object[0])).mergeFrom((InterfaceC7262fW) obj).m1181buildPartial();
        }
        super.a(abstractC7345fz, obj);
    }

    @Override
    public final InterfaceC7095eW e(AbstractC7345fz abstractC7345fz) {
        return (InterfaceC7095eW) AbstractC10181wz.access$1100(this.f52493g, abstractC7345fz, new Object[0]);
    }

    @Override
    public final InterfaceC7095eW a() {
        return (InterfaceC7095eW) AbstractC10181wz.access$1100(this.f52492f, null, new Object[0]);
    }
}
