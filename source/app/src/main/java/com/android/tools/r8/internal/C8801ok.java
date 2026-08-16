package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

public final class C8801ok extends AbstractC8018k1 {
    @Override
    public final Object parsePartialFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C9135qk c9135qk = new C9135qk();
        c10670zv.getClass();
        C8167kv0 c8167kv0 = new C8167kv0();
        boolean z10 = false;
        char c10 = 0;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 16) {
                            c9135qk.f51869c |= 1;
                            c9135qk.f51870d = abstractC4916Be.c();
                        } else if (s10 == 24) {
                            c9135qk.f51869c |= 2;
                            c9135qk.f51871e = abstractC4916Be.c();
                        } else if (s10 == 7994) {
                            if ((c10 & 4) == 0) {
                                c9135qk.f51872f = new ArrayList();
                                c10 = 4;
                            }
                            c9135qk.f51872f.add(abstractC4916Be.a(C10473yl.f54135l, c10670zv));
                        } else if (!c9135qk.parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, s10)) {
                        }
                    }
                    z10 = true;
                } catch (MJ e10) {
                    e10.f42272b = c9135qk;
                    throw e10;
                } catch (IOException e11) {
                    MJ mj2 = new MJ(e11);
                    mj2.f42272b = c9135qk;
                    throw mj2;
                }
            } catch (Throwable th2) {
                if ((c10 & 4) != 0) {
                    c9135qk.f51872f = Collections.unmodifiableList(c9135qk.f51872f);
                }
                c9135qk.unknownFields = c8167kv0.build();
                c9135qk.f49135b.d();
                throw th2;
            }
        }
        if ((c10 & 4) != 0) {
            c9135qk.f51872f = Collections.unmodifiableList(c9135qk.f51872f);
        }
        c9135qk.unknownFields = c8167kv0.build();
        c9135qk.f49135b.d();
        return c9135qk;
    }
}
