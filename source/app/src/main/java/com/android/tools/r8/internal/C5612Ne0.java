package com.android.tools.r8.internal;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.TreeSet;
import java.util.function.IntConsumer;
import java.util.function.Predicate;

public class C5612Ne0 {

    public static final boolean f42650k = true;

    public final TreeSet f42651a;

    public final C7561hF f42652b;

    public final EE f42653c;

    public final B60 f42654d;

    public final int f42655e;

    public int f42656f;

    public final int f42657g;

    public final C8234lI f42658h;

    public final C8234lI f42659i;

    public final C6901dI f42660j;

    public C5612Ne0(EE ee2, int i10, int i11, B60 b60) {
        this.f42651a = new TreeSet();
        C7561hF c7561hF = new C7561hF(16);
        this.f42652b = c7561hF;
        this.f42658h = new C8234lI();
        this.f42659i = new C8234lI();
        this.f42660j = new C6901dI(16);
        this.f42653c = ee2;
        this.f42655e = i10;
        this.f42656f = i10;
        this.f42657g = i11;
        this.f42654d = b60;
        c7561hF.f41547b = Integer.MIN_VALUE;
    }

    public void a(C5439Ke0 c5439Ke0) {
        this.f42651a.add(c5439Ke0);
        int i10 = c5439Ke0.f41727d;
        if (i10 != Integer.MIN_VALUE) {
            this.f42652b.b(i10, i10);
        }
        C7561hF c7561hF = this.f42652b;
        int i11 = c5439Ke0.f41726c;
        c7561hF.b(i11, i11);
    }

    public final void b() {
        boolean z10 = f42650k;
        if (!z10 && !this.f42660j.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !this.f42659i.isEmpty()) {
            throw new AssertionError();
        }
        Iterator it = this.f42651a.iterator();
        while (it.hasNext()) {
            C5439Ke0 c5439Ke0 = (C5439Ke0) it.next();
            final C8234lI c8234lI = this.f42659i;
            Objects.requireNonNull(c8234lI);
            c5439Ke0.a(new IntConsumer() {
                @Override
                public final void accept(int i10) {
                    InterfaceC9069qI.this.add(i10);
                }
            });
        }
        Iterator it2 = this.f42651a.iterator();
        while (it2.hasNext()) {
            C5439Ke0 c5439Ke02 = (C5439Ke0) it2.next();
            C8234lI c8234lI2 = this.f42659i;
            Objects.requireNonNull(c8234lI2);
            c5439Ke02.b(new XN0(c8234lI2));
        }
    }

    public void c() {
        List<C5497Le0> list;
        if (!f42650k) {
            FH fh2 = new FH(this.f42651a.size());
            Iterator it = this.f42651a.iterator();
            while (it.hasNext()) {
                boolean add = fh2.add(((C5439Ke0) it.next()).f41726c);
                if (!f42650k && !add) {
                    throw new AssertionError();
                }
            }
        }
        b();
        ArrayDeque arrayDeque = new ArrayDeque();
        TreeSet treeSet = this.f42651a;
        if (treeSet.size() <= 1) {
            list = Collections.EMPTY_LIST;
        } else {
            ArrayList arrayList = new ArrayList();
            QF a10 = AbstractC5554Me0.a(treeSet);
            HashSet hashSet = new HashSet();
            ArrayDeque arrayDeque2 = new ArrayDeque();
            TreeSet treeSet2 = new TreeSet();
            Iterator it2 = treeSet.iterator();
            while (it2.hasNext()) {
                C5439Ke0 c5439Ke0 = (C5439Ke0) it2.next();
                if (!hashSet.contains(c5439Ke0)) {
                    AbstractC5554Me0.a(c5439Ke0, hashSet, a10, arrayDeque2, treeSet2, arrayList);
                    boolean z10 = AbstractC5554Me0.f42337a;
                    if (!z10 && !hashSet.contains(c5439Ke0)) {
                        throw new AssertionError();
                    }
                    if (!z10 && !arrayDeque2.isEmpty()) {
                        throw new AssertionError();
                    }
                    if (!z10 && !treeSet2.isEmpty()) {
                        throw new AssertionError();
                    }
                }
            }
            list = arrayList;
        }
        for (C5497Le0 c5497Le0 : list) {
            Iterator it3 = c5497Le0.f42027a.iterator();
            while (it3.hasNext()) {
                C5439Ke0 c5439Ke02 = (C5439Ke0) it3.next();
                if (!f42650k && !c5439Ke02.a(this, this.f42651a, this.f42652b) && this.f42651a.contains(c5439Ke02)) {
                    throw new AssertionError();
                }
                int i10 = c5439Ke02.f41726c;
                boolean A10 = c5439Ke02.f41725b.A();
                IntConsumer a11 = MH.a();
                if (this.f42659i.remove(i10)) {
                    a11.accept(i10);
                }
                if (A10) {
                    int i11 = i10 + 1;
                    if (this.f42659i.remove(i11)) {
                        a11.accept(i11);
                    }
                }
            }
            if (c5497Le0.f42028b) {
                boolean z11 = f42650k;
                if (!z11 && !this.f42651a.containsAll(c5497Le0.f42027a)) {
                    throw new AssertionError();
                }
                if (!z11 && !arrayDeque.isEmpty()) {
                    throw new AssertionError();
                }
                b(arrayDeque, c5497Le0.f42027a);
            }
            if (!f42650k && !this.f42660j.isEmpty()) {
                throw new AssertionError();
            }
        }
        a(arrayDeque);
        b(arrayDeque, this.f42651a);
        if (!f42650k && !this.f42659i.isEmpty()) {
            throw new AssertionError();
        }
    }

    public int a() {
        return this.f42656f - this.f42655e;
    }

    public final void a(final ArrayDeque arrayDeque) {
        this.f42651a.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5612Ne0.this.a(arrayDeque, (C5439Ke0) obj);
            }
        });
    }

    public final boolean a(Deque deque, C5439Ke0 c5439Ke0) {
        if (c5439Ke0.a(this, this.f42651a, this.f42652b)) {
            return false;
        }
        deque.addLast(c5439Ke0);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v12, types: [com.android.tools.r8.internal.qh] */
    public final void b(ArrayDeque arrayDeque, TreeSet treeSet) {
        int i10;
        int i11;
        int i12;
        C6433aY c6433aY;
        while (true) {
            if (arrayDeque.isEmpty() && treeSet.isEmpty()) {
                return;
            }
            while (!arrayDeque.isEmpty()) {
                while (!arrayDeque.isEmpty()) {
                    C5439Ke0 c5439Ke0 = (C5439Ke0) arrayDeque.removeFirst();
                    boolean z10 = f42650k;
                    if (!z10 && c5439Ke0.a(this, this.f42651a, this.f42652b) && !c5439Ke0.b(this)) {
                        throw new AssertionError();
                    }
                    AbstractC10561zE abstractC10561zE = c5439Ke0.f41728e;
                    if (abstractC10561zE != null) {
                        if (abstractC10561zE.k1()) {
                            C8024k3 v10 = c5439Ke0.f41728e.v();
                            c6433aY = new C6433aY(new C7838ix(c5439Ke0.f41726c, v10.a()), new C7838ix(v10.d().f53891h.f40221k, v10.a()));
                        } else {
                            if (!z10 && !c5439Ke0.f41728e.e2()) {
                                throw new AssertionError();
                            }
                            AbstractC8291lh a12 = c5439Ke0.f41728e.a1();
                            if (a12.w1()) {
                                c6433aY = new C9126qh(new C7838ix(c5439Ke0.f41726c, c5439Ke0.f41728e.a()), a12.J().w2());
                            } else {
                                throw new C5417Jv0("Unexpected definition");
                            }
                        }
                    } else {
                        int i13 = this.f42652b.get(c5439Ke0.f41727d);
                        C6433aY c6433aY2 = new C6433aY(new C7838ix(c5439Ke0.f41726c, c5439Ke0.f41725b), new C7838ix(i13, c5439Ke0.f41725b));
                        boolean A10 = c5439Ke0.f41725b.A();
                        boolean remove = this.f42660j.remove(i13);
                        if (A10) {
                            if (remove) {
                                boolean remove2 = this.f42660j.remove(i13 + 1);
                                if (!z10 && !remove2) {
                                    throw new AssertionError();
                                }
                            } else if (!z10 && this.f42660j.h(i13 + 1)) {
                                throw new AssertionError();
                            }
                        }
                        if (remove) {
                            boolean add = this.f42659i.add(i13);
                            if (!z10 && !add) {
                                throw new AssertionError();
                            }
                            if (A10) {
                                boolean add2 = this.f42659i.add(i13 + 1);
                                if (!z10 && !add2) {
                                    throw new AssertionError();
                                }
                            }
                        } else {
                            int i14 = this.f42655e;
                            if (i13 >= i14) {
                                if (!z10 && i13 < i14) {
                                    throw new AssertionError();
                                }
                                this.f42658h.add(i13);
                                if (A10) {
                                    if (!z10 && i13 + 1 < this.f42655e) {
                                        throw new AssertionError();
                                    }
                                    this.f42658h.add(i13 + 1);
                                }
                            }
                        }
                        c6433aY = c6433aY2;
                    }
                    c6433aY.b(this.f42654d);
                    this.f42653c.add(c6433aY);
                    int i15 = c5439Ke0.f41727d;
                    if (i15 != Integer.MIN_VALUE) {
                        this.f42652b.b(i15, c5439Ke0.f41726c);
                    }
                    int i16 = c5439Ke0.f41726c;
                    boolean A11 = c5439Ke0.f41725b.A();
                    IntConsumer a10 = MH.a();
                    if (this.f42659i.remove(i16)) {
                        a10.accept(i16);
                    }
                    if (A11) {
                        int i17 = i16 + 1;
                        if (this.f42659i.remove(i17)) {
                            a10.accept(i17);
                        }
                    }
                }
                a(arrayDeque, treeSet);
            }
            if (!treeSet.isEmpty()) {
                C5439Ke0 a11 = a(treeSet);
                int i18 = a11.f41726c;
                AbstractC8999pu0 abstractC8999pu0 = a11.f41725b;
                ArrayList arrayList = new ArrayList();
                if (!f42650k && i18 == Integer.MIN_VALUE) {
                    throw new AssertionError();
                }
                Iterator it = this.f42651a.iterator();
                while (it.hasNext()) {
                    C5439Ke0 c5439Ke02 = (C5439Ke0) it.next();
                    int i19 = c5439Ke02.f41727d;
                    if (i19 != Integer.MIN_VALUE) {
                        int i20 = this.f42652b.get(i19);
                        if (i20 == i18) {
                            arrayList.add(c5439Ke02);
                        } else if (c5439Ke02.f41725b.A() && i20 + 1 == i18) {
                            arrayList.add(c5439Ke02);
                        } else if (abstractC8999pu0.A() && i20 - 1 == i18) {
                            arrayList.add(c5439Ke02);
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    if (!f42650k && !a11.b(this)) {
                        throw new AssertionError();
                    }
                } else {
                    int i21 = 0;
                    if (!f42650k) {
                        C6901dI c6901dI = new C6901dI(16);
                        int size = arrayList.size();
                        int i22 = 0;
                        while (i22 < size) {
                            Object obj = arrayList.get(i22);
                            i22++;
                            C5439Ke0 c5439Ke03 = (C5439Ke0) obj;
                            if (!f42650k && !c6901dI.add(c5439Ke03.f41727d)) {
                                throw new AssertionError();
                            }
                        }
                    }
                    int size2 = arrayList.size();
                    while (i21 < size2) {
                        Object obj2 = arrayList.get(i21);
                        i21++;
                        C5439Ke0 c5439Ke04 = (C5439Ke0) obj2;
                        boolean A12 = c5439Ke04.f41725b.A();
                        C8234lI c8234lI = this.f42659i;
                        c8234lI.getClass();
                        C7735iI c7735iI = new C7735iI(c8234lI);
                        while (c7735iI.hasNext()) {
                            i10 = c7735iI.r();
                            if (!A12 || ((i12 = i10 + 1) != this.f42657g && c8234lI.remove(i12))) {
                                c8234lI.remove(i10);
                                break;
                            }
                        }
                        i10 = Integer.MIN_VALUE;
                        if (i10 != Integer.MIN_VALUE) {
                            boolean add3 = this.f42660j.add(i10);
                            boolean z11 = f42650k;
                            if (!z11 && !add3) {
                                throw new AssertionError();
                            }
                            if (A12) {
                                boolean add4 = this.f42660j.add(i10 + 1);
                                if (!z11 && !add4) {
                                    throw new AssertionError();
                                }
                            } else {
                                continue;
                            }
                        } else {
                            C8234lI c8234lI2 = this.f42658h;
                            c8234lI2.getClass();
                            C7735iI c7735iI2 = new C7735iI(c8234lI2);
                            while (c7735iI2.hasNext()) {
                                i10 = c7735iI2.r();
                                if (!A12 || ((i11 = i10 + 1) != this.f42657g && c8234lI2.remove(i11))) {
                                    c8234lI2.remove(i10);
                                    break;
                                }
                            }
                            i10 = Integer.MIN_VALUE;
                            if (i10 == Integer.MIN_VALUE) {
                                i10 = this.f42656f;
                                this.f42656f = i10 + 1;
                                if (A12) {
                                    int i23 = i10 - 1;
                                    if (this.f42658h.remove(i23)) {
                                        i10 = i23;
                                    } else {
                                        this.f42656f++;
                                    }
                                }
                            }
                        }
                        C6433aY c6433aY3 = new C6433aY(new C7838ix(i10, c5439Ke04.f41725b), new C7838ix(this.f42652b.get(c5439Ke04.f41727d), c5439Ke04.f41725b));
                        c6433aY3.b(this.f42654d);
                        this.f42653c.add(c6433aY3);
                        this.f42652b.b(c5439Ke04.f41727d, i10);
                    }
                }
                arrayDeque.add(a11);
            }
        }
    }

    public final void a(final ArrayDeque arrayDeque, final TreeSet treeSet) {
        treeSet.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5612Ne0.this.a(treeSet, arrayDeque, (C5439Ke0) obj);
            }
        });
    }

    public final boolean a(TreeSet treeSet, Deque deque, C5439Ke0 c5439Ke0) {
        if (c5439Ke0.a(this, this.f42651a, this.f42652b)) {
            return false;
        }
        if (U30.a(this.f42651a, treeSet)) {
            this.f42651a.remove(c5439Ke0);
        }
        deque.addLast(c5439Ke0);
        return true;
    }

    public final C5439Ke0 a(TreeSet treeSet) {
        C9239rK c10 = AbstractC9907vK.c(treeSet, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C5612Ne0.this.b((C5439Ke0) obj);
            }
        });
        C5439Ke0 c5439Ke0 = (C5439Ke0) AbstractC9907vK.a(c10, new Y60(new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((C5439Ke0) obj).a();
            }
        }), (C5439Ke0) ((AbstractC7015e0) c10.iterator()).next());
        treeSet.remove(c5439Ke0);
        if (U30.a(treeSet, this.f42651a)) {
            this.f42651a.remove(c5439Ke0);
        }
        return c5439Ke0;
    }

    public C5612Ne0(EE ee2, int i10) {
        this(ee2, i10, 0);
    }

    public C5612Ne0(EE ee2, int i10, int i11) {
        this(ee2, i10, i11, B60.s());
    }

    public final boolean b(C5439Ke0 c5439Ke0) {
        return !c5439Ke0.a(this) || c5439Ke0.b(this);
    }
}
