package com.android.tools.r8.dex;

import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4763w2;
import com.android.tools.r8.graph.C4782x2;
import com.android.tools.r8.graph.C4801y2;

public final class C4325z {

    public static final C4801y2[] f35979e;

    public static final C4763w2[] f35980f;

    public static final C4782x2[] f35981g = new C4782x2[0];

    public static final C4325z f35982h;

    public final C4723u0 f35983a;

    public final C4763w2[] f35984b;

    public final C4782x2[] f35985c;

    public final C4801y2[] f35986d;

    static {
        C4801y2[] c4801y2Arr = new C4801y2[0];
        f35979e = c4801y2Arr;
        C4763w2[] c4763w2Arr = new C4763w2[0];
        f35980f = c4763w2Arr;
        f35982h = new C4325z(C4723u0.l0(), c4763w2Arr, new C4782x2[0], c4801y2Arr);
    }

    public C4325z(C4723u0 c4723u0, C4763w2[] c4763w2Arr, C4782x2[] c4782x2Arr, C4801y2[] c4801y2Arr) {
        this.f35983a = c4723u0 == null ? C4723u0.l0() : c4723u0;
        this.f35984b = c4763w2Arr == null ? f35980f : c4763w2Arr;
        this.f35985c = c4782x2Arr == null ? f35981g : c4782x2Arr;
        this.f35986d = c4801y2Arr == null ? f35979e : c4801y2Arr;
    }

    public static C4325z a() {
        return f35982h;
    }
}
