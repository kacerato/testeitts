package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6333Zs0;
import com.android.tools.r8.internal.C10070wI;
import com.android.tools.r8.internal.C4875Al0;
import com.android.tools.r8.internal.C6162Ws0;
import com.android.tools.r8.internal.C6276Ys0;
import com.android.tools.r8.internal.C6300Zd;
import com.android.tools.r8.internal.C8085kR;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C8699o50;
import com.android.tools.r8.internal.InterfaceC7328ft0;
import com.android.tools.r8.internal.InterfaceC7495gt0;
import com.android.tools.r8.shaking.C11349o2;
import com.android.tools.r8.shaking.C11450u2;
import com.android.tools.r8.synthesis.C11549b;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Function;

public class C4514j extends C4477h {

    public static final boolean f37304i = true;

    public C11450u2 f37305h;

    public C4514j(C11549b c11549b, C6300Zd c6300Zd, C11349o2 c11349o2, C11450u2 c11450u2) {
        super(c6300Zd, c11549b, c11349o2);
        this.f37305h = c11450u2;
    }

    @Override
    public C4514j a(AbstractC4780x0 abstractC4780x0) {
        return a(g().a(abstractC4780x0));
    }

    public boolean c(M2 m22, M2 m23) {
        boolean z10 = f37304i;
        if (!z10 && m22 == null) {
            throw new AssertionError();
        }
        if (!z10 && m23 == null) {
            throw new AssertionError();
        }
        if (!z10 && !m22.I0()) {
            throw new AssertionError();
        }
        if (z10 || m23.I0()) {
            return m22 == m23 || b(m22, m23);
        }
        throw new AssertionError();
    }

    public C10070wI d(M2 m22) {
        if (!f37304i && !m22.I0()) {
            throw new AssertionError();
        }
        E0 g10 = g(m22);
        if (g10 == null) {
            return C10070wI.f53466b;
        }
        if (g10.f36247g == b().f38068i2 && g10.f36248h.isEmpty()) {
            if (g10.isInterface()) {
                return C10070wI.c(m22);
            }
            return C10070wI.f53466b;
        }
        C10070wI.a a10 = C10070wI.a();
        if (g10.isInterface()) {
            a10.a(m22, true);
        }
        Set c10 = AbstractC5513Ll0.c();
        ArrayDeque arrayDeque = new ArrayDeque();
        while (g10 != null) {
            Iterator<M2> it = g10.f36248h.iterator();
            while (it.hasNext()) {
                M2 next = it.next();
                if (!c10.contains(next)) {
                    boolean a11 = C10070wI.a(next, g10.getType(), j());
                    a10.a(next, a11);
                    if (a11) {
                        c10.add(next);
                    }
                    E0 g11 = g(next);
                    if (g11 != null && !g11.f36248h.isEmpty()) {
                        arrayDeque.add(new C8699o50(g11, Boolean.valueOf(a11)));
                    }
                }
            }
            M2 m23 = g10.f36247g;
            if (m23 == null || m23 == j().m().f38068i2) {
                break;
            }
            g10 = g(g10.f36247g);
        }
        while (!arrayDeque.isEmpty()) {
            C8699o50 c8699o50 = (C8699o50) arrayDeque.poll();
            E0 e02 = (E0) c8699o50.a();
            if (!f37304i && e02.f36248h.isEmpty()) {
                throw new AssertionError();
            }
            Iterator<M2> it2 = e02.f36248h.iterator();
            while (it2.hasNext()) {
                M2 next2 = it2.next();
                if (!c10.contains(next2)) {
                    boolean z10 = ((Boolean) c8699o50.b()).booleanValue() && C10070wI.a(next2, e02.getType(), j());
                    a10.a(next2, z10);
                    if (z10) {
                        c10.add(next2);
                    }
                    E0 g12 = g(next2);
                    if (g12 != null && !g12.f36248h.isEmpty()) {
                        arrayDeque.add(new C8699o50(g12, Boolean.valueOf(z10)));
                    }
                }
            }
        }
        return a10.a();
    }

    public Z4 e(A2 a22) {
        if (!f37304i) {
            c();
        }
        return new U4(new Ed(this), b(), true, true).a(a22);
    }

    public Z4 f(A2 a22) {
        if (!f37304i) {
            c();
        }
        return U4.a(b(), new Fd(this)).a(a22);
    }

    public Z4 g(E0 e02, A2 a22) {
        if (!f37304i) {
            c();
        }
        return d(e02, a22.y0(), a22.t0());
    }

    @Override
    public final boolean h() {
        if (f37304i) {
            return true;
        }
        c();
        return true;
    }

    @Override
    public final C4514j l() {
        if (!f37304i) {
            c();
        }
        return this;
    }

    public void n() {
    }

    @Override
    public C4514j a(C11549b c11549b) {
        return new C4514j(c11549b, this.f37255b, f(), this.f37305h);
    }

    public final boolean h(M2 m22) {
        E0 g10 = g(m22);
        if (g10 == null) {
            return true;
        }
        M2 m23 = g10.f36247g;
        if (m23 != null && h(m23)) {
            return true;
        }
        for (M2 m24 : g10.f36248h.f36675b) {
            if (h(m24)) {
                return true;
            }
        }
        return false;
    }

    public C4514j(C4477h c4477h) {
        super(c4477h.f37254a, C6300Zd.a(), c4477h.f37258e, c4477h.f37257d, c4477h.f37259f);
        this.f37305h = new C11450u2(AbstractC5513Ll0.c());
    }

    public Z4 f(E0 e02, A2 a22) {
        if (!f37304i) {
            c();
        }
        return b(e02, a22.y0(), a22.t0());
    }

    public static C4514j a(AbstractC4780x0 abstractC4780x0, C6300Zd c6300Zd, C11349o2 c11349o2, com.android.tools.r8.synthesis.E e10) {
        return new C4514j(com.android.tools.r8.synthesis.J.a(abstractC4780x0, e10), c6300Zd, c11349o2, new C11450u2(AbstractC5513Ll0.c()));
    }

    public final Z4 c(E0 e02, A2 a22) {
        U4 a10 = U4.a(b(), new Fd(this));
        R4 r42 = new R4(a10.f36868b, a10.f36867a);
        a10.a(a22.y0(), a22.t0(), e02, r42, e02.f36247g, Arrays.asList(e02.f36248h.f36675b));
        return r42.a(e02);
    }

    public final Z4 e(E0 e02, A2 a22) {
        if (!f37304i) {
            c();
        }
        return a(e02, a22.y0(), a22.t0());
    }

    public Z4 h(E0 e02, A2 a22) {
        if (!f37304i) {
            c();
        }
        if (e02.isInterface()) {
            return g(e02, a22);
        }
        return f(e02, a22);
    }

    @Override
    public C4514j a(C11349o2 c11349o2) {
        boolean z10 = f37304i;
        if (!z10 && getClass() != C4514j.class) {
            throw new AssertionError();
        }
        if (!z10) {
            c();
        }
        return new C4514j(g().a(a()), this.f37255b, c11349o2, this.f37305h);
    }

    public final C4514j a(Function function) {
        if (!f37304i) {
            c();
        }
        return new C4514j(g().a((AbstractC4780x0) function.apply(a())), this.f37255b, f(), this.f37305h);
    }

    public Z4 c(A2 a22) {
        if (!f37304i) {
            c();
        }
        return a(a22.s0(), a22);
    }

    @Override
    public C4514j a(O5 o52, ExecutorService executorService, C8659ns0 c8659ns0) {
        boolean z10 = f37304i;
        if (!z10 && getClass() != C4514j.class) {
            throw new AssertionError();
        }
        if (!z10) {
            c();
        }
        if (!z10 && o52.f36678a != a()) {
            throw new AssertionError();
        }
        if (o52.b()) {
            return this;
        }
        c8659ns0.b("Pruning AppInfoWithClassHierarchy");
        com.android.tools.r8.synthesis.J g10 = g();
        C4514j c4514j = new C4514j(com.android.tools.r8.synthesis.J.a(o52, g10.f58087d, g10.f58088e, g10.f58086c, g10.f58084a, g10.f58089f), this.f37255b.a(o52), f().a(o52), this.f37305h);
        c8659ns0.d();
        return c4514j;
    }

    public Z4 c(M2 m22, A2 a22) {
        if (!f37304i) {
            c();
        }
        return U4.a(b(), new Fd(this)).b(m22, a22.y0(), a22.t0());
    }

    public final AbstractC6333Zs0 a(E0 e02, InterfaceC7495gt0 interfaceC7495gt0) {
        while (e02 != null && e02.a1() != null) {
            E0 g10 = g(e02.a1());
            AbstractC6333Zs0 abstractC6333Zs0 = (AbstractC6333Zs0) interfaceC7495gt0.a(e02.a1(), g10, e02);
            if (abstractC6333Zs0.c()) {
                return abstractC6333Zs0;
            }
            e02 = g10;
        }
        return C6276Ys0.f46097c;
    }

    public final Z4 c(E0 e02, I2 i22, L2 l22) {
        if (!f37304i) {
            c();
        }
        return new U4(new Ed(this), b(), true, true).b(e02, i22, l22);
    }

    public final void a(H2 h22, final InterfaceC7328ft0 interfaceC7328ft0) {
        b(h22, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return C4514j.a(InterfaceC7328ft0.this, (M2) obj, (E0) obj2, (Boolean) obj3);
            }
        });
    }

    public static AbstractC6333Zs0 a(InterfaceC7328ft0 interfaceC7328ft0, M2 m22, E0 e02, Boolean bool) {
        interfaceC7328ft0.a(m22, e02, bool);
        return C6276Ys0.f46097c;
    }

    public D3 c(C4554l1 c4554l1) {
        boolean z10 = f37304i;
        if (!z10) {
            c();
        }
        M2 m22 = c4554l1.f38297f;
        if (!z10) {
            c();
        }
        return new C4726u3(this).a(m22, c4554l1);
    }

    public static AbstractC6333Zs0 a(M2 m22, M2 m23, E0 e02, Boolean bool) {
        return m23 == m22 ? C6162Ws0.f45559c : C6276Ys0.f46097c;
    }

    public final boolean a(H2 h22, final E0 e02) {
        boolean z10 = f37304i;
        if (!z10 && h22 == null) {
            throw new AssertionError();
        }
        if (!z10 && e02 == null) {
            throw new AssertionError();
        }
        if (!z10 && h22.isInterface()) {
            throw new AssertionError();
        }
        if (!z10 && e02.isInterface()) {
            throw new AssertionError();
        }
        if (h22 == e02 || h22.getType() == b().f38068i2) {
            return false;
        }
        if (e02.getType() == b().f38068i2) {
            return true;
        }
        AbstractC6333Zs0 a10 = a(h22, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return C4514j.a(E0.this, (M2) obj, (E0) obj2, (E0) obj3);
            }
        });
        return a10.c() && ((Boolean) a10.a().e()).booleanValue();
    }

    public final AbstractC6333Zs0 b(E0 e02, InterfaceC7495gt0 interfaceC7495gt0) {
        E0 e03 = e02;
        int i10 = 0;
        while (e03 != null) {
            i10 += e03.f36248h.f36675b.length;
            M2 m22 = e03.f36247g;
            if (m22 == null) {
                break;
            }
            AbstractC6333Zs0 abstractC6333Zs0 = (AbstractC6333Zs0) interfaceC7495gt0.a(m22, e03, Boolean.FALSE);
            if (abstractC6333Zs0.c()) {
                return abstractC6333Zs0;
            }
            e03 = g(e03.f36247g);
        }
        if (i10 == 0) {
            return C6276Ys0.f46097c;
        }
        Set c10 = AbstractC5513Ll0.c();
        ArrayDeque arrayDeque = new ArrayDeque();
        while (e02 != null) {
            for (M2 m23 : e02.f36248h.f36675b) {
                if (c10.add(m23)) {
                    AbstractC6333Zs0 abstractC6333Zs02 = (AbstractC6333Zs0) interfaceC7495gt0.a(m23, e02, Boolean.TRUE);
                    if (abstractC6333Zs02.c()) {
                        return abstractC6333Zs02;
                    }
                    arrayDeque.addLast(m23);
                }
            }
            M2 m24 = e02.f36247g;
            if (m24 == null) {
                break;
            }
            e02 = g(m24);
        }
        while (!arrayDeque.isEmpty()) {
            E0 g10 = g((M2) arrayDeque.removeFirst());
            if (g10 != null) {
                for (M2 m25 : g10.f36248h.f36675b) {
                    if (c10.add(m25)) {
                        AbstractC6333Zs0 abstractC6333Zs03 = (AbstractC6333Zs0) interfaceC7495gt0.a(m25, g10, Boolean.TRUE);
                        if (abstractC6333Zs03.c()) {
                            return abstractC6333Zs03;
                        }
                        arrayDeque.addLast(m25);
                    }
                }
            }
        }
        return C6276Ys0.f46097c;
    }

    public static AbstractC6333Zs0 a(E0 e02, M2 m22, E0 e03, E0 e04) {
        if (m22 == e02.getType()) {
            return new C6162Ws0(Boolean.TRUE);
        }
        if (e03 == null) {
            return new C6162Ws0(Boolean.FALSE);
        }
        if (e02.e0() && !e03.e0()) {
            return new C6162Ws0(Boolean.FALSE);
        }
        return C6276Ys0.f46097c;
    }

    public final Z4 d(E0 e02, A2 a22) {
        boolean z10 = f37304i;
        if (!z10) {
            c();
        }
        if (e02.isInterface()) {
            if (!z10) {
                c();
            }
            return c(e02, a22.y0(), a22.t0());
        }
        return e(e02, a22);
    }

    public final boolean a(M2 m22, M2 m23) {
        boolean z10 = f37304i;
        if (!z10 && !m22.I0()) {
            throw new AssertionError();
        }
        if (z10 || m23.I0()) {
            return !(c(m22, m23) || c(m23, m22));
        }
        throw new AssertionError();
    }

    public Z4 d(A2 a22) {
        if (!f37304i) {
            c();
        }
        return c(a22.s0(), a22);
    }

    public final Z4 d(E0 e02, I2 i22, L2 l22) {
        if (!f37304i) {
            c();
        }
        return U4.a(b(), new Fd(this)).b(e02, i22, l22);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0068, code lost:
    
        if (r2.B0() == r8.B0()) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0095 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0021 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(C4516j1 c4516j1, M2 m22) {
        boolean z10;
        E0 g10 = g(m22);
        if (g10 == null) {
            return false;
        }
        if (!f37304i && !g10.isInterface()) {
            throw new AssertionError();
        }
        Iterator<C4516j1> it = g10.D1().iterator();
        while (it.hasNext()) {
            C4516j1 next = it.next();
            if (next.getReference().c(c4516j1.getReference())) {
                L4 accessFlags = next.getAccessFlags();
                if (accessFlags.d() == c4516j1.getAccessFlags().d()) {
                    if (!accessFlags.l()) {
                        if (!accessFlags.h()) {
                            if (!C4516j1.f37313x && !accessFlags.g()) {
                                throw new AssertionError();
                            }
                            z10 = next.B0().A0().equals(c4516j1.B0().A0());
                            if (z10) {
                                return true;
                            }
                        }
                    }
                    z10 = true;
                    if (z10) {
                    }
                }
                z10 = false;
                if (z10) {
                }
            }
        }
        for (M2 m23 : g10.f36248h.f36675b) {
            if (a(c4516j1, m23)) {
                return true;
            }
        }
        return false;
    }

    public boolean b(M2 m22, final M2 m23) {
        E0 g10;
        boolean z10 = f37304i;
        if (!z10 && m22 == null) {
            throw new AssertionError();
        }
        if (!z10 && m23 == null) {
            throw new AssertionError();
        }
        if (!z10 && !m22.I0()) {
            throw new AssertionError();
        }
        if (!z10 && !m23.I0()) {
            throw new AssertionError();
        }
        if (m22 == m23 || m22 == b().f38068i2) {
            return false;
        }
        if (m23 == b().f38068i2) {
            return true;
        }
        if (m22.I0() && m23.I0() && (g10 = g(m22)) != null) {
            return b(g10, new InterfaceC7495gt0() {
                @Override
                public final Object a(Object obj, Object obj2, Object obj3) {
                    return C4514j.a(M2.this, (M2) obj, (E0) obj2, (Boolean) obj3);
                }
            }).c();
        }
        return false;
    }

    public final ArrayList a(E0 e02, A2 a22) {
        U4 a10 = U4.a(b(), new Fd(this));
        R4 r42 = new R4(a10.f36868b, a10.f36867a);
        a10.a(a22.y0(), a22.t0(), e02, r42, e02.f36247g, Arrays.asList(e02.f36248h.f36675b));
        ArrayList arrayList = new ArrayList();
        Iterator it = r42.f36772a.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            C4516j1 c4516j1 = (C4516j1) entry.getValue();
            if (c4516j1 != null && c4516j1.d1()) {
                arrayList.add(entry);
            }
        }
        Iterator it2 = r42.f36773b.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it2.next();
            C4516j1 c4516j12 = (C4516j1) entry2.getValue();
            if (c4516j12 != null && c4516j12.d1()) {
                arrayList.add(entry2);
            }
        }
        return arrayList;
    }

    public final boolean b(H2 h22, E0 e02) {
        if (e02.isInterface()) {
            return c(h22.getType(), e02.getType());
        }
        boolean z10 = f37304i;
        if (!z10 && h22 == null) {
            throw new AssertionError();
        }
        if (z10 || !e02.isInterface()) {
            return h22.isInterface() ? e02.getType() == b().f38068i2 : h22 == e02 || a(h22, e02);
        }
        throw new AssertionError();
    }

    public final ArrayList b(H2 h22, M2 m22) {
        boolean z10 = f37304i;
        if (!z10 && !c(h22.f36245e, m22)) {
            throw new AssertionError();
        }
        if (!z10 && h22.isInterface()) {
            throw new AssertionError();
        }
        if (!z10 && m22 != b().f38068i2 && g(m22) != null && g(m22).isInterface()) {
            throw new AssertionError();
        }
        ArrayList arrayList = new ArrayList();
        E0 e02 = h22;
        while (e02 != null) {
            if (e02.e0()) {
                arrayList.add(e02.d0());
            }
            if (e02.f36245e == m22) {
                break;
            }
            e02 = g(e02.f36247g);
        }
        return arrayList;
    }

    public final Z4 a(C8085kR c8085kR, A2 a22) {
        U4 a10 = U4.a(b(), new Fd(this));
        R4 r42 = new R4(a10.f36868b, a10.f36867a);
        a10.a(a22.y0(), a22.t0(), (E0) null, r42, a10.f36868b.f38068i2, c8085kR.f49629e);
        return r42.a((E0) null);
    }

    public H0 a(A2 a22, H2 h22, C4798y<? extends C4514j> c4798y) {
        return a(a22, h22, c4798y, c4798y.f());
    }

    public H0 a(A2 a22, H2 h22, C4798y<?> c4798y, C4514j c4514j) {
        if (!f37304i) {
            c();
        }
        return f(a22).c(h22, c4798y, c4514j);
    }

    public H0 b(E0 e02, A2 a22) {
        U4 a10 = U4.a(b(), new Fd(this));
        R4 r42 = new R4(a10.f36868b, a10.f36867a);
        a10.a(a22.y0(), a22.t0(), e02, r42, e02.f36247g, Arrays.asList(e02.f36248h.f36675b));
        return r42.a((E0) null).p();
    }

    public H0 a(A2 a22, H5 h52, C4798y<? extends C4514j> c4798y) {
        C4514j f10 = c4798y.f();
        H2 holder = h52.getHolder();
        if (!f37304i) {
            c();
        }
        return f(a22).a(holder, (C4798y) c4798y, f10);
    }

    public F0 b(C4554l1 c4554l1) {
        M2 s02 = c4554l1.s0();
        boolean z10 = f37304i;
        if (!z10) {
            c();
        }
        if (!z10 && !s02.I0()) {
            throw new AssertionError();
        }
        if (!z10) {
            c();
        }
        F0 p10 = new C4726u3(this).a(s02, c4554l1).p();
        if (p10 == null || !p10.getAccessFlags().n()) {
            return null;
        }
        return p10;
    }

    public Z4 a(M2 m22, A2 a22) {
        if (!f37304i) {
            c();
        }
        return b(m22, a22.y0(), a22.t0());
    }

    public final Z4 a(A2 a22, boolean z10) {
        boolean z11 = f37304i;
        if (!z11) {
            c();
        }
        M2 s02 = a22.s0();
        if (!z11) {
            c();
        }
        if (z10) {
            return b(s02, a22);
        }
        if (!z11) {
            c();
        }
        return a(s02, a22.y0(), a22.t0());
    }

    public H0 b(A2 a22, H5 h52, C4798y<? extends C4514j> c4798y) {
        H2 holder = h52.getHolder();
        C4514j f10 = c4798y.f();
        if (!f37304i) {
            c();
        }
        return f(a22).b(holder, (C4798y) c4798y, f10);
    }

    public Z4 a(M2 m22, I2 i22, L2 l22) {
        if (!f37304i) {
            c();
        }
        return new U4(new Ed(this), b(), true, true).a(m22, i22, l22);
    }

    public Z4 b(A2 a22, boolean z10) {
        boolean z11 = f37304i;
        if (!z11) {
            c();
        }
        M2 s02 = a22.s0();
        if (!z11) {
            c();
        }
        if (z10) {
            return c(s02, a22);
        }
        return a(s02, a22);
    }

    public final Z4 a(E0 e02, I2 i22, L2 l22) {
        if (!f37304i) {
            c();
        }
        return new U4(new Ed(this), b(), true, true).a(e02, i22, l22);
    }

    public final Z4 b(M2 m22, I2 i22, L2 l22) {
        if (!f37304i) {
            c();
        }
        return U4.a(b(), new Fd(this)).a(m22, i22, l22);
    }

    @Override
    public final D3 a(M2 m22, C4554l1 c4554l1, H5 h52) {
        boolean z10 = f37304i;
        if (!z10) {
            c();
        }
        if (!z10) {
            c();
        }
        return new C4726u3(this).a(m22, c4554l1);
    }

    public final Z4 b(E0 e02, I2 i22, L2 l22) {
        if (!f37304i) {
            c();
        }
        return U4.a(b(), new Fd(this)).a(e02, i22, l22);
    }

    public final D3 a(E0 e02, C4554l1 c4554l1) {
        if (!f37304i) {
            c();
        }
        C4726u3 c4726u3 = new C4726u3(this);
        if (!C4726u3.f38269b && e02 == null) {
            throw new AssertionError();
        }
        boolean z10 = D3.f36221a;
        C4745v3 c4745v3 = new C4745v3();
        c4726u3.a(e02, c4554l1, e02, C4875Al0.b(8), c4745v3);
        C4764w3 c4764w3 = C4764w3.f38324b;
        D3 d32 = c4745v3.f38300a;
        return d32 == null ? c4764w3 : d32;
    }

    public Z4 b(M2 m22, A2 a22) {
        if (!f37304i) {
            c();
        }
        return new U4(new Ed(this), b(), true, true).b(m22, a22.y0(), a22.t0());
    }
}
