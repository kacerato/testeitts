package com.android.tools.r8.internal;

import java.lang.reflect.Method;

public final class C8846oz extends C8679nz {

    public final Method f51400c;

    public final Method f51401d;

    public C8846oz(String str, Class cls, Class cls2) {
        super(str, cls, cls2);
        this.f51400c = AbstractC10181wz.access$1000(this.f51126a, "newBuilder", new Class[0]);
        this.f51401d = AbstractC10181wz.access$1000(cls2, AbstractC4917Be0.a("get", str, "Builder"), new Class[]{Integer.TYPE});
    }

    @Override
    public final void a(AbstractC7345fz abstractC7345fz, int i10, Object obj) {
        if (!this.f51126a.isInstance(obj)) {
            obj = ((InterfaceC7095eW) AbstractC10181wz.access$1100(this.f51400c, null, new Object[0])).mergeFrom((InterfaceC7262fW) obj).build();
        }
        super.a(abstractC7345fz, i10, obj);
    }

    @Override
    public final void b(AbstractC7345fz abstractC7345fz, Object obj) {
        if (!this.f51126a.isInstance(obj)) {
            obj = ((InterfaceC7095eW) AbstractC10181wz.access$1100(this.f51400c, null, new Object[0])).mergeFrom((InterfaceC7262fW) obj).build();
        }
        super.b(abstractC7345fz, obj);
    }

    @Override
    public final InterfaceC7095eW a() {
        return (InterfaceC7095eW) AbstractC10181wz.access$1100(this.f51400c, null, new Object[0]);
    }

    @Override
    public final InterfaceC7095eW a(AbstractC7345fz abstractC7345fz, int i10) {
        return (InterfaceC7095eW) AbstractC10181wz.access$1100(this.f51401d, abstractC7345fz, new Object[]{Integer.valueOf(i10)});
    }
}
