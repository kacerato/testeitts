package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation;

public final class C5625Nk extends AbstractC8018k1 {
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0018. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [boolean] */
    @Override
    public final Object parsePartialFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5799Qk c5799Qk = new C5799Qk();
        c10670zv.getClass();
        C8167kv0 c8167kv0 = new C8167kv0();
        boolean z10 = false;
        char c10 = 0;
        while (true) {
            ?? r42 = 1048576;
            if (z10) {
                if ((c10 & 0) != 0) {
                    c5799Qk.f43723x = Collections.unmodifiableList(c5799Qk.f43723x);
                }
                c5799Qk.unknownFields = c8167kv0.build();
                c5799Qk.f49135b.d();
                return c5799Qk;
            }
            try {
                try {
                    try {
                        int s10 = abstractC4916Be.s();
                        switch (s10) {
                            case 0:
                                z10 = true;
                            case 10:
                                C7707i8 d10 = abstractC4916Be.d();
                                c5799Qk.f43702c = 1 | c5799Qk.f43702c;
                                c5799Qk.f43703d = d10;
                            case 66:
                                C7707i8 d11 = abstractC4916Be.d();
                                c5799Qk.f43702c |= 2;
                                c5799Qk.f43704e = d11;
                            case 72:
                                int f10 = abstractC4916Be.f();
                                if (EnumC5741Pk.a(f10) == null) {
                                    c8167kv0.a(9, f10);
                                } else {
                                    c5799Qk.f43702c |= 32;
                                    c5799Qk.f43708i = f10;
                                }
                            case 80:
                                c5799Qk.f43702c |= 4;
                                c5799Qk.f43705f = abstractC4916Be.c();
                            case 90:
                                C7707i8 d12 = abstractC4916Be.d();
                                c5799Qk.f43702c |= 64;
                                c5799Qk.f43709j = d12;
                            case 128:
                                c5799Qk.f43702c |= 128;
                                c5799Qk.f43710k = abstractC4916Be.c();
                            case 136:
                                c5799Qk.f43702c |= 256;
                                c5799Qk.f43711l = abstractC4916Be.c();
                            case 144:
                                c5799Qk.f43702c |= 512;
                                c5799Qk.f43712m = abstractC4916Be.c();
                            case 160:
                                c5799Qk.f43702c |= 8;
                                c5799Qk.f43706g = abstractC4916Be.c();
                            case 184:
                                c5799Qk.f43702c |= 2048;
                                c5799Qk.f43714o = abstractC4916Be.c();
                            case 216:
                                c5799Qk.f43702c |= 16;
                                c5799Qk.f43707h = abstractC4916Be.c();
                            case 248:
                                c5799Qk.f43702c |= 4096;
                                c5799Qk.f43715p = abstractC4916Be.c();
                            case 290:
                                C7707i8 d13 = abstractC4916Be.d();
                                c5799Qk.f43702c |= 8192;
                                c5799Qk.f43716q = d13;
                            case ParserBasicInformation.SCOPE_SIZE:
                                C7707i8 d14 = abstractC4916Be.d();
                                c5799Qk.f43702c |= 16384;
                                c5799Qk.f43717r = d14;
                            case 314:
                                C7707i8 d15 = abstractC4916Be.d();
                                c5799Qk.f43702c |= 32768;
                                c5799Qk.f43718s = d15;
                            case 322:
                                C7707i8 d16 = abstractC4916Be.d();
                                c5799Qk.f43702c |= 65536;
                                c5799Qk.f43719t = d16;
                            case 330:
                                C7707i8 d17 = abstractC4916Be.d();
                                c5799Qk.f43702c |= 131072;
                                c5799Qk.f43720u = d17;
                            case 336:
                                c5799Qk.f43702c |= 1024;
                                c5799Qk.f43713n = abstractC4916Be.c();
                            case 354:
                                C7707i8 d18 = abstractC4916Be.d();
                                c5799Qk.f43702c |= 262144;
                                c5799Qk.f43721v = d18;
                            case 362:
                                C7707i8 d19 = abstractC4916Be.d();
                                c5799Qk.f43702c |= 524288;
                                c5799Qk.f43722w = d19;
                            case 7994:
                                if ((c10 & 0) == 0) {
                                    c5799Qk.f43723x = new ArrayList();
                                    c10 = 0;
                                }
                                c5799Qk.f43723x.add(abstractC4916Be.a(C10473yl.f54135l, c10670zv));
                            default:
                                r42 = c5799Qk.parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, s10);
                                if (r42 == 0) {
                                    z10 = true;
                                }
                        }
                    } catch (IOException e10) {
                        MJ mj2 = new MJ(e10);
                        mj2.f42272b = c5799Qk;
                        throw mj2;
                    }
                } catch (MJ e11) {
                    e11.f42272b = c5799Qk;
                    throw e11;
                }
            } catch (Throwable th2) {
                if ((c10 & r42) != 0) {
                    c5799Qk.f43723x = Collections.unmodifiableList(c5799Qk.f43723x);
                }
                c5799Qk.unknownFields = c8167kv0.build();
                c5799Qk.f49135b.d();
                throw th2;
            }
        }
    }
}
