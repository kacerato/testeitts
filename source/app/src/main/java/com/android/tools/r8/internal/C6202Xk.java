package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

public final class C6202Xk extends AbstractC8018k1 {
    @Override
    public final Object parsePartialFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C6470al c6470al = new C6470al();
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
                            c6470al.f46619c |= 1;
                            c6470al.f46620d = abstractC4916Be.c();
                        } else if (s10 == 272) {
                            int f10 = abstractC4916Be.f();
                            if (EnumC6316Zk.a(f10) == null) {
                                c8167kv0.a(34, f10);
                            } else {
                                c6470al.f46619c |= 2;
                                c6470al.f46621e = f10;
                            }
                        } else if (s10 == 7994) {
                            if ((c10 & 4) == 0) {
                                c6470al.f46622f = new ArrayList();
                                c10 = 4;
                            }
                            c6470al.f46622f.add(abstractC4916Be.a(C10473yl.f54135l, c10670zv));
                        } else if (!c6470al.parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, s10)) {
                        }
                    }
                    z10 = true;
                } catch (MJ e10) {
                    e10.f42272b = c6470al;
                    throw e10;
                } catch (IOException e11) {
                    MJ mj2 = new MJ(e11);
                    mj2.f42272b = c6470al;
                    throw mj2;
                }
            } catch (Throwable th2) {
                if ((c10 & 4) != 0) {
                    c6470al.f46622f = Collections.unmodifiableList(c6470al.f46622f);
                }
                c6470al.unknownFields = c8167kv0.build();
                c6470al.f49135b.d();
                throw th2;
            }
        }
        if ((c10 & 4) != 0) {
            c6470al.f46622f = Collections.unmodifiableList(c6470al.f46622f);
        }
        c6470al.unknownFields = c8167kv0.build();
        c6470al.f49135b.d();
        return c6470al;
    }
}
