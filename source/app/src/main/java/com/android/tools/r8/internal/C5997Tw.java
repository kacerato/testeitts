package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C7201f60;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.List;

public final class C5997Tw {

    public static final boolean f44615h = true;

    public final C4554l1 f44616a;

    public final C7215fB f44617b;

    public final AbstractC10561zE f44618c;

    public final C4798y f44619d;

    public C10340xw0 f44620e = null;

    public final IdentityHashMap f44621f = new IdentityHashMap();

    public final IdentityHashMap f44622g = new IdentityHashMap();

    public C5997Tw(C4554l1 c4554l1, C7215fB c7215fB, AbstractC10561zE abstractC10561zE, C4798y c4798y) {
        this.f44616a = c4554l1;
        this.f44617b = c7215fB;
        this.f44618c = abstractC10561zE;
        this.f44619d = c4798y;
        boolean z10 = f44615h;
        if (!z10 && !abstractC10561zE.e1()) {
            throw new AssertionError();
        }
        if (!z10 && abstractC10561zE.d() != abstractC10561zE.d().i()) {
            throw new AssertionError();
        }
    }

    public final C10340xw0 a(W5 w52) {
        C10340xw0 c10340xw0;
        C10340xw0 c10340xw02 = (C10340xw0) this.f44621f.get(w52);
        if (c10340xw02 != null) {
            return c10340xw02;
        }
        List<W5> u10 = w52.u();
        if (u10.size() == 1) {
            W5 w53 = u10.get(0);
            C10340xw0 c10340xw03 = (C10340xw0) this.f44622g.get(w53);
            C10340xw0 c10340xw04 = c10340xw03;
            if (c10340xw03 == null) {
                C10340xw0 a10 = a(w53, null);
                C10340xw0 c10340xw05 = a10;
                if (a10 == null) {
                    c10340xw05 = a(w53);
                }
                if (!f44615h && c10340xw05 == null) {
                    throw new AssertionError();
                }
                this.f44622g.put(w53, c10340xw05);
                c10340xw04 = c10340xw05;
            }
            this.f44621f.put(w52, c10340xw04);
            c10340xw0 = c10340xw04;
        } else {
            C7201f60 c7201f60 = new C7201f60(this.f44617b.f47898e.a(), w52, AbstractC8999pu0.a(this.f44616a.f37449i, C8854p10.h(), (C4798y<?>) this.f44619d), null, C7201f60.a.f47867b);
            this.f44621f.put(w52, c7201f60);
            ArrayList arrayList = new ArrayList();
            for (W5 w54 : w52.u()) {
                C10340xw0 c10340xw06 = (C10340xw0) this.f44622g.get(w54);
                if (c10340xw06 == null) {
                    c10340xw06 = a(w54, null);
                    if (c10340xw06 == null) {
                        c10340xw06 = a(w54);
                    }
                    if (!f44615h && c10340xw06 == null) {
                        throw new AssertionError();
                    }
                    this.f44622g.put(w54, c10340xw06);
                }
                arrayList.add(c10340xw06);
            }
            c7201f60.a((List) arrayList, false);
            AbstractC8999pu0 d10 = c7201f60.d(this.f44619d);
            if (!f44615h && !d10.a(c7201f60.u(), this.f44619d)) {
                throw new AssertionError();
            }
            c7201f60.a(d10);
            c10340xw0 = c7201f60;
        }
        if (f44615h || c10340xw0 != null) {
            return c10340xw0;
        }
        throw new AssertionError();
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r10 = r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C10340xw0 a(W5 w52, C6558bE c6558bE) {
        AbstractC10561zE abstractC10561zE;
        if (c6558bE == null) {
            abstractC10561zE = w52.f45293f.b();
        }
        while (true) {
            if (abstractC10561zE == this.f44618c || (abstractC10561zE.i() && abstractC10561zE.m().getField() == this.f44616a && abstractC10561zE.m().n().i() == this.f44618c.d())) {
                break;
            }
            abstractC10561zE = abstractC10561zE.b1();
            if (abstractC10561zE == null) {
                abstractC10561zE = null;
                break;
            }
        }
        if (abstractC10561zE == null) {
            return null;
        }
        if (abstractC10561zE.i()) {
            return abstractC10561zE.m().value();
        }
        if (!f44615h && this.f44618c != abstractC10561zE) {
            throw new AssertionError();
        }
        if (this.f44620e == null) {
            AbstractC10561zE Y02 = this.f44618c.Y0();
            w52.getClass();
            Y5 y52 = new Y5(w52, Y02);
            if (this.f44616a.f37449i.P0()) {
                this.f44620e = this.f44617b.a(AbstractC8999pu0.a(this.f44616a.f37449i, C8854p10.b(), (C4798y<?>) this.f44619d), (C4515j0) null);
                C9126qh c9126qh = new C9126qh(this.f44620e, 0L);
                c9126qh.b(this.f44618c.getPosition());
                y52.add(c9126qh);
            } else {
                this.f44620e = y52.a(this.f44617b, this.f44619d.E(), 0L, AbstractC8999pu0.m());
            }
        }
        return this.f44620e;
    }
}
