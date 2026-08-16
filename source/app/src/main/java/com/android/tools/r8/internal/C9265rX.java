package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import java.util.Collections;
import java.util.Map;

public final class C9265rX {

    public static final C9265rX f52055b = new C9265rX(Collections.EMPTY_MAP);

    public final Map f52056a;

    public C9265rX(Map map) {
        this.f52056a = map;
    }

    public final TW a(com.android.tools.r8.graph.E0 e02, C4516j1 c4516j1) {
        C5160Fj c5160Fj = C5160Fj.f40293b;
        return !e02.e0() ? c5160Fj : (TW) this.f52056a.getOrDefault(c4516j1.getReference(), c5160Fj);
    }
}
