package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10729u;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Function;

public abstract class AbstractC5881Rw {

    public static final boolean f44026h = true;

    public final C4798y f44027a;

    public final C7215fB f44028b;

    public final com.android.tools.r8.graph.H5 f44029c;

    public final AbstractC8028k40 f44030d;

    public C6993dt f44031e;

    public IdentityHashMap f44032f;

    public final C5631Nn f44033g = C5631Nn.k();

    public AbstractC5881Rw(C4798y c4798y, C7215fB c7215fB, AbstractC8028k40 abstractC8028k40) {
        this.f44027a = c4798y;
        this.f44028b = c7215fB;
        this.f44030d = abstractC8028k40;
        this.f44029c = c7215fB.j();
    }

    public ZD a() {
        return null;
    }

    public abstract void a(com.android.tools.r8.graph.F0 f02, AbstractC7670hw abstractC7670hw, C10340xw0 c10340xw0);

    public abstract boolean a(com.android.tools.r8.graph.F5 f52);

    public final IdentityHashMap b() {
        boolean z10;
        boolean z11;
        Set<C4460g1> set;
        IdentityHashMap identityHashMap = new IdentityHashMap();
        W5 k10 = this.f44028b.k();
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(k10);
        while (!arrayDeque.isEmpty()) {
            W5 w52 = (W5) arrayDeque.removeFirst();
            boolean containsKey = identityHashMap.containsKey(w52);
            AbstractC8849p abstractC8849p = (AbstractC8849p) identityHashMap.computeIfAbsent(w52, new Function() {
                @Override
                public final Object apply(Object obj) {
                    AbstractC8849p abstractC8849p2;
                    abstractC8849p2 = C5701Ot.f43063a;
                    return abstractC8849p2;
                }
            });
            abstractC8849p.getClass();
            if (!(abstractC8849p instanceof C8835ov0)) {
                if (!f44026h && !abstractC8849p.d()) {
                    throw new AssertionError();
                }
                LQ b10 = abstractC8849p.b();
                int size = containsKey ? b10.size() : -1;
                Iterator<W5> it = w52.u().iterator();
                while (true) {
                    z10 = true;
                    if (!it.hasNext()) {
                        z11 = false;
                        break;
                    }
                    AbstractC8849p abstractC8849p2 = (AbstractC8849p) identityHashMap.getOrDefault(it.next(), C5701Ot.f43063a);
                    abstractC8849p2.getClass();
                    if (!(abstractC8849p2 instanceof C5701Ot)) {
                        if (abstractC8849p2 instanceof C8835ov0) {
                            z11 = true;
                            break;
                        }
                        if (!f44026h && !(abstractC8849p2 instanceof C9123qg)) {
                            throw new AssertionError();
                        }
                        AbstractC8849p abstractC8849p3 = (AbstractC8849p) b10;
                        abstractC8849p3.getClass();
                        if (!(abstractC8849p3 instanceof C9123qg)) {
                            b10 = new C9123qg();
                        }
                        b10.a().f51848a.addAll(abstractC8849p2.a().f51848a);
                    }
                }
                if (!z11) {
                    if (containsKey) {
                        if (!f44026h) {
                            com.android.tools.r8.graph.H5 h52 = this.f44029c;
                            Y5 it2 = w52.l().iterator();
                            while (it2.hasNext()) {
                                AbstractC8849p b11 = it2.next().b(this.f44027a, h52);
                                if (!f44026h) {
                                    b11.getClass();
                                    if (b11 instanceof C8835ov0) {
                                        throw new AssertionError();
                                    }
                                }
                                b11.getClass();
                                if (!(b11 instanceof C5701Ot)) {
                                    C9123qg a10 = b11.a();
                                    a10.getClass();
                                    if (C8570nJ.b()) {
                                        set = Collections.unmodifiableSet(a10.f51848a);
                                    } else {
                                        set = a10.f51848a;
                                    }
                                    for (C4460g1 c4460g1 : set) {
                                        if (!f44026h && !b10.a(c4460g1)) {
                                            throw new AssertionError();
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        Y5 it3 = w52.l().iterator();
                        while (it3.hasNext()) {
                            AbstractC8849p b12 = it3.next().b(this.f44027a, this.f44029c);
                            b12.getClass();
                            if (!(b12 instanceof C5701Ot)) {
                                if (b12 instanceof C8835ov0) {
                                    break;
                                }
                                AbstractC8849p abstractC8849p4 = (AbstractC8849p) b10;
                                abstractC8849p4.getClass();
                                if (!(abstractC8849p4 instanceof C9123qg)) {
                                    b10 = new C9123qg();
                                }
                                b10.a().f51848a.addAll(b12.a().f51848a);
                            }
                        }
                    }
                }
                z10 = z11;
                if (z10) {
                    identityHashMap.put(w52, C8835ov0.f51388a);
                } else {
                    if (b10 != abstractC8849p) {
                        identityHashMap.put(w52, b10.a());
                    }
                    if (b10.size() == size) {
                        continue;
                    } else if (!f44026h && b10.size() <= size) {
                        throw new AssertionError();
                    }
                }
                arrayDeque.addAll(w52.v());
            }
        }
        return identityHashMap;
    }

    public final void a(com.android.tools.r8.graph.F0 f02, AbstractC10561zE abstractC10561zE, SD sd2) {
        C5631Nn c5631Nn = this.f44033g;
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC5881Rw.a((com.android.tools.r8.graph.F0) obj);
            }
        };
        c5631Nn.getClass();
        ((List) c5631Nn.a(function, new C7333fv(C5573Mn.f42399a, f02))).add(new C5823Qw(abstractC10561zE, sd2));
    }

    public static List a(com.android.tools.r8.graph.F0 f02) {
        return new ArrayList();
    }

    public void a(final C10729u c10729u) {
        com.android.tools.r8.graph.H5 d10;
        C11245i c11245i = (C11245i) this.f44027a.f();
        Iterator<W5> it = this.f44028b.f47897d.iterator();
        while (it.hasNext()) {
            Y5 it2 = it.next().l().iterator();
            while (it2.hasNext()) {
                AbstractC10561zE next = it2.next();
                if (next.F1()) {
                    AbstractC7670hw S10 = next.S();
                    com.android.tools.r8.graph.F5 o10 = c11245i.c(S10.getField()).o();
                    if (o10 != null) {
                        if (a(o10)) {
                            a(o10, S10, C9335rv0.f52224a);
                        } else if ((this instanceof C5113Eo0) && o10.getHolder().o1()) {
                            C5113Eo0 c5113Eo0 = (C5113Eo0) this;
                            if (o10.getAccessFlags().n() && o10.p() == c5113Eo0.f44029c.p() && ((C11245i) c5113Eo0.f44027a.f()).b(o10, c5113Eo0.f44029c.d())) {
                                a(o10, S10, C9335rv0.f52224a);
                            }
                        }
                    }
                } else if ((this instanceof ZD) && next.a(this.f44027a.b())) {
                    QJ c02 = next.c0();
                    ZD zd2 = (ZD) this;
                    if (c02.C2() == this.f44028b.m() && c02.B2().s0() == zd2.f44029c.p() && (d10 = c02.d(zd2.f44027a, zd2.f44029c)) != null) {
                        C4516j1 d11 = d10.d();
                        d11.L0();
                        UD b10 = d11.f37320m.a(c02).b();
                        ArrayList b11 = d10.getHolder().b(zd2.f44027a);
                        int size = b11.size();
                        int i10 = 0;
                        while (i10 < size) {
                            Object obj = b11.get(i10);
                            i10++;
                            com.android.tools.r8.graph.F0 f02 = (com.android.tools.r8.graph.F0) obj;
                            b10.getClass();
                            SD a10 = b10.a(f02.d());
                            if (a10.s()) {
                                a10 = zd2.a(f02, c02.b(a10.q().f43848a));
                            }
                            zd2.a(f02, c02, a10);
                        }
                    }
                }
            }
        }
        final boolean a11 = AbstractC9907vK.a(this.f44028b.f47897d, new V60() {
            @Override
            public final boolean apply(Object obj2) {
                return AbstractC5881Rw.a((W5) obj2);
            }
        });
        final List<W5> f10 = this.f44028b.f();
        this.f44033g.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj2, Object obj3) {
                AbstractC5881Rw.this.a(a11, f10, c10729u, (com.android.tools.r8.graph.F0) obj2, (List) obj3);
            }
        });
    }

    public static boolean a(W5 w52) {
        return w52.v().size() <= 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00dd, code lost:
    
        if ((r3 instanceof com.android.tools.r8.internal.C5113Eo0) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00df, code lost:
    
        r4 = com.android.tools.r8.ir.optimize.C10729u.f54943c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00e1, code lost:
    
        if (r4 != false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00eb, code lost:
    
        if (r7.getAccessFlags().n() == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ed, code lost:
    
        r5 = r6.f54944a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ef, code lost:
    
        if (r5 == null) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00f9, code lost:
    
        if (r5.containsKey(r7.d()) != false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0105, code lost:
    
        if (r7.d().K0() == null) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x010d, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x010e, code lost:
    
        if (r4 != false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0118, code lost:
    
        if (r7.getAccessFlags().n() == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0120, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0121, code lost:
    
        r4 = r6.f54944a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0123, code lost:
    
        if (r4 == null) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x012d, code lost:
    
        if (r4.containsKey(r7.d()) == false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x012f, code lost:
    
        r4 = (com.android.tools.r8.graph.R2) r6.f54944a.get(r7.d());
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0146, code lost:
    
        r5 = (com.android.tools.r8.internal.C5113Eo0) r3;
        r6 = r7.W();
        r7 = r8.value();
        r4.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0156, code lost:
    
        if ((r4 instanceof com.android.tools.r8.graph.Z2) != false) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0159, code lost:
    
        r5.a(r6, r7, com.android.tools.r8.internal.C8520n10.a(r5.a(r6, r7)), true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0164, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x013c, code lost:
    
        r4 = r7.d().K0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(boolean z10, List list, C10729u c10729u, com.android.tools.r8.graph.F0 f02, List list2) {
        AbstractC10561zE next;
        IdentityHashMap identityHashMap;
        if (list2.size() > 1) {
            return;
        }
        C5823Qw c5823Qw = (C5823Qw) AT.a(list2);
        AbstractC10561zE abstractC10561zE = c5823Qw.f43764a;
        if (abstractC10561zE.O1()) {
            a().b(f02, c5823Qw.f43765b);
            return;
        }
        AbstractC7670hw S10 = abstractC10561zE.S();
        if (!z10) {
            if (this.f44031e == null) {
                this.f44031e = new C6993dt(this.f44028b, 1);
            }
            C6993dt c6993dt = this.f44031e;
            W5 b10 = S10.b();
            c6993dt.getClass();
            Iterator<E> it = list.iterator();
            while (it.hasNext()) {
                if (!c6993dt.a((W5) it.next(), b10)) {
                    return;
                }
            }
        }
        c10729u.getClass();
        if ((f02.getAccessFlags().n() && (((identityHashMap = c10729u.f54944a) != null && identityHashMap.containsKey(f02.d())) || f02.d().K0() != null)) || !S10.value().R()) {
            W5 b11 = S10.b();
            Iterator<W5> it2 = b11.u().iterator();
            while (true) {
                if (it2.hasNext()) {
                    W5 next2 = it2.next();
                    if (this.f44032f == null) {
                        this.f44032f = b();
                    }
                    if (((AbstractC8849p) this.f44032f.get(next2)).a(f02)) {
                        break;
                    }
                } else {
                    AE H10 = b11.H();
                    while (H10.hasNext() && (next = H10.next()) != S10) {
                        if (next.b(this.f44027a, this.f44029c).a(f02)) {
                        }
                    }
                }
            }
        }
        a(f02, S10, S10.value());
    }
}
