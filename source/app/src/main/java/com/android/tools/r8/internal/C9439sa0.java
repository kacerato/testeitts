package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.OptionalInt;
import java.util.function.Predicate;
import java.util.stream.Stream;

public final class C9439sa0 {

    public static final boolean f52381f = true;

    public final com.android.tools.r8.graph.H5 f52382a;

    public int f52383b;

    public LinkedList f52384c;

    public LinkedList f52385d;

    public LinkedList f52386e;

    public C9439sa0(com.android.tools.r8.graph.H5 h52) {
        this.f52382a = h52;
    }

    public static boolean a(C5137Fa0 c5137Fa0) {
        return Stream.of((Object[]) new AbstractC8772oa0[]{c5137Fa0.f40251a, c5137Fa0.f40252b}).noneMatch(new Gs1());
    }

    public final boolean b(C8605na0 c8605na0) {
        Object obj;
        if (c8605na0.f50986b instanceof C5079Ea0) {
            obj = ((C5137Fa0) this.f52386e.get(c8605na0.a())).f40251a;
        } else {
            obj = (AbstractC4905Ba0) c8605na0.f50988d.get(0);
        }
        obj.getClass();
        return obj instanceof C6631bj;
    }

    public final void a(C8605na0 c8605na0) {
        if (this.f52384c == null) {
            this.f52384c = new LinkedList();
        }
        this.f52384c.add(c8605na0);
    }

    public final void a(AbstractC8772oa0 abstractC8772oa0, AbstractC8772oa0 abstractC8772oa02) {
        if (this.f52386e == null) {
            this.f52386e = new LinkedList();
        }
        this.f52386e.add(new C5137Fa0(abstractC8772oa0, abstractC8772oa02));
    }

    public final void b() {
        LinkedList linkedList = this.f52384c;
        if (linkedList != null && !linkedList.isEmpty()) {
            C6901dI c6901dI = new C6901dI(16);
            C6901dI c6901dI2 = new C6901dI(16);
            Iterator<E> it = this.f52384c.iterator();
            while (it.hasNext()) {
                C8605na0 c8605na0 = (C8605na0) it.next();
                if (c8605na0.f50987c.isPresent()) {
                    if (c8605na0.f50986b instanceof C5079Ea0) {
                        c6901dI.add(c8605na0.a());
                    } else {
                        c6901dI2.add(c8605na0.a() / 32);
                    }
                }
            }
            int i10 = 0;
            if (this.f52385d != null) {
                for (int i11 = 0; i11 < this.f52385d.size(); i11++) {
                    AbstractC8772oa0 abstractC8772oa0 = (AbstractC8772oa0) this.f52385d.get(i11);
                    abstractC8772oa0.getClass();
                    if (abstractC8772oa0 instanceof HT) {
                        c6901dI2.add(i11);
                    }
                }
            }
            ME me2 = new ME();
            LinkedList linkedList2 = this.f52386e;
            if (linkedList2 != null) {
                Iterator<E> it2 = linkedList2.iterator();
                int i12 = 0;
                int i13 = 0;
                while (it2.hasNext()) {
                    it2.next();
                    if (c6901dI.h(i12)) {
                        me2.b(i12, i12 - i13);
                    } else {
                        it2.remove();
                        i13++;
                    }
                    i12++;
                }
                if (!f52381f && !this.f52386e.stream().allMatch(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return C9439sa0.a((C5137Fa0) obj);
                    }
                })) {
                    throw new AssertionError();
                }
            }
            ME me3 = new ME();
            LinkedList linkedList3 = this.f52385d;
            if (linkedList3 != null) {
                Iterator<E> it3 = linkedList3.iterator();
                int i14 = 0;
                while (it3.hasNext()) {
                    it3.next();
                    if (c6901dI2.h(i10)) {
                        me3.b(i10, i10 - i14);
                    } else {
                        it3.remove();
                        i14++;
                    }
                    i10++;
                }
                Iterator<E> it4 = this.f52385d.iterator();
                while (it4.hasNext()) {
                    AbstractC8772oa0 abstractC8772oa02 = (AbstractC8772oa0) it4.next();
                    abstractC8772oa02.getClass();
                    if (abstractC8772oa02 instanceof C6631bj) {
                        throw new C9606ta0();
                    }
                }
                if (!f52381f && !this.f52385d.stream().noneMatch(new Gs1())) {
                    throw new AssertionError();
                }
            }
            Iterator<E> it5 = this.f52384c.iterator();
            while (it5.hasNext()) {
                C8605na0 c8605na02 = (C8605na0) it5.next();
                if (c8605na02.f50987c.isPresent()) {
                    if (c8605na02.f50986b instanceof C5079Ea0) {
                        int i15 = me2.get(c8605na02.a());
                        if (!C8605na0.f50984e && !c8605na02.f50987c.isPresent()) {
                            throw new AssertionError();
                        }
                        c8605na02.f50987c = OptionalInt.of(i15);
                    } else {
                        int a10 = c8605na02.a();
                        int i16 = a10 / 32;
                        int i17 = a10 % 32;
                        if (!f52381f && !me3.a(i16)) {
                            throw new AssertionError();
                        }
                        int i18 = (me3.get(i16) * 32) + i17;
                        if (!C8605na0.f50984e && !c8605na02.f50987c.isPresent()) {
                            throw new AssertionError();
                        }
                        c8605na02.f50987c = OptionalInt.of(i18);
                    }
                }
            }
            return;
        }
        this.f52386e = null;
        this.f52385d = null;
    }

    public final void a() {
        if (this.f52384c != null) {
            this.f52384c.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C9439sa0.this.b((C8605na0) obj);
                }
            });
        }
    }
}
