package com.android.tools.r8.dex;

import com.android.tools.r8.ByteDataView;
import com.android.tools.r8.C10902n;
import com.android.tools.r8.DexFilePerClassFileConsumer;
import com.android.tools.r8.DexIndexedConsumer;
import com.android.tools.r8.dex.C4312l;
import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.C5467Kr0;
import com.android.tools.r8.internal.C6614bd0;
import com.android.tools.r8.internal.C8325ls0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C8798oj;
import com.android.tools.r8.internal.InterfaceC6217Xr0;
import com.android.tools.r8.internal.InterfaceC7158es0;
import com.android.tools.r8.internal.J6;
import com.android.tools.r8.internal.P6;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import u.M0;

public final class C4312l extends C4311k {

    public static final boolean f35888l = true;

    public C4312l(C4798y c4798y, W w10, C10902n c10902n) {
        super(c4798y, w10, c10902n);
    }

    public static void b(t0 t0Var) {
        boolean z10 = f35888l;
        if (!z10) {
            L2 l22 = t0Var.f35960f;
            if ((l22 == null ? null : l22.toString()) != null) {
                throw new AssertionError();
            }
        }
        if (!z10 && t0Var.f35958d != null) {
            throw new AssertionError();
        }
    }

    @Override
    public final ArrayList a(ExecutorService executorService, List list, final ArrayList arrayList) {
        if (list.isEmpty()) {
            return new ArrayList();
        }
        final t0 t0Var = (t0) list.get(list.size() - 1);
        List<t0> subList = list.subList(0, list.size() - 1);
        for (t0 t0Var2 : subList) {
            t0Var.f35956b.f35942h.addAll(t0Var2.f35956b.f35942h);
        }
        ArrayList arrayList2 = new ArrayList(list.size());
        arrayList2.add(a(arrayList, t0Var));
        arrayList2.addAll(C5467Kr0.a(subList, new InterfaceC6217Xr0() {
            @Override
            public final Object apply(Object obj) {
                return C4312l.this.a(arrayList, t0Var, (com.android.tools.r8.dex.t0) obj);
            }
        }, this.f35876a.E().G(), executorService));
        return arrayList2;
    }

    public final C8659ns0 a(List list, t0 t0Var, t0 t0Var2) {
        return a(t0Var2, list, t0Var.c());
    }

    public final C8659ns0 a(t0 t0Var, List list, C4766w5 c4766w5) {
        C8659ns0 a10 = C8659ns0.a(this.f35877b, "VirtualFile " + t0Var.b());
        if (!t0Var.f35956b.f35937c.isEmpty()) {
            a10.b("Compute object offset mapping");
            t0Var.a(this.f35876a, list.size(), a10, c4766w5);
            a10.d();
            a10.b("Rewrite jumbo strings");
            a(t0Var.c(), t0Var.f35956b.f35937c);
            a10.d();
        }
        C8798oj.a(this.f35876a, t0Var);
        a10.d();
        return a10;
    }

    @Override
    public final void a(ExecutorService executorService, List list, ArrayList arrayList, C8659ns0 c8659ns0) {
        int i10;
        G g10;
        int i11;
        int i12;
        int i13;
        C8325ls0 a10 = c8659ns0.a(C5467Kr0.a(executorService), "Write files");
        boolean z10 = f35888l;
        if (!z10 && this.f35885j != null) {
            throw new AssertionError();
        }
        if (!z10 && this.f35884i != null) {
            throw new AssertionError();
        }
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4312l.b((com.android.tools.r8.dex.t0) obj);
            }
        });
        DexIndexedConsumer dexIndexedConsumer = (DexIndexedConsumer) this.f35877b.f50697l;
        C4324y c4324y = new C4324y(dexIndexedConsumer);
        boolean z11 = false;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        byte[] bArr = new byte[0];
        int i14 = 0;
        int i15 = 0;
        while (i15 < list.size()) {
            t0 t0Var = (t0) list.get(i15);
            C8659ns0 a11 = C8659ns0.a(this.f35877b, "VirtualFile " + t0Var.b());
            boolean z12 = f35888l;
            if (!z12 && arrayList.size() != 0) {
                throw new AssertionError();
            }
            if (t0Var.f35956b.f35937c.isEmpty()) {
                i13 = i15;
            } else {
                boolean z13 = i15 == list.size() - 1 ? true : z11;
                if (!z12 && t0Var.f35956b.f35937c.isEmpty()) {
                    throw new AssertionError();
                }
                if (!z12 && !P6.a(4, i14)) {
                    throw new AssertionError();
                }
                a(t0Var);
                a11.b("Reindex for lazy strings");
                C4766w5 c10 = t0Var.c();
                c10.a(arrayList);
                a11.d();
                a11.b("Write bytes");
                int i16 = i14;
                i13 = i15;
                G a12 = a(c10, c4324y, t0Var, a11, i14, z13);
                a11.d();
                if (C8570nJ.b()) {
                    byte[] a13 = c4324y.a();
                    for (int i17 = 0; i17 < i16; i17++) {
                        if (!f35888l && bArr[i17] != a13[i17]) {
                            throw new AssertionError();
                        }
                    }
                    bArr = new byte[a12.f35692c.f35716w];
                    for (int i18 = 0; i18 < a12.f35692c.f35716w; i18++) {
                        bArr[i18] = a13[i18];
                    }
                }
                i14 = a12.f35692c.f35716w;
                if (!f35888l && !P6.a(4, i14)) {
                    throw new AssertionError();
                }
                arrayList3.add(a12);
                a11.d();
                arrayList2.add(a11);
            }
            i15 = i13 + 1;
            z11 = false;
        }
        a10.a(arrayList2);
        a10.a();
        if (arrayList3.isEmpty()) {
            return;
        }
        G g11 = (G) AT.b(arrayList3);
        int i19 = ((C6614bd0) g11.f35690a.f35743f.f35725d.o()).f46807b.f48317l;
        H h10 = g11.f35692c;
        int i20 = h10.f35695b;
        int i21 = h10.f35716w;
        int size = arrayList3.size();
        int i22 = 0;
        while (i22 < size) {
            Object obj = arrayList3.get(i22);
            i22++;
            G g12 = (G) obj;
            c4324y.e(g12.f35692c.f35694a + 112);
            c4324y.f(i21);
            if (g12 != g11) {
                c4324y.e(g12.f35692c.f35694a + 56);
                c4324y.f(i19);
                c4324y.f(i20);
                c4324y.e(g12.f35692c.f35715v);
                H h11 = g12.f35692c;
                L l10 = g12.f35690a;
                int i23 = h11.f35694a;
                H h12 = g11.f35692c;
                if (H.f35693y) {
                    i10 = i21;
                } else {
                    i10 = i21;
                    if (!H.a(h12.f35708o, false)) {
                        throw new AssertionError();
                    }
                }
                ArrayList a14 = h11.a(l10, i23, i19, i20, h12.f35708o);
                int c11 = c4324y.f35978b.c();
                int size2 = a14.size();
                int i24 = 0;
                int i25 = 0;
                while (i24 < size2) {
                    Object obj2 = a14.get(i24);
                    i24++;
                    I i26 = (I) obj2;
                    ArrayList arrayList4 = a14;
                    if (i26.f35720c == 0) {
                        i12 = 0;
                    } else {
                        c4324y.a((short) i26.f35718a);
                        c4324y.a((short) 0);
                        c4324y.f(i26.f35720c);
                        c4324y.f(i26.f35719b);
                        i12 = 1;
                    }
                    i25 += i12;
                    a14 = arrayList4;
                }
                if (!f35888l && c11 != i25) {
                    throw new AssertionError();
                }
                L l11 = g12.f35690a;
                H h13 = g12.f35692c;
                l11.getClass();
                L.b(h13, c4324y);
                L l12 = g12.f35690a;
                H h14 = g12.f35692c;
                l12.getClass();
                L.a(h14, c4324y);
                g10 = g11;
            } else {
                i10 = i21;
                c4324y.e(g12.f35692c.f35715v);
                H h15 = g12.f35692c;
                L l13 = g12.f35690a;
                int i27 = h15.f35694a;
                H h16 = g11.f35692c;
                if (!H.f35693y && !H.a(h16.f35708o, false)) {
                    throw new AssertionError();
                }
                ArrayList a15 = h15.a(l13, i27, i19, i20, h16.f35708o);
                int c12 = c4324y.f35978b.c();
                int size3 = a15.size();
                int i28 = 0;
                int i29 = 0;
                while (i28 < size3) {
                    Object obj3 = a15.get(i28);
                    i28++;
                    I i30 = (I) obj3;
                    G g13 = g11;
                    if (i30.f35720c == 0) {
                        i11 = 0;
                    } else {
                        c4324y.a((short) i30.f35718a);
                        c4324y.a((short) 0);
                        c4324y.f(i30.f35720c);
                        c4324y.f(i30.f35719b);
                        i11 = 1;
                    }
                    i29 += i11;
                    g11 = g13;
                }
                g10 = g11;
                if (!f35888l && c12 != i29) {
                    throw new AssertionError();
                }
                L l14 = g12.f35690a;
                H h17 = g12.f35692c;
                l14.getClass();
                L.b(h17, c4324y);
                L l15 = g12.f35690a;
                H h18 = g12.f35692c;
                l15.getClass();
                L.a(h18, c4324y);
            }
            i21 = i10;
            g11 = g10;
        }
        C4318s c4318s = c4324y.f35978b;
        c4324y.f35978b = null;
        ByteDataView byteDataView = new ByteDataView(c4318s.a().array(), c4318s.a().arrayOffset(), ((G) J6.a(arrayList3, 1)).f35692c.f35716w);
        if (dexIndexedConsumer instanceof DexFilePerClassFileConsumer) {
            if (!f35888l) {
                throw new AssertionError();
            }
        } else {
            dexIndexedConsumer.accept(0, byteDataView, AbstractC5513Ll0.c(), this.f35877b.f50691j);
        }
    }

    public final G a(C4766w5 c4766w5, C4324y c4324y, t0 t0Var, C8659ns0 c8659ns0, final int i10, boolean z10) {
        final L l10 = new L(this.f35876a, c4324y, c4766w5, this.f35878c, t0Var, z10);
        c8659ns0.a("collect", new M0(l10));
        return (G) c8659ns0.a("generate", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                com.android.tools.r8.dex.G a10;
                a10 = com.android.tools.r8.dex.L.this.a(i10, 2);
                return a10;
            }
        });
    }
}
