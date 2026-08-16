package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

public final class C7136el extends AbstractC8018k1 {
    @Override
    public final Object parsePartialFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C7470gl c7470gl = new C7470gl();
        c10670zv.getClass();
        C8167kv0 c8167kv0 = new C8167kv0();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int s10 = abstractC4916Be.s();
                        if (s10 != 0) {
                            if (s10 == 7994) {
                                if (!z11) {
                                    c7470gl.f48355c = new ArrayList();
                                    z11 = true;
                                }
                                c7470gl.f48355c.add(abstractC4916Be.a(C10473yl.f54135l, c10670zv));
                            } else if (!c7470gl.parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, s10)) {
                            }
                        }
                        z10 = true;
                    } catch (IOException e10) {
                        MJ mj2 = new MJ(e10);
                        mj2.f42272b = c7470gl;
                        throw mj2;
                    }
                } catch (MJ e11) {
                    e11.f42272b = c7470gl;
                    throw e11;
                }
            } catch (Throwable th2) {
                if (z11) {
                    c7470gl.f48355c = Collections.unmodifiableList(c7470gl.f48355c);
                }
                c7470gl.unknownFields = c8167kv0.build();
                c7470gl.f49135b.d();
                throw th2;
            }
        }
        if (z11) {
            c7470gl.f48355c = Collections.unmodifiableList(c7470gl.f48355c);
        }
        c7470gl.unknownFields = c8167kv0.build();
        c7470gl.f49135b.d();
        return c7470gl;
    }
}
