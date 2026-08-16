package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4539k5;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.shaking.C11245i;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;

public final class C5027Dc0 extends AbstractC6143Wj {

    public static final boolean f39563i = true;

    public final AbstractC8374m80 f39564f;

    public AbstractC8374m80 f39565g;

    public final C5085Ec0 f39566h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5027Dc0(C5085Ec0 c5085Ec0) {
        super(c5085Ec0.f43915b, c5085Ec0.f39947e);
        this.f39566h = c5085Ec0;
        this.f39564f = AbstractC8374m80.c();
        this.f39565g = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x033f, code lost:
    
        if (r11.a(r4.getReference()) != false) goto L175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00d9, code lost:
    
        if (r1.R0().isEmpty() != false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0328, code lost:
    
        if (r11.a(r4.getReference()) != false) goto L175;
     */
    /* JADX WARN: Removed duplicated region for block: B:129:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x02a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(AbstractC8374m80 abstractC8374m80, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.H0 h02;
        com.android.tools.r8.graph.H0 h03;
        com.android.tools.r8.graph.H0 p10;
        com.android.tools.r8.shaking.I1 a10 = this.f45515a.a(h52);
        if (a10.e(this.f45515a.E()) && a10.c(this.f45515a.E())) {
            C5085Ec0 c5085Ec0 = this.f39566h;
            com.android.tools.r8.graph.H0 h04 = null;
            if (h52.getAccessFlags().H() && ((C4516j1) h52.d()).Q0() == null) {
                com.android.tools.r8.graph.H2 holder = h52.getHolder();
                if (holder.a1() == null) {
                    if (!C5085Ec0.f39946i && holder.getType() != c5085Ec0.f43915b.b().f38068i2) {
                        throw new AssertionError();
                    }
                } else {
                    C11245i c11245i = (C11245i) c5085Ec0.f43915b.f();
                    com.android.tools.r8.graph.M2 a12 = holder.a1();
                    com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) h52.getReference();
                    boolean z10 = C4514j.f37304i;
                    if (!z10) {
                        c11245i.c();
                    }
                    if (!z10) {
                        c11245i.c();
                    } else {
                        c11245i.getClass();
                    }
                    com.android.tools.r8.graph.Z4 a11 = c11245i.a(a12, a22.y0(), a22.t0());
                    if (!a11.v()) {
                        if (a11.w()) {
                            Z4.c<?> o10 = a11.o();
                            h02 = com.android.tools.r8.graph.H0.a(o10.f37021c, o10.f37022d);
                            if (h02.d().d1()) {
                                if (h02.d().b(c5085Ec0.f43915b, (C4516j1) h52.d())) {
                                    if (h02.getHolder().isInterface()) {
                                    }
                                }
                            }
                        } else {
                            Z4.a k10 = a11.k();
                            if (k10 != null) {
                                C4798y<?> c4798y = c5085Ec0.f43915b;
                                if (k10.b((com.android.tools.r8.graph.E0) holder, c4798y, (C4514j) c4798y.f()) && !holder.R0().isEmpty()) {
                                    Iterator<com.android.tools.r8.graph.M2> it = holder.R0().iterator();
                                    h02 = null;
                                    while (it.hasNext()) {
                                        com.android.tools.r8.graph.M2 next = it.next();
                                        C11245i c11245i2 = (C11245i) c5085Ec0.f43915b.f();
                                        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) h52.getReference();
                                        if (!C4514j.f37304i) {
                                            c11245i2.c();
                                        }
                                        Z4.c<?> o11 = c11245i2.b(next, a23).o();
                                        if (o11 != null && o11.q().d1()) {
                                            if (o11.q().b(c5085Ec0.f43915b, (C4516j1) h52.d())) {
                                                if (h02 == null) {
                                                    h02 = com.android.tools.r8.graph.H0.a(o11.f37021c, o11.f37022d);
                                                }
                                            }
                                        }
                                    }
                                    if (!C5085Ec0.f39946i && h02 == null) {
                                        throw new AssertionError();
                                    }
                                }
                            }
                        }
                        if (h02 != null) {
                            C5085Ec0 c5085Ec02 = this.f39566h;
                            C4516j1 c4516j1 = (C4516j1) h52.d();
                            c4516j1.L0();
                            S7 k11 = c4516j1.f37320m.k();
                            if ((c4516j1.e1() || k11 != null) && !c4516j1.d1() && (!(c5085Ec02.f43915b.E().f50697l instanceof ClassFileConsumer) || !c4516j1.f37314g.L())) {
                                C6405aK c6405aK = new C6405aK(c5085Ec02.f43915b, h52);
                                h52.a(c6405aK);
                                com.android.tools.r8.graph.A2 a24 = c6405aK.f46490f;
                                if (a24 != null && a24.c((com.android.tools.r8.graph.A2) h52.getReference()) && c5085Ec02.a(h52, c6405aK.f46489e, a24) && (p10 = ((C11245i) c5085Ec02.f43915b.f()).f(a24).p()) != null) {
                                    if (p10.d().b(c5085Ec02.f43915b, (C4516j1) h52.d()) && (!c4516j1.w0() || !h52.getHolder().c1() || !h52.getHolder().a(c5085Ec02.f43915b, p10))) {
                                        h04 = p10;
                                    }
                                }
                            }
                            if (h04 == null) {
                                return;
                            } else {
                                h03 = h04;
                            }
                        } else {
                            h03 = h02;
                        }
                        if (!(h03 instanceof com.android.tools.r8.graph.A4)) {
                            com.android.tools.r8.graph.A2 a13 = this.f39566h.a(h03, new C4539k5(h52.getHolder(), h03.getHolder().G(), h03.d()), AbstractC8374m80.f50207d, EnumC8071kK.f49583g, (com.android.tools.r8.graph.A2) h52.getReference());
                            com.android.tools.r8.graph.E0 g10 = this.f45515a.g(a13.s0());
                            boolean z11 = f39563i;
                            if (!z11 && g10 == null) {
                                throw new AssertionError();
                            }
                            if (!z11 && g10 == h52.getHolder()) {
                                throw new AssertionError();
                            }
                            C10614zc0 c10614zc0 = this.f39566h.f39949g;
                            synchronized (c10614zc0) {
                                try {
                                    if (!C10614zc0.f54411c && !a13.s0().a(g10.getType())) {
                                        throw new AssertionError();
                                    }
                                    c10614zc0.f54413b.put((com.android.tools.r8.graph.A2) h52.getReference(), a13);
                                    if (g10.isInterface()) {
                                        c10614zc0.f54412a.add(g10.getType());
                                    }
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                        } else {
                            if ((!((C4516j1) h52.d()).j1() || this.f39566h.f39948f.f38953a) && (!h52.getHolder().isInterface() || !m(h52.getHolder()).f45165b.containsKey(h52.getReference()))) {
                                com.android.tools.r8.graph.H2 holder2 = h52.getHolder();
                                if (h03.getHolder().getAccessFlags().l() || (!holder2.getAccessFlags().l() && h52.a(h03.getReference()))) {
                                    if (!h03.getAccessFlags().l()) {
                                        com.android.tools.r8.graph.L4 accessFlags = h52.getAccessFlags();
                                        com.android.tools.r8.graph.L4 accessFlags2 = h03.getAccessFlags();
                                        if (accessFlags.f()) {
                                            if (!accessFlags2.h()) {
                                            }
                                        }
                                        if (accessFlags.k()) {
                                            if (accessFlags2.k()) {
                                            }
                                        }
                                    }
                                    this.f39566h.f39949g.a(h03.getHolder(), h03.getReference(), h52);
                                }
                            }
                            if (this.f39566h.f39950h) {
                                return;
                            }
                        }
                        abstractC8374m80.add((AbstractC8374m80) h52);
                    }
                }
            }
            h02 = null;
            if (h02 != null) {
            }
            if (!(h03 instanceof com.android.tools.r8.graph.A4)) {
            }
            abstractC8374m80.add((AbstractC8374m80) h52);
        }
    }

    @Override
    public final void j(com.android.tools.r8.graph.H2 h22) {
    }

    @Override
    public final void l(com.android.tools.r8.graph.H2 h22) {
        final AbstractC8374m80 c10 = AbstractC8374m80.c();
        h22.l(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5027Dc0.this.a(c10, (com.android.tools.r8.graph.H5) obj);
            }
        });
        if (c10.f45165b.isEmpty()) {
            return;
        }
        com.android.tools.r8.graph.N4 b02 = h22.b0();
        Set<C4516j1> b10 = c10.b();
        b02.getClass();
        if (!b10.isEmpty()) {
            b02.f36638b.a((Set) b10);
            b02.f36639c = C4516j1.f37311v;
        }
        this.f39564f.f45165b.putAll(c10.f45165b);
    }

    public final AbstractC8374m80 m(com.android.tools.r8.graph.H2 h22) {
        AbstractC8374m80 abstractC8374m80 = this.f39565g;
        if (abstractC8374m80 != null) {
            return abstractC8374m80;
        }
        final C4798y c4798y = this.f45515a;
        this.f39565g = AbstractC8374m80.c();
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) h22);
        while (c6286Yx0.b()) {
            com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) c6286Yx0.c();
            h23.h(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C5027Dc0.this.a(c4798y, (com.android.tools.r8.graph.H5) obj);
                }
            }, new u.P0());
            c6286Yx0.b((Iterable) this.f45516b.a(h23));
        }
        return this.f39565g;
    }

    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        h52.a(new C4969Cc0(this, this.f45515a, h52, c4798y));
    }
}
