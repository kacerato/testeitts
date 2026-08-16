package com.android.tools.r8.internal;

import java.util.function.BiConsumer;

public final class C5862Rm0 extends VB {

    public final transient Object f43987f;

    public final transient Object f43988g;

    public final transient C5862Rm0 f43989h;

    public transient C5862Rm0 f43990i;

    public C5862Rm0(Object obj, Object obj2) {
        AbstractC5496Le.a(obj, obj2);
        this.f43987f = obj;
        this.f43988g = obj2;
        this.f43989h = null;
    }

    @Override
    public final boolean containsKey(Object obj) {
        return this.f43987f.equals(obj);
    }

    @Override
    public final boolean containsValue(Object obj) {
        return this.f43988g.equals(obj);
    }

    @Override
    public final QC e() {
        ZB zb2 = new ZB(this.f43987f, this.f43988g);
        int i10 = QC.f43505c;
        return new C5978Tm0(zb2);
    }

    @Override
    public final void forEach(BiConsumer biConsumer) {
        biConsumer.getClass();
        biConsumer.accept(this.f43987f, this.f43988g);
    }

    @Override
    public final Object get(Object obj) {
        if (this.f43987f.equals(obj)) {
            return this.f43988g;
        }
        return null;
    }

    @Override
    public final QC i() {
        Object obj = this.f43987f;
        int i10 = QC.f43505c;
        return new C5978Tm0(obj);
    }

    @Override
    public final boolean l() {
        return false;
    }

    @Override
    public final VB f() {
        C5862Rm0 c5862Rm0 = this.f43989h;
        if (c5862Rm0 != null) {
            return c5862Rm0;
        }
        C5862Rm0 c5862Rm02 = this.f43990i;
        if (c5862Rm02 != null) {
            return c5862Rm02;
        }
        C5862Rm0 c5862Rm03 = new C5862Rm0(this.f43988g, this.f43987f, this);
        this.f43990i = c5862Rm03;
        return c5862Rm03;
    }

    @Override
    public final int size() {
        return 1;
    }

    public C5862Rm0(Object obj, Object obj2, C5862Rm0 c5862Rm0) {
        this.f43987f = obj;
        this.f43988g = obj2;
        this.f43989h = c5862Rm0;
    }
}
