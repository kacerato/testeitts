package com.android.tools.r8.internal;

import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

public final class C6132We extends AbstractC9997vt0 {

    public final C10331xt0 f45490a;

    public final InterfaceC10529z30 f45491b;

    public C6132We(C5713Oz c5713Oz, Type type, AbstractC9997vt0 abstractC9997vt0, InterfaceC10529z30 interfaceC10529z30) {
        this.f45490a = new C10331xt0(c5713Oz, abstractC9997vt0, type);
        this.f45491b = interfaceC10529z30;
    }

    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        Collection collection = (Collection) obj;
        if (collection == null) {
            c9075qL.i();
            return;
        }
        c9075qL.d();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            this.f45490a.a(c9075qL, it.next());
        }
        c9075qL.f();
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        Collection collection = (Collection) this.f45491b.a();
        c8240lL.c();
        while (c8240lL.k()) {
            collection.add(this.f45490a.f53867b.a(c8240lL));
        }
        c8240lL.g();
        return collection;
    }
}
