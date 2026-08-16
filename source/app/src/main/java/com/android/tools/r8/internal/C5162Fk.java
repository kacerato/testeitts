package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

public final class C5162Fk extends AbstractC8018k1 {
    @Override
    public final Object parsePartialFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5394Jk c5394Jk = new C5394Jk();
        c10670zv.getClass();
        C8167kv0 c8167kv0 = new C8167kv0();
        boolean z10 = false;
        char c10 = 0;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 8) {
                            int f10 = abstractC4916Be.f();
                            if (EnumC5278Hk.a(f10) == null) {
                                c8167kv0.a(1, f10);
                            } else {
                                c5394Jk.f41480c = 1 | c5394Jk.f41480c;
                                c5394Jk.f41481d = f10;
                            }
                        } else if (s10 == 16) {
                            c5394Jk.f41480c |= 2;
                            c5394Jk.f41482e = abstractC4916Be.c();
                        } else if (s10 == 24) {
                            c5394Jk.f41480c |= 16;
                            c5394Jk.f41485h = abstractC4916Be.c();
                        } else if (s10 == 40) {
                            c5394Jk.f41480c |= 8;
                            c5394Jk.f41484g = abstractC4916Be.c();
                        } else if (s10 == 48) {
                            int f11 = abstractC4916Be.f();
                            if (EnumC5336Ik.a(f11) == null) {
                                c8167kv0.a(6, f11);
                            } else {
                                c5394Jk.f41480c |= 4;
                                c5394Jk.f41483f = f11;
                            }
                        } else if (s10 == 80) {
                            c5394Jk.f41480c |= 32;
                            c5394Jk.f41486i = abstractC4916Be.c();
                        } else if (s10 == 7994) {
                            if ((c10 & '@') == 0) {
                                c5394Jk.f41487j = new ArrayList();
                                c10 = '@';
                            }
                            c5394Jk.f41487j.add(abstractC4916Be.a(C10473yl.f54135l, c10670zv));
                        } else if (!c5394Jk.parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, s10)) {
                        }
                    }
                    z10 = true;
                } catch (MJ e10) {
                    e10.f42272b = c5394Jk;
                    throw e10;
                } catch (IOException e11) {
                    MJ mj2 = new MJ(e11);
                    mj2.f42272b = c5394Jk;
                    throw mj2;
                }
            } catch (Throwable th2) {
                if ((c10 & '@') != 0) {
                    c5394Jk.f41487j = Collections.unmodifiableList(c5394Jk.f41487j);
                }
                c5394Jk.unknownFields = c8167kv0.build();
                c5394Jk.f49135b.d();
                throw th2;
            }
        }
        if ((c10 & '@') != 0) {
            c5394Jk.f41487j = Collections.unmodifiableList(c5394Jk.f41487j);
        }
        c5394Jk.unknownFields = c8167kv0.build();
        c5394Jk.f49135b.d();
        return c5394Jk;
    }
}
