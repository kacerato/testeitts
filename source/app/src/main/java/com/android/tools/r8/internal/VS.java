package com.android.tools.r8.internal;

import java.util.function.Function;

public final class VS implements InterfaceC5580Mq0 {

    public static final boolean f45059c = true;

    public final C6899dH f45060b;

    public VS(SG sg2) {
        if (!f45059c && sg2.isEmpty()) {
            throw new AssertionError();
        }
        C6899dH c6899dH = new C6899dH(sg2.size());
        c6899dH.putAll(sg2);
        this.f45060b = c6899dH;
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    public final boolean a(final InterfaceC6401aI interfaceC6401aI) {
        return AbstractC9907vK.b(this.f45060b.c(), new V60() {
            @Override
            public final boolean apply(Object obj) {
                boolean a10;
                a10 = InterfaceC6401aI.this.a(r2.a(), (N8) ((RG) obj).getValue());
                return a10;
            }
        });
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                VS.a(abstractC5754Pq0);
            }
        };
    }

    public final VS a(final AbstractC5308Hz abstractC5308Hz, final AbstractC5308Hz abstractC5308Hz2) {
        SG a10 = AbstractC5589Mv.a(this.f45060b, new InterfaceC6568bI() {
            @Override
            public final Object a(int i10, Object obj) {
                N8 a11;
                a11 = ((N8) obj).a(AbstractC5308Hz.this, abstractC5308Hz2);
                return a11;
            }
        });
        return a10 != null ? new VS(a10) : this;
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                SG sg2;
                sg2 = ((VS) obj).f45060b;
                return sg2;
            }
        };
        US us = new US();
        abstractC5754Pq0.getClass();
        C5696Oq0 c5696Oq0 = new C5696Oq0(us, us);
        abstractC5754Pq0.a(function, c5696Oq0, c5696Oq0);
    }
}
