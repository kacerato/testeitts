package com.android.tools.r8.internal;

import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;

public final class QZ {

    public static final boolean f43622i = true;

    public final AA f43623a;

    public final Set f43624b;

    public final Set f43625c = AbstractC5513Ll0.c();

    public final AbstractC8374m80 f43626d = AbstractC8374m80.c();

    public final ArrayDeque f43627e = new ArrayDeque();

    public final IdentityHashMap f43628f = new IdentityHashMap();

    public Collection f43629g;

    public final RZ f43630h;

    public QZ(RZ rz, AA aa2) {
        this.f43630h = rz;
        this.f43623a = aa2;
        this.f43624b = C4875Al0.a(aa2);
    }

    public final void a() {
        this.f43627e.clear();
    }

    public final void b(com.android.tools.r8.graph.H5 h52) {
        boolean z10 = f43622i;
        if (!z10 && !h52.d().f1()) {
            throw new AssertionError();
        }
        if (!z10 && h52.getAccessFlags().H()) {
            throw new AssertionError();
        }
        if (!z10 && h52.getAccessFlags().J()) {
            throw new AssertionError();
        }
        boolean add = this.f43626d.add((AbstractC8374m80) h52);
        if (!z10 && !add) {
            throw new AssertionError();
        }
        this.f43627e.add(h52);
    }

    public final void c() {
        while (!this.f43627e.isEmpty()) {
            com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f43627e.removeLast();
            h52.a(new PZ(this, h52));
        }
        this.f43625c.clear();
        this.f43626d.f45165b.clear();
    }

    public final boolean a(com.android.tools.r8.graph.H5 h52) {
        boolean z10 = f43622i;
        if (!z10 && h52.getAccessFlags().H()) {
            throw new AssertionError();
        }
        if (!z10 && h52.getAccessFlags().J()) {
            throw new AssertionError();
        }
        if (!this.f43626d.add((AbstractC8374m80) h52)) {
            return false;
        }
        this.f43627e.addLast(h52);
        return true;
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        return ((Set) this.f43628f.getOrDefault(h22, Collections.EMPTY_SET)).contains(h22);
    }

    public final void b(com.android.tools.r8.graph.H2 h22) {
        if (!f43622i && !this.f43624b.contains(h22)) {
            throw new AssertionError();
        }
        ((Set) this.f43628f.computeIfAbsent(h22, TU.a(new C8887pC0()))).addAll(this.f43629g);
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H2 h23) {
        return ((Set) this.f43628f.getOrDefault(h22, Collections.EMPTY_SET)).contains(h23);
    }

    public final void b() {
        for (com.android.tools.r8.graph.H2 h22 : this.f43629g) {
            ((Set) this.f43628f.computeIfAbsent(h22, TU.a(new C8887pC0()))).add(h22);
        }
    }

    public final void a(Collection collection) {
        boolean z10 = f43622i;
        if (!z10) {
            if (!z10 && !this.f43625c.isEmpty()) {
                throw new AssertionError();
            }
            if (!z10 && !this.f43626d.f45165b.isEmpty()) {
                throw new AssertionError();
            }
        }
        if (!z10 && !z10 && !this.f43627e.isEmpty()) {
            throw new AssertionError();
        }
        this.f43629g = collection;
    }
}
