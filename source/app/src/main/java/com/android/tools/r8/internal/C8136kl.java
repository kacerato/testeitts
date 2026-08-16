package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

public final class C8136kl extends AbstractC8018k1 {
    @Override
    public final Object parsePartialFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C8470ml c8470ml = new C8470ml();
        c10670zv.getClass();
        C8167kv0 c8167kv0 = new C8167kv0();
        boolean z10 = false;
        char c10 = 0;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 264) {
                            c8470ml.f50414c |= 1;
                            c8470ml.f50415d = abstractC4916Be.c();
                        } else if (s10 == 7994) {
                            if ((c10 & 2) == 0) {
                                c8470ml.f50416e = new ArrayList();
                                c10 = 2;
                            }
                            c8470ml.f50416e.add(abstractC4916Be.a(C10473yl.f54135l, c10670zv));
                        } else if (!c8470ml.parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, s10)) {
                        }
                    }
                    z10 = true;
                } catch (MJ e10) {
                    e10.f42272b = c8470ml;
                    throw e10;
                } catch (IOException e11) {
                    MJ mj2 = new MJ(e11);
                    mj2.f42272b = c8470ml;
                    throw mj2;
                }
            } catch (Throwable th2) {
                if ((c10 & 2) != 0) {
                    c8470ml.f50416e = Collections.unmodifiableList(c8470ml.f50416e);
                }
                c8470ml.unknownFields = c8167kv0.build();
                c8470ml.f49135b.d();
                throw th2;
            }
        }
        if ((c10 & 2) != 0) {
            c8470ml.f50416e = Collections.unmodifiableList(c8470ml.f50416e);
        }
        c8470ml.unknownFields = c8167kv0.build();
        c8470ml.f49135b.d();
        return c8470ml;
    }
}
