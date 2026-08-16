package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;
import java.util.TreeSet;
import java.util.function.IntConsumer;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;

public class FT implements Comparable<FT> {

    public static final boolean f40211v = true;

    public final C10340xw0 f40212b;

    public FT f40213c;

    public FT f40214d;

    public final FT f40215e;

    public final boolean f40226p;

    public final ArrayList f40216f = new ArrayList();

    public final CH f40217g = new CH(16);

    public boolean f40218h = false;

    public ArrayList f40219i = new ArrayList();

    public final TreeSet f40220j = new TreeSet();

    public int f40221k = Integer.MIN_VALUE;

    public int f40222l = Integer.MIN_VALUE;

    public boolean f40223m = false;

    public NJ f40224n = null;

    public boolean f40225o = false;

    public boolean f40227q = false;

    public boolean f40228r = false;

    public int f40229s = 65535;

    public int f40230t = Integer.MIN_VALUE;

    public boolean f40231u = false;

    public FT(C10340xw0 c10340xw0) {
        boolean z10 = false;
        this.f40226p = false;
        this.f40212b = c10340xw0;
        Iterator<AbstractC10561zE> it = c10340xw0.b0().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            AbstractC10561zE next = it.next();
            next.getClass();
            if (next instanceof WX) {
                z10 = true;
                break;
            }
        }
        this.f40226p = z10;
        this.f40215e = this;
        if (!C10340xw0.f53884o && c10340xw0.f53891h != null) {
            throw new AssertionError();
        }
        c10340xw0.f53891h = this;
    }

    public final FT a(int i10, EnumC8087kS enumC8087kS) {
        IT it;
        int i11;
        int i12 = i10 % 2;
        int i13 = i12 == 0 ? i10 : i10 + 1;
        int e10 = e();
        if (e10 % 2 != 0) {
            e10++;
        }
        if (i13 == e10) {
            if (!f40211v && !this.f40220j.isEmpty() && ((GT) this.f40220j.first()).f40504b == i10) {
                GT gt = (GT) this.f40220j.first();
                gt.getClass();
                enumC8087kS.getClass();
                if (enumC8087kS.a(gt.f40505c) || j()) {
                    throw new AssertionError();
                }
            }
            this.f40221k = Integer.MIN_VALUE;
            return this;
        }
        if (!f40211v && this.f40212b.d(new C9226rE0())) {
            throw new AssertionError();
        }
        if (i12 != 1) {
            i10--;
        }
        FT ft = new FT(this.f40215e);
        this.f40215e.f40216f.add(ft);
        FT ft2 = this.f40215e;
        ft2.f40218h = ft2.f40216f.size() == 1;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (i10 == b()) {
            arrayList = this.f40219i;
            arrayList2.add(new IT(i10, i10));
        } else {
            int i14 = 0;
            while (i14 < this.f40219i.size() && (((i11 = (it = (IT) this.f40219i.get(i14)).f41107b) > i10 || it.f41108c <= i10) && i11 <= i10)) {
                i14++;
            }
            IT it2 = (IT) this.f40219i.get(i14);
            arrayList.addAll(this.f40219i.subList(0, i14));
            if (it2.f41107b < i10) {
                arrayList.add(new IT(it2.f41107b, i10));
                arrayList2.add(new IT(i10, it2.f41108c));
            } else {
                arrayList2.add(it2);
            }
            ArrayList arrayList3 = this.f40219i;
            arrayList2.addAll(arrayList3.subList(i14 + 1, arrayList3.size()));
        }
        ft.f40219i = arrayList2;
        this.f40219i = arrayList;
        while (!this.f40220j.isEmpty() && ((GT) this.f40220j.last()).f40504b >= i10) {
            ft.a((GT) this.f40220j.pollLast());
        }
        this.f40229s = 65535;
        Iterator it3 = this.f40220j.iterator();
        while (it3.hasNext()) {
            this.f40229s = Math.min(this.f40229s, ((GT) it3.next()).f40505c);
        }
        boolean z10 = f40211v;
        if (!z10 && this.f40219i.isEmpty()) {
            throw new AssertionError();
        }
        if (z10 || !ft.f40219i.isEmpty()) {
            return ft;
        }
        throw new AssertionError();
    }

    public void b(FT ft) {
        this.f40213c = ft;
        ft.f40214d = this;
    }

    public final int c() {
        if (f40211v || f()) {
            return this.f40222l;
        }
        throw new AssertionError();
    }

    @Override
    public final int compareTo(FT ft) {
        int c10;
        FT ft2 = ft;
        int e10 = e() - ft2.e();
        if (e10 != 0) {
            return e10;
        }
        if (f() && ft2.f() && (c10 = c() - ft2.c()) != 0) {
            return c10;
        }
        if (f() && !ft2.f()) {
            return -1;
        }
        if (!f() && ft2.f()) {
            return 1;
        }
        int t10 = this.f40212b.t() - ft2.f40212b.t();
        if (f40211v || t10 != 0) {
            return t10;
        }
        throw new AssertionError();
    }

    public final int d() {
        FT ft = this.f40215e;
        int i10 = ft.f40230t;
        if (i10 != Integer.MIN_VALUE) {
            return i10;
        }
        boolean z10 = f40211v;
        if (!z10 && ft.f40215e != ft) {
            throw new AssertionError();
        }
        if (!z10 && i10 != Integer.MIN_VALUE) {
            throw new AssertionError();
        }
        if (!ft.f40223m) {
            ft.f40230t = ft.f40221k;
        }
        ArrayList arrayList = ft.f40216f;
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            FT ft2 = (FT) obj;
            if (!ft2.f40223m) {
                ft.f40230t = Math.max(ft.f40230t, ft2.f40221k);
            }
        }
        return ft.f40230t;
    }

    public int e() {
        if (f40211v || !this.f40219i.isEmpty()) {
            return ((IT) this.f40219i.get(0)).f41107b;
        }
        throw new AssertionError();
    }

    public final boolean f() {
        return this.f40222l != Integer.MIN_VALUE;
    }

    public final boolean g() {
        return this.f40221k != Integer.MIN_VALUE;
    }

    public final boolean h() {
        return !this.f40220j.isEmpty();
    }

    public final boolean i() {
        AbstractC10561zE abstractC10561zE = this.f40215e.f40212b.f53886c;
        return abstractC10561zE != null && abstractC10561zE.k1();
    }

    public final boolean j() {
        return this.f40224n != null;
    }

    public final boolean k() {
        if (!this.f40223m) {
            return false;
        }
        FT ft = this.f40215e;
        if (f40211v || ft.f40215e == ft) {
            return ft.f40231u;
        }
        throw new AssertionError();
    }

    public final boolean l() {
        return this == this.f40215e;
    }

    public final boolean n() {
        return this.f40212b.Y().b();
    }

    public final int o() {
        return this.f40212b.Y().c();
    }

    public final void p() {
        this.f40228r = true;
    }

    public final void q() {
        if (!f40211v && !l()) {
            throw new AssertionError();
        }
        if (this.f40218h) {
            return;
        }
        this.f40216f.sort(Comparator.comparingInt(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ((FT) obj).b();
            }
        }));
        this.f40217g.f39177c = 0;
        ArrayList arrayList = this.f40216f;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            this.f40217g.add(((FT) obj).b());
        }
        if (!f40211v) {
            for (int i11 = 0; i11 < this.f40216f.size(); i11++) {
                boolean z10 = f40211v;
                if (!z10 && ((FT) this.f40216f.get(i11)).b() != this.f40217g.c(i11)) {
                    throw new AssertionError();
                }
                if (!z10 && i11 != 0 && this.f40217g.c(i11 - 1) > this.f40217g.c(i11)) {
                    throw new AssertionError();
                }
            }
        }
        this.f40218h = true;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        ArrayList arrayList = this.f40219i;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            sb2.append(obj);
            sb2.append(" ");
        }
        sb2.append("\n");
        return sb2.toString();
    }

    public int b() {
        if (f40211v || !this.f40219i.isEmpty()) {
            return ((IT) J6.a(this.f40219i, 1)).f41108c;
        }
        throw new AssertionError();
    }

    public final int c(FT ft) {
        int i10;
        IT it;
        Iterator it2 = ft.f40219i.iterator();
        IT it3 = (IT) it2.next();
        ArrayList arrayList = this.f40219i;
        int size = arrayList.size();
        int i11 = 0;
        do {
            i10 = -1;
            if (i11 >= size) {
                break;
            }
            Object obj = arrayList.get(i11);
            i11++;
            it = (IT) obj;
            while (it3.f41108c <= it.f41107b) {
                if (!it2.hasNext()) {
                    return -1;
                }
                it3 = (IT) it2.next();
            }
            i10 = it3.f41107b;
        } while (i10 >= it.f41108c);
        return i10;
    }

    public void e(int i10) {
        int i11;
        if (!f40211v && (i11 = this.f40221k) != Integer.MIN_VALUE && i11 != i10) {
            throw new AssertionError();
        }
        this.f40221k = i10;
    }

    public final boolean b(int i10) {
        if (i10 >= e() && i10 < b()) {
            ArrayList arrayList = this.f40219i;
            int size = arrayList.size();
            int i11 = 0;
            while (i11 < size) {
                Object obj = arrayList.get(i11);
                i11++;
                IT it = (IT) obj;
                if (it.f41107b > i10) {
                    return false;
                }
                if (i10 < it.f41108c) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean d(FT ft) {
        return c(ft) != -1;
    }

    public FT(FT ft) {
        this.f40226p = false;
        this.f40215e = ft;
        this.f40212b = ft.f40212b;
        this.f40226p = ft.f40226p;
    }

    public final void a(FT ft, PriorityQueue priorityQueue) {
        if (!f40211v && !ft.g()) {
            throw new AssertionError();
        }
        if (d(ft)) {
            return;
        }
        boolean remove = priorityQueue.remove(this);
        this.f40222l = ft.f40221k;
        if (remove) {
            priorityQueue.add(this);
        }
    }

    public final void a(boolean z10) {
        boolean z11 = f40211v;
        if (!z11 && this.f40221k == Integer.MIN_VALUE) {
            throw new AssertionError();
        }
        if (!z11 && z10 && i() && this.f40221k != this.f40215e.f40221k) {
            throw new AssertionError();
        }
        this.f40223m = z10;
    }

    public final boolean a(FT ft) {
        FT ft2 = this.f40215e;
        if (ft2.d(ft)) {
            return true;
        }
        ArrayList arrayList = ft2.f40216f;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            if (((FT) obj).c(ft) != -1) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0048 A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(IT it) {
        boolean z10 = true;
        if (this.f40219i.size() > 0) {
            IT it2 = (IT) J6.a(this.f40219i, 1);
            it2.getClass();
            if (it2 != IT.f41106d) {
                int i10 = it.f41107b;
                if (i10 % 2 != 0) {
                    i10++;
                }
                int i11 = it2.f41108c;
                if (i11 % 2 != 0) {
                    i11++;
                }
                if (i11 <= i10) {
                    if (i11 == i10) {
                        it2.f41108c = it.f41108c;
                        if (!f40211v && !z10) {
                            throw new AssertionError();
                        }
                        return;
                    }
                }
            }
            z10 = false;
            if (!f40211v) {
                return;
            } else {
                return;
            }
        }
        this.f40219i.add(it);
        if (!f40211v) {
        }
    }

    public void a(GT gt) {
        this.f40220j.add(gt);
        this.f40229s = Math.min(this.f40229s, gt.f40505c);
    }

    public final boolean a(int i10, boolean z10) {
        if (this.f40221k == i10) {
            return true;
        }
        if (this.f40212b.Y().b() && this.f40221k + 1 == i10) {
            return true;
        }
        return z10 && this.f40221k == i10 + 1;
    }

    public final boolean a(List list) {
        boolean z10;
        Iterator it = list.iterator();
        boolean z11 = false;
        while (it.hasNext()) {
            FT ft = (FT) it.next();
            if (ft.f40212b.d(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ((AbstractC10561zE) obj).Y1();
                }
            })) {
                z10 = z11;
                z11 = false;
            } else {
                z10 = !z11 ? true : z11;
            }
            if (!z11 && c(ft) != -1) {
                return true;
            }
            z11 = z10;
        }
        return false;
    }

    public final GT a() {
        return (GT) AbstractC9907vK.a(this.f40220j, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((GT) obj).a();
            }
        }, null);
    }

    public final GT a(final EnumC8087kS enumC8087kS) {
        return (GT) AbstractC9907vK.a(this.f40220j, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return FT.a(EnumC8087kS.this, (GT) obj);
            }
        }, null);
    }

    public static boolean a(EnumC8087kS enumC8087kS, GT gt) {
        gt.getClass();
        enumC8087kS.getClass();
        return enumC8087kS.a(gt.f40505c);
    }

    public final void a(IntConsumer intConsumer) {
        if (!f40211v && this.f40221k == Integer.MIN_VALUE) {
            throw new AssertionError();
        }
        intConsumer.accept(this.f40221k);
        if (this.f40212b.Y().b()) {
            intConsumer.accept(this.f40221k + 1);
        }
    }

    public FT a(int i10) {
        int i11;
        if (!f40211v && this.f40215e != this) {
            throw new AssertionError();
        }
        if (e() <= i10 && b() > i10) {
            return this;
        }
        FT ft = b() == i10 ? this : null;
        if (this.f40216f.size() > 100) {
            q();
            i11 = Collections.binarySearch(this.f40217g, Integer.valueOf(i10));
            if (i11 < 0) {
                i11 = -(i11 + 1);
            }
        } else {
            i11 = 0;
        }
        while (i11 < this.f40216f.size()) {
            FT ft2 = (FT) this.f40216f.get(i11);
            if (ft2.e() <= i10 && ft2.b() > i10) {
                return ft2;
            }
            if (ft2.b() == i10) {
                ft = ft2;
            }
            i11++;
        }
        if (ft != null) {
            return ft;
        }
        if (f40211v) {
            return null;
        }
        throw new AssertionError((Object) "Couldn't find split covering instruction position.");
    }
}
