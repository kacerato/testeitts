package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class C5650Nw0 {

    public static final boolean f42740d = true;

    public List f42741a;

    public final T3[] f42742b;

    public final C10340xw0 f42743c;

    public C5650Nw0(C10340xw0 c10340xw0, ArrayList arrayList) {
        this.f42743c = c10340xw0;
        this.f42741a = arrayList;
    }

    public final T3[] a() {
        if (f42740d || this.f42742b != null) {
            return this.f42742b;
        }
        throw new AssertionError();
    }

    public final List b() {
        if (this.f42741a == null) {
            T3[] t3Arr = this.f42742b;
            C10340xw0[] c10340xw0Arr = new C10340xw0[t3Arr.length];
            for (int i10 = 0; i10 < t3Arr.length; i10++) {
                T3 t32 = t3Arr[i10];
                c10340xw0Arr[i10] = t32 == null ? null : t32.value();
            }
            this.f42741a = Arrays.asList(c10340xw0Arr);
        }
        return this.f42741a;
    }

    public C5650Nw0(C10340xw0 c10340xw0, T3[] t3Arr) {
        this.f42743c = c10340xw0;
        this.f42742b = t3Arr;
    }
}
