package com.android.tools.r8.internal;

import java.io.IOException;

public final class C4872Ak extends AbstractC8018k1 {
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0015. Please report as an issue. */
    @Override
    public final Object parsePartialFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5104Ek c5104Ek = new C5104Ek();
        c10670zv.getClass();
        C8167kv0 c8167kv0 = new C8167kv0();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int s10 = abstractC4916Be.s();
                        switch (s10) {
                            case 0:
                                z10 = true;
                            case 10:
                                C7707i8 d10 = abstractC4916Be.d();
                                c5104Ek.f39993b = 1 | c5104Ek.f39993b;
                                c5104Ek.f39994c = d10;
                            case 18:
                                C7707i8 d11 = abstractC4916Be.d();
                                c5104Ek.f39993b |= 32;
                                c5104Ek.f39999h = d11;
                            case 24:
                                c5104Ek.f39993b |= 2;
                                c5104Ek.f39995d = abstractC4916Be.j();
                            case 32:
                                int f10 = abstractC4916Be.f();
                                if (EnumC4988Ck.a(f10) == null) {
                                    c8167kv0.a(4, f10);
                                } else {
                                    c5104Ek.f39993b |= 4;
                                    c5104Ek.f39996e = f10;
                                }
                            case 40:
                                int f11 = abstractC4916Be.f();
                                if (EnumC5046Dk.a(f11) == null) {
                                    c8167kv0.a(5, f11);
                                } else {
                                    c5104Ek.f39993b |= 8;
                                    c5104Ek.f39997f = f11;
                                }
                            case 50:
                                C7707i8 d12 = abstractC4916Be.d();
                                c5104Ek.f39993b |= 16;
                                c5104Ek.f39998g = d12;
                            case 58:
                                C7707i8 d13 = abstractC4916Be.d();
                                c5104Ek.f39993b |= 64;
                                c5104Ek.f40000i = d13;
                            case 66:
                                C5220Gk builder = (c5104Ek.f39993b & 512) != 0 ? c5104Ek.f40003l.toBuilder() : null;
                                C5394Jk c5394Jk = (C5394Jk) abstractC4916Be.a(C5394Jk.f41479m, c10670zv);
                                c5104Ek.f40003l = c5394Jk;
                                if (builder != null) {
                                    builder.a(c5394Jk);
                                    c5104Ek.f40003l = builder.m1181buildPartial();
                                }
                                c5104Ek.f39993b |= 512;
                            case 72:
                                c5104Ek.f39993b |= 128;
                                c5104Ek.f40001j = abstractC4916Be.j();
                            case 82:
                                C7707i8 d14 = abstractC4916Be.d();
                                c5104Ek.f39993b |= 256;
                                c5104Ek.f40002k = d14;
                            case 136:
                                c5104Ek.f39993b |= 1024;
                                c5104Ek.f40004m = abstractC4916Be.c();
                            default:
                                if (!c5104Ek.parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, s10)) {
                                    z10 = true;
                                }
                        }
                    } catch (IOException e10) {
                        MJ mj2 = new MJ(e10);
                        mj2.f42272b = c5104Ek;
                        throw mj2;
                    }
                } catch (MJ e11) {
                    e11.f42272b = c5104Ek;
                    throw e11;
                }
            } catch (Throwable th2) {
                c5104Ek.unknownFields = c8167kv0.build();
                c5104Ek.makeExtensionsImmutable();
                throw th2;
            }
        }
        c5104Ek.unknownFields = c8167kv0.build();
        c5104Ek.makeExtensionsImmutable();
        return c5104Ek;
    }
}
