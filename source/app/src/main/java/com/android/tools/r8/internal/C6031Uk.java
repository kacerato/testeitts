package com.android.tools.r8.internal;

import java.io.IOException;

public final class C6031Uk extends AbstractC8018k1 {
    @Override
    public final Object parsePartialFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C6145Wk c6145Wk = new C6145Wk();
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
                            c6145Wk.f45523b = 1 | c6145Wk.f45523b;
                            c6145Wk.f45524c = d10;
                        } else if (s10 == 18) {
                            C7707i8 d11 = abstractC4916Be.d();
                            c6145Wk.f45523b |= 2;
                            c6145Wk.f45525d = d11;
                        } else if (s10 == 26) {
                            C7707i8 d12 = abstractC4916Be.d();
                            c6145Wk.f45523b |= 4;
                            c6145Wk.f45526e = d12;
                        } else if (s10 == 34) {
                            C6259Yk builder = (c6145Wk.f45523b & 8) != 0 ? c6145Wk.f45527f.toBuilder() : null;
                            C6470al c6470al = (C6470al) abstractC4916Be.a(C6470al.f46618i, c10670zv);
                            c6145Wk.f45527f = c6470al;
                            if (builder != null) {
                                builder.a(c6470al);
                                c6145Wk.f45527f = builder.m1181buildPartial();
                            }
                            c6145Wk.f45523b |= 8;
                        } else if (s10 == 40) {
                            c6145Wk.f45523b |= 16;
                            c6145Wk.f45528g = abstractC4916Be.c();
                        } else if (s10 == 48) {
                            c6145Wk.f45523b |= 32;
                            c6145Wk.f45529h = abstractC4916Be.c();
                        } else if (!c6145Wk.parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, s10)) {
                        }
                    }
                    z10 = true;
                } catch (MJ e10) {
                    e10.f42272b = c6145Wk;
                    throw e10;
                } catch (IOException e11) {
                    MJ mj2 = new MJ(e11);
                    mj2.f42272b = c6145Wk;
                    throw mj2;
                }
            } catch (Throwable th2) {
                c6145Wk.unknownFields = c8167kv0.build();
                c6145Wk.makeExtensionsImmutable();
                throw th2;
            }
        }
        c6145Wk.unknownFields = c8167kv0.build();
        c6145Wk.makeExtensionsImmutable();
        return c6145Wk;
    }
}
