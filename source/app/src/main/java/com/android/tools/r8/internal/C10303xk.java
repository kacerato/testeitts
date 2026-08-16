package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

public final class C10303xk extends AbstractC8018k1 {
    @Override
    public final Object parsePartialFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C10637zk c10637zk = new C10637zk();
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
                                    c10637zk.f54479c = new ArrayList();
                                    z11 = true;
                                }
                                c10637zk.f54479c.add(abstractC4916Be.a(C10473yl.f54135l, c10670zv));
                            } else if (!c10637zk.parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, s10)) {
                            }
                        }
                        z10 = true;
                    } catch (IOException e10) {
                        MJ mj2 = new MJ(e10);
                        mj2.f42272b = c10637zk;
                        throw mj2;
                    }
                } catch (MJ e11) {
                    e11.f42272b = c10637zk;
                    throw e11;
                }
            } catch (Throwable th2) {
                if (z11) {
                    c10637zk.f54479c = Collections.unmodifiableList(c10637zk.f54479c);
                }
                c10637zk.unknownFields = c8167kv0.build();
                c10637zk.f49135b.d();
                throw th2;
            }
        }
        if (z11) {
            c10637zk.f54479c = Collections.unmodifiableList(c10637zk.f54479c);
        }
        c10637zk.unknownFields = c8167kv0.build();
        c10637zk.f49135b.d();
        return c10637zk;
    }
}
