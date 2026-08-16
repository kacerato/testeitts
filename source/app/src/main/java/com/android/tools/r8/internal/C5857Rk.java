package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

public final class C5857Rk extends AbstractC8018k1 {
    @Override
    public final Object parsePartialFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5973Tk c5973Tk = new C5973Tk();
        c10670zv.getClass();
        C8167kv0 c8167kv0 = new C8167kv0();
        boolean z10 = false;
        char c10 = 0;
        while (!z10) {
            try {
                try {
                    try {
                        int s10 = abstractC4916Be.s();
                        if (s10 != 0) {
                            if (s10 == 8) {
                                c5973Tk.f44565c |= 1;
                                c5973Tk.f44566d = abstractC4916Be.c();
                            } else if (s10 == 16) {
                                c5973Tk.f44565c |= 2;
                                c5973Tk.f44567e = abstractC4916Be.c();
                            } else if (s10 == 24) {
                                c5973Tk.f44565c |= 4;
                                c5973Tk.f44568f = abstractC4916Be.c();
                            } else if (s10 == 56) {
                                c5973Tk.f44565c |= 8;
                                c5973Tk.f44569g = abstractC4916Be.c();
                            } else if (s10 == 7994) {
                                if ((c10 & 16) == 0) {
                                    c5973Tk.f44570h = new ArrayList();
                                    c10 = 16;
                                }
                                c5973Tk.f44570h.add(abstractC4916Be.a(C10473yl.f54135l, c10670zv));
                            } else if (!c5973Tk.parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, s10)) {
                            }
                        }
                        z10 = true;
                    } catch (IOException e10) {
                        MJ mj2 = new MJ(e10);
                        mj2.f42272b = c5973Tk;
                        throw mj2;
                    }
                } catch (MJ e11) {
                    e11.f42272b = c5973Tk;
                    throw e11;
                }
            } catch (Throwable th2) {
                if ((c10 & 16) != 0) {
                    c5973Tk.f44570h = Collections.unmodifiableList(c5973Tk.f44570h);
                }
                c5973Tk.unknownFields = c8167kv0.build();
                c5973Tk.f49135b.d();
                throw th2;
            }
        }
        if ((c10 & 16) != 0) {
            c5973Tk.f44570h = Collections.unmodifiableList(c5973Tk.f44570h);
        }
        c5973Tk.unknownFields = c8167kv0.build();
        c5973Tk.f49135b.d();
        return c5973Tk;
    }
}
