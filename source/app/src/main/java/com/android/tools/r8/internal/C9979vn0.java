package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C9979vn0 {

    public static final boolean f53328i = true;

    public final C7215fB f53332d;

    public final C8421mS f53333e;

    public final C6949de f53334f;

    public final HashMap f53329a = new HashMap();

    public final HashMap f53330b = new HashMap();

    public final HashMap f53331c = new HashMap();

    public final HashMap f53335g = new HashMap();

    public int f53336h = 0;

    public C9979vn0(C4798y c4798y, C7215fB c7215fB, C8421mS c8421mS) {
        this.f53333e = c8421mS;
        this.f53332d = c7215fB;
        C8854p10 h10 = C8854p10.h();
        boolean z10 = AbstractC8999pu0.f51660a;
        this.f53334f = AbstractC8999pu0.a(c4798y.b().f38068i2, h10, (C4798y<?>) c4798y).b();
        Iterator<W5> it = c7215fB.f47897d.iterator();
        while (it.hasNext()) {
            W5 next = it.next();
            this.f53335g.put(Integer.valueOf(next.f45293f.a().f54322g), next);
        }
    }

    public final AbstractC8999pu0 a(FT ft, FT ft2) {
        AbstractC8999pu0 u10 = ft.f40212b.u();
        AbstractC8999pu0 u11 = ft2.f40212b.u();
        if (!u10.y() && !u11.y()) {
            if (f53328i || u10 == u11) {
                return u10;
            }
            throw new AssertionError();
        }
        boolean z10 = f53328i;
        if (!z10 && !u11.y() && !u11.z()) {
            throw new AssertionError();
        }
        if (z10 || u10.y() || u10.z()) {
            return this.f53334f;
        }
        throw new AssertionError();
    }

    public final void b(int i10, FT ft, FT ft2) {
        if (!f53328i && i10 % 2 != 1) {
            throw new AssertionError();
        }
        ((Set) this.f53330b.computeIfAbsent(Integer.valueOf(i10), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9979vn0.b((Integer) obj);
            }
        })).add(new C9812un0(a(ft, ft2), ft, ft2));
    }

    public final void c(int i10, FT ft, FT ft2) {
        if (!f53328i && i10 % 2 != 1) {
            throw new AssertionError();
        }
        C9812un0 c9812un0 = new C9812un0(a(ft, ft2), ft, ft2);
        int d10 = c9812un0.f52949b.d();
        int d11 = ft.d();
        if (d10 > d11) {
            if (!FT.f40211v && d10 < ft.f40215e.f40230t) {
                throw new AssertionError();
            }
            ft.f40215e.f40230t = d10;
        } else {
            FT ft3 = c9812un0.f52949b;
            if (!FT.f40211v && d11 < ft3.f40215e.f40230t) {
                throw new AssertionError();
            }
            ft3.f40215e.f40230t = d11;
        }
        ((Set) this.f53331c.computeIfAbsent(Integer.valueOf(i10), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9979vn0.c((Integer) obj);
            }
        })).add(c9812un0);
    }

    public static Set b(Integer num) {
        return new LinkedHashSet();
    }

    public final void a(int i10, FT ft, FT ft2) {
        if (!f53328i && i10 % 2 != 1) {
            throw new AssertionError();
        }
        ((Set) this.f53329a.computeIfAbsent(Integer.valueOf(i10), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9979vn0.a((Integer) obj);
            }
        })).add(new C9812un0(a(ft, ft2), ft, ft2));
    }

    public static Set a(Integer num) {
        return new LinkedHashSet();
    }

    public static Set c(Integer num) {
        return new LinkedHashSet();
    }

    public final int a(int i10) {
        Iterator<W5> it = this.f53332d.f47897d.iterator();
        while (it.hasNext()) {
            W5 next = it.next();
            Y5 I10 = next.I();
            if (next == this.f53332d.k()) {
                while (I10.hasNext() && I10.h().k1()) {
                    I10.next();
                }
                for (C8024k3 c8024k3 : this.f53332d.c()) {
                    if (a(c8024k3)) {
                        a(i10, c8024k3, I10);
                    }
                }
            }
            while (true) {
                AbstractC10561zE abstractC10561zE = (AbstractC10561zE) I10.a(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return C9979vn0.this.a((AbstractC10561zE) obj);
                    }
                });
                if (abstractC10561zE == null) {
                    break;
                }
                if (!(abstractC10561zE instanceof C6600bY)) {
                    I10.previous();
                }
                a(i10, abstractC10561zE, I10);
            }
        }
        return this.f53336h;
    }

    public final void a(final Set set, final Set set2, final Set set3) {
        set.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C9979vn0.this.a(set2, set, set3, (C9812un0) obj);
            }
        });
    }

    public final boolean a(Set set, Set set2, Set set3, C9812un0 c9812un0) {
        C9812un0 c9812un02;
        C9812un0 c9812un03;
        C9812un0 c9812un04;
        FT ft = c9812un0.f52950c;
        Iterator<E> it = set.iterator();
        while (true) {
            c9812un02 = null;
            if (!it.hasNext()) {
                c9812un03 = null;
                break;
            }
            c9812un03 = (C9812un0) it.next();
            if (c9812un03.f52949b == ft) {
                break;
            }
        }
        int i10 = c9812un0.f52949b.f40221k;
        int C10 = c9812un0.f52948a.C();
        Iterator<E> it2 = set2.iterator();
        loop1: while (true) {
            if (!it2.hasNext()) {
                c9812un04 = null;
                break;
            }
            c9812un04 = (C9812un0) it2.next();
            int i11 = c9812un04.f52950c.f40221k;
            int C11 = c9812un04.f52948a.C();
            for (int i12 = 0; i12 < C10; i12++) {
                for (int i13 = 0; i13 < C11; i13++) {
                    if (i11 + i13 == i10 + i12) {
                        break loop1;
                    }
                }
            }
        }
        FT ft2 = c9812un0.f52950c;
        Iterator<E> it3 = set3.iterator();
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            C9812un0 c9812un05 = (C9812un0) it3.next();
            if (c9812un05.f52949b == ft2) {
                c9812un02 = c9812un05;
                break;
            }
        }
        if (c9812un03 == null || c9812un04 != null || c9812un02 != null) {
            return false;
        }
        c9812un03.f52949b = c9812un0.f52949b;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00f0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(int i10, AbstractC10561zE abstractC10561zE, Y5 y52) {
        B60 t10;
        Object remove;
        Object remove2;
        Set<C9812un0> set;
        Object remove3;
        boolean z10 = f53328i;
        if (!z10 && !a(abstractC10561zE)) {
            throw new AssertionError();
        }
        int i11 = abstractC10561zE.f54322g;
        if (y52.hasPrevious()) {
            AbstractC10561zE n10 = y52.n();
            n10.getClass();
            if (n10 instanceof C6600bY) {
                t10 = y52.n().getPosition();
                HashMap hashMap = this.f53329a;
                int i12 = i11 - 1;
                Integer valueOf = Integer.valueOf(i12);
                Object obj = Collections.EMPTY_SET;
                boolean z11 = TU.f44487a;
                remove = hashMap.remove(valueOf);
                if (remove == null) {
                    remove = obj;
                }
                Set<C9812un0> set2 = (Set) remove;
                if (!z10) {
                    for (C9812un0 c9812un0 : set2) {
                        if (!f53328i && this.f53333e.d(c9812un0.f52950c)) {
                            throw new AssertionError();
                        }
                    }
                }
                remove2 = this.f53330b.remove(Integer.valueOf(i12));
                if (remove2 == null) {
                    remove2 = obj;
                }
                set = (Set) remove2;
                if (!z10) {
                    for (C9812un0 c9812un02 : set) {
                        if (!f53328i && this.f53333e.d(c9812un02.f52950c)) {
                            throw new AssertionError();
                        }
                    }
                }
                remove3 = this.f53331c.remove(Integer.valueOf(i12));
                if (remove3 != null) {
                    obj = remove3;
                }
                Set set3 = (Set) obj;
                a(set2, set, set3);
                if (set.isEmpty()) {
                    set.addAll(set3);
                } else {
                    set = set3;
                }
                a(i10, set2, y52, t10);
                a(i10, set, y52, t10);
                if (z10 && a(abstractC10561zE)) {
                    throw new AssertionError();
                }
            }
        }
        AbstractC10561zE h10 = y52.h();
        if (!z10 && h10.f54322g != i11 && !abstractC10561zE.k1()) {
            throw new AssertionError();
        }
        B60 position = h10.getPosition();
        t10 = (position.o() && h10.G1()) ? h10.U().v2().t() : position;
        HashMap hashMap2 = this.f53329a;
        int i122 = i11 - 1;
        Integer valueOf2 = Integer.valueOf(i122);
        Object obj2 = Collections.EMPTY_SET;
        boolean z112 = TU.f44487a;
        remove = hashMap2.remove(valueOf2);
        if (remove == null) {
        }
        Set<C9812un0> set22 = (Set) remove;
        if (!z10) {
        }
        remove2 = this.f53330b.remove(Integer.valueOf(i122));
        if (remove2 == null) {
        }
        set = (Set) remove2;
        if (!z10) {
        }
        remove3 = this.f53331c.remove(Integer.valueOf(i122));
        if (remove3 != null) {
        }
        Set set32 = (Set) obj2;
        a(set22, set, set32);
        if (set.isEmpty()) {
        }
        a(i10, set22, y52, t10);
        a(i10, set, y52, t10);
        if (z10) {
        }
    }

    public final void a(int i10, Set set, Y5 y52, B60 b60) {
        if (set.isEmpty()) {
            return;
        }
        C5612Ne0 c5612Ne0 = new C5612Ne0(y52, i10, this.f53333e.f50294c, b60);
        Iterator it = set.iterator();
        while (it.hasNext()) {
            C9812un0 c9812un0 = (C9812un0) it.next();
            if (!c9812un0.f52950c.k()) {
                if (c9812un0.f52949b.k()) {
                    boolean z10 = f53328i;
                    if (!z10 && this.f53333e.d(c9812un0.f52950c.f40221k) >= 256) {
                        throw new AssertionError();
                    }
                    AbstractC10561zE abstractC10561zE = c9812un0.f52949b.f40212b.f53886c;
                    if (abstractC10561zE.e2()) {
                        c5612Ne0.a(new C5439Ke0(c9812un0.f52950c.f40221k, c9812un0.f52948a, abstractC10561zE));
                    } else if (!z10 && !abstractC10561zE.k1()) {
                        throw new AssertionError();
                    }
                }
                if (c9812un0.f52950c.f40221k != c9812un0.f52949b.f40221k) {
                    C8570nJ E10 = this.f53333e.f50292a.E();
                    E10.getClass();
                    if (E10.a(C2.M) && c9812un0.f52949b.f40212b.K() && c9812un0.f52948a.z() && this.f53333e.d(c9812un0.f52950c.f40221k) < 256) {
                        c5612Ne0.a(new C5439Ke0(c9812un0.f52950c.f40221k, c9812un0.f52948a, c9812un0.f52949b.f40212b.f53886c));
                    } else {
                        c5612Ne0.a(new C5439Ke0(c9812un0.f52950c.f40221k, c9812un0.f52949b.f40221k, c9812un0.f52948a));
                    }
                }
            }
        }
        c5612Ne0.c();
        this.f53336h = Math.max(this.f53336h, c5612Ne0.a());
    }

    public final boolean a(AbstractC10561zE abstractC10561zE) {
        int i10 = abstractC10561zE.f54322g - 1;
        return this.f53330b.containsKey(Integer.valueOf(i10)) || this.f53329a.containsKey(Integer.valueOf(i10)) || this.f53331c.containsKey(Integer.valueOf(i10));
    }
}
