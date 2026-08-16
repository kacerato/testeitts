package com.android.tools.r8.internal;

import java.util.function.BiConsumer;

public final class C6076Ve0 extends VB {

    public final C6133We0 f45115f;

    public C6076Ve0(C6133We0 c6133We0) {
        this.f45115f = c6133We0;
    }

    @Override
    public final QC e() {
        return new C6018Ue0(this);
    }

    @Override
    public final InterfaceC7200f6 f() {
        return this.f45115f;
    }

    @Override
    public final void forEach(final BiConsumer biConsumer) {
        biConsumer.getClass();
        this.f45115f.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                BiConsumer.this.accept(obj2, obj);
            }
        });
    }

    @Override
    public final Object get(Object obj) {
        if (obj != null && this.f45115f.f45494g != null) {
            int a10 = AbstractC9047qA.a(obj.hashCode());
            C6133We0 c6133We0 = this.f45115f;
            for (C9053qC c9053qC = c6133We0.f45494g[a10 & c6133We0.f45496i]; c9053qC != null; c9053qC = c9053qC.c()) {
                if (obj.equals(c9053qC.f46191c)) {
                    return c9053qC.f46190b;
                }
            }
        }
        return null;
    }

    @Override
    public final QC i() {
        return new C9553tC(this);
    }

    @Override
    public final boolean l() {
        return false;
    }

    @Override
    public final VB f() {
        return this.f45115f;
    }

    @Override
    public final int size() {
        return this.f45115f.f45495h.length;
    }
}
