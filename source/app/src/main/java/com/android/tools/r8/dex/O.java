package com.android.tools.r8.dex;

import com.android.tools.r8.graph.H2;
import com.android.tools.r8.internal.AbstractC9148qo0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;

public final class O implements Comparable {

    public static final boolean f35752g = true;

    public final HashSet f35753b;

    public int f35754c;

    public int f35755d;

    public boolean f35756e;

    public final Q f35757f;

    public O(Q q10) {
        this.f35757f = q10;
        this.f35754c = -1;
        this.f35755d = -1;
        this.f35756e = false;
        this.f35753b = new HashSet();
    }

    public final void a() {
        t0 t0Var = new t0(0, this.f35757f.f35769g, null, null, AbstractC9148qo0.b());
        Iterator it = this.f35753b.iterator();
        while (it.hasNext()) {
            t0Var.a((H2) it.next());
        }
        n0 n0Var = t0Var.f35957c;
        this.f35754c = n0Var.f35899b.f35941g.size() + n0Var.f35902e.size();
        n0 n0Var2 = t0Var.f35957c;
        this.f35755d = n0Var2.f35899b.f35940f.size() + n0Var2.f35903f.size();
    }

    @Override
    public final int compareTo(Object obj) {
        O o10 = (O) obj;
        boolean z10 = f35752g;
        if (!z10 && (this.f35753b.isEmpty() || o10.f35753b.isEmpty() || this.f35754c == -1 || this.f35755d == -1)) {
            throw new AssertionError();
        }
        if (this == o10) {
            return 0;
        }
        int i10 = this.f35755d;
        int i11 = o10.f35755d;
        if (i10 != i11) {
            return i10 - i11;
        }
        int i12 = this.f35754c;
        int i13 = o10.f35754c;
        if (i12 != i13) {
            return i12 - i13;
        }
        if (this.f35753b.size() != o10.f35753b.size()) {
            return this.f35753b.size() - o10.f35753b.size();
        }
        Comparator comparator = Q.f35761j;
        ArrayList arrayList = new ArrayList(this.f35753b);
        Collections.sort(arrayList, comparator);
        H2 h22 = (H2) arrayList.iterator().next();
        ArrayList arrayList2 = new ArrayList(o10.f35753b);
        Collections.sort(arrayList2, comparator);
        int compare = comparator.compare(h22, (H2) arrayList2.iterator().next());
        if (z10 || compare != 0) {
            return compare;
        }
        throw new AssertionError();
    }

    public O(Q q10, HashSet hashSet) {
        this.f35757f = q10;
        this.f35754c = -1;
        this.f35755d = -1;
        this.f35756e = false;
        this.f35753b = hashSet;
        a();
    }
}
