package com.android.tools.r8.internal;

import java.io.IOException;

public final class C9301rk extends AbstractC8018k1 {
    @Override
    public final Object parsePartialFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C9635tk c9635tk = new C9635tk();
        c10670zv.getClass();
        C8167kv0 c8167kv0 = new C8167kv0();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 10) {
                            C7707i8 d10 = abstractC4916Be.d();
                            c9635tk.f52680b = 1 | c9635tk.f52680b;
                            c9635tk.f52681c = d10;
                        } else if (s10 == 16) {
                            c9635tk.f52680b |= 2;
                            c9635tk.f52682d = abstractC4916Be.j();
                        } else if (s10 == 26) {
                            C9969vk builder = (c9635tk.f52680b & 4) != 0 ? c9635tk.f52683e.toBuilder() : null;
                            C10136wk c10136wk = (C10136wk) abstractC4916Be.a(C10136wk.f53588h, c10670zv);
                            c9635tk.f52683e = c10136wk;
                            if (builder != null) {
                                builder.a(c10136wk);
                                c9635tk.f52683e = builder.m1181buildPartial();
                            }
                            c9635tk.f52680b |= 4;
                        } else if (!c9635tk.parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, s10)) {
                        }
                    }
                    z10 = true;
                } catch (MJ e10) {
                    e10.f42272b = c9635tk;
                    throw e10;
                } catch (IOException e11) {
                    MJ mj2 = new MJ(e11);
                    mj2.f42272b = c9635tk;
                    throw mj2;
                }
            } catch (Throwable th2) {
                c9635tk.unknownFields = c8167kv0.build();
                c9635tk.makeExtensionsImmutable();
                throw th2;
            }
        }
        c9635tk.unknownFields = c8167kv0.build();
        c9635tk.makeExtensionsImmutable();
        return c9635tk;
    }
}
