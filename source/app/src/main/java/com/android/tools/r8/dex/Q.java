package com.android.tools.r8.dex;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.E0;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC9595tV;
import com.android.tools.r8.internal.C10325xr0;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.IH;
import com.android.tools.r8.internal.InterfaceC5930Sr0;
import com.android.tools.r8.internal.JK;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class Q {

    public static final Comparator f35761j = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            int compareTo;
            compareTo = ((H2) obj).f36245e.f36592f.compareTo(((H2) obj2).f36245e.f36592f);
            return compareTo;
        }
    };

    public static final boolean f35762k = true;

    public final ExecutorService f35763a;

    public final t0 f35764b;

    public final ArrayList f35765c;

    public final List f35766d;

    public final BitSet f35767e = new BitSet();

    public final Set f35768f;

    public final C4798y f35769g;

    public final IH f35770h;

    public final P f35771i;

    public Q(t0 t0Var, ArrayList arrayList, List list, Set set, IH ih2, C4798y c4798y, ExecutorService executorService) {
        this.f35764b = t0Var;
        this.f35765c = arrayList;
        this.f35766d = list;
        this.f35768f = set;
        this.f35770h = ih2;
        this.f35769g = c4798y;
        this.f35763a = executorService;
        this.f35771i = new P(c4798y, set);
    }

    public final boolean b(List list, t0 t0Var) {
        return (!t0Var.f35956b.f35937c.isEmpty() || list.contains(t0Var) || this.f35767e.get(t0Var.b())) ? false : true;
    }

    public final boolean c(Set set, t0 t0Var) {
        return (set.contains(t0Var) || this.f35767e.get(t0Var.b())) ? false : true;
    }

    public final boolean d(Set set, t0 t0Var) {
        return (set.contains(t0Var) || this.f35767e.get(t0Var.b())) ? false : true;
    }

    public final List a(O o10, r0 r0Var, final List list) {
        t0 a10;
        if (o10.f35753b.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        r0Var.f35930e = JK.a(r0Var.f35927b);
        r0Var.a();
        if (o10.f35754c >= 65536 || o10.f35755d >= 65536) {
            t0 a11 = r0Var.a(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return com.android.tools.r8.dex.Q.this.b(list, (com.android.tools.r8.dex.t0) obj);
                }
            });
            HashSet b10 = b(o10.f35753b, a11);
            HashSet hashSet = new HashSet(list);
            hashSet.add(a11);
            ArrayList a12 = a(b10, r0Var, hashSet);
            a12.add(a11);
            return a12;
        }
        do {
            a10 = r0Var.a(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return com.android.tools.r8.dex.Q.this.a(list, (com.android.tools.r8.dex.t0) obj);
                }
            });
        } while (!a(o10.f35753b, a10));
        return Collections.singletonList(a10);
    }

    public final HashSet b(Set set, t0 t0Var) {
        boolean z10;
        int size = set.size();
        int size2 = t0Var.f35956b.f35937c.size();
        HashSet hashSet = new HashSet(set);
        boolean z11 = true;
        int i10 = 0;
        while (z11 && !hashSet.isEmpty()) {
            HashSet hashSet2 = new HashSet();
            ArrayList arrayList = new ArrayList(hashSet);
            Collections.sort(arrayList, f35761j);
            int size3 = arrayList.size();
            int i11 = 0;
            boolean z12 = false;
            while (i11 < size3) {
                Object obj = arrayList.get(i11);
                i11++;
                H2 h22 = (H2) obj;
                if (!z12) {
                    C4798y c4798y = this.f35769g;
                    M2 m22 = h22.f36247g;
                    c4798y.getClass();
                    if (!hashSet.contains(H2.a(m22 == h22.f36245e ? h22 : c4798y.a(m22)))) {
                        M2[] m2Arr = h22.f36248h.f36675b;
                        int length = m2Arr.length;
                        int i12 = 0;
                        while (i12 < length) {
                            int i13 = length;
                            M2 m23 = m2Arr[i12];
                            M2[] m2Arr2 = m2Arr;
                            C4798y c4798y2 = this.f35769g;
                            c4798y2.getClass();
                            z10 = z11;
                            if (hashSet.contains(H2.a(m23 == h22.f36245e ? h22 : c4798y2.a(m23)))) {
                                hashSet2.add(h22);
                                break;
                            }
                            i12++;
                            length = i13;
                            m2Arr = m2Arr2;
                            z11 = z10;
                        }
                        z10 = z11;
                        t0Var.a(h22);
                        if (t0Var.a(65536)) {
                            t0Var.a();
                            if (!t0Var.f35956b.f35937c.isEmpty()) {
                                hashSet2.add(h22);
                                if (t0Var.a(65436)) {
                                    this.f35767e.set(t0Var.b());
                                    z11 = false;
                                    z12 = true;
                                } else {
                                    z11 = false;
                                }
                            } else {
                                throw new C5325If("Class '" + h22.j0() + "' from " + h22.f36244d.toString() + " is too big to fit in a dex.");
                            }
                        } else {
                            i10++;
                            t0Var.f35957c.a();
                            z11 = z10;
                        }
                    }
                }
                z10 = z11;
                hashSet2.add(h22);
                z11 = z10;
            }
            hashSet = hashSet2;
        }
        if (f35762k || (size == hashSet.size() + i10 && size2 + i10 == t0Var.f35956b.f35937c.size())) {
            return hashSet;
        }
        throw new AssertionError();
    }

    public final boolean a(List list, t0 t0Var) {
        return (list.contains(t0Var) || this.f35767e.get(t0Var.b())) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x018c, code lost:
    
        r5.f35957c.a();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ArrayList a(HashSet hashSet, r0 r0Var, Collection collection) {
        int size = hashSet.size();
        ArrayList arrayList = new ArrayList();
        while (!hashSet.isEmpty()) {
            H2 a10 = a((H2) hashSet.iterator().next(), hashSet);
            hashSet.remove(a10);
            arrayList.add(a10);
        }
        if (!f35762k && arrayList.size() != size) {
            throw new AssertionError();
        }
        ArrayList arrayList2 = new ArrayList();
        HashMap hashMap = new HashMap(AbstractC9595tV.a(hashSet.size()));
        int size2 = arrayList.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                break;
            }
            H2 h22 = (H2) arrayList.get(size2);
            Collection a11 = this.f35771i.a(h22);
            BitSet bitSet = new BitSet();
            Iterator it = a11.iterator();
            while (it.hasNext()) {
                bitSet.set(((Integer) hashMap.get((H2) it.next())).intValue());
            }
            int nextClearBit = bitSet.nextClearBit(0);
            hashMap.put(h22, Integer.valueOf(nextClearBit));
            if (arrayList2.size() == nextClearBit) {
                arrayList2.add(new O(this));
            }
            ((O) arrayList2.get(nextClearBit)).f35753b.add(h22);
        }
        a(arrayList2);
        if (!f35762k) {
            int size3 = arrayList2.size();
            int i10 = 0;
            int i11 = 0;
            while (i10 < size3) {
                Object obj = arrayList2.get(i10);
                i10++;
                i11 += ((O) obj).f35753b.size();
            }
            if (size != i11) {
                throw new AssertionError();
            }
        }
        Collections.sort(arrayList2);
        ArrayList arrayList3 = new ArrayList();
        final HashSet hashSet2 = new HashSet(collection);
        hashSet2.add(this.f35764b);
        int size4 = arrayList2.size();
        int i12 = 0;
        while (i12 < size4) {
            Object obj2 = arrayList2.get(i12);
            i12++;
            r0Var.f35930e = JK.a(r0Var.f35927b);
            r0Var.a();
            t0 a12 = r0Var.a(new Predicate() {
                @Override
                public final boolean test(Object obj3) {
                    return com.android.tools.r8.dex.Q.this.c(hashSet2, (com.android.tools.r8.dex.t0) obj3);
                }
            });
            hashSet2.add(a12);
            arrayList3.add(a12);
            ArrayList arrayList4 = new ArrayList(((O) obj2).f35753b);
            Collections.sort(arrayList4, f35761j);
            int size5 = arrayList4.size();
            int i13 = 0;
            while (i13 < size5) {
                Object obj3 = arrayList4.get(i13);
                i13++;
                H2 h23 = (H2) obj3;
                while (true) {
                    a12.a(h23);
                    if (!a12.a(65536)) {
                        break;
                    }
                    a12.a();
                    if (!a12.f35956b.f35937c.isEmpty()) {
                        if (a12.a(65436)) {
                            this.f35767e.set(a12.b());
                        }
                        a12 = r0Var.a(new Predicate() {
                            @Override
                            public final boolean test(Object obj4) {
                                return com.android.tools.r8.dex.Q.this.d(hashSet2, (com.android.tools.r8.dex.t0) obj4);
                            }
                        });
                        hashSet2.add(a12);
                        arrayList3.add(a12);
                    } else {
                        throw new C5325If("Class '" + h23.j0() + "' from " + h23.f36244d.toString() + " is too big to fit in a dex.");
                    }
                }
            }
        }
        return arrayList3;
    }

    public final void a(AbstractList abstractList) {
        C8570nJ E10 = this.f35769g.E();
        C10325xr0 c10325xr0 = new C10325xr0(E10.G(), this.f35763a, abstractList.size());
        try {
            Iterator<E> it = abstractList.iterator();
            while (it.hasNext()) {
                final O o10 = (O) it.next();
                Objects.requireNonNull(o10);
                c10325xr0.b(new InterfaceC5930Sr0() {
                    @Override
                    public final void a() {
                        com.android.tools.r8.dex.O.this.a();
                    }
                });
            }
            c10325xr0.a((Consumer) null);
        } catch (ExecutionException e10) {
            Throwable cause = e10.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new AssertionError(e10);
            }
            throw ((RuntimeException) cause);
        }
    }

    public final void a(HashSet hashSet, O o10, H2 h22) {
        if (h22 == null) {
            return;
        }
        if (!hashSet.remove(h22)) {
            if (o10.f35756e) {
                return;
            }
            o10.f35756e = this.f35764b.f35956b.f35937c.contains(h22);
            return;
        }
        o10.f35753b.add(h22);
        C4798y c4798y = this.f35769g;
        M2 m22 = h22.f36247g;
        c4798y.getClass();
        a(hashSet, o10, H2.a(m22 == h22.f36245e ? h22 : c4798y.a(m22)));
        M2[] m2Arr = h22.f36248h.f36675b;
        int length = m2Arr.length;
        for (int i10 = 0; i10 < length; i10++) {
            M2 m23 = m2Arr[i10];
            C4798y c4798y2 = this.f35769g;
            c4798y2.getClass();
            a(hashSet, o10, H2.a(m23 == h22.f36245e ? h22 : c4798y2.a(m23)));
        }
        Iterator it = this.f35771i.a(h22).iterator();
        while (it.hasNext()) {
            a(hashSet, o10, (H2) it.next());
        }
    }

    public final boolean a(Set set, t0 t0Var) {
        int size = set.size();
        int size2 = t0Var.f35956b.f35937c.size();
        Iterator<E> it = set.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            t0Var.a((H2) it.next());
            i10++;
            if (t0Var.a(65536)) {
                t0Var.a();
                if (t0Var.a(65436)) {
                    this.f35767e.set(t0Var.b());
                }
                if (f35762k || size2 == t0Var.f35956b.f35937c.size()) {
                    return false;
                }
                throw new AssertionError();
            }
        }
        t0Var.f35957c.a();
        if (f35762k) {
            return true;
        }
        if (size == i10 && size2 + i10 == t0Var.f35956b.f35937c.size()) {
            return true;
        }
        throw new AssertionError();
    }

    public final H2 a(H2 h22, HashSet hashSet) {
        C4798y c4798y = this.f35769g;
        M2 m22 = h22.f36247g;
        c4798y.getClass();
        H2 a10 = H2.a(m22 == h22.f36245e ? h22 : c4798y.a(m22));
        if (hashSet.contains(a10)) {
            return a(a10, hashSet);
        }
        for (M2 m23 : h22.f36248h.f36675b) {
            E0 g10 = this.f35769g.g(m23);
            if (g10.e0() && hashSet.contains(g10.d0())) {
                return a((H2) g10, hashSet);
            }
        }
        return h22;
    }
}
