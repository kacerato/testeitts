package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.BiFunction;
import java.util.function.Predicate;

public final class O00 extends AbstractC9867v50 {

    public static final boolean f42754c = true;

    public final QF f42755b;

    public O00(QF qf2) {
        if (!f42754c && qf2.isEmpty()) {
            throw new AssertionError((Object) "Should use bottom() instead");
        }
        this.f42755b = qf2;
    }

    public final O00 a(O00 o00) {
        o00.getClass();
        final QF qf2 = new QF(this.f42755b);
        ZH zh2 = new ZH() {
            @Override
            public final void a(int i10, Object obj) {
                O00.a(FF.this, i10, (AbstractC9700u50) obj);
            }
        };
        JF jf2 = new JF(((NF) o00.f42755b.b()).f42545b);
        while (jf2.hasNext()) {
            EF ef2 = (EF) jf2.next();
            zh2.a(ef2.a(), ef2.getValue());
        }
        return new O00(qf2);
    }

    @Override
    public final O00 d() {
        return this;
    }

    @Override
    public final AbstractC9867v50 e() {
        O00 a10 = a(new InterfaceC6568bI() {
            @Override
            public final Object a(int i10, Object obj) {
                AbstractC9700u50 b10;
                b10 = ((AbstractC9700u50) obj).b();
                return b10;
            }
        });
        PF pf2 = new PF(((IF) a10.f42755b.values()).f41042b);
        boolean z10 = true;
        boolean z11 = true;
        while (pf2.hasNext()) {
            AbstractC9700u50 abstractC9700u50 = (AbstractC9700u50) pf2.f43172h.f43512c[pf2.a()];
            abstractC9700u50.getClass();
            if (!(abstractC9700u50 instanceof C9705u7)) {
                z10 = false;
            }
            if (!(abstractC9700u50 instanceof C10003vv0)) {
                z11 = false;
            }
        }
        return z10 ? C9872v7.f53015b : z11 ? C10170wv0.f53641b : a10;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == null || O00.class != obj.getClass()) {
            return false;
        }
        return this.f42755b.equals(((O00) obj).f42755b);
    }

    public final int hashCode() {
        return this.f42755b.hashCode();
    }

    @Override
    public final AbstractC9867v50 a(int i10, AbstractC9700u50 abstractC9700u50) {
        QF qf2 = new QF(this.f42755b);
        qf2.a(i10, abstractC9700u50);
        if (qf2.isEmpty()) {
            return C9872v7.f53015b;
        }
        return new O00(qf2);
    }

    @Override
    public final AbstractC9700u50 a(int i10) {
        return (AbstractC9700u50) this.f42755b.getOrDefault(Integer.valueOf(i10), C10003vv0.f53375a);
    }

    public final O00 a(C10340xw0 c10340xw0) {
        return a(c10340xw0, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                AbstractC9533t50 abstractC9533t50;
                abstractC9533t50 = C9836uv0.f52985a;
                return abstractC9533t50;
            }
        });
    }

    public final O00 a(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return this;
        }
        final int[] iArr = new int[arrayList.size()];
        Iterator it = arrayList.iterator();
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            iArr[i10] = ((C10340xw0) it.next()).r().v().b(true);
        }
        return a(new InterfaceC6568bI() {
            @Override
            public final Object a(int i11, Object obj) {
                return O00.a(iArr, i11, (AbstractC9700u50) obj);
            }
        });
    }

    public static AbstractC9700u50 a(int[] iArr, int i10, AbstractC9700u50 abstractC9700u50) {
        boolean z10 = X3.f45604a;
        for (int i11 : iArr) {
            if (i11 == i10) {
                return abstractC9700u50.a(new BiFunction() {
                    @Override
                    public final Object apply(Object obj, Object obj2) {
                        AbstractC9533t50 abstractC9533t50;
                        abstractC9533t50 = C9836uv0.f52985a;
                        return abstractC9533t50;
                    }
                });
            }
        }
        return abstractC9700u50;
    }

    public final O00 a(Iterable iterable, Predicate predicate) {
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            C10340xw0 c10340xw0 = (C10340xw0) it.next();
            D4 d42 = D4.f39431a;
            c10340xw0.getClass();
            C10340xw0 a10 = c10340xw0.a(d42, EnumC6871d70.f47287c);
            if (predicate.test(a10)) {
                arrayList.add(a10);
            }
        }
        return a(arrayList);
    }

    public final O00 a(C10340xw0 c10340xw0, final BiFunction biFunction) {
        D4 d42 = D4.f39431a;
        c10340xw0.getClass();
        C10340xw0 a10 = c10340xw0.a(d42, EnumC6871d70.f47287c);
        if (!f42754c && !a10.H()) {
            throw new AssertionError();
        }
        final int b10 = a10.r().v().b(true);
        return a(new InterfaceC6568bI() {
            @Override
            public final Object a(int i10, Object obj) {
                return O00.a(b10, biFunction, i10, (AbstractC9700u50) obj);
            }
        });
    }

    public static AbstractC9700u50 a(int i10, BiFunction biFunction, int i11, AbstractC9700u50 abstractC9700u50) {
        return i11 == i10 ? abstractC9700u50.a(biFunction) : abstractC9700u50;
    }

    public final O00 a(InterfaceC6568bI interfaceC6568bI) {
        EF ef2;
        int a10;
        JF jf2 = new JF(((NF) this.f42755b.b()).f42545b);
        QF qf2 = null;
        while (jf2.hasNext()) {
            EF ef3 = (EF) jf2.next();
            int a11 = ef3.a();
            AbstractC9700u50 abstractC9700u50 = (AbstractC9700u50) ef3.getValue();
            AbstractC9700u50 abstractC9700u502 = (AbstractC9700u50) interfaceC6568bI.a(a11, (AbstractC9700u50) ef3.getValue());
            if (abstractC9700u502 != abstractC9700u50) {
                if (qf2 == null) {
                    qf2 = new QF(16);
                    JF jf3 = new JF(((NF) this.f42755b.b()).f42545b);
                    while (jf3.hasNext() && (a10 = (ef2 = (EF) jf3.next()).a()) != a11) {
                        qf2.a(a10, (AbstractC9700u50) ef2.getValue());
                    }
                }
                qf2.a(a11, abstractC9700u502);
            } else if (qf2 != null) {
                qf2.a(a11, abstractC9700u502);
            }
        }
        return qf2 != null ? new O00(qf2) : this;
    }

    public static void a(FF ff2, int i10, AbstractC9700u50 abstractC9700u50) {
        AbstractC9700u50 abstractC9700u502;
        Object obj = C9705u7.f52783a;
        Object obj2 = ff2.get(i10);
        if (obj2 != null) {
            obj = obj2;
        }
        AbstractC9700u50 abstractC9700u503 = (AbstractC9700u50) obj;
        abstractC9700u50.getClass();
        if (!(abstractC9700u50 instanceof C10003vv0) && !(abstractC9700u503 instanceof C10003vv0)) {
            abstractC9700u502 = abstractC9700u50.a().a(abstractC9700u503.a());
        } else {
            abstractC9700u502 = C10003vv0.f53375a;
        }
        ff2.a(i10, abstractC9700u502);
    }
}
