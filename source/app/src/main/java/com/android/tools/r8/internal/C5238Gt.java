package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C5238Gt {

    public static final boolean f40600f = true;

    public final com.android.tools.r8.graph.H5 f40601a;

    public final int f40602b;

    public final Set f40603c = AbstractC5513Ll0.c();

    public final Set f40604d = AbstractC5513Ll0.c();

    public boolean f40605e;

    public C5238Gt(com.android.tools.r8.graph.H5 h52, int i10) {
        this.f40601a = h52;
        this.f40602b = i10;
    }

    public final void a() {
        Iterator it = this.f40604d.iterator();
        while (it.hasNext()) {
            boolean remove = ((C5238Gt) it.next()).f40603c.remove(this);
            if (!f40600f && !remove) {
                throw new AssertionError();
            }
        }
        this.f40604d.clear();
        Iterator it2 = this.f40603c.iterator();
        while (it2.hasNext()) {
            boolean remove2 = ((C5238Gt) it2.next()).f40604d.remove(this);
            if (!f40600f && !remove2) {
                throw new AssertionError();
            }
        }
        this.f40603c.clear();
    }

    public final void b() {
        this.f40604d.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5238Gt.this.a((C5238Gt) obj);
            }
        });
    }

    public final void c() {
        if (this.f40601a.A().x()) {
            C8696o40 a10 = AbstractC8028k40.a();
            com.android.tools.r8.graph.H5 h52 = this.f40601a;
            Consumer consumer = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C5238Gt.this.a((BitSet) obj);
                }
            };
            a10.getClass();
            C8696o40.a(consumer, h52);
            return;
        }
        C4516j1 d10 = this.f40601a.d();
        BitSet bitSet = new BitSet(d10.getReference().a(d10.w0()));
        bitSet.set(this.f40602b);
        C8696o40 a11 = AbstractC8028k40.a();
        com.android.tools.r8.graph.H5 h53 = this.f40601a;
        a11.getClass();
        h53.d().T0().a(bitSet);
    }

    public final boolean a(C5238Gt c5238Gt) {
        if (!c5238Gt.f40601a.A().x() || !c5238Gt.f40601a.A().v().get(c5238Gt.f40602b)) {
            return false;
        }
        boolean remove = c5238Gt.f40603c.remove(this);
        if (f40600f || remove) {
            return true;
        }
        throw new AssertionError();
    }

    public final void a(BitSet bitSet) {
        bitSet.set(this.f40602b);
    }
}
