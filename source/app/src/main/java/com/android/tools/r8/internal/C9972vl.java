package com.android.tools.r8.internal;

import java.io.IOException;

public final class C9972vl extends AbstractC8018k1 {
    @Override
    public final Object parsePartialFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C10306xl c10306xl = new C10306xl();
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
                            c10306xl.f53834b = 1 | c10306xl.f53834b;
                            c10306xl.f53835c = d10;
                        } else if (s10 == 16) {
                            c10306xl.f53834b |= 2;
                            c10306xl.f53836d = abstractC4916Be.c();
                        } else if (!c10306xl.parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, s10)) {
                        }
                    }
                    z10 = true;
                } catch (MJ e10) {
                    e10.f42272b = c10306xl;
                    throw e10;
                } catch (IOException e11) {
                    MJ mj2 = new MJ(e11);
                    mj2.f42272b = c10306xl;
                    throw mj2;
                }
            } catch (Throwable th2) {
                c10306xl.unknownFields = c8167kv0.build();
                c10306xl.makeExtensionsImmutable();
                throw th2;
            }
        }
        c10306xl.unknownFields = c8167kv0.build();
        c10306xl.makeExtensionsImmutable();
        return c10306xl;
    }
}
