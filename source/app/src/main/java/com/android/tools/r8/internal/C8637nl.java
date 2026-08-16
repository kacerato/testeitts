package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

public final class C8637nl extends AbstractC8018k1 {
    @Override
    public final Object parsePartialFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C9471sl c9471sl = new C9471sl();
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
                            if (s10 == 10) {
                                if (!z11) {
                                    c9471sl.f52448b = new ArrayList();
                                    z11 = true;
                                }
                                c9471sl.f52448b.add(abstractC4916Be.a(C9304rl.f52126l, c10670zv));
                            } else if (!c9471sl.parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, s10)) {
                            }
                        }
                        z10 = true;
                    } catch (IOException e10) {
                        MJ mj2 = new MJ(e10);
                        mj2.f42272b = c9471sl;
                        throw mj2;
                    }
                } catch (MJ e11) {
                    e11.f42272b = c9471sl;
                    throw e11;
                }
            } catch (Throwable th2) {
                if (z11) {
                    c9471sl.f52448b = Collections.unmodifiableList(c9471sl.f52448b);
                }
                c9471sl.unknownFields = c8167kv0.build();
                c9471sl.makeExtensionsImmutable();
                throw th2;
            }
        }
        if (z11) {
            c9471sl.f52448b = Collections.unmodifiableList(c9471sl.f52448b);
        }
        c9471sl.unknownFields = c8167kv0.build();
        c9471sl.makeExtensionsImmutable();
        return c9471sl;
    }
}
