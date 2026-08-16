package com.android.tools.r8.internal;

import java.io.IOException;

public final class C8668nv0 extends AbstractC8018k1 {
    @Override
    public final Object parsePartialFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        int s10;
        C8167kv0 c8167kv0 = new C8167kv0();
        do {
            try {
                s10 = abstractC4916Be.s();
                if (s10 == 0) {
                    break;
                }
            } catch (MJ e10) {
                e10.f42272b = c8167kv0.build();
                throw e10;
            } catch (IOException e11) {
                MJ mj2 = new MJ(e11);
                mj2.f42272b = c8167kv0.build();
                throw mj2;
            }
        } while (c8167kv0.a(s10, abstractC4916Be));
        return c8167kv0.build();
    }
}
