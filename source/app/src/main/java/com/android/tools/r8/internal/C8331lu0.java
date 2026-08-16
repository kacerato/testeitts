package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;

public final class C8331lu0 {

    public static final boolean f50137h = true;

    public final boolean f50138a;

    public final C4798y f50141d;

    public final com.android.tools.r8.ir.optimize.r f50142e;

    public final C7215fB f50143f;

    public boolean f50139b = false;

    public int f50140c = 1;

    public final C6286Yx0 f50144g = new C6286Yx0(2);

    public C8331lu0(C4798y c4798y, C7215fB c7215fB, boolean z10) {
        this.f50141d = c4798y;
        this.f50142e = new com.android.tools.r8.ir.optimize.r(c4798y, c7215fB);
        this.f50143f = c7215fB;
        this.f50138a = z10;
    }

    public final void a() {
        while (this.f50144g.b()) {
            C6286Yx0 c6286Yx0 = this.f50144g;
            Object c10 = c6286Yx0.c();
            c6286Yx0.f46126b.remove(c10);
            C10340xw0 c10340xw0 = (C10340xw0) c10;
            AbstractC8999pu0 u10 = c10340xw0.u();
            AbstractC8999pu0 d10 = c10340xw0.j() ? c10340xw0.l().d(this.f50141d) : c10340xw0.f53886c.a(this.f50141d);
            boolean z10 = f50137h;
            if (!z10 && !this.f50138a && !d10.w()) {
                throw new AssertionError();
            }
            if (!z10 && u10.w() && !d10.w()) {
                throw new AssertionError();
            }
            a(c10340xw0, d10);
        }
    }

    public final void b() {
        this.f50140c = 3;
        boolean z10 = f50137h;
        if (!z10) {
            if (!z10 && !this.f50142e.f54922c.isEmpty()) {
                throw new AssertionError();
            }
            if (!z10 && this.f50144g.b()) {
                throw new AssertionError();
            }
        }
        this.f50143f.B().forEach(new C8633nj1(this));
        a();
    }

    public final void c() {
        this.f50140c = 2;
        boolean z10 = f50137h;
        if (!z10) {
            if (!z10 && !this.f50142e.f54922c.isEmpty()) {
                throw new AssertionError();
            }
            if (!z10 && this.f50144g.b()) {
                throw new AssertionError();
            }
        }
        this.f50143f.B().forEach(new C8633nj1(this));
        a();
    }

    public final void a(Iterable iterable, Consumer consumer) {
        a(iterable, 3);
        a(consumer);
    }

    public final void a(Consumer consumer) {
        boolean z10;
        Set c10 = AbstractC5513Ll0.c();
        while (true) {
            com.android.tools.r8.ir.optimize.r rVar = this.f50142e;
            boolean z11 = false;
            if (!rVar.f54922c.isEmpty()) {
                Iterator<W5> it = rVar.f54921b.f47897d.iterator();
                boolean z12 = false;
                while (it.hasNext()) {
                    Y5 I10 = it.next().I();
                    while (I10.hasNext()) {
                        AbstractC10561zE next = I10.next();
                        next.getClass();
                        if (next instanceof C4) {
                            C4 B10 = next.B();
                            if (rVar.f54922c.remove(B10)) {
                                z10 = true;
                                if (B10.v2().M()) {
                                    com.android.tools.r8.ir.optimize.r.a(B10, I10, c10, consumer);
                                } else if (B10.u2() && B10.f39117k.a().n().c(B10.v2().u(), rVar.f54920a)) {
                                    if (!com.android.tools.r8.ir.optimize.r.f54919d) {
                                        C8854p10 d10 = B10.f39117k.d();
                                        C8854p10 B11 = B10.v2().u().B();
                                        if (d10.a(B11) != B11) {
                                            throw new AssertionError();
                                        }
                                    }
                                } else if (B10.f39117k.d().d() && !B10.v2().M() && B10.v2().u().v() && !B10.v2().u().B().e()) {
                                    if (!C4.f39116m && !B10.f39117k.d().d()) {
                                        throw new AssertionError();
                                    }
                                    boolean z13 = AbstractC10330xt.f53865a;
                                    B10.f39117k = C7520h10.f48413b;
                                } else {
                                    com.android.tools.r8.ir.optimize.r.a(B10, I10, c10, consumer);
                                }
                                z12 |= z10;
                            }
                            z10 = false;
                            z12 |= z10;
                        }
                    }
                }
                rVar.f54922c.clear();
                z11 = z12;
            }
            if (z11) {
                a(c10, 2);
                C10696a c10696a = new C10696a();
                this.f50143f.a((C6382aB) null, c10696a);
                a(c10696a, 3);
                c10.clear();
            } else {
                if (this.f50139b) {
                    return;
                }
                this.f50143f.x();
                return;
            }
        }
    }

    public static void a(C4798y c4798y, C7215fB c7215fB) {
        C8331lu0 c8331lu0 = new C8331lu0(c4798y, c7215fB, false);
        c8331lu0.f50140c = 5;
        c7215fB.B().forEach(new C8633nj1(c8331lu0));
        c8331lu0.a();
    }

    public final void a(Iterable iterable, int i10) {
        this.f50140c = i10;
        if (!f50137h && this.f50144g.b()) {
            throw new AssertionError();
        }
        iterable.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8331lu0.this.a((C10340xw0) obj);
            }
        });
        a();
    }

    public final void a(C10340xw0 c10340xw0) {
        this.f50144g.a(c10340xw0);
    }

    public final void a(W5 w52) {
        Y5 it = w52.l().iterator();
        while (it.hasNext()) {
            AbstractC10561zE next = it.next();
            C10340xw0 d10 = next.d();
            if (d10 != null && !next.k1()) {
                if (next.d1()) {
                    a(d10, next.a(this.f50141d));
                } else {
                    this.f50144g.a(d10);
                }
            }
        }
        Iterator<C7201f60> it2 = w52.s().iterator();
        while (it2.hasNext()) {
            this.f50144g.a(it2.next());
        }
    }

    public final void a(C10340xw0 c10340xw0, AbstractC8999pu0 abstractC8999pu0) {
        boolean z10 = f50137h;
        if (!z10 && this.f50140c == 1) {
            throw new AssertionError();
        }
        if (c10340xw0.d(new C10231xF0())) {
            this.f50142e.f54922c.add(c10340xw0.r().B());
        }
        AbstractC8999pu0 u10 = c10340xw0.u();
        if (u10.equals(abstractC8999pu0)) {
            return;
        }
        if (!z10 && this.f50140c == 5) {
            throw new AssertionError((Object) ("Unexpected type change for value " + ((Object) c10340xw0) + " defined by " + (c10340xw0.j() ? "phi" : c10340xw0.r()) + ": was " + ((Object) abstractC8999pu0) + ", but expected " + ((Object) u10) + " (context: " + ((Object) this.f50143f.j()) + ")"));
        }
        abstractC8999pu0.getClass();
        if (abstractC8999pu0 instanceof C10540z7) {
            return;
        }
        int b10 = AbstractC4291c.b(this.f50140c);
        if (b10 == 1) {
            c10340xw0.a(this.f50141d, abstractC8999pu0);
        } else if (b10 == 2) {
            c10340xw0.a(this.f50141d, this.f50143f.j(), abstractC8999pu0);
        } else if (b10 == 3) {
            c10340xw0.a(abstractC8999pu0);
        } else {
            throw new C5417Jv0();
        }
        Iterator<AbstractC10561zE> it = c10340xw0.b0().iterator();
        while (it.hasNext()) {
            C10340xw0 d10 = it.next().d();
            if (d10 != null) {
                this.f50144g.a(d10);
            }
        }
        Iterator it2 = c10340xw0.a0().iterator();
        while (it2.hasNext()) {
            this.f50144g.a((C7201f60) it2.next());
        }
    }

    public static com.android.tools.r8.graph.M2 a(AbstractC10330xt abstractC10330xt, com.android.tools.r8.graph.A2 a22, C4798y c4798y) {
        com.android.tools.r8.graph.M2 s02 = a22.s0();
        AbstractC8999pu0 a10 = abstractC10330xt.a(s02.b((C4798y<?>) c4798y));
        if (a10.s()) {
            com.android.tools.r8.graph.M2 a11 = a10.b().a(c4798y.b());
            if (((C4514j) c4798y.f()).c(a11, s02)) {
                return a11;
            }
        }
        return s02;
    }
}
