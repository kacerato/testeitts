package com.android.tools.r8.graph;

import com.android.tools.r8.graph.H4;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.AbstractC10330xt;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC9530t40;
import com.android.tools.r8.internal.C10664zt;
import com.android.tools.r8.internal.C5160Fj;
import com.android.tools.r8.internal.C6286Yx0;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C7572hK;
import com.android.tools.r8.internal.C8085kR;
import com.android.tools.r8.internal.TJ;
import com.android.tools.r8.internal.TW;
import com.android.tools.r8.internal.VJ;
import com.android.tools.r8.internal.WJ;
import com.android.tools.r8.shaking.AbstractC11128b1;
import com.android.tools.r8.shaking.C11245i;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiPredicate;
import java.util.function.Consumer;

public abstract class Z4 extends J4<C4516j1, A2> {

    public static final boolean f37016a = true;

    public static class b extends a {

        public static final b f37018c = new b();

        private b() {
            super(null);
        }

        @Override
        public final boolean b(E0 e02, C4798y c4798y, C4514j c4514j) {
            return true;
        }

        @Override
        public final b l() {
            return this;
        }

        @Override
        public final boolean t() {
            return true;
        }

        public b(Set set) {
            super(set);
        }
    }

    public static abstract class c<T extends E0> extends Z4 implements Z5 {

        public static final boolean f37019e = true;

        public final E0 f37020b;

        public final E0 f37021c;

        public final C4516j1 f37022d;

        public c(E0 e02, E0 e03, C4516j1 c4516j1) {
            boolean z10 = f37019e;
            if (!z10 && e02 == null) {
                throw new AssertionError();
            }
            if (!z10 && e03 == null) {
                throw new AssertionError();
            }
            if (!z10 && c4516j1 == null) {
                throw new AssertionError();
            }
            if (!z10 && e03.f36245e != c4516j1.B0()) {
                throw new AssertionError();
            }
            this.f37021c = e03;
            this.f37022d = c4516j1;
            this.f37020b = e02;
            if (z10) {
                return;
            }
            c4516j1.L0();
            if (c4516j1.f37314g.h() && e02.f36245e != c4516j1.B0()) {
                throw new AssertionError();
            }
        }

        public static boolean a(E0 e02, E0 e03) {
            return true;
        }

        public abstract c a(E0 e02);

        @Override
        public final H0 b(H2 h22, C4798y c4798y, C4514j c4514j) {
            if (!AbstractC4420e.a(c(), a(), h22, c4798y, c4514j).a() && this.f37022d.w0()) {
                return H0.a(this.f37021c, this.f37022d);
            }
            return null;
        }

        @Override
        public final G0 c() {
            return H0.a(this.f37021c, this.f37022d);
        }

        @Override
        public T d() {
            return (T) this.f37021c;
        }

        @Override
        public final Z5 g() {
            return this;
        }

        @Override
        public final boolean j() {
            return true;
        }

        @Override
        public final c o() {
            return this;
        }

        @Override
        public final H0 p() {
            return H0.a(this.f37021c, this.f37022d);
        }

        @Override
        public C4516j1 q() {
            return this.f37022d;
        }

        @Override
        public final H5 r() {
            if (this.f37021c.e0()) {
                return new H5(this.f37021c.d0(), this.f37022d);
            }
            return null;
        }

        @Override
        public final boolean w() {
            return true;
        }

        @Override
        public final boolean x() {
            return this.f37022d.r1();
        }

        public final void a(B4 b42, C4514j c4514j, G4 g42, H2 h22) {
            if (b42.f36160a.a(h22)) {
                if (b42.f36161b == null) {
                    b42.f36161b = AbstractC5513Ll0.c();
                }
                b42.f36161b.add(h22.f36245e);
            }
            M2 m22 = this.f37021c.f36245e;
            Objects.requireNonNull(g42);
            D4 a10 = a(h22, c4514j, m22, new C4527jc(g42), new C4546kc(g42));
            if (a10 != null) {
                E0 holder = a10.getHolder();
                if (b42.f36160a.a(holder)) {
                    if (b42.f36161b == null) {
                        b42.f36161b = AbstractC5513Ll0.c();
                    }
                    b42.f36161b.add(holder.f36245e);
                }
                C4516j1 d10 = a10.d();
                if (b42.f36160a.a(d10)) {
                    if (b42.f36162c == null) {
                        b42.f36162c = AbstractC5513Ll0.c();
                    }
                    b42.f36162c.add(d10.getReference());
                }
                a(a10, this.f37021c.isInterface(), g42);
            }
        }

        @Override
        public final H0 c(H2 h22, C4798y c4798y, C4514j c4514j) {
            E0 e02;
            if (this.f37022d.j1() || !(((e02 = this.f37020b) == h22 || c4514j.b(h22.f36245e, e02.f36245e)) && AbstractC4420e.a(c(), a(), h22, c4798y, c4514j).c())) {
                return null;
            }
            return a(h22, c4514j, new BiPredicate() {
                @Override
                public final boolean test(Object obj, Object obj2) {
                    return Z4.c.a((E0) obj, (E0) obj2);
                }
            });
        }

        @Override
        public final AbstractC4479h1 b() {
            return this.f37022d;
        }

        @Override
        public final AbstractC9530t40 b(D5 d52, C4798y c4798y) {
            if (this.f37022d.r1()) {
                return AbstractC4420e.a(c(), a(), d52, c4798y, (C4514j) c4798y.f());
            }
            return AbstractC9530t40.f52518b;
        }

        public final I4 a(C8085kR c8085kR, C4514j c4514j, Consumer consumer, Consumer consumer2) {
            if (c8085kR.f49626b.a(this.f37022d)) {
                A2 m02 = c8085kR.f49628d.m0();
                M2 s02 = m02.s0();
                E0 D10 = s02 == null ? null : c4514j.f(s02).D();
                H0 a10 = D10 != null ? D10.a(m02) : null;
                if (a10 == null) {
                    return null;
                }
                return new C4(c8085kR, a10);
            }
            Z4 a11 = c4514j.a(c8085kR, this.f37022d.getReference());
            if (a11.w()) {
                return a11.p();
            }
            if (a11.h()) {
                a11.k().a((Consumer<M2>) consumer, (Consumer<? super C4516j1>) consumer2);
                return null;
            }
            if (f37019e || (a11 instanceof V4)) {
                return null;
            }
            throw new AssertionError();
        }

        public final TW a(C4798y c4798y, VJ vj2, H0 h02) {
            if (h02 != null) {
                return h02.A();
            }
            vj2.getClass();
            if (((vj2 instanceof TJ) || vj2.T1()) && this.f37022d.J0()) {
                return c4798y.f38422o.a(this.f37021c, this.f37022d);
            }
            return C5160Fj.f40293b;
        }

        /* JADX WARN: Code restructure failed: missing block: B:67:0x0118, code lost:
        
            if (r5.f38387B.f45706c.contains(r0.f36245e) != false) goto L67;
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x0153, code lost:
        
            if (r5.getAccessFlags().n() != false) goto L60;
         */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0158  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x015e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final AbstractC4481h3 a(C4798y c4798y, VJ vj2, H5 h52) {
            H0 a10;
            C10664zt m10;
            int ordinal = vj2.w2().ordinal();
            H0 h02 = null;
            if (ordinal == 0) {
                A2 B22 = vj2.c0().B2();
                if (c4798y.f().i()) {
                    C4798y<C11245i> M10 = c4798y.M();
                    H0 a11 = M10.f().a(B22, h52, M10);
                    if (!f37019e) {
                        c4798y.f().getClass();
                        if (B22.s0().a(h52.p())) {
                            H2 holder = h52.getHolder();
                            C4516j1 a12 = holder.f36252l.f36638b.a(B22);
                            H0 a13 = a12 != null ? H0.a(holder, a12) : null;
                            if (a13 != null && !a13.getAccessFlags().n()) {
                                h02 = a13;
                            }
                        }
                        if (h02 != null && !VJ.f45017m && !h02.a(a11)) {
                            throw new AssertionError();
                        }
                    }
                    h02 = a11;
                } else {
                    c4798y.f().getClass();
                    if (B22.s0().a(h52.p())) {
                        H2 holder2 = h52.getHolder();
                        C4516j1 a14 = holder2.f36252l.f36638b.a(B22);
                        H0 a15 = a14 != null ? H0.a(holder2, a14) : null;
                        if (a15 != null && !a15.getAccessFlags().n()) {
                            h02 = a15;
                        }
                    }
                }
                if (h02 != null) {
                    return new T5(h02, this);
                }
                return new C4427e6(this);
            }
            if (ordinal == 8) {
                return new C4427e6(this);
            }
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (!f37019e && !(vj2 instanceof TJ) && !vj2.T1()) {
                        throw new AssertionError();
                    }
                    WJ f02 = vj2.f0();
                    if (c4798y.f().i()) {
                        m10 = f02.C2().a(c4798y.M());
                    } else {
                        m10 = AbstractC10330xt.m();
                    }
                    return a(c4798y, f02, m10, h52);
                }
                C7572hK j02 = vj2.j0();
                if (c4798y.f().i() && h52 != null) {
                    C4798y<C11245i> M11 = c4798y.M();
                    C11245i f10 = M11.f();
                    A2 B23 = j02.B2();
                    if (f10.c(h52.p(), B23.s0())) {
                        h02 = f10.a(B23, h52.getHolder(), M11, M11.f());
                    }
                }
                if (h02 != null) {
                    return new T5(h02, this);
                }
                return new C4427e6(this);
            }
            A2 B24 = vj2.i0().B2();
            if (c4798y.f().i()) {
                C4798y<C11245i> M12 = c4798y.M();
                a10 = M12.f().b(B24, h52, M12);
                if (!f37019e) {
                    if (B24.s0().a(h52.p())) {
                        H2 holder3 = h52.getHolder();
                        C4516j1 a16 = holder3.f36252l.f36638b.a(B24);
                        H0 a17 = a16 != null ? H0.a(holder3, a16) : null;
                        if (a17 != null && a17.getAccessFlags().n()) {
                            h02 = a17;
                        }
                    }
                    if (h02 != null && !VJ.f45017m && !h02.a(a10)) {
                        throw new AssertionError();
                    }
                }
            } else {
                E0 g10 = c4798y.g(B24.f38297f);
                if (g10 != null) {
                    if (!g10.f0()) {
                    }
                    h02 = g10.a(B24);
                    if (h02 != null) {
                        return new T5(h02, this);
                    }
                    return new C4427e6(this);
                }
                c4798y.f().getClass();
                if (B24.s0().a(h52.p())) {
                    H2 holder4 = h52.getHolder();
                    C4516j1 a18 = holder4.f36252l.f36638b.a(B24);
                    a10 = a18 != null ? H0.a(holder4, a18) : null;
                    if (a10 != null) {
                    }
                }
                if (h02 != null) {
                }
            }
            h02 = a10;
            if (h02 != null) {
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0047, code lost:
        
            if (r9.f38387B.f45706c.contains(r10.getType()) != false) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x005d, code lost:
        
            if (r9.getAccessFlags().e() != false) goto L21;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final AbstractC4481h3 a(C4798y c4798y, WJ wj2, C10664zt c10664zt, H5 h52) {
            H0 h02;
            E0 g10;
            A2 B22 = wj2.B2();
            if (c4798y.f().i()) {
                C4798y<C11245i> M10 = c4798y.M();
                h02 = M10.f().a(M10, B22, this, h52, wj2.A2(), c4798y, c10664zt);
            } else {
                M2 s02 = B22.s0();
                if (s02.I0() && (g10 = c4798y.g(s02)) != null) {
                    if (!g10.f0()) {
                    }
                    h02 = g10.a(B22);
                    if (h02 != null) {
                        if (!g10.p1()) {
                        }
                    }
                }
                h02 = null;
            }
            if (h02 != null) {
                return new T5(h02, this);
            }
            return new C4427e6(this);
        }

        @Override
        public final E0 a() {
            return this.f37020b;
        }

        @Override
        public final AbstractC9530t40 a(D5 d52, C4798y c4798y, C4514j c4514j) {
            return AbstractC4420e.a(H0.a(this.f37021c, this.f37022d), this.f37020b, d52, c4798y, c4514j);
        }

        @Override
        public final H0 a(H2 h22, C4798y c4798y, C4514j c4514j) {
            if (AbstractC4420e.a(H0.a(this.f37021c, this.f37022d), this.f37020b, h22, c4798y, c4514j).a()) {
                return null;
            }
            C4516j1 c4516j1 = this.f37022d;
            c4516j1.L0();
            if ((c4516j1.f37314g.h() || AbstractC4458g.d(c4516j1.f37314g.f37197c, 65536)) && !c4516j1.f37314g.n()) {
                return H0.a(this.f37021c, this.f37022d);
            }
            return null;
        }

        @Override
        public final H0 a(H2 h22, C4798y c4798y) {
            final C4514j c4514j = (C4514j) c4798y.f();
            if (a((D5) h22, (C4798y<? extends C4514j>) c4798y).c()) {
                return a(h22, c4514j, new BiPredicate() {
                    @Override
                    public final boolean test(Object obj, Object obj2) {
                        return Z4.c.a(C4514j.this, (E0) obj, (E0) obj2);
                    }
                });
            }
            return null;
        }

        public final H0 a(H2 h22, C4514j c4514j, BiPredicate biPredicate) {
            E0 e02;
            if (q().w0()) {
                return null;
            }
            if (d().isInterface() && q().G0()) {
                return H0.a(this.f37021c, this.f37022d);
            }
            E0 e03 = this.f37020b;
            if (this.f37022d.j1() || e03.isInterface() || !biPredicate.test(e03, h22)) {
                e02 = e03;
            } else {
                M2 m22 = h22.f36247g;
                e02 = m22 == null ? null : c4514j.f(m22).D();
            }
            if (e02 == null) {
                return null;
            }
            A2 reference = q().getReference();
            E0 e04 = e02;
            H0 h02 = null;
            while (e04 != null) {
                h02 = e04.a(reference);
                if (h02 != null) {
                    break;
                }
                M2 m23 = e04.f36247g;
                e04 = m23 == null ? null : c4514j.f(m23).D();
            }
            if (h02 == null) {
                h02 = c4514j.b(e02, reference);
            }
            if (h02 == null || h02.getAccessFlags().n()) {
                return null;
            }
            if (((h02.d().j1() || h02.getAccessFlags().h()) && h02.p() != e03.f36245e) || h02.getAccessFlags().H()) {
                return null;
            }
            return h02;
        }

        public static boolean a(C4514j c4514j, E0 e02, E0 e03) {
            return c4514j.b(e03.f36245e, e02.f36245e);
        }

        @Override
        public final H4 a(D5 d52, final C4798y c4798y, InterfaceC4444f4 interfaceC4444f4, B5 b52) {
            Set set;
            final C4514j c4514j = (C4514j) c4798y.f();
            boolean z10 = f37019e;
            if (!z10 && !c4514j.c(this.f37020b.f36245e, this.f37021c.f36245e)) {
                throw new AssertionError((Object) (((Object) this.f37020b.f36245e) + " is not a subtype of " + ((Object) this.f37021c.f36245e)));
            }
            if (d52 != null && a(d52, (C4798y<? extends C4514j>) c4798y).a()) {
                return F4.f36287a;
            }
            C4516j1 c4516j1 = this.f37022d;
            c4516j1.L0();
            if (c4516j1.f37314g.h()) {
                boolean z11 = b52.a(this.f37021c) && b52.a(this.f37022d);
                H0 a10 = H0.a(this.f37021c, this.f37022d);
                Map singletonMap = Collections.singletonMap(a10.getReference(), a10);
                List list = Collections.EMPTY_LIST;
                return new H4.a(singletonMap, list, list, z11 ? 2 : 1);
            }
            if (!z10 && !this.f37022d.n1()) {
                throw new AssertionError();
            }
            H4.a aVar = H4.a.f36407e;
            final G4 g42 = new G4();
            final B4 b42 = new B4(b52);
            interfaceC4444f4.a(this.f37020b.f36245e, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Z4.c.this.a(b42, c4514j, g42, (H2) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Z4.c.this.a(c4798y, c4514j, g42, (C8085kR) obj);
                }
            });
            A2 reference = this.f37022d.getReference();
            if (!B4.f36159d && (set = b42.f36161b) != null && set.isEmpty()) {
                throw new AssertionError();
            }
            Set set2 = b42.f36161b;
            if (set2 != null) {
                if (b42.f36162c == null) {
                    C6286Yx0 c6286Yx0 = new C6286Yx0(2);
                    c6286Yx0.b((Iterable) set2);
                    loop0: while (c6286Yx0.b()) {
                        while (c6286Yx0.b()) {
                            E0 g10 = c4514j.g((M2) c6286Yx0.c());
                            if (g10 != null) {
                                C4516j1 c10 = g10.c(reference);
                                if (c10 != null && (g10.v1() || b42.f36160a.a(c10))) {
                                    break loop0;
                                }
                                M2 m22 = g10.f36247g;
                                if (m22 != null) {
                                    c6286Yx0.b((C6286Yx0) m22);
                                }
                                c6286Yx0.a((Object[]) g10.f36248h.f36675b);
                            }
                        }
                    }
                }
                g42.f36344e = r2;
                return new H4.a(g42.f36340a, g42.f36341b, g42.f36342c, g42.f36344e);
            }
            r2 = 1;
            g42.f36344e = r2;
            return new H4.a(g42.f36340a, g42.f36341b, g42.f36342c, g42.f36344e);
        }

        public final void a(C4798y c4798y, C4514j c4514j, G4 g42, C8085kR c8085kR) {
            if (!f37019e && !this.f37021c.isInterface() && this.f37021c.f36245e != c4798y.b().f38068i2) {
                throw new AssertionError();
            }
            Objects.requireNonNull(g42);
            I4 a10 = a(c8085kR, c4514j, new C4527jc(g42), new C4546kc(g42));
            if (a10 != null) {
                if (a10.n()) {
                    g42.f36341b.add(a10.o());
                } else {
                    a(a10.e(), this.f37021c.isInterface(), g42);
                }
            }
        }

        @Override
        public final H4 a(H2 h22, C4798y c4798y, H2 h23, H2 h24) {
            C11245i c11245i = (C11245i) c4798y.f();
            boolean z10 = f37019e;
            if (!z10 && h23 == null) {
                throw new AssertionError();
            }
            if (!z10 && !c11245i.c(h23.f36245e, this.f37020b.f36245e)) {
                throw new AssertionError();
            }
            if (!z10 && h24 != null && !c11245i.c(h24.f36245e, h23.f36245e)) {
                throw new AssertionError();
            }
            com.android.tools.r8.internal.C7 c72 = new com.android.tools.r8.internal.C7(Boolean.FALSE);
            InterfaceC4444f4 a10 = a(c11245i, h23, h24, c72);
            Objects.requireNonNull(c11245i);
            H4 a11 = a(h22, c4798y, a10, new C4509ic(c11245i));
            if (((Boolean) c72.a()).booleanValue() && a11.d()) {
                a11.a().f36411d = 2;
            }
            return a11;
        }

        public static InterfaceC4444f4 a(final C11245i c11245i, final H2 h22, final H2 h23, final com.android.tools.r8.internal.C7 c72) {
            return new InterfaceC4444f4() {
                @Override
                public final void a(M2 m22, Consumer consumer, Consumer consumer2) {
                    Z4.c.a(C11245i.this, c72, h23, h22, m22, consumer, consumer2);
                }
            };
        }

        public static void a(final C11245i c11245i, final com.android.tools.r8.internal.C7 c72, H2 h22, H2 h23, M2 m22, final Consumer consumer, Consumer consumer2) {
            Consumer consumer3 = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Z4.c.a(Consumer.this, c11245i, c72, (H2) obj);
                }
            };
            if (h22 == null) {
                c11245i.f57405t.a(h23.f36245e, consumer3, consumer2, c11245i);
            } else {
                c11245i.a(h23, h22, consumer3);
            }
        }

        public static void a(Consumer consumer, C11245i c11245i, com.android.tools.r8.internal.C7 c72, H2 h22) {
            consumer.accept(h22);
            if (!C11245i.f57385J) {
                c11245i.c();
            }
            AbstractC4709t5 abstractC4709t5 = c11245i.f57405t;
            abstractC4709t5.getClass();
            if (h22.isInterface() && abstractC4709t5.f37785d.contains(h22)) {
                c72.a((com.android.tools.r8.internal.C7) Boolean.TRUE);
            }
        }

        public static void a(D4 d42, boolean z10, G4 g42) {
            boolean z11 = f37019e;
            if (!z11) {
                d42.getClass();
            }
            C4516j1 d10 = d42.e().d();
            if (!z11) {
                d10.L0();
                if (d10.f37314g.h()) {
                    throw new AssertionError();
                }
            }
            if (z10) {
                if (d10.g1()) {
                    g42.a(d42);
                }
                if (d10.f37314g.H() || !d10.f37314g.I()) {
                    return;
                }
                g42.a(d42);
                return;
            }
            g42.a(d42);
        }

        @Override
        public final I4 a(AbstractC11128b1 abstractC11128b1, C4514j c4514j) {
            abstractC11128b1.getClass();
            if (abstractC11128b1 instanceof com.android.tools.r8.shaking.Z0) {
                return a(abstractC11128b1.a(), c4514j);
            }
            return a(abstractC11128b1.b(), c4514j, C6628bi.b(), C6628bi.b());
        }

        @Override
        public final D4 a(E0 e02, C4514j c4514j) {
            return a(e02, c4514j, this.f37020b.f36245e, C6628bi.b(), C6628bi.b());
        }

        public final D4 a(E0 e02, C4514j c4514j, M2 m22, Consumer consumer, Consumer consumer2) {
            if (!f37019e && !c4514j.c(e02.f36245e, m22)) {
                throw new AssertionError((Object) (((Object) e02.f36245e) + " is not a subtype of " + ((Object) m22)));
            }
            H0 a10 = H0.a(this.f37021c, this.f37022d);
            C4516j1 c4516j1 = this.f37022d;
            c4516j1.L0();
            if (c4516j1.f37314g.h()) {
                return a10;
            }
            boolean f10 = this.f37022d.f37314g.f();
            E0 e03 = e02;
            H0 h02 = a10;
            while (e03 != null) {
                C4516j1 d10 = h02.d();
                C4516j1 c10 = e03.c(d10.getReference());
                boolean z10 = f37019e;
                if (!z10 && c10 != null) {
                    c10.L0();
                    if (c10.f37314g.h()) {
                        throw new AssertionError();
                    }
                }
                if (c10 == null) {
                    c10 = null;
                } else if (!a(d10, c10)) {
                    c10 = C4516j1.f37311v;
                }
                C4516j1 c4516j12 = C4516j1.f37311v;
                if (c10 == c4516j12 && f10) {
                    if (!z10 && !a10.d().getAccessFlags().f()) {
                        throw new AssertionError();
                    }
                    E0 e04 = e03;
                    while (e04.i1()) {
                        M2 a12 = e04.a1();
                        e04 = a12 == null ? null : c4514j.f(a12).D();
                        if (e04 == null) {
                            break;
                        }
                        C4516j1 c11 = e04.c(a10.getReference());
                        h02 = c11 != null ? H0.a(e04, c11) : null;
                        if (h02 != null && a(a10.d(), h02.d()) && (h02.getAccessFlags().l() || h02.getAccessFlags().k())) {
                            if (!f37019e && a10.d() == h02.d()) {
                                throw new AssertionError();
                            }
                            f10 = false;
                        }
                    }
                    h02 = a10;
                    f10 = false;
                } else {
                    if (c10 != null && c10 != c4516j12) {
                        H0 a11 = H0.a(e03, c10);
                        return h02 != a10 ? new E4(a11, h02) : a11;
                    }
                    if (e03.f36245e == h02.p()) {
                        return null;
                    }
                    M2 m23 = e03.f36247g;
                    e03 = m23 == null ? null : c4514j.f(m23).D();
                }
            }
            if (!this.f37021c.isInterface()) {
                return null;
            }
            Z4 c12 = c4514j.c(e02, this.f37022d.getReference());
            if (c12.w()) {
                return c12.p();
            }
            if (c12.h()) {
                c12.k().a((Consumer<M2>) consumer, (Consumer<? super C4516j1>) consumer2);
                return null;
            }
            if (f37019e || (c12 instanceof V4)) {
                return null;
            }
            throw new AssertionError();
        }

        public static boolean a(C4516j1 c4516j1, C4516j1 c4516j12) {
            boolean z10 = f37019e;
            if (!z10 && !c4516j1.getReference().c(c4516j12.getReference())) {
                throw new AssertionError();
            }
            if (!z10) {
                c4516j12.L0();
                if (c4516j12.f37314g.h()) {
                    throw new AssertionError();
                }
            }
            if (c4516j1.f37314g.l() || c4516j1.f37314g.k()) {
                return true;
            }
            if (!z10 && !c4516j1.f37314g.f()) {
                throw new AssertionError();
            }
            return c4516j1.B0().z0().equals(c4516j12.B0().z0());
        }
    }

    public abstract D4 a(E0 e02, C4514j c4514j);

    public E0 a() {
        return null;
    }

    public abstract H0 a(H2 h22, C4798y<? extends C4514j> c4798y);

    public abstract H0 a(H2 h22, C4798y c4798y, C4514j c4514j);

    public abstract H4 a(D5 d52, C4798y<? extends C4514j> c4798y, InterfaceC4444f4 interfaceC4444f4, B5 b52);

    public abstract H4 a(H2 h22, C4798y<C11245i> c4798y, H2 h23, H2 h24);

    public abstract I4 a(AbstractC11128b1 abstractC11128b1, C4514j c4514j);

    public abstract void a(Consumer consumer, Consumer consumer2, Consumer consumer3, Consumer consumer4);

    public abstract H0 b(H2 h22, C4798y c4798y, C4514j c4514j);

    public abstract AbstractC9530t40 b(D5 d52, C4798y<? extends C4514j> c4798y);

    public boolean b(E0 e02, C4798y<?> c4798y, C4514j c4514j) {
        return false;
    }

    public final H0 c(D5 d52, C4798y<? extends C4514j> c4798y) {
        return c(d52.a(), c4798y, c4798y.f());
    }

    public abstract H0 c(H2 h22, C4798y c4798y, C4514j c4514j);

    public E0 d() {
        return null;
    }

    @Override
    public final Z4 f() {
        return this;
    }

    @Override
    public Z5 g() {
        return null;
    }

    @Override
    public boolean j() {
        return false;
    }

    public a k() {
        return null;
    }

    public b l() {
        return null;
    }

    public C4520j5 m() {
        return null;
    }

    public C4558l5 n() {
        return null;
    }

    public c<?> o() {
        return null;
    }

    public H0 p() {
        return null;
    }

    public C4516j1 q() {
        return null;
    }

    public H5 r() {
        return null;
    }

    @Deprecated
    public final C4516j1 s() {
        if (w()) {
            return o().q();
        }
        return null;
    }

    public boolean t() {
        return false;
    }

    public boolean u() {
        return false;
    }

    public boolean v() {
        return false;
    }

    public boolean w() {
        return false;
    }

    public abstract boolean x();

    public static abstract class a extends Y4 {

        public final Collection f37017b;

        public a(Collection collection) {
            this.f37017b = collection;
        }

        public void a(Consumer<M2> consumer, Consumer<? super C4516j1> consumer2) {
            Collection collection = this.f37017b;
            if (collection != null) {
                collection.forEach(consumer);
            }
        }

        @Override
        public final AbstractC9530t40 b(D5 d52, C4798y c4798y) {
            return AbstractC9530t40.f52518b;
        }

        @Override
        public final boolean h() {
            return true;
        }

        @Override
        public final a k() {
            return this;
        }

        @Override
        public final boolean x() {
            return false;
        }

        public boolean y() {
            return false;
        }

        @Override
        public final AbstractC9530t40 a(D5 d52, C4798y c4798y, C4514j c4514j) {
            return AbstractC9530t40.f52518b;
        }

        @Override
        public final void a(Consumer consumer, Consumer consumer2, Consumer consumer3, Consumer consumer4) {
            consumer4.accept(this);
        }
    }

    public boolean a(E0 e02, C4798y<?> c4798y, C4514j c4514j) {
        return false;
    }

    public final boolean b(E0 e02, C4798y<? extends C4514j> c4798y) {
        return b(e02, c4798y, c4798y.f());
    }

    public final boolean a(E0 e02, C4798y<? extends C4514j> c4798y) {
        return a(e02, c4798y, c4798y.f());
    }

    public final H4 b(H2 h22, C4798y<C11245i> c4798y) {
        C11245i f10 = c4798y.f();
        Objects.requireNonNull(f10);
        return a(h22, c4798y, f10, new C4509ic(f10));
    }

    public final void a(Consumer<Z4> consumer) {
        a(consumer, consumer, consumer, consumer);
    }

    public static c a(E0 e02, E0 e03, C4516j1 c4516j1) {
        if (e03.f0()) {
            return new C4539k5(e02, e03.G(), c4516j1);
        }
        if (e03 instanceof I0) {
            return new C4520j5(e02, e03.k(), c4516j1);
        }
        if (f37016a || e03.e0()) {
            return new C4558l5(e02, e03.d0(), c4516j1);
        }
        throw new AssertionError();
    }
}
