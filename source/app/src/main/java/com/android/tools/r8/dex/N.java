package com.android.tools.r8.dex;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.M2;
import java.util.HashSet;
import java.util.Iterator;

public final class N {

    public static final boolean f35747e = true;

    public final HashSet f35748a = new HashSet();

    public final HashSet f35749b = new HashSet();

    public final HashSet f35750c = new HashSet();

    public final Q f35751d;

    public N(Q q10, O o10) {
        this.f35751d = q10;
        int size = o10.f35753b.size();
        HashSet hashSet = new HashSet();
        Iterator it = o10.f35753b.iterator();
        while (it.hasNext()) {
            a((H2) it.next(), hashSet);
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            a((H2) it2.next());
        }
        if (f35747e) {
            return;
        }
        if (size != this.f35749b.size() + this.f35750c.size() + this.f35748a.size()) {
            throw new AssertionError();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(H2 h22, HashSet hashSet) {
        boolean z10 = false;
        if (h22 == null || this.f35748a.contains(h22)) {
            return false;
        }
        if (hashSet.contains(h22) || this.f35751d.f35764b.f35956b.f35937c.contains(h22)) {
            return true;
        }
        C4798y c4798y = this.f35751d.f35769g;
        M2 m22 = h22.f36247g;
        c4798y.getClass();
        if (!a(H2.a(m22 == h22.f36245e ? h22 : c4798y.a(m22)), hashSet)) {
            M2[] m2Arr = h22.f36248h.f36675b;
            int length = m2Arr.length;
            for (int i10 = 0; i10 < length; i10++) {
                M2 m23 = m2Arr[i10];
                C4798y c4798y2 = this.f35751d.f35769g;
                c4798y2.getClass();
                if (!a(H2.a(m23 == h22.f36245e ? h22 : c4798y2.a(m23)), hashSet)) {
                }
            }
            if (!z10) {
                hashSet.add(h22);
                return z10;
            }
            this.f35748a.add(h22);
            return z10;
        }
        z10 = true;
        if (!z10) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(H2 h22) {
        boolean z10 = false;
        if (h22 == null || this.f35749b.contains(h22)) {
            return false;
        }
        if (this.f35750c.contains(h22)) {
            return true;
        }
        if (this.f35751d.f35764b.f35956b.f35937c.contains(h22)) {
            return false;
        }
        if (this.f35748a.contains(h22)) {
            return true;
        }
        C4798y c4798y = this.f35751d.f35769g;
        M2 m22 = h22.f36247g;
        c4798y.getClass();
        if (!a(H2.a(m22 == h22.f36245e ? h22 : c4798y.a(m22)))) {
            M2[] m2Arr = h22.f36248h.f36675b;
            int length = m2Arr.length;
            for (int i10 = 0; i10 < length; i10++) {
                M2 m23 = m2Arr[i10];
                C4798y c4798y2 = this.f35751d.f35769g;
                c4798y2.getClass();
                if (!a(H2.a(m23 == h22.f36245e ? h22 : c4798y2.a(m23)))) {
                }
            }
            if (!z10) {
                this.f35750c.add(h22);
                return z10;
            }
            this.f35749b.add(h22);
            return z10;
        }
        z10 = true;
        if (!z10) {
        }
    }
}
