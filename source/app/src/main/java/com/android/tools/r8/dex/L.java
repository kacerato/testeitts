package com.android.tools.r8.dex;

import com.android.dex.DexFormat;
import com.android.tools.r8.errors.UnsupportedDefaultInterfaceMethodDiagnostic;
import com.android.tools.r8.errors.UnsupportedInvokeCustomDiagnostic;
import com.android.tools.r8.errors.UnsupportedPrivateInterfaceMethodDiagnostic;
import com.android.tools.r8.errors.UnsupportedStaticInterfaceMethodDiagnostic;
import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.AbstractC4406d4;
import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.AbstractC4592n1;
import com.android.tools.r8.graph.B2;
import com.android.tools.r8.graph.C4422e1;
import com.android.tools.r8.graph.C4441f1;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4685s0;
import com.android.tools.r8.graph.C4704t0;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4728u5;
import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.C4823z5;
import com.android.tools.r8.graph.D0;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.I2;
import com.android.tools.r8.graph.InterfaceC4424e3;
import com.android.tools.r8.graph.InterfaceC4443f3;
import com.android.tools.r8.graph.J0;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.L4;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.graph.N4;
import com.android.tools.r8.graph.O2;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.graph.Z0;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC9148qo0;
import com.android.tools.r8.internal.BR;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C6241Yc0;
import com.android.tools.r8.internal.C6614bd0;
import com.android.tools.r8.internal.C7189f20;
import com.android.tools.r8.internal.C7447gd0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C9073qK;
import com.android.tools.r8.internal.EnumC5583Ms;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.MethodPosition;
import com.android.tools.r8.position.Position;
import java.nio.ShortBuffer;
import java.security.MessageDigest;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.ToIntFunction;
import java.util.zip.Adler32;

public final class L {

    public static final boolean f35737j = true;

    public final C4798y f35738a;

    public final AbstractC5308Hz f35739b;

    public final C4766w5 f35740c;

    public final C8570nJ f35741d;

    public final C4324y f35742e;

    public final J f35743f;

    public final r f35744g;

    public final t0 f35745h;

    public final boolean f35746i;

    public L(C4798y c4798y, C4324y c4324y, C4766w5 c4766w5, r rVar, t0 t0Var, boolean z10) {
        this.f35738a = c4798y;
        this.f35739b = c4798y.v();
        this.f35740c = c4766w5;
        C8570nJ E10 = c4798y.E();
        this.f35741d = E10;
        this.f35742e = c4324y;
        this.f35743f = new J(E10);
        this.f35744g = rVar;
        this.f35745h = t0Var;
        this.f35746i = z10;
    }

    public final void a(H2 h22) {
        C4441f1 a10 = h22.a(this.f35738a.s());
        if (a10 != null) {
            J j10 = this.f35743f;
            C4441f1 c4441f1 = (C4441f1) j10.f35733l.put(h22, a10);
            if (!J.f35721n && c4441f1 != null) {
                throw new AssertionError();
            }
            J.a(j10.f35731j, a10);
        }
    }

    public final void b(L2 l22) {
        this.f35742e.f(J.a(l22, this.f35743f.f35725d));
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(H2 h22) {
        int b10;
        boolean b11;
        this.f35744g.a(h22);
        this.f35742e.f(C4766w5.a(h22.f36245e, this.f35740c.f38340g));
        C4324y c4324y = this.f35742e;
        com.android.tools.r8.graph.Q q10 = h22.f36246f;
        int i10 = q10.f37197c & (-65569);
        if (q10.J()) {
            i10 |= 1024;
        }
        c4324y.f(i10);
        C4324y c4324y2 = this.f35742e;
        M2 m22 = h22.f36247g;
        c4324y2.f(m22 == null ? -1 : C4766w5.a(m22, this.f35740c.f38340g));
        C4324y c4324y3 = this.f35742e;
        J j10 = this.f35743f;
        O2 o22 = h22.f36248h;
        j10.getClass();
        c4324y3.f(o22.isEmpty() ? 0 : J.a(o22, j10.f35724c));
        C4324y c4324y4 = this.f35742e;
        L2 l22 = h22.f36249i;
        c4324y4.f(l22 != null ? C4766w5.a(l22, this.f35740c.f38343j) : -1);
        C4324y c4324y5 = this.f35742e;
        J j11 = this.f35743f;
        j11.getClass();
        if (h22.k0().isEmpty()) {
            N4 n42 = h22.f36252l;
            synchronized (n42) {
                b11 = n42.b();
            }
            if (!b11 && !H2.a(h22.f36251k)) {
                b10 = 0;
                c4324y5.f(b10);
                this.f35742e.f(h22.f1() ? J.a(h22, this.f35743f.f35730i) : 0);
                C4324y c4324y6 = this.f35742e;
                J j12 = this.f35743f;
                c4324y6.f(J.a((C4441f1) j12.f35733l.get(h22), j12.f35731j));
            }
        }
        b10 = j11.f35729h.b((C4685s0) j11.f35732k.get(h22));
        if (!J.f35721n && b10 == -2) {
            throw new AssertionError();
        }
        c4324y5.f(b10);
        this.f35742e.f(h22.f1() ? J.a(h22, this.f35743f.f35730i) : 0);
        C4324y c4324y62 = this.f35742e;
        J j122 = this.f35743f;
        c4324y62.f(J.a((C4441f1) j122.f35733l.get(h22), j122.f35731j));
    }

    public final int b(C4516j1 c4516j1) {
        J j10 = this.f35743f;
        C4823z5 c4823z5 = c4516j1.f37316i;
        j10.getClass();
        if (c4823z5.isEmpty()) {
            return 0;
        }
        return J.a(c4823z5, j10.f35728g);
    }

    public final void a(M2 m22) {
        this.f35742e.f(C4766w5.a(this.f35738a.s().c(m22), this.f35740c.f38343j));
    }

    public final void b(H2 h22) {
        if (!f35737j && !h22.f1()) {
            throw new AssertionError();
        }
        J.a(h22, this.f35742e.b(), this.f35743f.f35730i);
        C4324y c4324y = this.f35742e;
        int size = h22.A1().size();
        c4324y.getClass();
        BR.b(c4324y, size);
        C4324y c4324y2 = this.f35742e;
        int size2 = h22.k1().size();
        c4324y2.getClass();
        BR.b(c4324y2, size2);
        C4324y c4324y3 = this.f35742e;
        int d10 = h22.b0().d();
        c4324y3.getClass();
        BR.b(c4324y3, d10);
        C4324y c4324y4 = this.f35742e;
        int e10 = h22.b0().e();
        c4324y4.getClass();
        BR.b(c4324y4, e10);
        a((List) h22.A1());
        a((List) h22.k1());
        a(h22.H0());
        a(h22.D1());
    }

    public static void a(C4422e1 c4422e1, C4324y c4324y, final C4766w5 c4766w5) {
        ArrayList arrayList = new ArrayList(Arrays.asList(c4422e1.f37143c));
        arrayList.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return com.android.tools.r8.dex.L.a(C4766w5.this, (C4704t0) obj, (C4704t0) obj2);
            }
        });
        int a10 = C4766w5.a(c4422e1.f37142b, c4766w5.f38340g);
        c4324y.getClass();
        BR.b(c4324y, a10);
        BR.b(c4324y, arrayList.size());
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C4704t0 c4704t0 = (C4704t0) obj;
            BR.b(c4324y, C4766w5.a(c4704t0.f37738b, c4766w5.f38343j));
            c4704t0.f37739c.a(c4324y, c4766w5);
        }
    }

    public static void b(H h10, C4324y c4324y) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(c4324y.a(), h10.f35694a + 32, (h10.f35716w - r2) - 32);
            messageDigest.digest(c4324y.a(), h10.f35694a + 12, 20);
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static int a(C4766w5 c4766w5, C4704t0 c4704t0, C4704t0 c4704t02) {
        L2 l22 = c4704t0.f37738b;
        L2 l23 = c4704t02.f37738b;
        C4728u5 c4728u5 = c4766w5.f38348o;
        l22.getClass();
        return c4728u5.a(l22, l23);
    }

    public final L a() {
        K k10 = new K(this, this.f35738a, this.f35740c.f38338e);
        for (H2 h22 : this.f35740c.f38338e) {
            k10.a(h22);
        }
        this.f35743f.f35730i.o().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.dex.L.this.a((H2) obj);
            }
        });
        if (!f35737j && this.f35743f.f35725d.f48317l != 0) {
            throw new AssertionError();
        }
        C7447gd0 c7447gd0 = this.f35740c.f38343j;
        for (L2 l22 : c7447gd0 == null ? Collections.EMPTY_LIST : c7447gd0.o()) {
            C7447gd0 c7447gd02 = this.f35743f.f35725d;
            if (!c7447gd02.containsKey(l22)) {
                c7447gd02.b(-1, l22);
            }
        }
        C7447gd0 c7447gd03 = this.f35740c.f38339f;
        Iterator it = (c7447gd03 == null ? Collections.EMPTY_LIST : c7447gd03.o()).iterator();
        while (it.hasNext()) {
            this.f35743f.a(((I2) it.next()).n0());
        }
        J j10 = this.f35743f;
        C7447gd0 c7447gd04 = this.f35740c.f38344k;
        AbstractC4592n1.a(j10, c7447gd04 == null ? Collections.EMPTY_LIST : c7447gd04.o());
        AbstractC4592n1.a(this.f35743f, this.f35740c.f38338e);
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:284:0x0628, code lost:
    
        if (r3.f35718a != 8194) goto L293;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final G a(int i10, int i11) {
        int i12;
        AbstractC9148qo0 b10;
        C4322w h0Var;
        byte b11;
        byte[] a10;
        byte b12;
        for (H2 h22 : this.f35740c.f38338e) {
            if (h22.isInterface()) {
                Iterator<C4516j1> it = h22.H0().iterator();
                while (it.hasNext()) {
                    a(h22, it.next());
                }
                Iterator<C4516j1> it2 = h22.D1().iterator();
                while (it2.hasNext()) {
                    a(h22, it2.next());
                }
            }
        }
        if (!f35737j && !this.f35738a.b().f37846D6) {
            C2 z10 = this.f35741d.z();
            C7447gd0 c7447gd0 = this.f35740c.f38342i;
            for (C4554l1 c4554l1 : c7447gd0 == null ? Collections.EMPTY_LIST : c7447gd0.o()) {
                if (!f35737j && !c4554l1.f38298g.c(z10)) {
                    throw new AssertionError();
                }
            }
            C7447gd0 c7447gd02 = this.f35740c.f38341h;
            for (A2 a22 : c7447gd02 == null ? Collections.EMPTY_LIST : c7447gd02.o()) {
                if (!f35737j && !a22.f38298g.c(z10)) {
                    throw new AssertionError();
                }
            }
            C7447gd0 c7447gd03 = this.f35740c.f38340g;
            for (M2 m22 : c7447gd03 == null ? Collections.EMPTY_LIST : c7447gd03.o()) {
                if (m22.I0()) {
                    boolean z11 = f35737j;
                    if (!z11 && !L2.a(z10, m22.x0())) {
                        throw new AssertionError();
                    }
                    if (!z11) {
                        boolean z12 = com.android.tools.r8.synthesis.S.f58147a0;
                        com.android.tools.r8.synthesis.S.a(m22.V0());
                    }
                }
            }
        }
        C4766w5 c4766w5 = this.f35740c;
        boolean z13 = this.f35746i;
        boolean z14 = H.f35693y;
        int i13 = 2;
        if (!z14 && i10 != 0 && i11 != 2) {
            throw new AssertionError();
        }
        int i14 = (i11 == 2 ? 120 : 112) + i10;
        if (z13) {
            C7447gd0 c7447gd04 = c4766w5.f38343j;
            i12 = (c7447gd04 == null ? Collections.EMPTY_LIST : c7447gd04.o()).size() * 4;
        } else {
            i12 = 0;
        }
        int i15 = i14 + i12;
        C7447gd0 c7447gd05 = c4766w5.f38340g;
        int size = ((c7447gd05 == null ? Collections.EMPTY_LIST : c7447gd05.o()).size() * 4) + i15;
        C7447gd0 c7447gd06 = c4766w5.f38339f;
        int size2 = ((c7447gd06 == null ? Collections.EMPTY_LIST : c7447gd06.o()).size() * 12) + size;
        C7447gd0 c7447gd07 = c4766w5.f38342i;
        int size3 = ((c7447gd07 == null ? Collections.EMPTY_LIST : c7447gd07.o()).size() * 8) + size2;
        C7447gd0 c7447gd08 = c4766w5.f38341h;
        int size4 = ((c7447gd08 == null ? Collections.EMPTY_LIST : c7447gd08.o()).size() * 8) + size3;
        int length = (c4766w5.f38338e.length * 32) + size4;
        C7447gd0 c7447gd09 = c4766w5.f38344k;
        int size5 = ((c7447gd09 == null ? Collections.EMPTY_LIST : c7447gd09.o()).size() * 4) + length;
        C7447gd0 c7447gd010 = c4766w5.f38345l;
        int size6 = ((c7447gd010 == null ? Collections.EMPTY_LIST : c7447gd010.o()).size() * 8) + size5;
        final H h10 = new H(i10, i14, i15, size, size2, size3, size4, length, size5, size6, i11);
        int i16 = -1;
        if (!z14 && h10.f35705l != -1) {
            throw new AssertionError();
        }
        h10.f35705l = size6;
        C4798y c4798y = this.f35738a;
        J j10 = this.f35743f;
        t0 t0Var = this.f35745h;
        boolean z15 = Y.f35811a;
        if (t0Var.f35959e.c()) {
            b10 = AbstractC9148qo0.b();
        } else {
            if (!z15 && t0Var.b() != 0) {
                throw new AssertionError();
            }
            if (c4798y.E().E().f51623f) {
                b10 = t0Var.f35959e.b(c4798y);
            } else {
                b10 = AbstractC9148qo0.b();
            }
        }
        if (b10.c()) {
            h0Var = new C4322w(c4798y, j10);
        } else {
            h0Var = new h0(c4798y, j10, b10, t0Var);
        }
        Y y10 = (Y) c4798y.H().f50910v.apply(h0Var, t0Var);
        Collection<H5> f10 = y10.f();
        HashSet hashSet = new HashSet();
        Iterator<H5> it3 = f10.iterator();
        int i17 = 0;
        int i18 = 0;
        while (it3.hasNext()) {
            H5 next = it3.next();
            InterfaceC4443f3 m02 = next.d().Q0().m0();
            C8570nJ c8570nJ = this.f35741d;
            c8570nJ.getClass();
            if (!c8570nJ.c(C2.S) || hashSet.add(m02.a(next, this.f35738a.b()))) {
                int i19 = i18 + 1;
                int i20 = (i17 + 3) & (-4);
                C4798y c4798y2 = this.f35738a;
                ((AbstractC4497i0) m02).getClass();
                AbstractC5308Hz abstractC5308Hz = c4798y2.f38414g;
                int length2 = (m02.o().length * 8) + (m02.Y() * i13) + 16;
                if (m02.r().length > 0) {
                    length2 = BR.d(m02.r().length) + ((length2 + 3) & (-4));
                    J0.b[] r10 = m02.r();
                    int length3 = r10.length;
                    int i21 = 0;
                    while (i21 < length3) {
                        J0.b bVar = r10[i21];
                        boolean z16 = bVar.f36477c != i16;
                        int c10 = BR.c(z16 ? -bVar.f36476b.length : bVar.f36476b.length) + length2;
                        J0.b.a[] aVarArr = bVar.f36476b;
                        int i22 = c10;
                        int length4 = aVarArr.length;
                        HashSet hashSet2 = hashSet;
                        int i23 = 0;
                        while (i23 < length4) {
                            int i24 = length4;
                            J0.b.a aVar = aVarArr[i23];
                            i22 = BR.d(aVar.f36480c) + BR.d(C4766w5.a(this.f35739b.c(abstractC5308Hz, aVar.f36479b), this.f35740c.f38340g)) + i22;
                            i23++;
                            length4 = i24;
                            it3 = it3;
                            i19 = i19;
                            r10 = r10;
                        }
                        Iterator<H5> it4 = it3;
                        int i25 = i19;
                        J0.b[] bVarArr = r10;
                        length2 = z16 ? BR.d(bVar.f36477c) + i22 : i22;
                        i21++;
                        hashSet = hashSet2;
                        it3 = it4;
                        i19 = i25;
                        r10 = bVarArr;
                        i16 = -1;
                    }
                }
                i17 = i20 + length2;
                hashSet = hashSet;
                it3 = it3;
                i18 = i19;
                i16 = -1;
                i13 = 2;
            }
        }
        C4324y c4324y = this.f35742e;
        boolean z17 = H.f35693y;
        if (!z17 && !H.a(h10.f35705l, true)) {
            throw new AssertionError();
        }
        c4324y.e(h10.f35705l + i17);
        if (((AbstractCollection) this.f35743f.f35723b.o()).isEmpty()) {
            if (!z17 && h10.f35706m != -1) {
                throw new AssertionError();
            }
            h10.f35706m = 0;
        } else {
            int a11 = this.f35742e.a(1);
            if (!z17 && h10.f35706m != -1) {
                throw new AssertionError();
            }
            h10.f35706m = a11;
            HashSet hashSet3 = new HashSet(((C7189f20) this.f35743f.f35723b.o()).f47823b.f49465l);
            Iterator<H5> it5 = f10.iterator();
            while (it5.hasNext()) {
                Z0 u10 = it5.next().d().Q0().m0().u();
                if (u10 != null && hashSet3.add(u10)) {
                    AbstractC5308Hz abstractC5308Hz2 = this.f35738a.f38414g;
                    J.a(u10, this.f35742e.b(), this.f35743f.f35723b);
                    this.f35742e.a(new C4320u(u10, this.f35740c, this.f35739b, abstractC5308Hz2).a());
                }
            }
        }
        int a12 = this.f35742e.a(4);
        boolean z18 = H.f35693y;
        if (!z18 && h10.f35707n != -1) {
            throw new AssertionError();
        }
        h10.f35707n = a12;
        C4324y c4324y2 = this.f35742e;
        if (!z18 && !H.a(h10.f35705l, true)) {
            throw new AssertionError();
        }
        c4324y2.e(h10.f35705l);
        if (!f35737j && this.f35742e.b() % 4 != 0) {
            throw new AssertionError();
        }
        HashMap hashMap = new HashMap();
        for (H5 h52 : f10) {
            InterfaceC4443f3 m03 = h52.d().Q0().m0();
            C8570nJ c8570nJ2 = this.f35741d;
            c8570nJ2.getClass();
            if (!c8570nJ2.c(C2.S)) {
                a(h52, m03);
            } else {
                InterfaceC4424e3 a13 = m03.a(h52, this.f35738a.b());
                Integer num = (Integer) hashMap.get(a13);
                if (num != null) {
                    J.a(h52.d(), num.intValue(), this.f35743f.f35722a);
                } else {
                    hashMap.put(a13, Integer.valueOf(a(h52, m03)));
                }
            }
        }
        boolean z19 = f35737j;
        if (!z19) {
            C7447gd0 c7447gd011 = this.f35743f.f35722a;
            if (c7447gd011.f48320o == null) {
                c7447gd011.f48320o = new C6241Yc0(c7447gd011);
            }
            if (i18 != QC.a(c7447gd011.f48320o).size()) {
                throw new AssertionError();
            }
        }
        boolean z20 = H.f35693y;
        if (!z20 && h10.f35717x != -1) {
            throw new AssertionError();
        }
        h10.f35717x = i18;
        if (!z19) {
            if (!z20 && !H.a(h10.f35706m, false)) {
                throw new AssertionError();
            }
            if (h10.f35706m != 0) {
                int b13 = this.f35742e.b();
                if (!z20 && !H.a(h10.f35706m, false)) {
                    throw new AssertionError();
                }
                if (b13 != h10.f35706m) {
                    throw new AssertionError();
                }
            }
        }
        C4324y c4324y3 = this.f35742e;
        if (!z20 && !H.a(h10.f35707n, true)) {
            throw new AssertionError();
        }
        c4324y3.e(h10.f35707n);
        a(y10.i(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.dex.H.this.a(((Integer) obj).intValue());
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.dex.L.this.a((O2) obj);
            }
        }, 1);
        if (this.f35746i) {
            a(y10.h(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    com.android.tools.r8.dex.H.this.h(((Integer) obj).intValue());
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    com.android.tools.r8.dex.L.this.a((L2) obj);
                }
            }, 1);
        } else {
            h10.f35708o = 0;
        }
        a(y10.b(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.dex.H.this.e(((Integer) obj).intValue());
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.dex.L.this.a((C4666r0) obj);
            }
        }, 1);
        a(y10.e(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.dex.H.this.f(((Integer) obj).intValue());
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.dex.L.this.b((H2) obj);
            }
        }, 1);
        a(y10.g(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.dex.H.this.g(((Integer) obj).intValue());
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.dex.L.this.a((C4441f1) obj);
            }
        }, 1);
        a(y10.c(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.dex.H.this.d(((Integer) obj).intValue());
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.dex.L.this.a((C4723u0) obj);
            }
        }, 4);
        a(y10.d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.dex.H.this.c(((Integer) obj).intValue());
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.dex.L.this.a((C4823z5) obj);
            }
        }, 4);
        a(y10.a(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.dex.H.this.b(((Integer) obj).intValue());
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.dex.L.this.a((C4685s0) obj);
            }
        }, 4);
        int a14 = this.f35742e.a(4);
        h10.f35715v = a14;
        this.f35742e.d(4);
        int i26 = ((C6614bd0) this.f35743f.f35725d.o()).f46807b.f48317l;
        int i27 = h10.f35695b;
        if (z20) {
            b11 = 0;
        } else {
            b11 = 0;
            if (!H.a(h10.f35708o, false)) {
                throw new AssertionError();
            }
        }
        ArrayList a15 = h10.a(this, 0, i26, i27, h10.f35708o);
        int size7 = a15.size();
        int i28 = b11;
        int i29 = i28;
        while (i29 < size7) {
            Object obj = a15.get(i29);
            i29++;
            I i30 = (I) obj;
            if (this.f35746i) {
                C4324y c4324y4 = this.f35742e;
                if (i30.f35720c != 0) {
                    c4324y4.a((short) i30.f35718a);
                    c4324y4.a((short) b11);
                    c4324y4.f(i30.f35720c);
                    c4324y4.f(i30.f35719b);
                    b12 = 1;
                }
                b12 = b11;
            } else {
                if (i30.f35720c == 0) {
                }
                b12 = 1;
            }
            i28 += b12;
        }
        this.f35742e.e(a14);
        this.f35742e.f(i28);
        this.f35742e.d(i28 * 12);
        h10.f35716w = this.f35742e.b();
        this.f35742e.e((h10.f35704k == 2 ? 120 : 112) + h10.f35694a);
        if (this.f35746i) {
            C7447gd0 c7447gd012 = this.f35740c.f38343j;
            a(c7447gd012 == null ? Collections.EMPTY_LIST : c7447gd012.o(), h10.f35695b, new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    com.android.tools.r8.dex.L.this.b((L2) obj2);
                }
            });
        } else if (!f35737j && h10.f35695b != h10.f35696c) {
            throw new AssertionError();
        }
        C7447gd0 c7447gd013 = this.f35740c.f38340g;
        a(c7447gd013 == null ? Collections.EMPTY_LIST : c7447gd013.o(), h10.f35696c, new Consumer() {
            @Override
            public final void accept(Object obj2) {
                com.android.tools.r8.dex.L.this.a((M2) obj2);
            }
        });
        C7447gd0 c7447gd014 = this.f35740c.f38339f;
        a(c7447gd014 == null ? Collections.EMPTY_LIST : c7447gd014.o(), h10.f35697d, new Consumer() {
            @Override
            public final void accept(Object obj2) {
                com.android.tools.r8.dex.L.this.a((I2) obj2);
            }
        });
        C7447gd0 c7447gd015 = this.f35740c.f38342i;
        a(c7447gd015 == null ? Collections.EMPTY_LIST : c7447gd015.o(), h10.f35698e, new Consumer() {
            @Override
            public final void accept(Object obj2) {
                com.android.tools.r8.dex.L.this.a((C4554l1) obj2);
            }
        });
        C7447gd0 c7447gd016 = this.f35740c.f38341h;
        a(c7447gd016 == null ? Collections.EMPTY_LIST : c7447gd016.o(), h10.f35699f, new Consumer() {
            @Override
            public final void accept(Object obj2) {
                com.android.tools.r8.dex.L.this.a((A2) obj2);
            }
        });
        H2[] h2Arr = this.f35740c.f38338e;
        int i31 = h10.f35700g;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj2) {
                com.android.tools.r8.dex.L.this.c((H2) obj2);
            }
        };
        if (!f35737j && this.f35742e.b() != i31) {
            throw new AssertionError();
        }
        int length5 = h2Arr.length;
        for (int i32 = b11; i32 < length5; i32++) {
            consumer.accept(h2Arr[i32]);
        }
        C7447gd0 c7447gd017 = this.f35740c.f38344k;
        a(c7447gd017 == null ? Collections.EMPTY_LIST : c7447gd017.o(), h10.f35701h, new Consumer() {
            @Override
            public final void accept(Object obj2) {
                com.android.tools.r8.dex.L.this.a((com.android.tools.r8.graph.D0) obj2);
            }
        });
        C7447gd0 c7447gd018 = this.f35740c.f38345l;
        a(c7447gd018 == null ? Collections.EMPTY_LIST : c7447gd018.o(), h10.f35702i, new Consumer() {
            @Override
            public final void accept(Object obj2) {
                com.android.tools.r8.dex.L.this.a((com.android.tools.r8.graph.C2) obj2);
            }
        });
        this.f35742e.e(h10.f35694a);
        this.f35742e.a(C4319t.f35952a);
        C4324y c4324y5 = this.f35742e;
        C8570nJ c8570nJ3 = this.f35741d;
        C8570nJ.p pVar = c8570nJ3.f50599F1;
        if (pVar.f50892m) {
            a10 = EnumC5583Ms.V41.a();
        } else if (pVar.f50890l && c8570nJ3.z().d(C2.R)) {
            a10 = EnumC5583Ms.V40.a();
        } else {
            C8570nJ c8570nJ4 = this.f35741d;
            byte[] bArr = c8570nJ4.f50599F1.f50906t;
            a10 = bArr != null ? bArr : EnumC5583Ms.c(c8570nJ4.z()).a();
        }
        c4324y5.a(a10);
        this.f35742e.a(b11);
        this.f35742e.e(h10.f35694a + 32);
        this.f35742e.f(h10.f35716w - h10.f35694a);
        this.f35742e.f(h10.f35704k == 2 ? 120 : 112);
        this.f35742e.f(DexFormat.ENDIAN_TAG);
        this.f35742e.f(b11);
        this.f35742e.f(b11);
        this.f35742e.f(h10.f35715v);
        C7447gd0 c7447gd019 = this.f35740c.f38343j;
        int size8 = (c7447gd019 == null ? Collections.EMPTY_LIST : c7447gd019.o()).size();
        this.f35742e.f(size8);
        this.f35742e.f(size8 == 0 ? b11 : h10.f35695b);
        C7447gd0 c7447gd020 = this.f35740c.f38340g;
        int size9 = (c7447gd020 == null ? Collections.EMPTY_LIST : c7447gd020.o()).size();
        this.f35742e.f(size9);
        this.f35742e.f(size9 == 0 ? b11 : h10.f35696c);
        C7447gd0 c7447gd021 = this.f35740c.f38339f;
        int size10 = (c7447gd021 == null ? Collections.EMPTY_LIST : c7447gd021.o()).size();
        this.f35742e.f(size10);
        this.f35742e.f(size10 == 0 ? b11 : h10.f35697d);
        C7447gd0 c7447gd022 = this.f35740c.f38342i;
        int size11 = (c7447gd022 == null ? Collections.EMPTY_LIST : c7447gd022.o()).size();
        this.f35742e.f(size11);
        this.f35742e.f(size11 == 0 ? b11 : h10.f35698e);
        C7447gd0 c7447gd023 = this.f35740c.f38341h;
        int size12 = (c7447gd023 == null ? Collections.EMPTY_LIST : c7447gd023.o()).size();
        this.f35742e.f(size12);
        this.f35742e.f(size12 == 0 ? b11 : h10.f35699f);
        int length6 = this.f35740c.f38338e.length;
        this.f35742e.f(length6);
        this.f35742e.f(length6 == 0 ? b11 : h10.f35700g);
        if (h10.f35704k == 2) {
            this.f35742e.f(b11);
            this.f35742e.f(b11);
            this.f35742e.f(b11);
            this.f35742e.f(h10.f35694a);
        } else {
            C4324y c4324y6 = this.f35742e;
            int i33 = h10.f35716w - h10.f35703j;
            if (!H.f35693y && i33 % 4 != 0) {
                throw new AssertionError();
            }
            c4324y6.f(i33);
            this.f35742e.f(h10.f35703j);
        }
        if (!f35737j && this.f35742e.b() != h10.f35695b) {
            throw new AssertionError();
        }
        if (this.f35746i) {
            b(h10, this.f35742e);
            a(h10, this.f35742e);
        }
        return new G(this, this.f35742e, h10);
    }

    public final void a(H2 h22, C4516j1 c4516j1) {
        C4724u1 b10 = this.f35738a.b();
        A2 reference = c4516j1.getReference();
        b10.getClass();
        if (reference.f38298g == b10.f38075j1) {
            return;
        }
        if (c4516j1.f37314g.n()) {
            if (!this.f35741d.f()) {
                C8570nJ c8570nJ = this.f35741d;
                if (!c8570nJ.f50599F1.f50813D0) {
                    C5094Ef0 c5094Ef0 = c8570nJ.f50691j;
                    c5094Ef0.a(null, new UnsupportedStaticInterfaceMethodDiagnostic(h22.f36244d, MethodPosition.create(c4516j1)));
                    throw c5094Ef0.f39969c;
                }
            }
        } else if (!c4516j1.j1()) {
            if (!c4516j1.f37314g.H() && !c4516j1.f37314g.h() && !this.f35741d.f()) {
                C5094Ef0 c5094Ef02 = this.f35741d.f50691j;
                c5094Ef02.a(null, new UnsupportedDefaultInterfaceMethodDiagnostic(h22.f36244d, MethodPosition.create(c4516j1)));
                throw c5094Ef02.f39969c;
            }
        } else {
            throw new C5325If("Interface must not have constructors: " + c4516j1.getReference().j0());
        }
        if (c4516j1.f37314g.h()) {
            C8570nJ c8570nJ2 = this.f35741d;
            c8570nJ2.getClass();
            if (c8570nJ2.c(C2.N)) {
                return;
            }
            C5094Ef0 c5094Ef03 = this.f35741d.f50691j;
            c5094Ef03.a(null, new UnsupportedPrivateInterfaceMethodDiagnostic(h22.f36244d, MethodPosition.create(c4516j1)));
            throw c5094Ef03.f39969c;
        }
        if (c4516j1.f37314g.l()) {
            return;
        }
        throw new C5325If("Interface methods must not be protected or package private: " + c4516j1.getReference().j0());
    }

    public final void a(Collection collection, int i10, Consumer consumer) {
        if (!f35737j && this.f35742e.b() != i10) {
            throw new AssertionError();
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            consumer.accept((AbstractC4406d4) it.next());
        }
    }

    public final void a(Collection collection, Consumer consumer, Consumer consumer2, int i10) {
        if (collection.isEmpty()) {
            consumer.accept(0);
        } else {
            consumer.accept(Integer.valueOf(this.f35742e.a(i10)));
            collection.forEach(consumer2);
        }
    }

    public final void a(I2 i22) {
        this.f35742e.f(C4766w5.a((L2) this.f35740c.f38346m.get(i22), this.f35740c.f38343j));
        this.f35742e.f(C4766w5.a(i22.f36440e, this.f35740c.f38340g));
        C4324y c4324y = this.f35742e;
        J j10 = this.f35743f;
        O2 o22 = i22.f36441f;
        j10.getClass();
        c4324y.f(o22.isEmpty() ? 0 : J.a(o22, j10.f35724c));
    }

    public final void a(C4554l1 c4554l1) {
        int a10 = C4766w5.a(c4554l1.f38297f, this.f35740c.f38340g);
        boolean z10 = f35737j;
        if (!z10 && (a10 & 65535) != a10) {
            throw new AssertionError();
        }
        this.f35742e.a((short) a10);
        int a11 = C4766w5.a(c4554l1.f37449i, this.f35740c.f38340g);
        if (!z10 && (a11 & 65535) != a11) {
            throw new AssertionError();
        }
        this.f35742e.a((short) a11);
        this.f35742e.f(C4766w5.a(this.f35738a.s().a(c4554l1), this.f35740c.f38343j));
    }

    public final void a(A2 a22) {
        int a10 = C4766w5.a(a22.f38297f, this.f35740c.f38340g);
        boolean z10 = f35737j;
        if (!z10 && (a10 & 65535) != a10) {
            throw new AssertionError();
        }
        this.f35742e.a((short) a10);
        int a11 = C4766w5.a(a22.f36127i, this.f35740c.f38339f);
        if (!z10 && (a11 & 65535) != a11) {
            throw new AssertionError();
        }
        this.f35742e.a((short) a11);
        this.f35742e.f(C4766w5.a(this.f35738a.s().a(a22), this.f35740c.f38343j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int a(H5 h52, InterfaceC4443f3 interfaceC4443f3) {
        C4798y c4798y = this.f35738a;
        ((AbstractC4497i0) interfaceC4443f3).getClass();
        AbstractC5308Hz abstractC5308Hz = c4798y.f38414g;
        int a10 = this.f35742e.a(4);
        J.a(h52.d(), a10, this.f35743f.f35722a);
        this.f35742e.a((short) interfaceC4443f3.a(h52));
        this.f35742e.a((short) interfaceC4443f3.b(h52));
        this.f35742e.a((short) interfaceC4443f3.T());
        this.f35742e.a((short) interfaceC4443f3.o().length);
        this.f35742e.f(J.a(interfaceC4443f3.u(), this.f35743f.f35723b));
        int b10 = this.f35742e.b();
        this.f35742e.d(4);
        C4324y c4324y = this.f35742e;
        C4798y c4798y2 = this.f35738a;
        C4766w5 c4766w5 = this.f35740c;
        r rVar = this.f35744g;
        c4324y.getClass();
        c4324y.c(interfaceC4443f3.Y() * 2);
        if (!C4324y.f35976c && c4324y.f35978b.a().position() % 2 != 0) {
            throw new AssertionError();
        }
        ShortBuffer asShortBuffer = c4324y.f35978b.a().asShortBuffer();
        interfaceC4443f3.a(c4766w5, h52, c4766w5.f38336c, c4798y2.f38414g, c4766w5.f38337d, asShortBuffer);
        interfaceC4443f3.a(rVar);
        C4318s c4318s = c4324y.f35978b;
        c4318s.c((asShortBuffer.position() * 2) + c4318s.a().position());
        int b11 = this.f35742e.b() - b10;
        int i10 = b11 - 4;
        this.f35742e.d(-b11);
        this.f35742e.f(i10 / 2);
        this.f35742e.d(i10);
        if (interfaceC4443f3.o().length > 0) {
            int a11 = this.f35742e.a(4);
            this.f35742e.d(interfaceC4443f3.o().length * 8);
            int b12 = this.f35742e.b();
            C4324y c4324y2 = this.f35742e;
            int length = interfaceC4443f3.r().length;
            c4324y2.getClass();
            BR.b(c4324y2, length);
            short[] sArr = new short[interfaceC4443f3.r().length];
            J0.b[] r10 = interfaceC4443f3.r();
            int length2 = r10.length;
            int i11 = 0;
            int i12 = 0;
            while (i11 < length2) {
                J0.b bVar = r10[i11];
                int b13 = this.f35742e.b() - b12;
                if (b13 > 65535) {
                    throw this.f35738a.E().f50691j.b("Handler offset overflow in " + h52.r());
                }
                int i13 = i12 + 1;
                sArr[i12] = (short) b13;
                boolean z10 = bVar.f36477c != -1;
                C4324y c4324y3 = this.f35742e;
                J0.b.a[] aVarArr = bVar.f36476b;
                int length3 = z10 ? -aVarArr.length : aVarArr.length;
                c4324y3.getClass();
                BR.a(c4324y3, length3);
                J0.b.a[] aVarArr2 = bVar.f36476b;
                int length4 = aVarArr2.length;
                int i14 = b12;
                int i15 = 0;
                while (i15 < length4) {
                    J0.b[] bVarArr = r10;
                    J0.b.a aVar = aVarArr2[i15];
                    int i16 = length2;
                    C4324y c4324y4 = this.f35742e;
                    J0.b.a[] aVarArr3 = aVarArr2;
                    int a12 = C4766w5.a(this.f35739b.c(abstractC5308Hz, aVar.f36479b), this.f35740c.f38340g);
                    c4324y4.getClass();
                    BR.b(c4324y4, a12);
                    C4324y c4324y5 = this.f35742e;
                    int i17 = aVar.f36480c;
                    c4324y5.getClass();
                    BR.b(c4324y5, i17);
                    this.f35744g.a(this.f35739b.c(abstractC5308Hz, aVar.f36479b));
                    i15++;
                    r10 = bVarArr;
                    length2 = i16;
                    aVarArr2 = aVarArr3;
                }
                J0.b[] bVarArr2 = r10;
                int i18 = length2;
                if (z10) {
                    C4324y c4324y6 = this.f35742e;
                    int i19 = bVar.f36477c;
                    c4324y6.getClass();
                    BR.b(c4324y6, i19);
                }
                i11++;
                i12 = i13;
                b12 = i14;
                r10 = bVarArr2;
                length2 = i18;
            }
            int b14 = this.f35742e.b();
            this.f35742e.e(a11);
            for (J0.a aVar2 : interfaceC4443f3.o()) {
                this.f35742e.f(aVar2.f36471c);
                this.f35742e.a((short) aVar2.f36472d);
                this.f35742e.a(sArr[aVar2.f36473e]);
            }
            this.f35742e.e(b14);
        }
        return a10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0026, code lost:
    
        if (r0.f35724c.isEmpty() == false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(O2 o22) {
        if (!f35737j && o22.isEmpty()) {
            throw new AssertionError();
        }
        J j10 = this.f35743f;
        int a10 = this.f35742e.a(4);
        if (!J.f35721n) {
            if (a10 == 0) {
                j10.getClass();
            }
            throw new AssertionError();
        }
        J.a(o22, a10, j10.f35724c);
        M2[] m2Arr = o22.f36675b;
        this.f35742e.f(m2Arr.length);
        for (M2 m22 : m2Arr) {
            this.f35742e.a((short) C4766w5.a(m22, this.f35740c.f38340g));
        }
    }

    public final void a(L2 l22) {
        J.a(l22, this.f35742e.b(), this.f35743f.f35725d);
        C4324y c4324y = this.f35742e;
        int i10 = l22.f36561e;
        c4324y.getClass();
        BR.b(c4324y, i10);
        this.f35742e.a(l22.f36562f);
    }

    public final void a(C4666r0 c4666r0) {
        J.a(c4666r0, this.f35742e.b(), this.f35743f.f35726e);
        this.f35742e.a((byte) c4666r0.f37692b);
        a(c4666r0.f37693c, this.f35742e, this.f35740c);
    }

    public final void a(C4723u0 c4723u0) {
        J j10 = this.f35743f;
        int a10 = this.f35742e.a(4);
        if (!J.f35721n) {
            C8570nJ c8570nJ = j10.f35734m;
            c8570nJ.getClass();
            if (!c8570nJ.a(C2.J_MR1) && c4723u0.isEmpty()) {
                throw new AssertionError();
            }
        }
        J.a(c4723u0, a10, j10.f35727f);
        ArrayList arrayList = new ArrayList(Arrays.asList(c4723u0.f37806d));
        arrayList.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return com.android.tools.r8.dex.L.this.a((C4666r0) obj, (C4666r0) obj2);
            }
        });
        this.f35742e.f(arrayList.size());
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            this.f35742e.f(J.a((C4666r0) obj, this.f35743f.f35726e));
        }
    }

    public final int a(C4666r0 c4666r0, C4666r0 c4666r02) {
        M2 m22 = c4666r0.f37693c.f37142b;
        M2 m23 = c4666r02.f37693c.f37142b;
        C4728u5 c4728u5 = this.f35740c.f38348o;
        m22.getClass();
        return c4728u5.a(m22, m23);
    }

    public final void a(C4823z5 c4823z5) {
        if (!f35737j && c4823z5.isEmpty()) {
            throw new AssertionError();
        }
        J j10 = this.f35743f;
        int a10 = this.f35742e.a(4);
        if (!J.f35721n) {
            j10.getClass();
            if (a10 == 0 || c4823z5.isEmpty()) {
                throw new AssertionError();
            }
        }
        J.a(c4823z5, a10, j10.f35728g);
        this.f35742e.f(c4823z5.f38467b.length);
        for (int i10 = 0; i10 < c4823z5.size(); i10++) {
            if (!C4823z5.f38466e && i10 < 0) {
                throw new AssertionError();
            }
            if (i10 >= c4823z5.f38468c) {
                this.f35742e.f(this.f35743f.b(c4823z5.j(i10)));
            }
        }
    }

    public final void a(C4685s0 c4685s0) {
        J.a(c4685s0, this.f35742e.a(4), this.f35743f.f35729h);
        this.f35742e.f(this.f35743f.b(c4685s0.f37716b.k0()));
        ArrayList b10 = c4685s0.b(this.f35740c.f38348o);
        ArrayList c10 = c4685s0.c(this.f35740c.f38348o);
        ArrayList a10 = c4685s0.a(this.f35740c.f38348o);
        this.f35742e.f(a10.size());
        this.f35742e.f(b10.size());
        this.f35742e.f(c10.size());
        ToIntFunction toIntFunction = new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return com.android.tools.r8.dex.L.this.a((C4460g1) obj);
            }
        };
        int size = a10.size();
        int i10 = 0;
        int i11 = 0;
        while (i11 < size) {
            Object obj = a10.get(i11);
            i11++;
            AbstractC4479h1 abstractC4479h1 = (AbstractC4479h1) obj;
            this.f35742e.f(abstractC4479h1.getReference().a(this.f35740c));
            this.f35742e.f(toIntFunction.applyAsInt(abstractC4479h1));
        }
        ToIntFunction toIntFunction2 = new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj2) {
                return com.android.tools.r8.dex.L.this.a((C4516j1) obj2);
            }
        };
        int size2 = b10.size();
        int i12 = 0;
        while (i12 < size2) {
            Object obj2 = b10.get(i12);
            i12++;
            AbstractC4479h1 abstractC4479h12 = (AbstractC4479h1) obj2;
            this.f35742e.f(abstractC4479h12.getReference().a(this.f35740c));
            this.f35742e.f(toIntFunction2.applyAsInt(abstractC4479h12));
        }
        ToIntFunction toIntFunction3 = new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj3) {
                return com.android.tools.r8.dex.L.this.b((C4516j1) obj3);
            }
        };
        int size3 = c10.size();
        while (i10 < size3) {
            Object obj3 = c10.get(i10);
            i10++;
            AbstractC4479h1 abstractC4479h13 = (AbstractC4479h1) obj3;
            this.f35742e.f(abstractC4479h13.getReference().a(this.f35740c));
            this.f35742e.f(toIntFunction3.applyAsInt(abstractC4479h13));
        }
    }

    public final int a(C4460g1 c4460g1) {
        return this.f35743f.b(c4460g1.k0());
    }

    public final int a(C4516j1 c4516j1) {
        return this.f35743f.b(c4516j1.k0());
    }

    public final void a(List list) {
        ArrayList arrayList = new ArrayList(list);
        arrayList.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return com.android.tools.r8.dex.L.this.a((C4460g1) obj, (C4460g1) obj2);
            }
        });
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C4460g1 c4460g1 = (C4460g1) obj;
            boolean z10 = f35737j;
            if (!z10 && !c4460g1.b(this.f35738a.b())) {
                throw new AssertionError();
            }
            int a10 = C4766w5.a(c4460g1.getReference(), this.f35740c.f38342i);
            if (!z10 && a10 - i11 < 0) {
                throw new AssertionError();
            }
            C4324y c4324y = this.f35742e;
            c4324y.getClass();
            BR.b(c4324y, a10 - i11);
            C4324y c4324y2 = this.f35742e;
            int i12 = c4460g1.f37202g.f37197c;
            c4324y2.getClass();
            BR.b(c4324y2, i12);
            this.f35744g.a(c4460g1.getReference());
            i11 = a10;
        }
    }

    public final int a(C4460g1 c4460g1, C4460g1 c4460g12) {
        C4554l1 reference = c4460g1.getReference();
        C4554l1 reference2 = c4460g12.getReference();
        C4728u5 c4728u5 = this.f35740c.f38348o;
        reference.getClass();
        return c4728u5.a(reference, reference2);
    }

    public final void a(Iterable iterable) {
        ArrayList d10 = C9073qK.d(iterable);
        d10.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return com.android.tools.r8.dex.L.this.a((C4516j1) obj, (C4516j1) obj2);
            }
        });
        int size = d10.size();
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            Object obj = d10.get(i10);
            i10++;
            C4516j1 c4516j1 = (C4516j1) obj;
            int a10 = C4766w5.a(c4516j1.getReference(), this.f35740c.f38341h);
            boolean z10 = f35737j;
            if (!z10 && a10 - i11 < 0) {
                throw new AssertionError();
            }
            C4324y c4324y = this.f35742e;
            c4324y.getClass();
            BR.b(c4324y, a10 - i11);
            C4324y c4324y2 = this.f35742e;
            L4 l42 = c4516j1.f37314g;
            L4 l43 = new L4(l42.f37196b, l42.f37197c);
            if (l43.L() && !l43.J()) {
                l43.b(32);
                l43.a(131072);
            }
            int i12 = l43.f37197c;
            c4324y2.getClass();
            BR.b(c4324y2, i12);
            InterfaceC4443f3 R02 = c4516j1.R0();
            this.f35744g.a(c4516j1.getReference());
            if (R02 == null) {
                if (!z10 && !c4516j1.v1()) {
                    throw new AssertionError();
                }
                C4324y c4324y3 = this.f35742e;
                c4324y3.getClass();
                BR.b(c4324y3, 0);
            } else {
                C4324y c4324y4 = this.f35742e;
                int a11 = J.a(c4516j1, this.f35743f.f35722a);
                c4324y4.getClass();
                BR.b(c4324y4, a11);
                c4516j1.L0();
                c4516j1.f37317j = null;
            }
            i11 = a10;
        }
    }

    public final int a(C4516j1 c4516j1, C4516j1 c4516j12) {
        A2 reference = c4516j1.getReference();
        A2 reference2 = c4516j12.getReference();
        C4728u5 c4728u5 = this.f35740c.f38348o;
        reference.getClass();
        return c4728u5.a(reference, reference2);
    }

    public final void a(C4441f1 c4441f1) {
        J.a(c4441f1, this.f35742e.b(), this.f35743f.f35731j);
        C4324y c4324y = this.f35742e;
        int length = c4441f1.f37169b.length;
        c4324y.getClass();
        BR.b(c4324y, length);
        for (R2 r22 : c4441f1.f37169b) {
            r22.a(this.f35742e, this.f35740c);
        }
    }

    public static void a(H h10, C4324y c4324y) {
        Adler32 adler32 = new Adler32();
        adler32.update(c4324y.a(), h10.f35694a + 12, (h10.f35716w - r2) - 12);
        c4324y.e(h10.f35694a + 8);
        c4324y.f((int) adler32.getValue());
    }

    public final void a(D0 d02) {
        C8570nJ c8570nJ = this.f35741d;
        c8570nJ.getClass();
        if (c8570nJ.c(C2.O)) {
            if (!f35737j && this.f35742e.b() % 4 != 0) {
                throw new AssertionError();
            }
            this.f35742e.f(J.a(d02.m0(), this.f35743f.f35731j));
            return;
        }
        C5094Ef0 c5094Ef0 = this.f35741d.f50691j;
        c5094Ef0.a(null, new UnsupportedInvokeCustomDiagnostic(Origin.unknown(), Position.UNKNOWN));
        throw c5094Ef0.f39969c;
    }

    public final void a(com.android.tools.r8.graph.C2 c22) {
        B2 b22;
        int a10;
        C8570nJ c8570nJ = this.f35741d;
        c8570nJ.getClass();
        if (c8570nJ.c(C2.O)) {
            if (c22.f36190e.ordinal() != 9) {
                b22 = c22.f36190e;
            } else {
                b22 = B2.f36154j;
            }
            boolean z10 = f35737j;
            if (!z10 && this.f35742e.b() % 4 != 0) {
                throw new AssertionError();
            }
            this.f35742e.a(b22.f36158b);
            this.f35742e.a((short) 0);
            if (c22.f36190e.d()) {
                a10 = C4766w5.a(c22.m0(), this.f35740c.f38341h);
            } else {
                if (!z10 && !c22.f36190e.a()) {
                    throw new AssertionError();
                }
                a10 = C4766w5.a(c22.l0(), this.f35740c.f38342i);
            }
            if (!z10 && (65535 & a10) != a10) {
                throw new AssertionError();
            }
            this.f35742e.a((short) a10);
            this.f35742e.a((short) 0);
            return;
        }
        C5094Ef0 c5094Ef0 = this.f35741d.f50691j;
        c5094Ef0.a(null, new UnsupportedInvokeCustomDiagnostic(Origin.unknown(), Position.UNKNOWN));
        throw c5094Ef0.f39969c;
    }
}
