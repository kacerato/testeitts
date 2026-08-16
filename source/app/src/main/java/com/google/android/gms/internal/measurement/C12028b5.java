package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class C12028b5 {

    public static volatile boolean f62232b = false;

    public static volatile C12028b5 f62233c;

    public static final C12028b5 f62234d = new C12028b5(true);

    public static final int f62235e = 0;

    public final Map f62236a;

    public C12028b5() {
        this.f62236a = new HashMap();
    }

    public static C12028b5 a() {
        C12028b5 c12028b5 = f62233c;
        if (c12028b5 != null) {
            return c12028b5;
        }
        synchronized (C12028b5.class) {
            try {
                C12028b5 c12028b52 = f62233c;
                if (c12028b52 != null) {
                    return c12028b52;
                }
                int i10 = C12056e6.f62268d;
                C12028b5 b10 = AbstractC12100j5.b(C12028b5.class);
                f62233c = b10;
                return b10;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final C12154p5 b(W5 w52, int i10) {
        return (C12154p5) this.f62236a.get(new C12019a5(w52, i10));
    }

    public C12028b5(boolean z10) {
        this.f62236a = Collections.emptyMap();
    }
}
