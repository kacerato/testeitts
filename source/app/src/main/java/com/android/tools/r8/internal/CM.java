package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.function.Consumer;
import java.util.function.Function;

public final class CM {

    public static final boolean f39192j = true;

    public final BN f39193a;

    public final C9115qd0 f39194b = new C9115qd0();

    public final ArrayList f39195c = new ArrayList();

    public final ArrayList f39196d = new ArrayList();

    public final ArrayList f39197e = new ArrayList();

    public final CH f39198f = new CH(16);

    public final CH f39199g = new CH(16);

    public final ArrayList f39200h = new ArrayList();

    public int f39201i = -1;

    public CM(BN bn2) {
        this.f39193a = bn2;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                CM.this.a((DN) obj);
            }
        };
        Consumer consumer2 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                CM.this.a((TM) obj);
            }
        };
        bn2.getClass();
        bn2.a(H4.a(consumer), H4.a(consumer2));
    }

    public final void a(C10251xP c10251xP) {
        this.f39199g.add(a(c10251xP.f53755a));
        this.f39200h.add(c10251xP.f53756b);
    }

    public final Integer b(PM pm2) {
        int i10;
        FO a10 = a(pm2);
        if (a10.e()) {
            i10 = this.f39195c.size();
            this.f39195c.add(a10.a());
            this.f39197e.add(new CH(16));
            if (!f39192j && i10 < 0) {
                throw new AssertionError();
            }
        } else {
            int a11 = a(a10.b().f41952b);
            int size = this.f39196d.size();
            this.f39196d.add(a10.b());
            ((TH) this.f39197e.get(a11)).add(size);
            if (!f39192j && size < 0) {
                throw new AssertionError();
            }
            i10 = -(size + 1);
        }
        return Integer.valueOf(i10);
    }

    public final void a(DN dn2) {
        dn2.f39507c.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                CM.this.a((ZM) obj);
            }
        });
        this.f39201i = this.f39195c.size();
        this.f39196d.size();
        dn2.f39508d.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                CM.this.a((C10251xP) obj);
            }
        });
    }

    public final void a(TM tm2) {
        this.f39201i = 0;
        this.f39199g.add(a(tm2.f44451d));
    }

    public final FO a(PM pm2) {
        return ((NM) ((QM) this.f39193a.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DN) obj).d();
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((TM) obj).c();
            }
        })).f43558a.get(pm2)).f42571a;
    }

    public final int a(MM mm2) {
        return ((Integer) this.f39194b.computeIfAbsent(mm2.f42280a, new Function() {
            @Override
            public final Object apply(Object obj) {
                return CM.this.b((PM) obj);
            }
        })).intValue();
    }

    public final void a(ZM zm2) {
        this.f39198f.add(a(zm2.f46230a));
    }
}
