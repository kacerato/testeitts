package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.InterfaceC4610o0;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class AM {

    public static final boolean f38597f = true;

    public final C4514j f38598a;

    public final EM f38599b;

    public CM f38600c;

    public C10579zM f38601d;

    public Consumer f38602e;

    public AM(C4514j c4514j, EM em2) {
        this.f38598a = c4514j;
        this.f38599b = em2;
    }

    public final void a(int i10) {
        if (i10 == this.f38600c.f39195c.size()) {
            BM a10 = this.f38601d.a(this.f38600c);
            if (a10.f38884c.isEmpty()) {
                return;
            }
            this.f38602e.accept(a10);
            return;
        }
        WM wm2 = (WM) this.f38600c.f39195c.get(i10);
        if (wm2.f45373b.f45976a.d()) {
            com.android.tools.r8.graph.E0 g10 = this.f38598a.g(this.f38598a.b().d(wm2.f45373b.f45976a.b()));
            if (g10 == null) {
                a(i10, 0, (TH) null);
                return;
            }
            EM em2 = this.f38599b;
            C4514j c4514j = this.f38598a;
            em2.getClass();
            if (EM.a(g10.getType(), wm2.f45373b.f45976a) && EM.a(g10.k0(), wm2.f45374c) && em2.a(g10, wm2.f45373b.f45977b, c4514j)) {
                a(i10, g10);
                return;
            } else {
                a(i10, 0, (TH) null);
                return;
            }
        }
        for (com.android.tools.r8.graph.H2 h22 : this.f38598a.d()) {
            EM em3 = this.f38599b;
            C4514j c4514j2 = this.f38598a;
            em3.getClass();
            if (EM.a(h22.getType(), wm2.f45373b.f45976a) && EM.a(h22.k0(), wm2.f45374c) && em3.a(h22, wm2.f45373b.f45977b, c4514j2)) {
                a(i10, h22);
            }
        }
    }

    public final void a(int i10, com.android.tools.r8.graph.E0 e02) {
        this.f38601d.f54361a.set(i10, e02);
        a(0, (TH) this.f38600c.f39197e.get(i10), e02, i10 + 1);
    }

    public final void a(int i10, int i11, TH th2) {
        if (i10 >= this.f38600c.f39201i) {
            this.f38601d.f54361a.set(i10, null);
            for (int i12 = 0; i12 < i11; i12++) {
                C10579zM c10579zM = this.f38601d;
                c10579zM.f54362b.set(th2.c(i12), null);
            }
            a(i10 + 1);
        }
    }

    public final void a(final int i10, final TH th2, final com.android.tools.r8.graph.E0 e02, final int i11) {
        if (i10 == th2.size()) {
            a(i11);
            return;
        }
        final int c10 = th2.c(i10);
        LO lo = (LO) this.f38600c.f39196d.get(c10);
        final U6 u62 = new U6(false);
        final Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                AM.this.a(u62, c10, i10, th2, i11, (InterfaceC4610o0) obj);
            }
        };
        lo.f41953c.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AM.this.a(e02, consumer, (OO) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                AM.this.a(e02, consumer, (C10249xO) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                AM.this.a(e02, consumer, (WO) obj);
            }
        });
        if (u62.c()) {
            a(i11 - 1, i10, th2);
        }
    }

    public final void a(U6 u62, int i10, int i11, TH th2, int i12, InterfaceC4610o0 interfaceC4610o0) {
        u62.d();
        int i13 = i11 + 1;
        if (interfaceC4610o0.s()) {
            C10579zM c10579zM = this.f38601d;
            c10579zM.f54362b.set(i10, interfaceC4610o0.g0());
        } else {
            boolean z10 = f38597f;
            if (!z10 && !interfaceC4610o0.e0()) {
                throw new AssertionError();
            }
            if (!z10 && interfaceC4610o0.d0().f1()) {
                throw new AssertionError();
            }
            C10579zM c10579zM2 = this.f38601d;
            c10579zM2.f54363c = true;
            c10579zM2.f54362b.set(i10, null);
        }
        a(i13, th2, interfaceC4610o0.a(), i12);
    }

    public final void a(com.android.tools.r8.graph.E0 e02, final Consumer consumer, final OO oo) {
        if (!e02.f1()) {
            oo.getClass();
            if (oo == NO.f42575d) {
                consumer.accept(e02);
                return;
            }
        }
        Consumer<? super com.android.tools.r8.graph.F0> consumer2 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                AM.this.a(oo, consumer, (com.android.tools.r8.graph.G0) obj);
            }
        };
        e02.b(consumer2);
        e02.c((Consumer<? super com.android.tools.r8.graph.H0>) consumer2);
    }

    public final void a(OO oo, Consumer consumer, com.android.tools.r8.graph.G0 g02) {
        EM em2 = this.f38599b;
        AbstractC4479h1 d10 = g02.d();
        em2.getClass();
        if (!EM.f39837b && !oo.g()) {
            throw new AssertionError();
        }
        oo.getClass();
        if (oo == NO.f42575d || (EM.a(d10.k0(), oo.e()) && EM.a(d10.getAccessFlags(), oo.d()))) {
            consumer.accept(g02);
        }
    }

    public final void a(com.android.tools.r8.graph.E0 e02, Consumer consumer, final C10249xO c10249xO) {
        e02.a(consumer, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AM.this.a(c10249xO, (C4460g1) obj);
            }
        });
    }

    public final boolean a(C10249xO c10249xO, C4460g1 c4460g1) {
        EM em2 = this.f38599b;
        C4514j c4514j = this.f38598a;
        em2.getClass();
        if (c10249xO.f53749b.b() && c10249xO.f53750c.a()) {
            C9915vO c9915vO = c10249xO.f53751d;
            c9915vO.getClass();
            if (C9915vO.f53087b == c9915vO) {
                AbstractC10583zO abstractC10583zO = c10249xO.f53752e;
                abstractC10583zO.getClass();
                if (((C10416yO) abstractC10583zO).f54006a instanceof C10585zP) {
                    return true;
                }
            }
        }
        if (!EM.a(c4460g1.C0(), c10249xO.f53751d.f53088a) || !em2.a(c4460g1.getType(), ((C10416yO) c10249xO.f53752e).f54006a, c4514j) || !EM.a(c4460g1.k0(), c10249xO.f53749b)) {
            return false;
        }
        C4537k3 accessFlags = c4460g1.getAccessFlags();
        C9748uO c9748uO = c10249xO.f53750c;
        return c9748uO.a() || (EM.a(accessFlags, c9748uO) && EM.a(AbstractC4458g.d(accessFlags.f37197c, 64), c9748uO.f52843f) && EM.a(AbstractC4458g.d(accessFlags.f37197c, 128), c9748uO.f52844g));
    }

    public final void a(com.android.tools.r8.graph.E0 e02, Consumer consumer, final WO wo) {
        e02.b(consumer, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AM.this.a(wo, (C4516j1) obj);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00ff A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(WO wo, C4516j1 c4516j1) {
        boolean a10;
        boolean z10;
        com.android.tools.r8.graph.L4 accessFlags;
        QO qo;
        EM em2 = this.f38599b;
        C4514j c4514j = this.f38598a;
        em2.getClass();
        if (wo.f45384b.b() && wo.f45385c.a()) {
            RO ro = wo.f45386d;
            ro.getClass();
            if (RO.f43886b == ro && wo.f45387e.b()) {
                UO uo = wo.f45388f;
                uo.getClass();
                if (uo instanceof SO) {
                    return true;
                }
            }
        }
        if (EM.a(c4516j1.C0(), wo.f45386d.f43890a)) {
            com.android.tools.r8.graph.M2 Y02 = c4516j1.Y0();
            ZO zo = wo.f45387e;
            if (zo.b()) {
                a10 = true;
            } else if (zo instanceof YO) {
                a10 = Y02.S0();
            } else {
                a10 = em2.a(Y02, zo.a(), c4514j);
            }
            if (a10) {
                com.android.tools.r8.graph.O2 V02 = c4516j1.V0();
                UO uo2 = wo.f45388f;
                uo2.getClass();
                if (!(uo2 instanceof SO)) {
                    List a11 = uo2.a();
                    if (V02.size() == a11.size()) {
                        int size = V02.size();
                        for (int i10 = 0; i10 < size; i10++) {
                            if (em2.a(V02.j(i10), (DP) a11.get(i10), c4514j)) {
                            }
                        }
                    }
                    z10 = false;
                    if (z10 && EM.a(c4516j1.k0(), wo.f45384b)) {
                        accessFlags = c4516j1.getAccessFlags();
                        qo = wo.f45385c;
                        if (qo.a() || (EM.a(accessFlags, qo) && EM.a(accessFlags.L(), qo.f43568f) && EM.a(accessFlags.I(), qo.f43569g) && EM.a(accessFlags.J(), qo.f43570h) && EM.a(accessFlags.H(), qo.f43571i) && EM.a(accessFlags.K(), qo.f43572j))) {
                            return true;
                        }
                    }
                }
                z10 = true;
                if (z10) {
                    accessFlags = c4516j1.getAccessFlags();
                    qo = wo.f45385c;
                    if (qo.a()) {
                        if (qo.a() || (EM.a(accessFlags, qo) && EM.a(accessFlags.L(), qo.f43568f) && EM.a(accessFlags.I(), qo.f43569g) && EM.a(accessFlags.J(), qo.f43570h) && EM.a(accessFlags.H(), qo.f43571i) && EM.a(accessFlags.K(), qo.f43572j))) {
                        }
                    }
                    if (qo.a() || (EM.a(accessFlags, qo) && EM.a(accessFlags.L(), qo.f43568f) && EM.a(accessFlags.I(), qo.f43569g) && EM.a(accessFlags.J(), qo.f43570h) && EM.a(accessFlags.H(), qo.f43571i) && EM.a(accessFlags.K(), qo.f43572j))) {
                    }
                }
            }
        }
        return false;
    }
}
