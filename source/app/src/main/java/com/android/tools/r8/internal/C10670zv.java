package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.Map;

public class C10670zv {

    public static volatile C10670zv f54576b;

    public static final C10670zv f54577c = new C10670zv();

    public final Map f54578a;

    public C10670zv(C10670zv c10670zv) {
        if (c10670zv == f54577c) {
            this.f54578a = Collections.EMPTY_MAP;
        } else {
            this.f54578a = Collections.unmodifiableMap(c10670zv.f54578a);
        }
    }

    public static C10670zv a() {
        C10670zv c10670zv;
        C10670zv c10670zv2 = f54576b;
        if (c10670zv2 != null) {
            return c10670zv2;
        }
        synchronized (C10670zv.class) {
            c10670zv = f54576b;
            if (c10670zv == null) {
                Class cls = AbstractC10169wv.f53640a;
                C10670zv c10670zv3 = null;
                if (cls != null) {
                    try {
                        c10670zv3 = (C10670zv) cls.getDeclaredMethod("getEmptyRegistry", null).invoke(null, null);
                    } catch (Exception unused) {
                    }
                }
                c10670zv = c10670zv3 != null ? c10670zv3 : f54577c;
                f54576b = c10670zv;
            }
        }
        return c10670zv;
    }

    public C10670zv() {
        this.f54578a = Collections.EMPTY_MAP;
    }
}
