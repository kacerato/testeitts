package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

public final class C9638tl extends AbstractC8018k1 {
    @Override
    public final Object parsePartialFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C10473yl c10473yl = new C10473yl();
        c10670zv.getClass();
        C8167kv0 c8167kv0 = new C8167kv0();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 18) {
                            if (!z11) {
                                c10473yl.f54137c = new ArrayList();
                                z11 = true;
                            }
                            c10473yl.f54137c.add(abstractC4916Be.a(C10306xl.f53833g, c10670zv));
                        } else if (s10 == 26) {
                            C7707i8 d10 = abstractC4916Be.d();
                            c10473yl.f54136b = 1 | c10473yl.f54136b;
                            c10473yl.f54138d = d10;
                        } else if (s10 == 32) {
                            c10473yl.f54136b |= 2;
                            c10473yl.f54139e = abstractC4916Be.u();
                        } else if (s10 == 40) {
                            c10473yl.f54136b |= 4;
                            c10473yl.f54140f = abstractC4916Be.k();
                        } else if (s10 == 49) {
                            c10473yl.f54136b |= 8;
                            c10473yl.f54141g = abstractC4916Be.e();
                        } else if (s10 == 58) {
                            c10473yl.f54136b |= 16;
                            c10473yl.f54142h = abstractC4916Be.d();
                        } else if (s10 == 66) {
                            C7707i8 d11 = abstractC4916Be.d();
                            c10473yl.f54136b |= 32;
                            c10473yl.f54143i = d11;
                        } else if (!c10473yl.parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, s10)) {
                        }
                    }
                    z10 = true;
                } catch (MJ e10) {
                    e10.f42272b = c10473yl;
                    throw e10;
                } catch (IOException e11) {
                    MJ mj2 = new MJ(e11);
                    mj2.f42272b = c10473yl;
                    throw mj2;
                }
            } catch (Throwable th2) {
                if (z11) {
                    c10473yl.f54137c = Collections.unmodifiableList(c10473yl.f54137c);
                }
                c10473yl.unknownFields = c8167kv0.build();
                c10473yl.makeExtensionsImmutable();
                throw th2;
            }
        }
        if (z11) {
            c10473yl.f54137c = Collections.unmodifiableList(c10473yl.f54137c);
        }
        c10473yl.unknownFields = c8167kv0.build();
        c10473yl.makeExtensionsImmutable();
        return c10473yl;
    }
}
