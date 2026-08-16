package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class C8930pW implements InterfaceC9097qW {

    public final C5476Kw f51539a;

    public C8930pW(C5476Kw c5476Kw) {
        this.f51539a = c5476Kw;
    }

    @Override
    public final int a() {
        return 2;
    }

    @Override
    public final InterfaceC9097qW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        Collection collection;
        C5476Kw c5476Kw = this.f51539a;
        c5476Kw.getClass();
        if (!c5685Ol.k()) {
            throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
        }
        C5476Kw.c(c5685Ol, obj);
        Object a10 = c5476Kw.a((InterfaceC5360Iw) c5685Ol);
        if (a10 == null) {
            collection = new ArrayList();
            c5476Kw.f41821a.a(c5685Ol, collection);
        } else {
            collection = (List) a10;
        }
        collection.add(obj);
        return this;
    }

    @Override
    public final InterfaceC7262fW b(AbstractC4916Be abstractC4916Be, C10670zv c10670zv, C5685Ol c5685Ol) {
        throw null;
    }

    @Override
    public final InterfaceC9097qW setField(C5685Ol c5685Ol, Object obj) {
        this.f51539a.b(c5685Ol, obj);
        return this;
    }

    @Override
    public final void a(C10002vv c10002vv, C4990Cl c4990Cl, int i10) {
        if (c10002vv.f53374d.get(new C9835uv(c4990Cl, i10)) != null) {
            throw new ClassCastException();
        }
    }

    @Override
    public final InterfaceC7262fW a(AbstractC4916Be abstractC4916Be, C10670zv c10670zv, C5685Ol c5685Ol) {
        throw null;
    }

    @Override
    public final int a(C5685Ol c5685Ol) {
        return c5685Ol.l() ? 2 : 1;
    }
}
