package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;

public class C8421mS implements InterfaceC5381Je0 {

    public static final boolean f50291s = true;

    public final C4798y f50292a;

    public final C7215fB f50293b;

    public final int f50294c;

    public IdentityHashMap f50296e;

    public C10340xw0 f50297f;

    public EnumC8087kS f50298g;

    public final C8659ns0 f50309r;

    public int f50295d = 0;

    public C8234lI f50299h = new C8234lI();

    public int f50300i = -1;

    public ArrayList f50301j = new ArrayList();

    public LinkedList f50302k = new LinkedList();

    protected List<FT> f50303l = new LinkedList();

    protected PriorityQueue<FT> f50304m = new PriorityQueue<>();

    public final CH f50305n = new CH(16);

    public final ArrayList f50306o = new ArrayList();

    public int f50307p = Integer.MIN_VALUE;

    public int[] f50308q = null;

    public C8421mS(C4798y<?> c4798y, C7215fB c7215fB, C8659ns0 c8659ns0) {
        int i10 = 0;
        this.f50292a = c4798y;
        this.f50293b = c7215fB;
        Y5 it = c7215fB.k().l().iterator();
        while (it.hasNext()) {
            AbstractC10561zE next = it.next();
            if (!next.k1()) {
                break;
            } else {
                i10 += next.d().f53896m.C();
            }
        }
        this.f50294c = i10;
        this.f50309r = c8659ns0;
    }

    @Override
    public final void a(W5 w52, int i10, List list) {
    }

    @Override
    public final void b(W5 w52, W5 w53) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0048, code lost:
    
        if (r4 != com.android.tools.r8.internal.EnumC8087kS.f49640e) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004c, code lost:
    
        if (r0 != 255) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean c(FT ft) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16 = ft.f40229s;
        boolean z10 = f50291s;
        if (!z10 && i16 > 65535) {
            throw new AssertionError();
        }
        if (!z10 && ft.o() > 2) {
            throw new AssertionError();
        }
        int i17 = 0;
        boolean z11 = ft.o() == 2;
        if (g(ft)) {
            if (i16 != 65535) {
                EnumC8087kS enumC8087kS = this.f50298g;
                enumC8087kS.getClass();
                if (enumC8087kS != EnumC8087kS.f49638c) {
                    if (enumC8087kS != EnumC8087kS.f49639d) {
                    }
                }
            }
            a(ft.f40215e.f40221k, ft);
            p(ft);
            this.f50302k.add(ft);
            return true;
        }
        if (this.f50298g.a() || i16 >= 65535) {
            i10 = i16;
        } else {
            i10 = C8704o7.a(k() && !n()) + i16 + this.f50294c;
        }
        C5786Qe0 b10 = b(i10, ft);
        if (!z10) {
            int min = Math.min(this.f50300i, i10);
            for (int i18 = 0; i18 <= min; i18++) {
                if (!b10.f43662f.get(i18)) {
                    boolean z12 = f50291s;
                    if (!z12 && b10.a(i18) <= 0) {
                        throw new AssertionError();
                    }
                    if ((!k() || i18 != j()) && !z12 && !this.f50299h.h(i18)) {
                        throw new AssertionError();
                    }
                }
            }
        }
        this.f50309r.b("Try hint");
        if (a(ft, i10, b10)) {
            this.f50309r.d();
            return true;
        }
        this.f50309r.d();
        int a10 = a(ft, i10, z11, b10, EnumC5670Oe0.f42947e);
        int a11 = a10 != -1 ? b10.a(a10, ft.n()) : 0;
        if (a11 == 0) {
            if (this.f50298g == EnumC8087kS.f49637b) {
                return false;
            }
            boolean z13 = f50291s;
            if (!z13 && !ft.h()) {
                throw new AssertionError();
            }
            if (!((GT) ft.f40220j.first()).a()) {
                EnumC8087kS enumC8087kS2 = this.f50298g;
                enumC8087kS2.getClass();
                if (enumC8087kS2.a(ft.f40229s)) {
                    int i19 = ft.a(this.f50298g).f40504b;
                    int a12 = a(ft, (CH) null);
                    FT a13 = ft.a(i19, this.f50298g);
                    a(a12, ft);
                    p(ft);
                    this.f50302k.add(ft);
                    this.f50304m.add(a13);
                } else {
                    if (!z13 && ft.a(this.f50298g) != null) {
                        throw new AssertionError();
                    }
                    a(a(ft, (CH) null), ft);
                    p(ft);
                    this.f50302k.add(ft);
                }
                return true;
            }
            int i20 = i10 + 1;
            C5786Qe0 c5786Qe0 = new C5786Qe0(i20);
            C5786Qe0 c5786Qe02 = new C5786Qe0(i20);
            for (FT ft2 : this.f50302k) {
                int i21 = ft2.f40221k;
                if (i21 <= i10) {
                    int i22 = i17;
                    while (i22 < ft2.o()) {
                        int i23 = i21 + i22;
                        if (i23 <= i10) {
                            int e10 = ft.e();
                            EnumC8087kS enumC8087kS3 = this.f50298g;
                            if (ft2.j()) {
                                i14 = ((GT) ft2.f40220j.first()).f40504b;
                            } else {
                                Iterator it = ft2.f40220j.iterator();
                                while (true) {
                                    if (!it.hasNext()) {
                                        i14 = Integer.MAX_VALUE;
                                        break;
                                    }
                                    GT gt = (GT) it.next();
                                    gt.getClass();
                                    enumC8087kS3.getClass();
                                    if (enumC8087kS3.a(gt.f40505c) && (i15 = gt.f40504b) >= e10) {
                                        i14 = i15;
                                        break;
                                    }
                                }
                            }
                            c5786Qe0.a(i23, i14, ft2);
                        }
                        i22++;
                        i17 = 0;
                    }
                }
            }
            for (FT ft3 : this.f50303l) {
                int i24 = ft3.f40221k;
                if (i24 <= i10 && ft3.c(ft) != -1) {
                    for (int i25 = 0; i25 < ft3.o(); i25++) {
                        int i26 = i24 + i25;
                        if (i26 <= i10) {
                            int e11 = ft.e();
                            EnumC8087kS enumC8087kS4 = this.f50298g;
                            if (ft3.j()) {
                                i12 = ((GT) ft3.f40220j.first()).f40504b;
                            } else {
                                Iterator it2 = ft3.f40220j.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        i12 = Integer.MAX_VALUE;
                                        break;
                                    }
                                    GT gt2 = (GT) it2.next();
                                    gt2.getClass();
                                    enumC8087kS4.getClass();
                                    if (enumC8087kS4.a(gt2.f40505c) && (i13 = gt2.f40504b) >= e11) {
                                        i12 = i13;
                                        break;
                                    }
                                }
                            }
                            if (i12 < c5786Qe0.a(i26)) {
                                c5786Qe0.a(i26, i12, ft3);
                            }
                        }
                    }
                }
            }
            for (int i27 = 0; b(i27); i27++) {
                c5786Qe0.f43662f.set(i27);
            }
            if (k()) {
                if (!this.f50298g.a() && ft.f40229s == 15 && !n()) {
                    c5786Qe0.f43662f.set(j());
                } else if (l(ft)) {
                    c5786Qe0.f43662f.set(j());
                }
            }
            a(ft, i10, c5786Qe0, c5786Qe02);
            boolean b11 = ft.f40212b.Y().b();
            int i28 = i10;
            int a14 = a(ft, i28, b11, c5786Qe0, EnumC5670Oe0.f42945c);
            int a15 = a(ft, i28, b11, c5786Qe0, EnumC5670Oe0.f42946d);
            if (a15 != -1 && (a14 == -1 || c5786Qe0.a(a14, b11) - 5 < ft.e())) {
                a14 = a15;
            }
            if (a14 == -1) {
                a14 = a(ft, i10, b11, c5786Qe0, EnumC5670Oe0.f42944b);
            }
            int a16 = c5786Qe0.a(a14, b11);
            int a17 = c5786Qe02.a(a14, b11);
            if (a16 < ((GT) ft.f40220j.first()).f40504b) {
                FT a18 = ft.a(((GT) ft.f40220j.first()).f40504b, this.f50298g);
                if (!f50291s && a18 == ft) {
                    throw new AssertionError();
                }
                if (ft.i()) {
                    i11 = ft.f40215e.f40221k;
                } else {
                    int i29 = this.f50300i;
                    a(ft.o() + i29);
                    i11 = i29 + 1;
                }
                a(i11, ft);
                p(ft);
                this.f50302k.add(ft);
                ft.a(true);
                this.f50304m.add(a18);
                return true;
            }
            int o10 = (ft.o() + a14) - 1;
            if (o10 > this.f50300i) {
                a(o10);
            }
            if (a17 > ft.b()) {
                boolean n10 = ft.n();
                if (!this.f50299h.h(a14) || (n10 && !this.f50299h.h(a14 + 1))) {
                    a(ft, a14, ft.n());
                }
                a(a14, ft);
                p(ft);
                this.f50302k.add(ft);
                b(ft, a14, ft.n());
            } else {
                this.f50304m.add(ft.a(a17, this.f50298g));
                boolean n11 = ft.n();
                if (!this.f50299h.h(a14) || (n11 && !this.f50299h.h(a14 + 1))) {
                    a(ft, a14, ft.n());
                }
                a(a14, ft);
                p(ft);
                this.f50302k.add(ft);
                b(ft, a14, ft.n());
            }
        } else {
            int o11 = (ft.o() + a10) - 1;
            if (a11 >= ft.b()) {
                if (o11 > this.f50300i) {
                    a(o11);
                }
                a(a10, ft);
                p(ft);
                this.f50302k.add(ft);
            } else {
                EnumC8087kS enumC8087kS5 = this.f50298g;
                if (enumC8087kS5 == EnumC8087kS.f49637b) {
                    return false;
                }
                int i30 = ft.f40229s;
                FT a19 = ft.a(a11, enumC8087kS5);
                if (!f50291s && a19 == ft) {
                    throw new AssertionError();
                }
                this.f50304m.add(a19);
                if (ft.f40229s != i30) {
                    return c(ft);
                }
                if (o11 > this.f50300i) {
                    a(o11);
                }
                a(a10, ft);
                p(ft);
                this.f50302k.add(ft);
            }
        }
        return true;
    }

    @Override
    public final int d() {
        int i10 = this.f50300i + 1;
        int[] iArr = this.f50308q;
        if (iArr == null) {
            return i10;
        }
        boolean z10 = X3.f45604a;
        return i10 - (iArr.length == 0 ? 0 : iArr[iArr.length - 1]);
    }

    @Override
    public final C8570nJ e() {
        return this.f50292a.E();
    }

    public final void f() {
        this.f50293b.f47897d.forEach(new RN0());
    }

    public final boolean g(FT ft) {
        if (!ft.i()) {
            return false;
        }
        FT ft2 = ft.f40215e;
        if (!f50291s && !ft2.g()) {
            throw new AssertionError();
        }
        if (!this.f50298g.a()) {
            return true;
        }
        if (!this.f50292a.E().a(this.f50293b.j())) {
            C8570nJ E10 = this.f50292a.E();
            E10.getClass();
            if (!E10.a(C2.M)) {
                C8570nJ E11 = this.f50292a.E();
                E11.getClass();
                if (!E11.a(C2.Q)) {
                    return false;
                }
            }
        }
        return ft2.f40212b.f53893j;
    }

    public final int h() {
        C7215fB c7215fB = this.f50293b;
        c7215fB.getClass();
        AE H10 = c7215fB.k().H();
        C8024k3 v10 = H10.next().v();
        int d10 = d() - this.f50294c;
        int i10 = 0;
        while (true) {
            if (v10 == null) {
                break;
            }
            if (v10 != null) {
                C8024k3 v11 = H10.next().v();
                int C10 = v10.d().f53896m.C();
                int i11 = d10 + C10;
                if (i11 - 1 <= 15) {
                    i10 += C10;
                    v10 = v11;
                    d10 = i11;
                } else if (d10 <= 15) {
                    return i10 + 1;
                }
            } else {
                throw new NoSuchElementException();
            }
        }
        return i10;
    }

    public final C9406sK i() {
        return AbstractC9907vK.a(this.f50293b.c(), new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return C8421mS.a((C8024k3) obj);
            }
        });
    }

    public final int j() {
        if (f50291s || k()) {
            return this.f50294c;
        }
        throw new AssertionError();
    }

    public final boolean k() {
        return !this.f50306o.isEmpty();
    }

    public final boolean l(FT ft) {
        if (!k()) {
            return false;
        }
        if (this.f50306o.size() > 500) {
            return true;
        }
        ArrayList arrayList = this.f50306o;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            if (ft.a((FT) obj)) {
                return true;
            }
        }
        return false;
    }

    public final int[] m() {
        if (this.f50298g.a() || d() == 0) {
            return null;
        }
        C6901dI c6901dI = new C6901dI(16);
        ArrayList arrayList = this.f50301j;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            FT ft = (FT) obj;
            if (!ft.k()) {
                for (int i11 = 0; i11 < ft.o(); i11++) {
                    c6901dI.add(ft.f40221k + i11);
                }
            }
            ArrayList arrayList2 = ft.f40216f;
            int size2 = arrayList2.size();
            int i12 = 0;
            while (i12 < size2) {
                Object obj2 = arrayList2.get(i12);
                i12++;
                FT ft2 = (FT) obj2;
                if (!ft2.k()) {
                    for (int i13 = 0; i13 < ft2.o(); i13++) {
                        c6901dI.add(ft2.f40221k + i13);
                    }
                }
            }
        }
        int i14 = this.f50307p;
        if (i14 != Integer.MIN_VALUE) {
            while (i14 < this.f50300i + 1) {
                c6901dI.add(i14);
                i14++;
            }
        }
        int a10 = C8704o7.a(k() && !n()) + this.f50294c;
        if (!f50291s) {
            for (int i15 = 0; i15 < a10; i15++) {
                if (!f50291s && !c6901dI.h(i15)) {
                    throw new AssertionError();
                }
            }
        }
        int i16 = this.f50300i + 1;
        int i17 = this.f50307p;
        int i18 = (i16 - a10) - (i17 != Integer.MIN_VALUE ? i16 - i17 : 0);
        int[] iArr = new int[i18];
        int i19 = 0;
        for (int i20 = 0; i20 < i18; i20++) {
            if (!c6901dI.h(a10 + i20)) {
                i19++;
            }
            iArr[i20] = i19;
        }
        return iArr;
    }

    public final boolean n() {
        boolean z10 = f50291s;
        if (!z10 && !k()) {
            throw new AssertionError();
        }
        if (!this.f50298g.a()) {
            EnumC8087kS enumC8087kS = this.f50298g;
            enumC8087kS.getClass();
            if (enumC8087kS != EnumC8087kS.f49641f) {
                if (this.f50298g.b()) {
                    if (z10 || this.f50295d > 0) {
                        return true;
                    }
                    throw new AssertionError();
                }
                return !this.f50292a.E().F().f50848V;
            }
        }
        return true;
    }

    public final boolean o() {
        ArrayList arrayList = this.f50301j;
        int size = arrayList.size();
        int i10 = 0;
        boolean z10 = false;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            FT ft = (FT) obj;
            for (NJ nj2 : C9073qK.a(ft.f40212b.b0(), new Predicate() {
                @Override
                public final boolean test(Object obj2) {
                    return C8421mS.this.c((AbstractC10561zE) obj2);
                }
            })) {
                FT a10 = ft.a(nj2.f54322g);
                int e10 = a10.e();
                int i11 = nj2.f54322g;
                if (e10 != (i11 % 2 == 1 ? i11 : i11 - 1)) {
                    a10 = a10.a(i11, this.f50298g);
                    this.f50304m.add(a10);
                }
                if (!FT.f40211v && a10.j()) {
                    throw new AssertionError();
                }
                a10.f40224n = nj2;
                if (nj2.f54322g + 1 < a10.b()) {
                    this.f50304m.add(a10.a(nj2.f54322g + 2, this.f50298g));
                }
                z10 = true;
            }
        }
        return z10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003a, code lost:
    
        if (r2 != j()) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void p(FT ft) {
        int i10 = ft.f40221k;
        boolean b10 = ft.f40212b.Y().b();
        if (!f50291s) {
            if (this.f50299h.h(i10) || (k() && i10 == j())) {
                if (b10) {
                    int i11 = i10 + 1;
                    if (!this.f50299h.h(i11)) {
                        if (k()) {
                        }
                    }
                }
            }
            throw new AssertionError();
        }
        this.f50299h.remove(i10);
        if (b10) {
            this.f50299h.remove(i10 + 1);
        }
        if (!g(ft) || ft.l()) {
            return;
        }
        FT ft2 = ft.f40215e;
        if (ft2.f40221k != ft.f40221k) {
            p(ft2);
        }
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Live ranges:\n");
        ArrayList arrayList = this.f50301j;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            FT ft = (FT) obj;
            sb2.append((Object) ft.f40212b);
            sb2.append(" ");
            sb2.append((Object) ft);
        }
        sb2.append("\nLive range ascii art: \n");
        ArrayList arrayList2 = this.f50301j;
        int size2 = arrayList2.size();
        int i11 = 0;
        while (i11 < size2) {
            Object obj2 = arrayList2.get(i11);
            i11++;
            FT ft2 = (FT) obj2;
            C10340xw0 c10340xw0 = ft2.f40212b;
            if (ft2.g()) {
                C10656zq0.b(sb2, ((Object) c10340xw0) + " r" + ft2.f40221k + ": ", 20);
            } else {
                C10656zq0.b(sb2, ((Object) c10340xw0) + " (no reg): ", 20);
            }
            sb2.append("|");
            StringBuilder sb3 = new StringBuilder();
            ArrayList arrayList3 = ft2.f40219i;
            int size3 = arrayList3.size();
            int i12 = 0;
            int i13 = 0;
            while (true) {
                if (i12 < size3) {
                    Object obj3 = arrayList3.get(i12);
                    i12++;
                    IT it = (IT) obj3;
                    it.getClass();
                    if (it == IT.f41106d) {
                        sb3.append("--- infinite ---...");
                        break;
                    }
                    while (i13 < it.f41107b) {
                        sb3.append(" ");
                        i13++;
                    }
                    while (i13 < it.f41108c) {
                        sb3.append("-");
                        i13++;
                    }
                }
            }
            sb2.append(sb3.toString());
            sb2.append("\n");
        }
        return sb2.toString();
    }

    public final int a(FT ft, int i10, AbstractC5728Pe0 abstractC5728Pe0, boolean z10, EnumC5670Oe0 enumC5670Oe0) {
        int i11 = -1;
        int i12 = -1;
        for (int i13 = 0; i13 <= i10; i13++) {
            if (!abstractC5728Pe0.b(i13) && ((!z10 || !abstractC5728Pe0.b(i13 + 1)) && abstractC5728Pe0.a(i13, enumC5670Oe0))) {
                if (z10) {
                    if (i13 != this.f50294c - 1 && (!k() || n() || i13 != j())) {
                        if (i13 >= i10) {
                            break;
                        }
                    }
                }
                int a10 = abstractC5728Pe0.a(i13, z10);
                if ((!ft.h() || a10 != ((GT) ft.f40220j.first()).f40504b) && a10 > i11) {
                    if (a10 == Integer.MAX_VALUE) {
                        return i13;
                    }
                    i12 = i13;
                    i11 = a10;
                }
            }
        }
        return i12;
    }

    public final void b(FT ft) {
        FT ft2 = ft.f40215e;
        if (ft2.f40225o) {
            return;
        }
        this.f50309r.b("Extract splits");
        List a10 = AT.a((Collection) ft2.f40216f, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8421mS.h((FT) obj);
            }
        });
        this.f50309r.d();
        this.f50309r.b("Process splits");
        if (ft2.j() && !ft2.g()) {
            a(ft);
        }
        Iterator it = a10.iterator();
        while (it.hasNext()) {
            a((FT) it.next());
        }
        ft2.f40225o = true;
        this.f50309r.d();
    }

    public final boolean e(int i10, FT ft) {
        boolean z10 = f50291s;
        if (!z10 && !k(ft)) {
            throw new AssertionError();
        }
        AbstractC10561zE abstractC10561zE = ft.f40212b.f53886c;
        abstractC10561zE.getClass();
        if (abstractC10561zE instanceof C9450se) {
            C10340xw0 c10340xw0 = (C10340xw0) ft.f40212b.f53886c.E().f54321f.get(0);
            C10340xw0 y22 = ft.f40212b.f53886c.E().y2();
            int i11 = c10340xw0.f53891h.a(ft.e()).f40221k;
            int i12 = y22.f53891h.a(ft.e()).f40221k;
            if (!z10 && i11 == Integer.MIN_VALUE) {
                throw new AssertionError();
            }
            if (z10 || i12 != Integer.MIN_VALUE) {
                return i10 == i11 || i10 == i11 + 1 || i10 == i12 || i10 == i12 + 1;
            }
            throw new AssertionError();
        }
        if (z10 || ft.f40212b.f53886c.d2()) {
            return i10 == ((C10340xw0) ft.f40212b.f53886c.z0().f54321f.get(0)).f53891h.a(ft.e()).f40221k;
        }
        throw new AssertionError();
    }

    public final void f(FT ft) {
        boolean z10 = f50291s;
        if (!z10 && !m(ft)) {
            throw new AssertionError();
        }
        int i10 = ft.f40221k;
        if (!z10 && (ft.o() + i10) - 1 > this.f50300i) {
            throw new AssertionError();
        }
        this.f50299h.add(i10);
        if (ft.f40212b.Y().b()) {
            this.f50299h.add(i10 + 1);
        }
        if (!g(ft) || ft.l()) {
            return;
        }
        FT ft2 = ft.f40215e;
        if (ft2.f40221k != ft.f40221k) {
            f(ft2);
        }
    }

    public final boolean k(FT ft) {
        C8570nJ E10 = this.f50292a.E();
        E10.getClass();
        if (!E10.a(C2.L)) {
            C8570nJ E11 = this.f50292a.E();
            E11.getClass();
            if (!E11.a(C2.M)) {
                return false;
            }
        }
        if (ft.o() == 2 || ft.f40212b.j() || ft.f40215e != ft) {
            return false;
        }
        AbstractC10561zE abstractC10561zE = ft.f40212b.f53886c;
        abstractC10561zE.getClass();
        if (abstractC10561zE instanceof C9450se) {
            return ((C10340xw0) abstractC10561zE.f54321f.get(0)).Y().b();
        }
        if (abstractC10561zE.d2()) {
            C10022w10 z02 = abstractC10561zE.z0();
            if (z02.f53401k == T10.f44370f && z02.f53402l == T10.f44369e) {
                return true;
            }
        }
        return false;
    }

    public final boolean j(FT ft) {
        C8570nJ E10 = this.f50292a.E();
        E10.getClass();
        if (!E10.b(C2.M) || ft.o() == 1 || ft.f40212b.j() || ft.f40215e != ft) {
            return false;
        }
        AbstractC10561zE abstractC10561zE = ft.f40212b.f53886c;
        if (abstractC10561zE.l1() && abstractC10561zE.w().u2() == T10.f44370f) {
            return (abstractC10561zE instanceof C6855d2) || (abstractC10561zE instanceof C5812Qq0);
        }
        if (abstractC10561zE.W1() && abstractC10561zE.n0().u2() == T10.f44370f) {
            return (abstractC10561zE instanceof A40) || (abstractC10561zE instanceof C7343fy0) || (abstractC10561zE instanceof C9523t2);
        }
        return false;
    }

    public final boolean i(FT ft) {
        C8570nJ E10 = this.f50292a.E();
        E10.getClass();
        if (E10.c(C2.P) || ft.o() == 1 || ft.f40212b.j() || ft.f40215e != ft) {
            return false;
        }
        AbstractC10561zE abstractC10561zE = ft.f40212b.f53886c;
        return abstractC10561zE.n1() && abstractC10561zE.y().s2().b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:0x00fb, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final MD l() {
        int i10;
        if (!f50291s && this.f50307p != Integer.MIN_VALUE) {
            throw new AssertionError();
        }
        ArrayList arrayList = this.f50301j;
        int size = arrayList.size();
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (i12 < size) {
                Object obj = arrayList.get(i12);
                i12++;
                FT ft = (FT) obj;
                if (!FT.f40211v && ft.f40215e != ft) {
                    throw new AssertionError();
                }
                if (ft.f40212b.H()) {
                    ft.f40231u = true;
                } else if (ft.f40212b.K()) {
                    Iterator it = ft.f40212b.a0().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            C7201f60 c7201f60 = (C7201f60) it.next();
                            if (d(c7201f60.f53891h.f40221k) >= 255) {
                                for (0; i10 < c7201f60.c0().size(); i10 + 1) {
                                    i10 = (((C10340xw0) c7201f60.f47863q.get(i10)) == ft.f40212b && ft.a(c7201f60.f47862p.u().get(i10).i().f54322g).f40223m) ? 0 : i10 + 1;
                                }
                            }
                        } else if (ft.d() == Integer.MIN_VALUE) {
                            boolean z10 = FT.f40211v;
                            if (!z10) {
                                if (!z10 && !ft.f40223m) {
                                    throw new AssertionError();
                                }
                                ArrayList arrayList2 = ft.f40216f;
                                int size2 = arrayList2.size();
                                int i13 = 0;
                                while (i13 < size2) {
                                    Object obj2 = arrayList2.get(i13);
                                    i13++;
                                    FT ft2 = (FT) obj2;
                                    if (!FT.f40211v && !ft2.f40223m) {
                                        throw new AssertionError();
                                    }
                                }
                            }
                            ft.f40231u = true;
                        } else {
                            ft.f40231u = d(ft.d()) < 255;
                        }
                    }
                } else {
                    continue;
                }
            } else {
                C9979vn0 c9979vn0 = new C9979vn0(this.f50292a, this.f50293b, this);
                ArrayList arrayList3 = this.f50301j;
                int size3 = arrayList3.size();
                while (i11 < size3) {
                    Object obj3 = arrayList3.get(i11);
                    i11++;
                    FT ft3 = (FT) obj3;
                    if (ft3.f40216f.size() != 0) {
                        PriorityQueue priorityQueue = new PriorityQueue();
                        priorityQueue.addAll(ft3.f40216f);
                        Object poll = priorityQueue.poll();
                        while (true) {
                            FT ft4 = (FT) poll;
                            FT ft5 = ft3;
                            ft3 = ft4;
                            if (ft3 != null) {
                                int e10 = ft3.e();
                                if (!d(ft3)) {
                                    if (e10 % 2 != 1) {
                                        e10--;
                                    }
                                    boolean z11 = C9979vn0.f53328i;
                                    if (!z11 && e10 % 2 != 1) {
                                        throw new AssertionError();
                                    }
                                    if (!z11 && ft3.f40215e != ft5.f40215e) {
                                        throw new AssertionError();
                                    }
                                    if (((W5) c9979vn0.f53335g.get(Integer.valueOf(e10 + 1))) == null) {
                                        c9979vn0.a(e10, ft3, ft5);
                                    }
                                }
                                poll = priorityQueue.poll();
                            }
                        }
                    }
                }
                Iterator<W5> it2 = this.f50293b.f47897d.iterator();
                while (it2.hasNext()) {
                    W5 next = it2.next();
                    for (W5 w52 : next.v()) {
                        int i14 = next.i().f54322g;
                        boolean b10 = next.b(w52);
                        if (b10) {
                            Y5 it3 = next.l().iterator();
                            while (true) {
                                if (!it3.hasNext()) {
                                    break;
                                }
                                AbstractC10561zE next2 = it3.next();
                                if (next2.o()) {
                                    i14 = next2.f54322g;
                                    break;
                                }
                            }
                        }
                        int i15 = w52.f45293f.a().f54322g;
                        Iterator<E> it4 = ((C7048eB) this.f50296e.get(w52)).f47629a.iterator();
                        while (it4.hasNext()) {
                            FT ft6 = ((C10340xw0) it4.next()).f53891h;
                            FT a10 = ft6.a(i14);
                            FT a11 = ft6.a(i15);
                            if (!d(a11) && a10 != a11) {
                                if (next.i().G1() && !b10) {
                                    int i16 = i14 - 1;
                                    if (!C9979vn0.f53328i && a11.f40215e != a10.f40215e) {
                                        throw new AssertionError();
                                    }
                                    c9979vn0.b(i16, a11, a10);
                                } else {
                                    int i17 = i15 - 1;
                                    if (!C9979vn0.f53328i && a11.f40215e != a10.f40215e) {
                                        throw new AssertionError();
                                    }
                                    c9979vn0.a(i17, a11, a10);
                                }
                            }
                        }
                        int indexOf = w52.u().indexOf(next);
                        for (C7201f60 c7201f602 : w52.s()) {
                            FT a12 = c7201f602.f53891h.a(i15);
                            FT a13 = ((C10340xw0) c7201f602.f47863q.get(indexOf)).f53891h.a(i14);
                            if (a13 != a12 && !a12.i()) {
                                if (!f50291s && next.v().size() != 1) {
                                    throw new AssertionError();
                                }
                                c9979vn0.c(i14 - 1, a12, a13);
                            }
                        }
                    }
                }
                int i18 = this.f50300i + 1;
                int a14 = c9979vn0.a(i18);
                if (a14 > 0) {
                    this.f50307p = i18;
                    this.f50300i += a14;
                }
                return new MD(this, a14);
            }
        }
    }

    public final int d(int i10) {
        int i11;
        int a10;
        boolean z10 = f50291s;
        if (!z10 && i10 == Integer.MIN_VALUE) {
            throw new AssertionError();
        }
        if (!z10 && i10 < 0) {
            throw new AssertionError();
        }
        if (b(i10)) {
            return this.f50300i - ((this.f50294c - i10) - 1);
        }
        if (k() && !n() && i10 == j()) {
            i11 = this.f50300i;
            a10 = this.f50294c;
        } else {
            i11 = i10 - this.f50294c;
            a10 = C8704o7.a(k() && !n());
        }
        return i11 - a10;
    }

    public final void n(FT ft) {
        if (ft.f()) {
            return;
        }
        C10340xw0 c10340xw0 = ft.f40212b;
        if (c10340xw0.d(new C10398yF0())) {
            C10340xw0 n10 = c10340xw0.r().D().n();
            if (n10.f53891h.c(ft) == -1 && n10.s() == c10340xw0.s()) {
                ft.a(n10.f53891h, this.f50304m);
            }
        }
    }

    public static boolean h(FT ft) {
        return ft.j() && !ft.g();
    }

    public static Collection a(List list, FT ft, int i10, Predicate predicate) {
        boolean b10 = ft.f40212b.Y().b();
        Iterator it = list.iterator();
        FT ft2 = null;
        while (it.hasNext()) {
            FT ft3 = (FT) it.next();
            if (ft3.a(i10, b10) && predicate.test(ft3)) {
                if (b10) {
                    int i11 = i10 + 1;
                    if (!ft3.a(i10, false) || !ft3.a(i11, false)) {
                        if (ft2 != null) {
                            return AbstractC7552hC.a(ft3, ft2);
                        }
                        ft2 = ft3;
                    }
                }
                return Collections.singleton(ft3);
            }
        }
        if (ft2 != null) {
            return Collections.singleton(ft2);
        }
        return Collections.EMPTY_LIST;
    }

    public final void g() {
        a(this.f50292a, this.f50293b, this.f50296e, this.f50301j);
        Iterator it = this.f50293b.a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8421mS.b((W5) obj);
            }
        }).iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            Iterator<E> it2 = ((C7048eB) this.f50296e.get((W5) it.next())).f47629a.iterator();
            while (it2.hasNext()) {
                FT ft = ((C10340xw0) it2.next()).f53891h;
                if (!FT.f40211v && !ft.l()) {
                    throw new AssertionError();
                }
                ft.f40227q = true;
            }
            z10 = true;
        }
        C8570nJ E10 = this.f50292a.E();
        E10.getClass();
        if (!E10.a(C2.M)) {
            C8570nJ E11 = this.f50292a.E();
            E11.getClass();
            if (!E11.a(C2.Q)) {
                return;
            }
        }
        if (this.f50293b.v().getAccessFlags().n()) {
            return;
        }
        FT ft2 = this.f50297f.f53891h;
        ft2.f40219i.clear();
        ft2.a(new IT(0, this.f50293b.f47901h));
        Iterator it3 = this.f50296e.values().iterator();
        while (it3.hasNext()) {
            ((C7048eB) it3.next()).f47629a.add(this.f50297f);
        }
        if (z10) {
            if (!FT.f40211v && !ft2.l()) {
                throw new AssertionError();
            }
            ft2.f40227q = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:191:0x0329, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x034a, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b() {
        EnumC8087kS enumC8087kS;
        W5 w52;
        boolean z10 = f50291s;
        if (!z10 && !this.f50293b.b(this.f50292a)) {
            throw new AssertionError();
        }
        if (this.f50293b.v().f37314g.I() && a(this.f50293b)) {
            if (!z10 && !a(this.f50293b)) {
                throw new AssertionError();
            }
            AE H10 = this.f50293b.k().H();
            C6184Xc0 c6184Xc0 = new C6184Xc0();
            while (H10.h().k1()) {
                c6184Xc0.b(c6184Xc0.f45772e, H10.next().v().d());
            }
            while (!H10.h().N1()) {
                H10.next();
            }
            NJ a02 = H10.h().a0();
            int i10 = this.f50294c;
            if (a02.d() != null) {
                i10 += a02.d().f53896m.C();
            }
            if (i10 - 1 <= 255) {
                ArrayList arrayList = a02.f54321f;
                if (arrayList.size() >= 1) {
                    int i11 = -1;
                    int i12 = 0;
                    while (true) {
                        if (i12 < arrayList.size()) {
                            C10340xw0 c10340xw0 = (C10340xw0) arrayList.get(i12);
                            if (!c10340xw0.H()) {
                                c10340xw0 = c10340xw0.f53886c.D().n();
                            }
                            if (!f50291s && !c10340xw0.H()) {
                                throw new AssertionError();
                            }
                            int b10 = c6184Xc0.b(c10340xw0);
                            if (i11 >= 0 && b10 != i11 + 1) {
                                break;
                            }
                            i12++;
                            i11 = b10;
                        } else {
                            while (H10.n().t1()) {
                                C7942jc D10 = H10.previous().D();
                                D10.d().f(D10.n());
                                D10.d((C10340xw0) null);
                            }
                        }
                    }
                }
            }
        }
        this.f50309r.b("Setup");
        AbstractC4895Av0 it = this.f50293b.B().iterator();
        while (it.hasNext()) {
            Y5 it2 = ((W5) it.next()).l().iterator();
            while (it2.hasNext()) {
                AbstractC10561zE next = it2.next();
                if (next.d() != null) {
                    next.d().f();
                }
            }
        }
        List<C10340xw0> d10 = this.f50293b.d();
        Iterator<C10340xw0> it3 = d10.iterator();
        int i13 = 0;
        while (it3.hasNext()) {
            FT ft = new FT(it3.next());
            ft.a(new IT(0, i13));
            this.f50301j.add(ft);
            i13 += 2;
        }
        if (!d10.isEmpty()) {
            C10340xw0 c10340xw02 = d10.get(0);
            this.f50297f = c10340xw02;
            int i14 = 1;
            while (i14 < d10.size()) {
                C10340xw0 c10340xw03 = d10.get(i14);
                c10340xw02.f53891h.b(c10340xw03.f53891h);
                i14++;
                c10340xw02 = c10340xw03;
            }
        }
        Iterator<W5> it4 = this.f50293b.f47897d.iterator();
        while (it4.hasNext()) {
            Y5 I10 = it4.next().I();
            while (I10.hasNext()) {
                AbstractC10561zE next2 = I10.next();
                NJ a03 = next2.a0();
                if (a03 != null && a03.y2() > 5 && !a(a03)) {
                    I10.previous();
                    NJ a04 = next2.a0();
                    Set c10 = AbstractC5513Ll0.c();
                    for (int i15 = 0; i15 < a04.f54321f.size(); i15++) {
                        C10340xw0 b11 = a04.b(i15);
                        if (!c10.add(b11)) {
                            C10340xw0 a10 = this.f50293b.a(b11.u(), (C4515j0) null);
                            a10.a(true);
                            C6433aY c6433aY = new C6433aY(a10, b11);
                            c6433aY.b(a04.getPosition());
                            C10340xw0 c10340xw04 = (C10340xw0) a04.f54321f.get(i15);
                            a04.f54321f.set(i15, a10);
                            c10340xw04.f53887d.remove(a04);
                            c10340xw04.f53888e = null;
                            a10.f53887d.add(a04);
                            a10.f53888e = null;
                            I10.add(c6433aY);
                        }
                    }
                    I10.next();
                }
            }
        }
        C7215fB c7215fB = this.f50293b;
        AbstractC7552hC B10 = c7215fB.B();
        AbstractC4895Av0 it5 = B10.iterator();
        while (it5.hasNext()) {
            W5 w53 = (W5) it5.next();
            int i16 = c7215fB.f47901h;
            Y5 it6 = w53.f45293f.iterator();
            while (it6.hasNext()) {
                AbstractC10561zE next3 = it6.next();
                next3.getClass();
                if (!AbstractC10561zE.f54316j && i16 == -1) {
                    throw new AssertionError();
                }
                next3.f54322g = i16;
                i16 += 2;
            }
            c7215fB.f47901h = i16;
        }
        this.f50296e = this.f50293b.e();
        g();
        ArrayList arrayList2 = new ArrayList();
        Iterator<W5> it7 = this.f50293b.f47897d.iterator();
        while (it7.hasNext()) {
            W5 next4 = it7.next();
            if (next4.B() && next4.x().b(next4)) {
                C7048eB c7048eB = (C7048eB) this.f50296e.get(next4);
                if (c7048eB.f47629a.isEmpty() && c7048eB.f47630b.isEmpty() && next4.f45293f.size() <= 2) {
                    arrayList2.add(next4);
                }
            }
        }
        if (!arrayList2.isEmpty()) {
            Set c11 = AbstractC5513Ll0.c();
            int size = arrayList2.size();
            int i17 = 0;
            loop14: while (i17 < size) {
                Object obj = arrayList2.get(i17);
                i17++;
                W5 w54 = (W5) obj;
                if (!f50291s && c11.contains(w54)) {
                    throw new AssertionError();
                }
                int size2 = arrayList2.size();
                int i18 = 0;
                while (true) {
                    if (i18 >= size2) {
                        w52 = null;
                        break;
                    }
                    Object obj2 = arrayList2.get(i18);
                    i18++;
                    w52 = (W5) obj2;
                    if (w52 != w54 && !c11.contains(w52)) {
                        boolean z11 = f50291s;
                        if (!z11) {
                            C7048eB c7048eB2 = (C7048eB) this.f50296e.get(w54);
                            if (!c7048eB2.f47629a.isEmpty() || !c7048eB2.f47630b.isEmpty()) {
                                break loop14;
                            }
                        }
                        if (!z11) {
                            C7048eB c7048eB3 = (C7048eB) this.f50296e.get(w52);
                            if (!c7048eB3.f47629a.isEmpty() || !c7048eB3.f47630b.isEmpty()) {
                                break loop14;
                            }
                        }
                        if (w54.f45293f.size() == w52.f45293f.size() && w54.f45293f.size() <= 2) {
                            if (w54.f45293f.size() == 2) {
                                AbstractC10561zE a11 = w54.f45293f.a();
                                a11.getClass();
                                if (a11 instanceof C6600bY) {
                                    AbstractC10561zE a12 = w52.f45293f.a();
                                    a12.getClass();
                                    if (!(a12 instanceof C6600bY)) {
                                        continue;
                                    }
                                } else {
                                    continue;
                                }
                            }
                            if (w54.i().G1()) {
                                if (w52.i().G1() && w54.w() == w52.w()) {
                                    break;
                                }
                            }
                            if (w54.i().g2() && w52.i().g2()) {
                                break;
                            }
                        }
                    }
                }
                if (w52 != null) {
                    if (!f50291s && w54.z()) {
                        throw new AssertionError();
                    }
                    c11.add(w54);
                    for (W5 w55 : w54.u()) {
                        w55.b(w54, w52);
                        if (!w52.u().contains(w55)) {
                            w52.m().add(w55);
                        }
                    }
                    for (W5 w56 : w54.v()) {
                        int indexOf = w56.u().indexOf(w54);
                        w56.m().remove(indexOf);
                        for (C7201f60 c7201f60 : w56.s()) {
                            c7201f60.getClass();
                            c7201f60.a(indexOf, (C10696a) null, EnumC6871d70.f47287c);
                        }
                    }
                }
            }
            this.f50293b.b((Collection<W5>) c11);
        }
        this.f50309r.d();
        this.f50309r.b("Allocate");
        if (this.f50294c <= 15) {
            enumC8087kS = EnumC8087kS.f49637b;
        } else {
            enumC8087kS = EnumC8087kS.f49638c;
        }
        a(enumC8087kS, false);
        this.f50309r.d();
        boolean z12 = f50291s;
        if (!z12) {
            this.f50293b.b(false);
        }
        if (!z12 && !this.f50298g.a() && d() != 0 && this.f50308q == null) {
            throw new AssertionError();
        }
        if (this.f50292a.E().f50690i1) {
            a(B10, this.f50301j, this, this.f50296e);
        } else if (this.f50293b.j().getHolder().I1()) {
            C7549hB p10 = this.f50293b.p();
            while (p10.hasNext()) {
                AbstractC10561zE next5 = p10.next();
                next5.getClass();
                if (next5 instanceof C6797cj) {
                    p10.remove();
                }
            }
        }
        f();
        this.f50296e = null;
        this.f50301j = null;
        this.f50302k = null;
        this.f50303l = null;
        this.f50304m = null;
        this.f50299h = null;
    }

    public final boolean d(int i10, FT ft) {
        int i11;
        boolean z10 = f50291s;
        if (!z10 && !j(ft)) {
            throw new AssertionError();
        }
        C10340xw0 c10340xw0 = (C10340xw0) ft.f40212b.f53886c.C().f54321f.get(0);
        C10340xw0 y22 = ft.f40212b.f53886c.C().y2();
        int i12 = c10340xw0.f53891h.a(ft.e()).f40221k;
        int i13 = y22.f53891h.a(ft.e()).f40221k;
        if (z10 || !(i12 == Integer.MIN_VALUE || i13 == Integer.MIN_VALUE)) {
            return i10 == i12 + 1 || (i11 = i10 + 1) == i12 || i10 == i13 + 1 || i11 == i13;
        }
        throw new AssertionError();
    }

    public static boolean a(NJ nj2) {
        Iterator it = nj2.f54321f.iterator();
        C8024k3 c8024k3 = (C8024k3) ((C10340xw0) it.next()).a(new NN0());
        if (c8024k3 == null) {
            return false;
        }
        while (it.hasNext()) {
            C8024k3 c8024k32 = (C8024k3) ((C10340xw0) it.next()).a(new NN0());
            if (c8024k3.Y0() != c8024k32) {
                return false;
            }
            c8024k3 = c8024k32;
        }
        return true;
    }

    public final void o(FT ft) {
        FT ft2;
        if (ft.f()) {
            return;
        }
        C10340xw0 c10340xw0 = ft.f40212b;
        if (c10340xw0.d(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((AbstractC10561zE) obj).l1();
            }
        })) {
            I3 w10 = c10340xw0.r().w();
            C10340xw0 c10340xw02 = (C10340xw0) w10.f54321f.get(0);
            FT ft3 = c10340xw02.f53891h;
            if (ft3 != null && ft3.c(ft) == -1) {
                ft.a(c10340xw02.f53891h, this.f50304m);
                return;
            }
            C10340xw0 y22 = w10.y2();
            if (w10.v2() && (ft2 = y22.f53891h) != null && ft2.c(ft) == -1) {
                ft.a(y22.f53891h, this.f50304m);
            }
        }
    }

    @Override
    public final boolean a(W5 w52, W5 w53) {
        return Objects.equals(w52.f45288a, w53.f45288a);
    }

    public final void e(FT ft) {
        boolean z10 = f50291s;
        if (!z10 && !ft.g()) {
            throw new AssertionError();
        }
        C8234lI c8234lI = this.f50299h;
        Objects.requireNonNull(c8234lI);
        ft.a(new XN0(c8234lI));
        if (!g(ft) || ft.l()) {
            return;
        }
        FT ft2 = ft.f40215e;
        if (!z10 && !ft2.g()) {
            throw new AssertionError();
        }
        if (ft2.f40221k != ft.f40221k) {
            C8234lI c8234lI2 = this.f50299h;
            Objects.requireNonNull(c8234lI2);
            ft2.a(new XN0(c8234lI2));
        }
    }

    public final boolean m(FT ft) {
        if (!f50291s && !ft.g()) {
            throw new AssertionError();
        }
        int i10 = ft.f40221k;
        boolean b10 = ft.f40212b.Y().b();
        if (this.f50299h.h(i10)) {
            return false;
        }
        return (b10 && this.f50299h.h(i10 + 1)) ? false : true;
    }

    public static boolean a(FT ft, FT ft2) {
        return ft2 == null || ft.f40215e.f40214d == ft2.f40215e;
    }

    public final boolean d(FT ft) {
        if (!g(ft)) {
            return false;
        }
        if (f50291s || ft.g()) {
            return b(ft.f40221k) && ft.f40221k == ft.f40215e.f40221k;
        }
        throw new AssertionError();
    }

    public static FT a(C8024k3 c8024k3) {
        return c8024k3.d().f53891h;
    }

    @Override
    public final com.android.tools.r8.graph.H5 a() {
        return this.f50293b.j();
    }

    /* JADX WARN: Code restructure failed: missing block: B:250:0x047c, code lost:
    
        r0 = r21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(AbstractC7552hC abstractC7552hC, ArrayList arrayList, InterfaceC5381Je0 interfaceC5381Je0, IdentityHashMap identityHashMap) {
        C8254lS c8254lS;
        C6899dH c6899dH;
        int i10;
        C6899dH c6899dH2;
        C10340xw0 c10340xw0;
        ArrayList arrayList2;
        InterfaceC5381Je0 interfaceC5381Je02 = interfaceC5381Je0;
        ArrayList arrayList3 = new ArrayList();
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            FT ft = (FT) obj;
            C10340xw0 c10340xw02 = ft.f40212b;
            if (c10340xw02.z()) {
                ArrayList arrayList4 = new ArrayList(ft.f40219i);
                ArrayList arrayList5 = ft.f40216f;
                int size2 = arrayList5.size();
                int i12 = 0;
                while (i12 < size2) {
                    Object obj2 = arrayList5.get(i12);
                    i12++;
                    FT ft2 = (FT) obj2;
                    boolean z10 = f50291s;
                    if (!z10 && ft2.f40212b != c10340xw02) {
                        throw new AssertionError();
                    }
                    if (!z10 && (arrayList2 = ft2.f40216f) != null && !arrayList2.isEmpty()) {
                        throw new AssertionError();
                    }
                    arrayList4.addAll(ft2.f40219i);
                }
                arrayList4.sort(Comparator.comparingInt(new ToIntFunction() {
                    @Override
                    public final int applyAsInt(Object obj3) {
                        int i13;
                        i13 = ((IT) obj3).f41107b;
                        return i13;
                    }
                }));
                int size3 = arrayList4.size();
                int i13 = 0;
                while (i13 < size3) {
                    Object obj3 = arrayList4.get(i13);
                    i13++;
                    IT it = (IT) obj3;
                    int i14 = it.f41107b;
                    arrayList3.add(new C8254lS(c10340xw02, interfaceC5381Je02.a(c10340xw02, i14), i14, it.f41108c));
                }
            }
        }
        if (arrayList3.isEmpty()) {
            return;
        }
        arrayList3.sort(new Comparator() {
            @Override
            public final int compare(Object obj4, Object obj5) {
                return ((C8254lS) obj4).compareTo((C8254lS) obj5);
            }
        });
        LinkedList<C8254lS> linkedList = new LinkedList();
        Iterator it2 = arrayList3.iterator();
        C8254lS c8254lS2 = (C8254lS) it2.next();
        C6899dH c6899dH3 = new C6899dH(16);
        C6899dH c6899dH4 = new C6899dH(16);
        AbstractC4895Av0 it3 = abstractC7552hC.iterator();
        boolean z11 = true;
        while (it3.hasNext()) {
            W5 w52 = (W5) it3.next();
            Y5 I10 = w52.I();
            final Set a10 = C4875Al0.a(((C7048eB) identityHashMap.get(w52)).f47630b);
            if (z11) {
                if (!f50291s && !w52.s().isEmpty()) {
                    throw new AssertionError();
                }
                while (I10.hasNext()) {
                    AbstractC10561zE next = I10.next();
                    if (!next.k1()) {
                        break;
                    } else if (next.d().z()) {
                        a10.add(next.d());
                    }
                }
                I10.previous();
                z11 = false;
            } else {
                for (C7201f60 c7201f60 : w52.s()) {
                    if (c7201f60.z()) {
                        a10.add(c7201f60);
                    }
                }
            }
            I10.a(new Predicate() {
                @Override
                public final boolean test(Object obj4) {
                    return C8421mS.b((AbstractC10561zE) obj4);
                }
            });
            final AbstractC10561zE previous = I10.previous();
            int i15 = previous.f54322g;
            linkedList.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj4) {
                    return C8421mS.a(Set.this, previous, (C8254lS) obj4);
                }
            });
            while (c8254lS2 != null && c8254lS2.f49980e < i15) {
                if (a10.contains(c8254lS2.f49977b) && a(previous, c8254lS2)) {
                    linkedList.add(c8254lS2);
                }
                c8254lS2 = it2.hasNext() ? (C8254lS) it2.next() : null;
            }
            C6899dH c6899dH5 = new C6899dH(linkedList.size());
            Iterator<E> it4 = linkedList.iterator();
            while (it4.hasNext()) {
                C8254lS c8254lS3 = (C8254lS) it4.next();
                if (a10.contains(c8254lS3.f49977b)) {
                    c6899dH5.a(c8254lS3.f49979d, c8254lS3.f49978c);
                }
            }
            if (!w52.u().isEmpty() && w52.f45293f.a() != I10.h()) {
                C6899dH c6899dH6 = new C6899dH(linkedList.size());
                AbstractC10561zE a11 = w52.f45293f.a();
                a11.getClass();
                if (a11 instanceof C6600bY) {
                    i10 = w52.u().get(0).h().f54322g;
                } else {
                    i10 = w52.u().get(0).i().f54322g;
                }
                for (C8254lS c8254lS4 : linkedList) {
                    C8254lS c8254lS5 = c8254lS2;
                    if (c8254lS4.f49977b.j() && c8254lS4.f49977b.b() == w52) {
                        c6899dH2 = c6899dH3;
                        c10340xw0 = (C10340xw0) c8254lS4.f49977b.l().f47863q.get(0);
                    } else {
                        c6899dH2 = c6899dH3;
                        c10340xw0 = c8254lS4.f49977b;
                    }
                    c6899dH6.a(interfaceC5381Je02.a(c10340xw0, i10), c8254lS4.f49978c);
                    c8254lS2 = c8254lS5;
                    c6899dH3 = c6899dH2;
                }
                c8254lS = c8254lS2;
                c6899dH = c6899dH3;
                w52.f45288a = c6899dH6;
                C6899dH c6899dH7 = new C6899dH(16);
                C6899dH c6899dH8 = new C6899dH(16);
                WG wg2 = new WG(((C6399aH) c6899dH6.c()).f46484b);
                while (wg2.hasNext()) {
                    RG rg2 = (RG) wg2.next();
                    C4515j0 c4515j0 = (C4515j0) rg2.getValue();
                    C4515j0 c4515j02 = (C4515j0) c6899dH5.get(rg2.a());
                    c4515j0.getClass();
                    if (c4515j0 != c4515j02) {
                        c6899dH7.a(rg2.a(), (C4515j0) rg2.getValue());
                    }
                }
                WG wg3 = new WG(((C6399aH) c6899dH5.c()).f46484b);
                while (wg3.hasNext()) {
                    RG rg3 = (RG) wg3.next();
                    C4515j0 c4515j03 = (C4515j0) rg3.getValue();
                    C4515j0 c4515j04 = (C4515j0) c6899dH6.get(rg3.a());
                    c4515j03.getClass();
                    if (c4515j03 != c4515j04) {
                        c6899dH8.a(rg3.a(), (C4515j0) rg3.getValue());
                    }
                }
                C7297fj a12 = a(c6899dH7, c6899dH8, w52.t());
                if (a12 != null) {
                    I10.add(a12);
                }
            } else {
                c8254lS = c8254lS2;
                c6899dH = c6899dH3;
                boolean z12 = f50291s;
                if (!z12) {
                    AbstractC10561zE a13 = w52.f45293f.a();
                    a13.getClass();
                    if (a13 instanceof C6600bY) {
                        throw new AssertionError();
                    }
                }
                if (!z12 && a(w52.f45293f.a())) {
                    throw new AssertionError();
                }
                C6899dH c6899dH9 = new C6899dH(c6899dH5.size());
                c6899dH9.putAll(c6899dH5);
                w52.f45288a = c6899dH9;
            }
            c8254lS2 = c8254lS;
            c6899dH3 = c6899dH;
            while (true) {
                if (!I10.hasNext()) {
                    break;
                }
                AbstractC10561zE next2 = I10.next();
                if (!I10.hasNext()) {
                    Set set = next2.f54323h;
                    if (set != null) {
                        Iterator it5 = set.iterator();
                        while (it5.hasNext()) {
                            ((C10340xw0) it5.next()).c(next2);
                        }
                        next2.f54323h.clear();
                    }
                } else {
                    if (!next2.V0().isEmpty()) {
                        for (C10340xw0 c10340xw03 : next2.V0()) {
                            Iterator listIterator = linkedList.listIterator();
                            while (true) {
                                if (listIterator.hasNext()) {
                                    C8254lS c8254lS6 = (C8254lS) listIterator.next();
                                    if (c8254lS6.f49977b == c10340xw03) {
                                        if (!f50291s) {
                                            C4515j0 c4515j05 = c8254lS6.f49978c;
                                            C4515j0 c4515j06 = (C4515j0) c6899dH5.get(c8254lS6.f49979d);
                                            c4515j05.getClass();
                                            if (c4515j05 != c4515j06) {
                                                throw new AssertionError();
                                            }
                                        }
                                        c6899dH5.remove(c8254lS6.f49979d);
                                        c6899dH3.a(c8254lS6.f49979d, c8254lS6.f49978c);
                                    }
                                }
                            }
                        }
                        Set set2 = next2.f54323h;
                        if (set2 != null) {
                            Iterator it6 = set2.iterator();
                            while (it6.hasNext()) {
                                ((C10340xw0) it6.next()).c(next2);
                            }
                            next2.f54323h.clear();
                        }
                    }
                    if (next2 instanceof C6797cj) {
                        AbstractC10561zE previous2 = I10.previous();
                        if (!f50291s && previous2 != next2) {
                            throw new AssertionError();
                        }
                        I10.remove();
                    }
                    AbstractC10561zE h10 = I10.h();
                    if (!a(h10)) {
                        int i16 = h10.f54322g;
                        Iterator listIterator2 = linkedList.listIterator();
                        while (listIterator2.hasNext()) {
                            C8254lS c8254lS7 = (C8254lS) listIterator2.next();
                            if (!a(h10, c8254lS7)) {
                                listIterator2.remove();
                                if (c6899dH5.remove(c8254lS7.f49979d) != null) {
                                    c6899dH3.a(c8254lS7.f49979d, c8254lS7.f49978c);
                                }
                            }
                        }
                        while (c8254lS2 != null && c8254lS2.f49980e < i16) {
                            if (a(h10, c8254lS2)) {
                                linkedList.add(c8254lS2);
                                if (!f50291s && c6899dH5.a(c8254lS2.f49979d)) {
                                    throw new AssertionError();
                                }
                                c6899dH5.a(c8254lS2.f49979d, c8254lS2.f49978c);
                                c6899dH4.a(c8254lS2.f49979d, c8254lS2.f49978c);
                            }
                            c8254lS2 = it2.hasNext() ? (C8254lS) it2.next() : null;
                        }
                        if (!c6899dH3.isEmpty() || !c6899dH4.isEmpty()) {
                            C7297fj a14 = a(c6899dH3, c6899dH4, next2.getPosition());
                            if (a14 != null) {
                                I10.add(a14);
                            }
                            c6899dH3 = new C6899dH(16);
                            c6899dH4 = new C6899dH(16);
                        }
                    }
                }
            }
        }
    }

    @Override
    public final C4798y c() {
        return this.f50292a;
    }

    public final int c(int i10) {
        int d10 = d(i10);
        int[] iArr = this.f50308q;
        if (iArr == null) {
            return d10;
        }
        if (d10 < iArr.length) {
            return d10 - iArr[d10];
        }
        boolean z10 = X3.f45604a;
        return d10 - (iArr.length == 0 ? 0 : iArr[iArr.length - 1]);
    }

    public final boolean c(AbstractC10561zE abstractC10561zE) {
        NJ a02 = abstractC10561zE.a0();
        if (a02 == null || a02.y2() <= 5) {
            return false;
        }
        return (a(a02) && AbstractC9907vK.a(a02.f54321f, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C8421mS.this.b((C10340xw0) obj);
            }
        })) ? false : true;
    }

    public final boolean c(int i10, FT ft) {
        boolean z10 = f50291s;
        if (!z10 && !i(ft)) {
            throw new AssertionError();
        }
        int i11 = ft.f40212b.f53886c.y().u2().f53891h.a(ft.e()).f40221k;
        if (z10 || i11 != Integer.MIN_VALUE) {
            return i11 == i10;
        }
        throw new AssertionError();
    }

    public static boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return ((abstractC10561zE instanceof C6600bY) || a(abstractC10561zE)) ? false : true;
    }

    public final boolean b(C10340xw0 c10340xw0) {
        return g(c10340xw0.f53891h);
    }

    @Override
    public int b(C10340xw0 c10340xw0, int i10) {
        c10340xw0.getClass();
        if (c10340xw0 instanceof C7838ix) {
            return c(c10340xw0.c().c0());
        }
        FT ft = c10340xw0.f53891h;
        if (ft != null) {
            if (ft.f40216f.size() != 0) {
                ft = ft.a(i10);
            }
            return c(ft.f40221k);
        }
        throw new C5325If(this.f50293b.j().f36317b.f36244d, "Unexpected attempt to get register for a value without a register in method `" + this.f50293b.j().r() + "`.", null);
    }

    public static boolean a(Set set, AbstractC10561zE abstractC10561zE, C8254lS c8254lS) {
        return (set.contains(c8254lS.f49977b) && a(abstractC10561zE, c8254lS)) ? false : true;
    }

    public static boolean a(AbstractC10561zE abstractC10561zE, C8254lS c8254lS) {
        int i10 = c8254lS.f49980e;
        int i11 = c8254lS.f49981f;
        C10340xw0 c10340xw0 = c8254lS.f49977b;
        int i12 = abstractC10561zE.f54322g;
        if (!f50291s && i10 >= i12) {
            throw new AssertionError();
        }
        if (i12 < i11) {
            return true;
        }
        if (i12 == i11) {
            ArrayList arrayList = abstractC10561zE.f54321f;
            int size = arrayList.size();
            int i13 = 0;
            while (i13 < size) {
                Object obj = arrayList.get(i13);
                i13++;
                C10340xw0 c10340xw02 = (C10340xw0) obj;
                if (c10340xw0 == c10340xw02) {
                    return true;
                }
                if (c10340xw0.j() && (c10340xw02 instanceof C7673hx) && ((C7673hx) c10340xw02).f48743p == c10340xw0) {
                    return true;
                }
            }
            for (C10340xw0 c10340xw03 : abstractC10561zE.V0()) {
                if (c10340xw0 == c10340xw03) {
                    return true;
                }
                if (c10340xw0.j() && (c10340xw03 instanceof C7673hx) && ((C7673hx) c10340xw03).f48743p == c10340xw0) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean b(W5 w52) {
        AbstractC10561zE a10 = w52.f45293f.a();
        a10.getClass();
        return a10 instanceof C6600bY;
    }

    public static void b(InterfaceC9069qI interfaceC9069qI, int i10) {
        if (!f50291s && !interfaceC9069qI.h(i10)) {
            throw new AssertionError();
        }
        interfaceC9069qI.remove(i10);
    }

    public static C7297fj a(C6899dH c6899dH, C6899dH c6899dH2, B60 b60) {
        C7297fj c7297fj;
        if (!f50291s && b60.o()) {
            throw new AssertionError();
        }
        if (c6899dH.isEmpty() && c6899dH2.isEmpty()) {
            return null;
        }
        if (!c6899dH.isEmpty() && !c6899dH2.isEmpty()) {
            FH fh2 = new FH(Math.min(c6899dH.f47346h, c6899dH2.f47346h));
            WG wg2 = new WG(((C6399aH) c6899dH.c()).f46484b);
            while (wg2.hasNext()) {
                RG rg2 = (RG) wg2.next();
                C4515j0 c4515j0 = (C4515j0) rg2.getValue();
                C4515j0 c4515j02 = (C4515j0) c6899dH2.get(rg2.a());
                c4515j0.getClass();
                if (c4515j0 == c4515j02) {
                    fh2.add(rg2.a());
                }
            }
            int i10 = fh2.f40170c;
            if (i10 == c6899dH.f47346h && i10 == c6899dH2.f47346h) {
                return null;
            }
            EH eh2 = new EH(fh2);
            while (eh2.hasNext()) {
                int r10 = eh2.r();
                c6899dH.remove(r10);
                c6899dH2.remove(r10);
            }
            c7297fj = new C7297fj(c6899dH, c6899dH2);
        } else {
            c7297fj = new C7297fj(c6899dH, c6899dH2);
        }
        c7297fj.b(b60);
        return c7297fj;
    }

    public final C5786Qe0 b(int i10, FT ft) {
        int i11;
        FT ft2;
        int o10;
        int j10;
        C10340xw0 c10340xw0;
        final C5786Qe0 c5786Qe0 = new C5786Qe0(i10 + 1);
        if (this.f50292a.E().a(this.f50293b.j()) && !this.f50293b.j().getAccessFlags().n()) {
            boolean z10 = f50291s;
            if (!z10 && this.f50294c <= 0) {
                throw new AssertionError();
            }
            if (!z10 && ((c10340xw0 = this.f50297f) == null || c10340xw0.f53896m.C() != 1)) {
                throw new AssertionError();
            }
            c5786Qe0.f43662f.set(0);
        }
        if (this.f50298g.a()) {
            C10340xw0 c10340xw02 = this.f50297f;
            if (c10340xw02 != null && g(c10340xw02.f53891h)) {
                this.f50297f.f53891h.a(new IntConsumer() {
                    @Override
                    public final void accept(int i12) {
                        AbstractC5728Pe0.this.c(i12);
                    }
                });
            }
            C9406sK i12 = i();
            CK a10 = JK.a(i12.f52337b.iterator(), i12.f52338c);
            while (a10.f43396b.hasNext()) {
                FT ft3 = (FT) a10.a(a10.f43396b.next());
                if (!f50291s && g(ft3) && !ft3.f40212b.f53893j) {
                    throw new AssertionError();
                }
            }
        } else {
            if (!this.f50298g.b()) {
                i11 = 0;
            } else {
                if (!f50291s && this.f50295d <= 0) {
                    throw new AssertionError();
                }
                int i13 = this.f50295d;
                C9406sK i14 = i();
                CK a11 = JK.a(i14.f52337b.iterator(), i14.f52338c);
                i11 = 0;
                while (a11.f43396b.hasNext() && (i13 = i13 - (o10 = (ft2 = (FT) a11.a(a11.f43396b.next())).o())) >= 0) {
                    if (ft2.a(ft)) {
                        for (int i15 = 0; i15 < o10; i15++) {
                            c5786Qe0.f43662f.set(i11 + i15);
                        }
                    }
                    i11 += o10;
                }
            }
            while (b(i11) && i11 <= i10) {
                c5786Qe0.f43662f.set(i11);
                i11++;
            }
        }
        if (k()) {
            if (!this.f50298g.a() && ft.f40229s == 15 && !n()) {
                c5786Qe0.f43662f.set(j());
            } else if (ft.f40215e.f40227q && l(ft) && (j10 = j()) <= i10) {
                c5786Qe0.f43662f.set(j10);
            }
        }
        for (FT ft4 : this.f50302k) {
            int i16 = ft4.f40221k;
            if (i16 <= i10) {
                for (int i17 = 0; i17 < ft4.o(); i17++) {
                    int i18 = i16 + i17;
                    if (i18 <= i10) {
                        c5786Qe0.f43662f.set(i18);
                    }
                }
            }
        }
        for (FT ft5 : this.f50303l) {
            int i19 = ft5.f40221k;
            if (i19 <= i10 && ft.c(ft5) != -1) {
                int c10 = ft.c(ft5);
                for (int i20 = 0; i20 < ft5.o(); i20++) {
                    int i21 = i19 + i20;
                    if (i21 <= i10 && !c5786Qe0.f43662f.get(i21)) {
                        int e10 = ft.e();
                        if (e10 % 2 != 0) {
                            e10++;
                        }
                        if (c10 == e10) {
                            c5786Qe0.f43662f.set(i21);
                        } else if (c10 < c5786Qe0.a(i21)) {
                            c5786Qe0.a(i21, c10, ft5);
                        }
                    }
                }
            }
        }
        return c5786Qe0;
    }

    public static FT a(NJ nj2, C10340xw0 c10340xw0) {
        FT ft = c10340xw0.f53891h;
        ft.getClass();
        FT a10 = ft.a(nj2.f54322g);
        boolean z10 = f50291s;
        if (!z10 && a10.g()) {
            throw new AssertionError();
        }
        if (!z10 && a10.e() != nj2.f54322g - 1) {
            throw new AssertionError();
        }
        if (z10 || a10.b() == nj2.f54322g || a10.b() == nj2.f54322g + 1) {
            return a10;
        }
        throw new AssertionError();
    }

    public static void a(C10340xw0 c10340xw0, W5 w52, int i10, ArrayList arrayList, C7215fB c7215fB) {
        int i11 = w52.f45293f.a().f54322g;
        int size = ((w52.l().size() * 2) + i11) - 2;
        int i12 = c10340xw0.j() ? i11 : c10340xw0.f53886c.f54322g;
        if (c10340xw0.f53891h == null) {
            arrayList.add(new FT(c10340xw0));
        }
        FT ft = c10340xw0.f53891h;
        if (i11 <= i12 && i12 <= size) {
            if (c10340xw0.j()) {
                i12--;
            }
            ft.a(new IT(i12, i10));
            if (!f50291s) {
                int i13 = ft.f40229s;
                if (!c7215fB.f47895b.b() && i13 != 65535) {
                    throw new AssertionError();
                }
            }
            if (!c7215fB.f47895b.b() || c10340xw0.j()) {
                return;
            }
            ft.a(new GT(i12, c10340xw0.f53886c.q2()));
            return;
        }
        ft.a(new IT(i11 - 1, i10));
    }

    public static boolean a(W5 w52) {
        AbstractC10561zE a10 = w52.f45293f.a();
        a10.getClass();
        return a10 instanceof C6600bY;
    }

    @Override
    public final int a(C10340xw0 c10340xw0, int i10) {
        if (a(c10340xw0)) {
            if (f50291s || c10340xw0.H()) {
                return c(c10340xw0.f53891h.f40215e.f40221k);
            }
            throw new AssertionError();
        }
        return b(c10340xw0, i10);
    }

    public final boolean b(int i10, int i11, final FT ft) {
        int i12;
        if ((ft.o() + i11) - 1 > i10 || i(ft) || j(ft) || k(ft)) {
            return false;
        }
        if (ft.f40215e.f40227q && k() && i11 == j()) {
            return false;
        }
        if (b(i11)) {
            C9406sK i13 = i();
            CK a10 = JK.a(i13.f52337b.iterator(), i13.f52338c);
            while (a10.f43396b.hasNext()) {
                FT ft2 = (FT) a10.a(a10.f43396b.next());
                if (g(ft2) && ft2.a(i11, ft.n())) {
                    return false;
                }
            }
        }
        if (!a(this.f50303l, ft, i11, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return FT.this.d((FT) obj);
            }
        }).isEmpty()) {
            return false;
        }
        Collection<FT> a11 = a(this.f50302k, ft, i11, EnumC6871d70.f47286b);
        if (!f50291s && a11.isEmpty()) {
            throw new AssertionError();
        }
        for (FT ft3 : a11) {
            int e10 = ft3.e();
            if (e10 % 2 != 0) {
                e10++;
            }
            int e11 = ft.e();
            if (e11 % 2 != 0) {
                e11++;
            }
            if (e10 == e11) {
                return false;
            }
            int e12 = ft.e();
            int b10 = ft.b();
            Iterator it = ft3.f40220j.iterator();
            while (it.hasNext()) {
                GT gt = (GT) it.next();
                EnumC8087kS enumC8087kS = this.f50298g;
                gt.getClass();
                enumC8087kS.getClass();
                if (enumC8087kS.a(gt.f40505c) && e12 < (i12 = gt.f40504b) && i12 < b10) {
                    return false;
                }
            }
        }
        if (!this.f50305n.isEmpty()) {
            return false;
        }
        for (FT ft4 : a11) {
            FT a12 = ft4.a(ft.e(), this.f50298g);
            f(ft4);
            this.f50302k.remove(ft4);
            this.f50304m.add(a12);
        }
        a(i11, ft);
        p(ft);
        this.f50302k.add(ft);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:248:0x0489  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final EnumC8087kS a(EnumC8087kS enumC8087kS, boolean z10) {
        boolean z11;
        C6837cw0 c6837cw0;
        boolean z12;
        int i10;
        int i11;
        GT a10;
        FT a11;
        EnumC8087kS enumC8087kS2 = enumC8087kS;
        if (!f50291s && this.f50295d != 0 && !enumC8087kS.b()) {
            throw new AssertionError();
        }
        this.f50298g = enumC8087kS2;
        this.f50309r.b(enumC8087kS.toString());
        this.f50309r.b("Prepare");
        int i12 = Integer.MIN_VALUE;
        if (z10) {
            this.f50299h.clear();
            this.f50300i = -1;
            this.f50302k.clear();
            this.f50305n.f39177c = 0;
            this.f50307p = Integer.MIN_VALUE;
            this.f50303l.clear();
            this.f50304m.clear();
            this.f50306o.clear();
            ArrayList arrayList = this.f50301j;
            int size = arrayList.size();
            int i13 = 0;
            while (i13 < size) {
                Object obj = arrayList.get(i13);
                i13++;
                FT ft = (FT) obj;
                ft.getClass();
                ArrayList arrayList2 = new ArrayList(ft.f40219i);
                ArrayList arrayList3 = ft.f40216f;
                int size2 = arrayList3.size();
                int i14 = 0;
                while (i14 < size2) {
                    Object obj2 = arrayList3.get(i14);
                    i14++;
                    FT ft2 = (FT) obj2;
                    arrayList2.addAll(ft2.f40219i);
                    Iterator it = ft2.f40220j.iterator();
                    while (it.hasNext()) {
                        ft.a((GT) it.next());
                    }
                }
                Collections.sort(arrayList2);
                ft.f40219i.clear();
                int size3 = arrayList2.size();
                int i15 = 0;
                while (i15 < size3) {
                    Object obj3 = arrayList2.get(i15);
                    i15++;
                    ft.a((IT) obj3);
                }
                ft.f40216f.clear();
                ft.f40229s = 65535;
                Iterator it2 = ft.f40220j.iterator();
                while (it2.hasNext()) {
                    ft.f40229s = Math.min(ft.f40229s, ((GT) it2.next()).f40505c);
                }
                if (ft.g()) {
                    ft.a(false);
                }
                ft.f40221k = Integer.MIN_VALUE;
                ft.f40222l = Integer.MIN_VALUE;
                ft.f40228r = false;
                if (!FT.f40211v && !ft.l()) {
                    throw new AssertionError();
                }
                ft.f40224n = null;
                ft.f40225o = false;
            }
            Iterator<W5> it3 = this.f50293b.f47897d.iterator();
            while (it3.hasNext()) {
                Y5 I10 = it3.next().I();
                while (I10.hasNext()) {
                    if (a(I10.next())) {
                        I10.remove();
                    }
                }
            }
        }
        if (this.f50297f != null) {
            this.f50300i = this.f50294c - 1;
            C9406sK i16 = i();
            CK a12 = JK.a(i16.f52337b.iterator(), i16.f52338c);
            int i17 = 0;
            while (a12.f43396b.hasNext()) {
                FT ft3 = (FT) a12.a(a12.f43396b.next());
                a(i17, ft3);
                i17 += ft3.o();
            }
        }
        this.f50309r.d();
        this.f50304m.addAll(this.f50301j);
        this.f50309r.b("Prelude");
        C9406sK i18 = i();
        CK a13 = JK.a(i18.f52337b.iterator(), i18.f52338c);
        while (a13.f43396b.hasNext()) {
            FT ft4 = (FT) a13.a(a13.f43396b.next());
            if (!f50291s && !ft4.g()) {
                throw new AssertionError();
            }
            ft4.f40228r = true;
            EnumC8087kS enumC8087kS3 = this.f50298g;
            enumC8087kS3.getClass();
            if (!enumC8087kS3.a(ft4.f40229s)) {
                this.f50302k.add(ft4);
            } else {
                if (this.f50298g.b()) {
                    if ((ft4.o() + ft4.f40221k) - 1 < this.f50295d) {
                        this.f50302k.add(ft4);
                    }
                }
                this.f50303l.add(ft4);
                if (ft4.f40220j.size() > 1 && (a10 = ft4.a()) != null) {
                    Iterator it4 = ft4.f40220j.iterator();
                    int i19 = 0;
                    while (it4.hasNext()) {
                        if (((GT) it4.next()).a()) {
                            i19++;
                        }
                    }
                    if (i19 == 1) {
                        a11 = ft4.a(a10.f40504b, this.f50298g);
                    } else {
                        a11 = ft4.a(ft4.f40212b.f53886c.f54322g + 1, this.f50298g);
                    }
                    this.f50304m.add(a11);
                }
                f(ft4);
            }
        }
        a(o());
        this.f50309r.d();
        this.f50309r.b("Process all unhandled");
        while (!this.f50304m.isEmpty()) {
            boolean z13 = f50291s;
            if (!z13) {
                a(enumC8087kS);
            }
            FT poll = this.f50304m.poll();
            if (poll.f40228r) {
                if (!z13 && !poll.g()) {
                    throw new AssertionError();
                }
            } else {
                n(poll);
                o(poll);
                this.f50309r.b("Linked");
                b(poll);
                this.f50309r.d();
                if (!poll.g()) {
                    this.f50309r.b("Advance state");
                    int e10 = poll.e();
                    Iterator<E> it5 = this.f50302k.iterator();
                    while (it5.hasNext()) {
                        FT ft5 = (FT) it5.next();
                        if (e10 >= ft5.b()) {
                            it5.remove();
                            f(ft5);
                            if (e10 == ft5.b()) {
                                this.f50305n.add(ft5.f40221k);
                                if (ft5.f40212b.Y().b()) {
                                    this.f50305n.add(ft5.f40221k + 1);
                                }
                            }
                        } else if (!ft5.b(e10)) {
                            it5.remove();
                            if (!f50291s && !ft5.g()) {
                                throw new AssertionError();
                            }
                            this.f50303l.add(ft5);
                            f(ft5);
                        }
                    }
                    Iterator<FT> it6 = this.f50303l.iterator();
                    while (it6.hasNext()) {
                        FT next = it6.next();
                        if (e10 >= next.b()) {
                            it6.remove();
                            if (e10 == next.b()) {
                                this.f50305n.add(next.f40221k);
                                if (next.f40212b.Y().b()) {
                                    this.f50305n.add(next.f40221k + 1);
                                }
                            }
                        } else if (next.b(e10)) {
                            it6.remove();
                            if (!f50291s && !next.g()) {
                                throw new AssertionError();
                            }
                            this.f50302k.add(next);
                            p(next);
                        } else {
                            continue;
                        }
                    }
                    this.f50309r.d();
                    this.f50309r.b("Alloc single");
                    if (c(poll)) {
                        int i20 = this.f50300i;
                        int ordinal = enumC8087kS.ordinal();
                        if (ordinal == 0) {
                            i11 = 15;
                        } else if (ordinal == 1 || ordinal == 2 || ordinal == 3) {
                            i11 = 255;
                        } else {
                            if (ordinal != 4) {
                                throw new C5417Jv0();
                            }
                            i11 = 65535;
                        }
                        if (i20 <= i11) {
                            this.f50309r.d();
                            this.f50305n.f39177c = 0;
                        }
                    }
                    this.f50309r.d();
                    this.f50309r.d();
                    z11 = false;
                    break;
                }
                continue;
            }
        }
        this.f50309r.d();
        if (!f50291s) {
            a(enumC8087kS);
        }
        z11 = true;
        this.f50309r.d();
        if (z11) {
            MD l10 = l();
            this.f50308q = m();
            if (!this.f50298g.a()) {
                C9115qd0 c9115qd0 = new C9115qd0();
                c9115qd0.f53665b = Integer.MIN_VALUE;
                C9406sK i21 = i();
                CK a14 = JK.a(i21.f52337b.iterator(), i21.f52338c);
                while (a14.f43396b.hasNext()) {
                    FT ft6 = (FT) a14.a(a14.f43396b.next());
                    int c10 = c((ft6.o() + ft6.f40221k) - 1);
                    if (!f50291s) {
                        EnumC8087kS enumC8087kS4 = this.f50298g;
                        enumC8087kS4.getClass();
                        if (enumC8087kS4.a(ft6.f40229s)) {
                            if (this.f50298g.b()) {
                                if ((ft6.o() + ft6.f40221k) - 1 >= this.f50295d) {
                                }
                            }
                            throw new AssertionError();
                        }
                    }
                    ArrayList arrayList4 = ft6.f40216f;
                    int size4 = arrayList4.size();
                    int i22 = 0;
                    while (i22 < size4) {
                        Object obj4 = arrayList4.get(i22);
                        i22++;
                        FT ft7 = (FT) obj4;
                        if (!ft7.j() && c10 <= ft7.f40229s && (i10 = ft7.f40221k) != ft6.f40221k) {
                            c9115qd0.b(i10, ft7);
                            ft7.f40221k = Integer.MIN_VALUE;
                            ft7.f40222l = Integer.MIN_VALUE;
                            ft7.e(ft6.f40221k);
                            if (!f50291s && ft7.f40223m) {
                                throw new AssertionError();
                            }
                        }
                    }
                }
                if (!c9115qd0.isEmpty()) {
                    c6837cw0 = new C6837cw0(this, c9115qd0);
                    if (c6837cw0 != null) {
                        Iterator<W5> it7 = l10.f42238a.f50293b.f47897d.iterator();
                        while (it7.hasNext()) {
                            Y5 I11 = it7.next().I();
                            while (I11.hasNext()) {
                                if (a(I11.next())) {
                                    I11.remove();
                                }
                            }
                        }
                        C8421mS c8421mS = l10.f42238a;
                        int i23 = c8421mS.f50307p;
                        if (i23 != Integer.MIN_VALUE) {
                            c8421mS.f50300i = i23 - 1;
                            c8421mS.f50307p = Integer.MIN_VALUE;
                        }
                        int i24 = 0;
                        MD l11 = l();
                        MD md2 = l10;
                        while (l11.f42239b > md2.f42239b) {
                            if (!f50291s && i24 >= 5) {
                                throw new AssertionError();
                            }
                            C9406sK i25 = c6837cw0.f47207a.i();
                            CK a15 = JK.a(i25.f52337b.iterator(), i25.f52338c);
                            boolean z14 = false;
                            while (a15.f43396b.hasNext()) {
                                ArrayList arrayList5 = ((FT) a15.a(a15.f43396b.next())).f40216f;
                                int size5 = arrayList5.size();
                                int i26 = 0;
                                while (i26 < size5) {
                                    Object obj5 = arrayList5.get(i26);
                                    i26++;
                                    FT ft8 = (FT) obj5;
                                    int b10 = c6837cw0.f47208b.b(ft8);
                                    if (b10 != i12) {
                                        if (c6837cw0.f47207a.c((ft8.o() + ft8.f40221k) - 1) > ft8.f40221k) {
                                            ft8.f40221k = Integer.MIN_VALUE;
                                            ft8.f40222l = Integer.MIN_VALUE;
                                            ft8.e(b10);
                                            c6837cw0.f47208b.c(ft8);
                                            z12 = true;
                                            z14 |= z12;
                                            i12 = Integer.MIN_VALUE;
                                        }
                                    }
                                    z12 = false;
                                    z14 |= z12;
                                    i12 = Integer.MIN_VALUE;
                                }
                            }
                            if (!z14) {
                                break;
                            }
                            Iterator<W5> it8 = l11.f42238a.f50293b.f47897d.iterator();
                            while (it8.hasNext()) {
                                Y5 I12 = it8.next().I();
                                while (I12.hasNext()) {
                                    if (a(I12.next())) {
                                        I12.remove();
                                    }
                                }
                            }
                            C8421mS c8421mS2 = l11.f42238a;
                            int i27 = c8421mS2.f50307p;
                            if (i27 != Integer.MIN_VALUE) {
                                c8421mS2.f50300i = i27 - 1;
                                c8421mS2.f50307p = Integer.MIN_VALUE;
                            }
                            i24++;
                            md2 = l11;
                            l11 = l();
                            i12 = Integer.MIN_VALUE;
                        }
                        if (c6837cw0.f47208b.isEmpty()) {
                            boolean z15 = f50291s;
                            if (!z15 && !z15 && !Arrays.equals(this.f50308q, m())) {
                                throw new AssertionError();
                            }
                        } else {
                            int[] m10 = m();
                            boolean z16 = f50291s;
                            if (!z16) {
                                if (!z16 && this.f50308q == null) {
                                    throw new AssertionError();
                                }
                                if (!z16 && m10 == null) {
                                    throw new AssertionError();
                                }
                                if (!z16 && this.f50308q.length != m10.length) {
                                    throw new AssertionError();
                                }
                                int i28 = 0;
                                int i29 = 0;
                                int i30 = 0;
                                while (true) {
                                    int[] iArr = this.f50308q;
                                    if (i28 >= iArr.length) {
                                        break;
                                    }
                                    int i31 = iArr[i28];
                                    boolean z17 = i29 != i31;
                                    int i32 = m10[i28];
                                    boolean z18 = i30 != i32;
                                    if (!f50291s && z17 && !z18) {
                                        throw new AssertionError();
                                    }
                                    i28++;
                                    i29 = i31;
                                    i30 = i32;
                                }
                            }
                            this.f50308q = m10;
                        }
                    }
                }
            }
            c6837cw0 = null;
            if (c6837cw0 != null) {
            }
        } else if (!f50291s && enumC8087kS2 == EnumC8087kS.f49641f) {
            throw new AssertionError();
        }
        int ordinal2 = enumC8087kS.ordinal();
        if (ordinal2 != 0) {
            if (ordinal2 != 1) {
                if (ordinal2 != 2) {
                    if (ordinal2 != 3) {
                        if (ordinal2 == 4 && !f50291s && d() - 1 > 65535) {
                            throw new AssertionError();
                        }
                    } else if (!f50291s && d() - 1 > 255) {
                        throw new AssertionError();
                    }
                } else if (d() - 1 > 255 || this.f50295d > h()) {
                    this.f50295d = 0;
                    this.f50308q = null;
                    enumC8087kS2 = a(EnumC8087kS.f49640e, true);
                }
            } else if (d() - 1 <= 255) {
                this.f50292a.E().F().getClass();
                boolean z19 = f50291s;
                if (!z19) {
                    EnumC8087kS enumC8087kS5 = this.f50298g;
                    enumC8087kS5.getClass();
                    if (enumC8087kS5 != EnumC8087kS.f49638c && enumC8087kS5 != EnumC8087kS.f49639d && enumC8087kS5 != EnumC8087kS.f49640e) {
                        throw new AssertionError();
                    }
                }
                if (!z19 && this.f50295d != 0) {
                    throw new AssertionError();
                }
                C4516j1 d10 = this.f50293b.j().d();
                if (d10.getReference().a(d10.w0()) != 0) {
                    int h10 = h();
                    this.f50295d = h10;
                    if (h10 > 0) {
                        this.f50308q = null;
                        enumC8087kS2 = a(EnumC8087kS.f49639d, true);
                    }
                }
            } else {
                this.f50308q = null;
                enumC8087kS2 = a(EnumC8087kS.f49641f, true);
            }
        } else if (z11 && d() - 1 <= 15) {
            this.f50292a.E().f50599F1.getClass();
        } else {
            enumC8087kS2 = a(EnumC8087kS.f49638c, true);
        }
        boolean z20 = f50291s;
        if (!z20 && enumC8087kS2.a() && d() - 1 > 15) {
            throw new AssertionError();
        }
        if (!z20) {
            enumC8087kS2.getClass();
            if ((enumC8087kS2 == EnumC8087kS.f49638c || enumC8087kS2 == EnumC8087kS.f49639d || enumC8087kS2 == EnumC8087kS.f49640e) && d() - 1 > 255) {
                throw new AssertionError();
            }
        }
        if (!z20) {
            enumC8087kS2.getClass();
            if (enumC8087kS2 == EnumC8087kS.f49641f && d() - 1 > 65535) {
                throw new AssertionError();
            }
        }
        new C7266fY(this.f50293b).a();
        return enumC8087kS2;
    }

    public void b(FT ft, int i10, boolean z10) {
        Iterator<FT> it = this.f50303l.iterator();
        while (it.hasNext()) {
            FT next = it.next();
            if (next.a(i10, z10) && next.d(ft)) {
                if (next.e() > ft.e()) {
                    next.f40221k = Integer.MIN_VALUE;
                    next.f40222l = Integer.MIN_VALUE;
                    it.remove();
                    this.f50304m.add(next);
                } else {
                    this.f50304m.add(next.a(ft.e(), this.f50298g));
                }
            }
        }
    }

    public final boolean b(int i10) {
        return i10 < this.f50294c;
    }

    public static boolean a(AbstractC10561zE abstractC10561zE) {
        C10340xw0 d10 = abstractC10561zE.d();
        if (d10 == null || !(d10 instanceof C7838ix)) {
            return false;
        }
        boolean z10 = f50291s;
        if (!z10 && abstractC10561zE.f54322g != -1) {
            throw new AssertionError();
        }
        if (!z10 && !abstractC10561zE.Y1() && !abstractC10561zE.w1()) {
            throw new AssertionError();
        }
        if (z10 || !abstractC10561zE.A1()) {
            return true;
        }
        throw new AssertionError();
    }

    public final void a(boolean z10) {
        if (!this.f50298g.a() || z10) {
            Iterator it = this.f50293b.a(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C8421mS.a((W5) obj);
                }
            }).iterator();
            while (it.hasNext()) {
                C6600bY q02 = ((W5) it.next()).f45293f.a().q0();
                FT ft = q02.d().f53891h;
                if (ft.f40212b.w()) {
                    AbstractC10561zE r10 = ft.f40212b.r();
                    this.f50304m.add(ft.a(r10.f54322g + 2, this.f50298g));
                }
                int e10 = ft.e();
                int i10 = q02.f54322g;
                if (e10 < i10) {
                    ft = ft.a(i10, this.f50298g);
                } else {
                    ft.f40228r = true;
                }
                this.f50306o.add(ft);
                ft.e(j());
            }
            if (k()) {
                int j10 = j();
                if (!f50291s && j10 != this.f50300i + 1) {
                    throw new AssertionError();
                }
                a(j10);
            }
        }
    }

    public final void a(EnumC8087kS enumC8087kS) {
        final C8234lI c8234lI = new C8234lI();
        for (int i10 = 0; i10 <= this.f50300i; i10++) {
            c8234lI.add(i10);
        }
        for (FT ft : this.f50302k) {
            if (!f50291s && !m(ft)) {
                throw new AssertionError();
            }
            ft.a(new IntConsumer() {
                @Override
                public final void accept(int i11) {
                    C8421mS.a(InterfaceC9069qI.this, i11);
                }
            });
        }
        for (FT ft2 : this.f50302k) {
            if (g(ft2)) {
                if (!f50291s && enumC8087kS.a() && !ft2.f40212b.f53893j) {
                    throw new AssertionError();
                }
                FT ft3 = ft2.f40215e;
                if (ft3.f40221k != ft2.f40221k) {
                    ft3.a(new IntConsumer() {
                        @Override
                        public final void accept(int i11) {
                            C8421mS.b(InterfaceC9069qI.this, i11);
                        }
                    });
                }
            }
        }
        if (k()) {
            this.f50299h.remove(j());
            c8234lI.remove(j());
        }
        boolean z10 = f50291s;
        if (!z10 && !this.f50305n.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !this.f50299h.equals(c8234lI)) {
            throw new AssertionError();
        }
    }

    public static void a(InterfaceC9069qI interfaceC9069qI, int i10) {
        if (!f50291s && !interfaceC9069qI.h(i10)) {
            throw new AssertionError();
        }
        interfaceC9069qI.remove(i10);
    }

    public final void a(FT ft) {
        this.f50309r.b("Extract list");
        final NJ nj2 = ft.f40224n;
        List a10 = AT.a((Collection) nj2.f54321f, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C8421mS.a(NJ.this, (C10340xw0) obj);
            }
        });
        this.f50309r.d();
        this.f50309r.b("Prelude");
        this.f50309r.b("Copy free registers");
        C8234lI c8234lI = this.f50299h;
        C8234lI c8234lI2 = new C8234lI(c8234lI.f49925g);
        c8234lI2.a(c8234lI);
        int i10 = this.f50300i;
        this.f50309r.d();
        this.f50309r.b("Overlaps active");
        for (FT ft2 : this.f50302k) {
            Objects.requireNonNull(ft2);
            if (AbstractC9907vK.b(a10, new C8636nk1(ft2))) {
                e(ft2);
            } else if (ft2.i()) {
                f(ft2);
            }
        }
        this.f50309r.d();
        this.f50309r.b("Remove intervals from unhandled");
        a10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((FT) obj).p();
            }
        });
        this.f50309r.d();
        this.f50309r.d();
        this.f50309r.b("Allocate");
        a(a10, nj2);
        this.f50309r.d();
        this.f50309r.b("Postlude");
        this.f50299h = c8234lI2;
        while (true) {
            i10++;
            if (i10 <= this.f50300i) {
                this.f50299h.add(i10);
            } else {
                this.f50303l.addAll(a10);
                this.f50309r.d();
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:140:0x0193, code lost:
    
        e(r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(List list, NJ nj2) {
        int a10;
        FT ft = (FT) AT.a(list);
        this.f50309r.b("Prelude");
        boolean a11 = C9073qK.a(list, new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C8421mS.a((FT) obj, (FT) obj2);
            }
        });
        boolean z10 = a11 && AbstractC9907vK.a(list, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C8421mS.this.g((FT) obj);
            }
        });
        this.f50309r.d();
        if (z10) {
            a10 = ft.f40215e.f40221k;
        } else {
            this.f50309r.b("Not consecutive pinned args");
            Iterator it = list.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                i10 += ((FT) it.next()).o();
            }
            int C10 = nj2.e1() ? nj2.d().f53896m.C() : 0;
            if (C10 > 0 && (i10 + C10) - 1 > 15) {
                int i11 = this.f50294c;
                if (k() && n()) {
                    i11++;
                }
                int i12 = (i11 + C10) - 1;
                if (i12 > this.f50300i) {
                    a(i12);
                }
                for (int i13 = 0; i13 < C10; i13++) {
                    this.f50299h.remove(i11 + i13);
                }
            }
            this.f50309r.b("Overlaps inactive");
            for (FT ft2 : this.f50303l) {
                if (ft2.j()) {
                    if (f50291s) {
                        continue;
                    } else {
                        if (JK.a(list.iterator(), new C8636nk1(ft2)) != -1) {
                            throw new AssertionError();
                        }
                    }
                } else if (ft2.a(list)) {
                    e(ft2);
                }
            }
            this.f50309r.d();
            this.f50309r.b("Register range is free");
            if (a11) {
                int i14 = ft.f40215e.f40221k;
                for (int i15 = 0; i15 < i10; i15++) {
                    if (!f50291s) {
                        int i16 = i14 + i15;
                        if (k() && i16 == j()) {
                            throw new AssertionError();
                        }
                    }
                    if (this.f50299h.h(i14 + i15)) {
                    }
                }
                this.f50309r.d();
                a10 = ft.f40215e.f40221k;
                this.f50309r.d();
            }
            this.f50309r.d();
            this.f50309r.b("Exclude pinned args");
            C9406sK i17 = i();
            CK a12 = JK.a(i17.f52337b.iterator(), i17.f52338c);
            while (a12.f43396b.hasNext()) {
                FT ft3 = (FT) a12.a(a12.f43396b.next());
                if (g(ft3)) {
                    if (!f50291s && ft3 != ft3.f40215e) {
                        throw new AssertionError();
                    }
                    Iterator it2 = list.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (((FT) it2.next()).f40212b == ft3.f40212b) {
                                break;
                            }
                        } else {
                            ArrayList arrayList = ft3.f40216f;
                            int size = arrayList.size();
                            int i18 = 0;
                            while (i18 < size) {
                                Object obj = arrayList.get(i18);
                                i18++;
                                if (((FT) obj).a(list)) {
                                }
                            }
                        }
                    }
                }
            }
            this.f50309r.d();
            this.f50309r.b("Exclude move exc");
            if (k() && (!n() || (ft.f40215e.f40227q && l(ft)))) {
                this.f50299h.remove(j());
            }
            this.f50309r.d();
            a10 = a(i10, false);
            this.f50309r.d();
        }
        this.f50309r.b("Assign regs");
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            FT ft4 = (FT) it3.next();
            ft4.e(a10);
            boolean z11 = f50291s;
            if (!z11) {
                if (!z11 && !ft4.g()) {
                    throw new AssertionError();
                }
                C9406sK i19 = i();
                CK a13 = JK.a(i19.f52337b.iterator(), i19.f52338c);
                while (a13.f43396b.hasNext()) {
                    FT ft5 = (FT) a13.a(a13.f43396b.next());
                    if (!f50291s && ft4.f40215e != ft5 && g(ft5) && ft5.a(ft4.f40221k, ft4.f40212b.Y().b()) && ft5.a(ft4)) {
                        throw new AssertionError();
                    }
                }
            }
            a10 += ft4.o();
        }
        this.f50309r.d();
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0071, code lost:
    
        if (r7 == (-1)) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0079, code lost:
    
        if (r11.f40220j.isEmpty() != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0087, code lost:
    
        if (((com.android.tools.r8.internal.GT) r11.f40220j.first()).f40505c != 15) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0089, code lost:
    
        r12 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x008c, code lost:
    
        r7 = a(r11.o(), r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0098, code lost:
    
        if (a(r7, r1, r11) == false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008b, code lost:
    
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x009a, code lost:
    
        r10.f50299h = r0;
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x009f, code lost:
    
        if (r1 > r10.f50300i) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a1, code lost:
    
        r10.f50299h.add(r1);
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00ab, code lost:
    
        if (com.android.tools.r8.internal.C8421mS.f50291s != false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ad, code lost:
    
        r11 = r11.f40212b.Y().b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00bd, code lost:
    
        if (r10.f50299h.h(r7) != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00c3, code lost:
    
        if (k() == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c9, code lost:
    
        if (r7 != j()) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e9, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00cb, code lost:
    
        if (r11 == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00cd, code lost:
    
        r11 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00d5, code lost:
    
        if (r10.f50299h.h(r11) != false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00db, code lost:
    
        if (k() == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00e1, code lost:
    
        if (r11 != j()) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00ea, code lost:
    
        return r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(FT ft, CH ch2) {
        int i10;
        if (g(ft)) {
            return ft.f40215e.f40221k;
        }
        C8234lI c8234lI = this.f50299h;
        C8234lI c8234lI2 = new C8234lI(c8234lI.f49925g);
        c8234lI2.a(c8234lI);
        int i11 = this.f50300i;
        this.f50299h.a((TH) this.f50305n);
        if (ch2 != null) {
            this.f50299h.a((TH) ch2);
        }
        ArrayList arrayList = ft.f40215e.f40216f;
        int size = arrayList.size();
        int i12 = 0;
        while (true) {
            if (i12 >= size) {
                i10 = -1;
                break;
            }
            Object obj = arrayList.get(i12);
            i12++;
            i10 = ((FT) obj).f40221k;
            if (i10 != Integer.MIN_VALUE) {
                boolean b10 = ft.f40212b.Y().b();
                if (this.f50299h.h(i10) && (!b10 || (this.f50299h.h(i10 + 1) && i10 != this.f50294c - 1))) {
                    if (a(i10, i11, ft)) {
                        break;
                    }
                }
            }
        }
    }

    public final boolean a(int i10, int i11, FT ft) {
        FT ft2;
        if (i10 > i11) {
            return true;
        }
        if (b(i10)) {
            FT ft3 = this.f50297f.f53891h;
            while (!ft3.a(i10, ft.f40212b.Y().b())) {
                ft3 = ft3.f40213c;
                if (!f50291s && ft3 == null) {
                    throw new AssertionError();
                }
            }
            while (!ft3.a(ft)) {
                ft3 = ft3.f40213c;
                if (ft3 != null && ft3.a(i10, ft.f40212b.Y().b())) {
                }
            }
            this.f50299h.remove(i10);
            if (i10 == ft3.f40221k && ft3.f40212b.Y().b()) {
                this.f50299h.remove(i10 + 1);
            }
            return false;
        }
        Iterator<FT> it = this.f50303l.iterator();
        while (true) {
            if (!it.hasNext()) {
                ft2 = null;
                break;
            }
            ft2 = it.next();
            if (ft2.a(i10, ft.f40212b.Y().b()) && ft.c(ft2) != -1) {
                break;
            }
        }
        if (ft2 != null) {
            this.f50299h.remove(i10);
            if (i10 == ft2.f40221k && ft2.f40212b.Y().b()) {
                this.f50299h.remove(i10 + 1);
            }
            return false;
        }
        if (!ft.f40215e.f40227q || !k() || ((i10 != j() && (!ft.f40212b.Y().b() || i10 + 1 != j())) || !l(ft))) {
            return true;
        }
        this.f50299h.remove(i10);
        return false;
    }

    public final boolean a(FT ft, int i10, C5786Qe0 c5786Qe0) {
        EC a10;
        EC a11;
        FH fh2 = new FH();
        C8045kA c8045kA = new C8045kA();
        ArrayList arrayList = ft.f40215e.f40216f;
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            FT ft2 = (FT) obj;
            if (ft2.g()) {
                c8045kA.a(Integer.valueOf(ft2.f40221k), 1);
            }
        }
        if (this.f50292a.E().f50690i1) {
            Iterator it = C9073qK.a(ft.f40212b.b0(), new Predicate() {
                @Override
                public final boolean test(Object obj2) {
                    return ((AbstractC10561zE) obj2).B1();
                }
            }).iterator();
            while (it.hasNext()) {
                ArrayList arrayList2 = ((AbstractC10561zE) it.next()).d().f53891h.f40216f;
                int size2 = arrayList2.size();
                int i12 = 0;
                while (i12 < size2) {
                    Object obj2 = arrayList2.get(i12);
                    i12++;
                    FT ft3 = (FT) obj2;
                    if (ft3.g()) {
                        c8045kA.a(Integer.valueOf(ft3.f40221k), 1);
                    }
                }
            }
        }
        MY[] myArr = (MY[]) c8045kA.entrySet().toArray(new MY[0]);
        Arrays.sort(myArr, NY.f42630b);
        List asList = Arrays.asList(myArr);
        int i13 = EC.f39794e;
        if (asList.isEmpty()) {
            a10 = C6953df0.f47448l;
        } else {
            a10 = C6953df0.a((Collection) asList);
        }
        AbstractC4895Av0 it2 = a10.entrySet().iterator();
        while (it2.hasNext()) {
            if (a(ft, i10, c5786Qe0, ((Integer) ((MY) it2.next()).b()).intValue(), fh2)) {
                return true;
            }
        }
        if (ft.f() && a(ft, i10, c5786Qe0, ft.c(), fh2)) {
            return true;
        }
        ft.f40215e.q();
        FT ft4 = ft.f40215e;
        FT ft5 = null;
        if (ft == ft4) {
            Iterator<E> it3 = ft.f40216f.iterator();
            ft5 = (FT) (it3.hasNext() ? it3.next() : null);
        } else {
            int indexOf = ft4.f40216f.indexOf(ft) + 1;
            if (indexOf < ft.f40215e.f40216f.size()) {
                ft5 = (FT) ft.f40215e.f40216f.get(indexOf);
            }
        }
        if (ft5 != null && ft5.g()) {
            int i14 = ft5.f40221k;
            boolean n10 = ft.n();
            if ((c5786Qe0.b(i14) || (n10 && c5786Qe0.b(i14 + 1))) && b(i10, ft5.f40221k, ft)) {
                return true;
            }
        }
        C10340xw0 c10340xw0 = ft.f40212b;
        if (c10340xw0.d(new Predicate() {
            @Override
            public final boolean test(Object obj22) {
                return ((AbstractC10561zE) obj22).B1();
            }
        })) {
            C7130ej L10 = c10340xw0.r().L();
            FT ft6 = L10.v2().f53891h;
            ft6.getClass();
            FT a12 = ft6.a(L10.f54322g);
            if (!f50291s && a12 == null) {
                throw new AssertionError();
            }
            if (a12.g() && a(ft, i10, c5786Qe0, a12.f40221k, fh2)) {
                return true;
            }
        } else if (c10340xw0.j()) {
            C7201f60 l10 = c10340xw0.l();
            c8045kA.clear();
            for (int i15 = 0; i15 < l10.c0().size(); i15++) {
                FT ft7 = ((C10340xw0) l10.f47863q.get(i15)).f53891h;
                if (ft7.f40216f.size() != 0) {
                    ft7 = ft7.a(l10.f47862p.u().get(i15).i().f54322g);
                }
                if (ft7.g()) {
                    c8045kA.a(Integer.valueOf(ft7.f40221k), 1);
                }
            }
            MY[] myArr2 = (MY[]) c8045kA.entrySet().toArray(new MY[0]);
            Arrays.sort(myArr2, NY.f42630b);
            List asList2 = Arrays.asList(myArr2);
            int i16 = EC.f39794e;
            if (asList2.isEmpty()) {
                a11 = C6953df0.f47448l;
            } else {
                a11 = C6953df0.a((Collection) asList2);
            }
            AbstractC4895Av0 it4 = a11.entrySet().iterator();
            while (it4.hasNext()) {
                if (a(ft, i10, c5786Qe0, ((Integer) ((MY) it4.next()).b()).intValue(), fh2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean a(FT ft, int i10, C5786Qe0 c5786Qe0, int i11, FH fh2) {
        if (!fh2.add(i11)) {
            return false;
        }
        if (!f50291s && i11 == Integer.MIN_VALUE) {
            throw new AssertionError();
        }
        if ((ft.o() + i11) - 1 > i10) {
            return false;
        }
        boolean n10 = ft.n();
        if (c5786Qe0.b(i11)) {
            return false;
        }
        if ((n10 && c5786Qe0.b(i11 + 1)) || c5786Qe0.a(i11, ft.n()) < ft.b()) {
            return false;
        }
        if (j(ft) && d(i11, ft)) {
            return false;
        }
        if (i(ft) && c(i11, ft)) {
            return false;
        }
        a(i11, ft);
        p(ft);
        this.f50302k.add(ft);
        return true;
    }

    public final void a(int i10, FT ft) {
        int i11;
        if (!f50291s && (ft.o() + i10) - 1 > this.f50300i) {
            throw new AssertionError();
        }
        ft.e(i10);
        C10340xw0 c10340xw0 = ft.f40212b;
        Iterator it = c10340xw0.a0().iterator();
        while (true) {
            i11 = 0;
            if (!it.hasNext()) {
                break;
            }
            C7201f60 c7201f60 = (C7201f60) it.next();
            FT ft2 = c7201f60.f53891h;
            if (!ft2.f()) {
                ft2.a(ft, this.f50304m);
                while (i11 < c7201f60.c0().size()) {
                    FT a10 = ((C10340xw0) c7201f60.f47863q.get(i11)).f53891h.a(c7201f60.f47862p.u().get(i11).i().f54322g);
                    if (!a10.f()) {
                        a10.a(ft, this.f50304m);
                    }
                    i11++;
                }
            }
        }
        if (c10340xw0.j() && ft.f40215e == ft) {
            C7201f60 l10 = c10340xw0.l();
            W5 w52 = l10.f47862p;
            while (i11 < l10.c0().size()) {
                ((C10340xw0) l10.f47863q.get(i11)).f53891h.a(w52.u().get(i11).i().f54322g).a(ft, this.f50304m);
                i11++;
            }
        }
    }

    public final int a(Predicate predicate, InterfaceC6401aI interfaceC6401aI, int i10, FT ft, int i11, boolean z10, C5844Re0 c5844Re0, EnumC5670Oe0 enumC5670Oe0) {
        if (predicate.test(ft)) {
            while (interfaceC6401aI.a(i10, ft)) {
                c5844Re0.f43949b.set(i10);
                int a10 = a(ft, i11, c5844Re0, z10, enumC5670Oe0);
                if (i10 == a10) {
                    if (f50291s) {
                        return -1;
                    }
                    throw new AssertionError((Object) ("Unexpected attempt to take blocked register " + a10 + " in " + this.f50293b.j().r()));
                }
                if (a10 == -1) {
                    return a10;
                }
                i10 = a10;
            }
        }
        return i10;
    }

    public final int a(FT ft, int i10, boolean z10, C5786Qe0 c5786Qe0, EnumC5670Oe0 enumC5670Oe0) {
        int a10 = a(ft, i10, c5786Qe0, z10, enumC5670Oe0);
        if (a10 == -1) {
            return a10;
        }
        C5844Re0 c5844Re0 = new C5844Re0(c5786Qe0);
        return a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8421mS.this.i((FT) obj);
            }
        }, new InterfaceC6401aI() {
            @Override
            public final boolean a(int i11, Object obj) {
                return C8421mS.this.c(i11, (FT) obj);
            }
        }, a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8421mS.this.k((FT) obj);
            }
        }, new InterfaceC6401aI() {
            @Override
            public final boolean a(int i11, Object obj) {
                return C8421mS.this.e(i11, (FT) obj);
            }
        }, a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8421mS.this.j((FT) obj);
            }
        }, new InterfaceC6401aI() {
            @Override
            public final boolean a(int i11, Object obj) {
                return C8421mS.this.d(i11, (FT) obj);
            }
        }, a10, ft, i10, z10, c5844Re0, enumC5670Oe0), ft, i10, z10, c5844Re0, enumC5670Oe0), ft, i10, z10, c5844Re0, enumC5670Oe0);
    }

    public final void a(FT ft, int i10, boolean z10) {
        FT ft2;
        if (!f50291s && ft.g()) {
            throw new AssertionError();
        }
        final CH ch2 = new CH(z10 ? 2 : 1);
        ch2.add(i10);
        if (z10) {
            ch2.add(i10 + 1);
        }
        if (ft.i() && ft != (ft2 = ft.f40215e)) {
            ft2.a(new IntConsumer() {
                @Override
                public final void accept(int i11) {
                    TH.this.add(i11);
                }
            });
        }
        ArrayList arrayList = new ArrayList();
        Iterator<E> it = this.f50302k.iterator();
        while (it.hasNext()) {
            FT ft3 = (FT) it.next();
            boolean z11 = f50291s;
            if (!z11 && !m(ft3)) {
                throw new AssertionError();
            }
            if (ft3.a(i10, z10)) {
                it.remove();
                int a10 = a(ft3, ch2);
                f(ft3);
                FT a11 = ft3.a(ft.e(), this.f50298g);
                a(a10, a11);
                a11.a(true);
                p(a11);
                if (!z11 && !a11.g()) {
                    throw new AssertionError();
                }
                if (!z11 && !ft3.g()) {
                    throw new AssertionError();
                }
                arrayList.add(a11);
                if (ft3.f40212b.K() && ft3.e() == ft3.f40212b.f53886c.f54322g && ft3.f40220j.size() == 1) {
                    ft3.a(true);
                }
                if (!a11.h()) {
                    continue;
                } else if (ft3.f40212b.K()) {
                    if (!z11 && !a11.f40223m) {
                        throw new AssertionError();
                    }
                    if (!z11 && !a11.f40212b.K()) {
                        throw new AssertionError();
                    }
                    GT a12 = a11.a(this.f50298g);
                    if (a12 != null) {
                        FT a13 = a11.a(a12.f40504b, this.f50298g);
                        if (a11.h()) {
                            a11.a(false);
                        }
                        this.f50304m.add(a13);
                        boolean z12 = true;
                        while (z12) {
                            int e10 = a13.e();
                            Iterator it2 = a13.f40220j.iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    z12 = false;
                                    break;
                                }
                                GT gt = (GT) it2.next();
                                int i11 = gt.f40504b;
                                if (i11 - e10 > 22) {
                                    a13 = a13.a(e10 + 2, this.f50298g);
                                    int i12 = gt.f40504b;
                                    if (i12 % 2 != 1) {
                                        i12--;
                                    }
                                    if (i12 > a13.e()) {
                                        a(a10, a13);
                                        a13.a(true);
                                        this.f50303l.add(a13);
                                        a13 = a13.a(gt.f40504b, this.f50298g);
                                    }
                                    this.f50304m.add(a13);
                                    z12 = true;
                                } else {
                                    e10 = i11;
                                }
                            }
                        }
                    } else if (a11.h()) {
                        a11.a(false);
                    }
                } else if (ft3.i()) {
                    if (!z11 && !a11.f40223m) {
                        throw new AssertionError();
                    }
                    if (!z11 && !a11.i()) {
                        throw new AssertionError();
                    }
                    GT a14 = a11.a(this.f50298g);
                    if (a14 != null) {
                        if (this.f50298g.b()) {
                            FT ft4 = a11.f40215e;
                            if ((ft4.o() + ft4.f40221k) - 1 < this.f50295d) {
                            }
                        }
                        FT a15 = a11.a(a14.f40504b, this.f50298g);
                        if (!z11 && a15 == a11) {
                            throw new AssertionError();
                        }
                        this.f50304m.add(a15);
                    }
                    a11.e(a11.f40215e.f40221k);
                    a11.a(false);
                } else {
                    if (!z11 && !a11.f40223m) {
                        throw new AssertionError();
                    }
                    if (!z11 && a11.f40212b.K()) {
                        throw new AssertionError();
                    }
                    GT a16 = a11.a(this.f50298g);
                    if (a16 != null) {
                        int i13 = a11.f40221k;
                        FT a17 = a11.a(a16.f40504b, this.f50298g);
                        if (a17 != a11) {
                            this.f50304m.add(a17);
                        } else {
                            if (!z11 && a11.g()) {
                                throw new AssertionError();
                            }
                            a11.e(i13);
                            if (a11.h()) {
                                a11.a(false);
                            }
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        this.f50302k.addAll(arrayList);
        if (f50291s) {
            return;
        }
        if (this.f50299h.h(i10) || (k() && i10 == j())) {
            if (!z10) {
                return;
            }
            int i14 = i10 + 1;
            if (this.f50299h.h(i14)) {
                return;
            }
            if (k() && i14 == j()) {
                return;
            }
        }
        throw new AssertionError();
    }

    public final void a(final FT ft, final int i10, final C5786Qe0 c5786Qe0, final C5786Qe0 c5786Qe02) {
        Iterator it = AbstractC6114Vx.b(this.f50302k, this.f50303l).iterator();
        while (true) {
            GK gk2 = (GK) it;
            if (!gk2.hasNext()) {
                return;
            }
            final FT ft2 = (FT) gk2.next();
            if (ft2.j() && ft2.f40221k <= i10 && ft2.c(ft) != -1) {
                ft2.a(new IntConsumer() {
                    @Override
                    public final void accept(int i11) {
                        C8421mS.a(i10, ft2, ft, c5786Qe02, c5786Qe0, i11);
                    }
                });
            }
        }
    }

    public static void a(int i10, FT ft, FT ft2, AbstractC5728Pe0 abstractC5728Pe0, AbstractC5728Pe0 abstractC5728Pe02, int i11) {
        int i12;
        if (i11 <= i10) {
            int e10 = ft2.e();
            Iterator it = ft.f40220j.iterator();
            while (true) {
                if (!it.hasNext()) {
                    i12 = Integer.MAX_VALUE;
                    break;
                } else {
                    i12 = ((GT) it.next()).f40504b;
                    if (i12 >= e10) {
                        break;
                    }
                }
            }
            if (i12 < abstractC5728Pe0.a(i11)) {
                abstractC5728Pe0.a(i11, i12, ft);
                if (!f50291s && !abstractC5728Pe02.b(i11) && abstractC5728Pe02.a(i11) > abstractC5728Pe0.a(i11)) {
                    throw new AssertionError();
                }
            }
        }
    }

    public final boolean a(C10340xw0 c10340xw0) {
        return c10340xw0.H() && g(c10340xw0.f53891h);
    }

    public static void a(C4798y c4798y, C7215fB c7215fB, IdentityHashMap identityHashMap, ArrayList arrayList) {
        NJ a02;
        AbstractC4895Av0 it = c7215fB.B().iterator();
        while (it.hasNext()) {
            W5 w52 = (W5) it.next();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            LinkedHashSet linkedHashSet3 = new LinkedHashSet();
            Set a10 = w52.j().a();
            for (W5 w53 : w52.v()) {
                boolean contains = a10.contains(w53);
                if (contains) {
                    linkedHashSet3.addAll(((C7048eB) identityHashMap.get(w53)).f47629a);
                } else {
                    linkedHashSet.addAll(((C7048eB) identityHashMap.get(w53)).f47629a);
                }
                if (!f50291s && contains && !w53.s().isEmpty()) {
                    throw new AssertionError();
                }
                for (C7201f60 c7201f60 : w53.s()) {
                    linkedHashSet.remove(c7201f60);
                    linkedHashSet2.add((C10340xw0) c7201f60.f47863q.get(w53.u().indexOf(w52)));
                }
            }
            linkedHashSet.addAll(linkedHashSet2);
            int size = w52.l().size() * 2;
            Iterator it2 = linkedHashSet.iterator();
            while (it2.hasNext()) {
                C10340xw0 c10340xw0 = (C10340xw0) it2.next();
                int i10 = w52.f45293f.a().f54322g + size;
                if (linkedHashSet2.contains(c10340xw0)) {
                    i10--;
                }
                a(c10340xw0, w52, i10, arrayList, c7215fB);
            }
            for (AbstractC10561zE b10 = w52.f45293f.b(); b10 != null; b10 = b10.b1()) {
                C10340xw0 d10 = b10.d();
                if (d10 != null) {
                    if (d10 instanceof C8313lo0) {
                        for (C8146ko0 c8146ko0 : ((C8313lo0) d10).f50108p) {
                            linkedHashSet.remove(c8146ko0);
                        }
                    } else if (!d10.P()) {
                        a(d10, w52, b10.f54322g + 1, arrayList, c7215fB);
                        if (!f50291s && c7215fB.f47895b.a() && !b10.k1()) {
                            throw new AssertionError((Object) "Arguments should be the only potentially unused local in CF");
                        }
                    }
                    linkedHashSet.remove(d10);
                }
                ArrayList arrayList2 = b10.f54321f;
                int size2 = arrayList2.size();
                int i11 = 0;
                while (i11 < size2) {
                    Object obj = arrayList2.get(i11);
                    i11++;
                    C10340xw0 c10340xw02 = (C10340xw0) obj;
                    if (c10340xw02.T()) {
                        if (!f50291s) {
                            int p22 = b10.p2();
                            if (!c7215fB.f47895b.b() && p22 != 65535) {
                                throw new AssertionError();
                            }
                        }
                        if (!linkedHashSet.contains(c10340xw02)) {
                            linkedHashSet.add(c10340xw02);
                            a(c10340xw02, w52, b10.f54322g, arrayList, c7215fB);
                        }
                        if (c7215fB.f47895b.b()) {
                            int p23 = b10.p2();
                            FT ft = c10340xw02.f53891h;
                            if (!c10340xw02.H() || p23 != 65535 || ((a02 = b10.a0()) != null && a02.y2() > 5 && !a(a02))) {
                                ft.a(new GT(b10.f54322g, p23));
                            }
                        }
                    }
                }
                if (b10.o()) {
                    Iterator<E> it3 = linkedHashSet3.iterator();
                    while (it3.hasNext()) {
                        C10340xw0 c10340xw03 = (C10340xw0) it3.next();
                        if (c10340xw03.T() && !linkedHashSet.contains(c10340xw03)) {
                            linkedHashSet.add(c10340xw03);
                            int i12 = b10.f54322g;
                            if (b10.t1() && c10340xw03 != b10.D().n()) {
                                i12 += 2;
                            }
                            a(c10340xw03, w52, i12, arrayList, c7215fB);
                        }
                    }
                }
                if (c4798y.E().f50690i1 || c7215fB.j().getHolder().I1()) {
                    int i13 = b10.f54322g;
                    ArrayList arrayList3 = new ArrayList(b10.V0());
                    arrayList3.sort(new C9440sa1());
                    int size3 = arrayList3.size();
                    int i14 = 0;
                    while (i14 < size3) {
                        Object obj2 = arrayList3.get(i14);
                        i14++;
                        C10340xw0 c10340xw04 = (C10340xw0) obj2;
                        if (!f50291s && !c10340xw04.T()) {
                            throw new AssertionError();
                        }
                        if (!linkedHashSet.contains(c10340xw04)) {
                            linkedHashSet.add(c10340xw04);
                            a(c10340xw04, w52, i13, arrayList, c7215fB);
                        }
                    }
                }
            }
        }
    }

    public static boolean a(C7215fB c7215fB) {
        if (c7215fB.f47897d.size() > 1) {
            return false;
        }
        AE H10 = c7215fB.k().H();
        while (H10.hasNext() && H10.h().k1()) {
            H10.next();
        }
        while (H10.hasNext() && H10.h().t1() && H10.h().D().n().H()) {
            H10.next();
        }
        if (H10.hasNext() && H10.next().N1()) {
            if (H10.hasNext() && H10.h().t1()) {
                H10.next();
            }
            if (H10.hasNext() && H10.next().g2()) {
                return true;
            }
        }
        return false;
    }

    public final void a(int i10) {
        int i11 = this.f50300i;
        while (true) {
            i11++;
            if (i11 <= i10) {
                this.f50299h.add(i11);
            } else {
                this.f50300i = i10;
                return;
            }
        }
    }

    public final int a(int i10, boolean z10) {
        int i11;
        int i12;
        int i13;
        int i14 = this.f50300i;
        C8234lI c8234lI = this.f50299h;
        if (z10) {
            c8234lI = new C8234lI(new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return C8421mS.this.a((Integer) obj, (Integer) obj2);
                }
            });
            c8234lI.a(this.f50299h);
        }
        c8234lI.getClass();
        C7735iI c7735iI = new C7735iI(c8234lI);
        if (c7735iI.hasNext()) {
            i11 = c7735iI.r();
        } else {
            i11 = this.f50300i + 1;
            this.f50300i = i11;
        }
        while (true) {
            i12 = i11;
            while ((i11 - i12) + 1 != i10) {
                for (int i15 = 0; i15 < i10 - 1; i15++) {
                    if (c7735iI.hasNext()) {
                        i13 = c7735iI.r();
                    } else {
                        i13 = this.f50300i + 1;
                        this.f50300i = i13;
                    }
                    i11++;
                    if (i13 != i11 || i13 == this.f50294c) {
                        i11 = i13;
                    }
                }
            }
            break;
        }
        while (true) {
            i14++;
            if (i14 <= this.f50300i) {
                boolean add = this.f50299h.add(i14);
                if (!f50291s && !add) {
                    throw new AssertionError();
                }
            } else {
                if (f50291s || ((b(i12) && b((i12 + i10) - 1)) || !(b(i12) || b((i10 + i12) - 1)))) {
                    return i12;
                }
                throw new AssertionError();
            }
        }
    }

    public final int a(Integer num, Integer num2) {
        boolean b10 = b(num.intValue());
        boolean b11 = b(num2.intValue());
        if (b10 && !b11) {
            return 1;
        }
        if (b10 || !b11) {
            return num.intValue() - num2.intValue();
        }
        return -1;
    }
}
