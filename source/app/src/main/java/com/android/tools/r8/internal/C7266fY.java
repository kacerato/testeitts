package com.android.tools.r8.internal;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Predicate;

public final class C7266fY {

    public static final C7099eY f47997b = new C7099eY();

    public static final boolean f47998c = true;

    public final C7215fB f47999a;

    public C7266fY(C7215fB c7215fB) {
        this.f47999a = c7215fB;
    }

    public static boolean b(W5 w52) {
        return w52.C() && w52.i().G1();
    }

    public final void a() {
        for (W5 w52 : this.f47999a.a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C7266fY.this.a((W5) obj);
            }
        })) {
            HashSet hashSet = new HashSet();
            for (AbstractC10561zE b12 = w52.u().get(0).i().b1(); b12 != null && a(b12); b12 = b12.b1()) {
                hashSet.add(new C7333fv(f47997b, b12));
            }
            if (!hashSet.isEmpty()) {
                HashSet hashSet2 = new HashSet();
                for (AbstractC10561zE b13 = w52.u().get(1).i().b1(); b13 != null && a(b13); b13 = b13.b1()) {
                    C7333fv c7333fv = new C7333fv(f47997b, b13);
                    if (hashSet.contains(c7333fv)) {
                        hashSet2.add(c7333fv);
                    }
                }
                hashSet = hashSet2;
            }
            if (!hashSet.isEmpty()) {
                HashMap hashMap = new HashMap();
                Iterator<W5> it = w52.u().iterator();
                while (it.hasNext()) {
                    a(it.next(), hashSet, hashMap);
                }
                if (!hashMap.isEmpty()) {
                    HashSet hashSet3 = new HashSet();
                    while (true) {
                        C7333fv a10 = a(hashSet, hashMap, hashSet3);
                        if (a10 == null) {
                            break;
                        } else {
                            hashSet3.add(a10);
                        }
                    }
                    hashSet = hashSet3;
                }
                if (hashSet.isEmpty()) {
                    continue;
                } else {
                    for (W5 w53 : w52.u()) {
                        Y5 b10 = w53.b(w53.l().size() - 1);
                        ArrayDeque arrayDeque = new ArrayDeque();
                        while (b10.hasPrevious()) {
                            AbstractC10561zE previous = b10.previous();
                            if (!a(previous)) {
                                break;
                            } else if (hashSet.contains(new C7333fv(f47997b, previous))) {
                                arrayDeque.addFirst(previous);
                                b10.s();
                            }
                        }
                        if (!f47998c && arrayDeque.size() != hashSet.size()) {
                            throw new AssertionError();
                        }
                        Y5 b11 = w53.b(w53.l().size() - 1);
                        b11.getClass();
                        Iterator it2 = arrayDeque.iterator();
                        while (it2.hasNext()) {
                            b11.add((AbstractC10561zE) it2.next());
                        }
                    }
                }
            }
        }
    }

    public static void a(W5 w52, HashSet hashSet, HashMap hashMap) {
        AbstractC10561zE b12 = w52.i().b1();
        boolean z10 = f47998c;
        if (!z10 && b12 == null) {
            throw new AssertionError();
        }
        if (!z10 && !a(b12)) {
            throw new AssertionError();
        }
        while (b12.f54318c != null && a(b12.b1())) {
            b12 = b12.b1();
        }
        boolean z11 = AT.f38618a;
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(b12);
        for (AbstractC10561zE Y02 = b12.Y0(); !Y02.U1(); Y02 = Y02.Y0()) {
            if (!f47998c && !a(Y02)) {
                throw new AssertionError();
            }
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                AbstractC10561zE abstractC10561zE = (AbstractC10561zE) obj;
                if (abstractC10561zE.Y1()) {
                    C7838ix c10 = abstractC10561zE.W0().c();
                    C7838ix c11 = abstractC10561zE.d().c();
                    C7838ix c12 = Y02.d().c();
                    if (!c12.a(c10)) {
                        if (c12.a(c11)) {
                        }
                    }
                    ((Set) hashMap.computeIfAbsent(new C7333fv(f47997b, abstractC10561zE), TU.a(new C10604zY0()))).add(Y02);
                }
                if (Y02.Y1()) {
                    C7838ix c13 = abstractC10561zE.d().c();
                    C7838ix c14 = Y02.W0().c();
                    C7838ix c15 = Y02.d().c();
                    if (!c13.a(c14) && !c13.a(c15)) {
                    }
                    ((Set) hashMap.computeIfAbsent(new C7333fv(f47997b, abstractC10561zE), TU.a(new C10604zY0()))).add(Y02);
                }
            }
            if (hashSet.contains(new C7333fv(f47997b, Y02))) {
                arrayList.add(Y02);
            }
        }
    }

    public static C7333fv a(HashSet hashSet, HashMap hashMap, final HashSet hashSet2) {
        Iterator<E> it = hashSet.iterator();
        while (it.hasNext()) {
            C7333fv c7333fv = (C7333fv) it.next();
            Set set = (Set) hashMap.getOrDefault(c7333fv, Collections.EMPTY_SET);
            set.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C7266fY.a(Set.this, (AbstractC10561zE) obj);
                }
            });
            if (set.isEmpty()) {
                it.remove();
                return c7333fv;
            }
        }
        return null;
    }

    public static boolean a(Set set, AbstractC10561zE abstractC10561zE) {
        return set.contains(new C7333fv(f47997b, abstractC10561zE));
    }

    public final boolean a(W5 w52) {
        return w52.u().size() == 2 && AbstractC9907vK.a(w52.u(), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C7266fY.b((W5) obj);
            }
        });
    }

    public static boolean a(AbstractC10561zE abstractC10561zE) {
        if (abstractC10561zE.w1()) {
            C10340xw0 d10 = abstractC10561zE.d();
            d10.getClass();
            return d10 instanceof C7838ix;
        }
        if (!abstractC10561zE.Y1() || (abstractC10561zE instanceof C7130ej)) {
            return false;
        }
        C10340xw0 W02 = abstractC10561zE.W0();
        W02.getClass();
        if (!(W02 instanceof C7838ix)) {
            return false;
        }
        if (f47998c) {
            return true;
        }
        C10340xw0 d11 = abstractC10561zE.d();
        d11.getClass();
        if (d11 instanceof C7838ix) {
            return true;
        }
        throw new AssertionError();
    }
}
