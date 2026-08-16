package com.android.tools.r8.internal;

import java.io.IOException;

public final class C6637bl extends AbstractC8018k1 {
    @Override
    public final Object parsePartialFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C6970dl c6970dl = new C6970dl();
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
                            c6970dl.f47495b = 1 | c6970dl.f47495b;
                            c6970dl.f47496c = d10;
                        } else if (s10 == 18) {
                            C7303fl builder = (c6970dl.f47495b & 2) != 0 ? c6970dl.f47497d.toBuilder() : null;
                            C7470gl c7470gl = (C7470gl) abstractC4916Be.a(C7470gl.f48354f, c10670zv);
                            c6970dl.f47497d = c7470gl;
                            if (builder != null) {
                                builder.a(c7470gl);
                                c6970dl.f47497d = builder.m1181buildPartial();
                            }
                            c6970dl.f47495b |= 2;
                        } else if (!c6970dl.parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, s10)) {
                        }
                    }
                    z10 = true;
                } catch (MJ e10) {
                    e10.f42272b = c6970dl;
                    throw e10;
                } catch (IOException e11) {
                    MJ mj2 = new MJ(e11);
                    mj2.f42272b = c6970dl;
                    throw mj2;
                }
            } catch (Throwable th2) {
                c6970dl.unknownFields = c8167kv0.build();
                c6970dl.makeExtensionsImmutable();
                throw th2;
            }
        }
        c6970dl.unknownFields = c8167kv0.build();
        c6970dl.makeExtensionsImmutable();
        return c6970dl;
    }
}
