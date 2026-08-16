package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import java.util.TreeMap;

public final class TD {

    public static final boolean f44419b = true;

    public final TreeMap f44420a = new TreeMap(new C8239lK0());

    public final TD a(C4554l1 c4554l1, SD sd2) {
        if (!f44419b && this.f44420a.containsKey(c4554l1)) {
            throw new AssertionError();
        }
        if (!sd2.isUnknown()) {
            this.f44420a.put(c4554l1, sd2);
        }
        return this;
    }
}
