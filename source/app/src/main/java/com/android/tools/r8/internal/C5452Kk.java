package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import w2.C15883c;

public final class C5452Kk extends AbstractC8018k1 {
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0018. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v9 */
    @Override
    public final Object parsePartialFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5567Mk c5567Mk = new C5567Mk();
        c10670zv.getClass();
        C8167kv0 c8167kv0 = new C8167kv0();
        boolean z10 = false;
        char c10 = 0;
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
                                c5567Mk.f42362b = 1 | c5567Mk.f42362b;
                                c5567Mk.f42363c = d10;
                            case 18:
                                C7707i8 d11 = abstractC4916Be.d();
                                c5567Mk.f42362b |= 2;
                                c5567Mk.f42364d = d11;
                            case 26:
                                C7707i8 d12 = abstractC4916Be.d();
                                int i10 = (c10 == true ? 1 : 0) & 4;
                                c10 = c10;
                                if (i10 == 0) {
                                    c5567Mk.f42365e = new C10255xR(10);
                                    c10 = (c10 == true ? 1 : 0) | 4;
                                }
                                c5567Mk.f42365e.a(d12);
                            case 34:
                                int i11 = (c10 == true ? 1 : 0) & 32;
                                c10 = c10;
                                if (i11 == 0) {
                                    c5567Mk.f42368h = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | C15883c.f126249O;
                                }
                                c5567Mk.f42368h.add(abstractC4916Be.a(C7634hk.f48690o, c10670zv));
                            case 42:
                                int i12 = (c10 == true ? 1 : 0) & 64;
                                c10 = c10;
                                if (i12 == 0) {
                                    c5567Mk.f42369i = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | '@';
                                }
                                c5567Mk.f42369i.add(abstractC4916Be.a(C8634nk.f51055j, c10670zv));
                            case 50:
                                int i13 = (c10 == true ? 1 : 0) & 128;
                                c10 = c10;
                                if (i13 == 0) {
                                    c5567Mk.f42370j = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | '\u0080';
                                }
                                c5567Mk.f42370j.add(abstractC4916Be.a(C7969jl.f49334h, c10670zv));
                            case 58:
                                int i14 = (c10 == true ? 1 : 0) & 256;
                                c10 = c10;
                                if (i14 == 0) {
                                    c5567Mk.f42371k = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | '\u0100';
                                }
                                c5567Mk.f42371k.add(abstractC4916Be.a(C5104Ek.f39992p, c10670zv));
                            case 66:
                                C5683Ok builder = (c5567Mk.f42362b & 4) != 0 ? c5567Mk.f42372l.toBuilder() : null;
                                C5799Qk c5799Qk = (C5799Qk) abstractC4916Be.a(C5799Qk.f43700A, c10670zv);
                                c5567Mk.f42372l = c5799Qk;
                                if (builder != null) {
                                    builder.a(c5799Qk);
                                    c5567Mk.f42372l = builder.m1181buildPartial();
                                }
                                c5567Mk.f42362b |= 4;
                            case 74:
                                C8804ol builder2 = (c5567Mk.f42362b & 8) != 0 ? c5567Mk.f42373m.toBuilder() : null;
                                C9471sl c9471sl = (C9471sl) abstractC4916Be.a(C9471sl.f52447e, c10670zv);
                                c5567Mk.f42373m = c9471sl;
                                if (builder2 != null) {
                                    builder2.a(c9471sl);
                                    c5567Mk.f42373m = builder2.m1181buildPartial();
                                }
                                c5567Mk.f42362b |= 8;
                            case 80:
                                int i15 = (c10 == true ? 1 : 0) & 8;
                                c10 = c10;
                                if (i15 == 0) {
                                    c5567Mk.f42366f = AbstractC10181wz.newIntList();
                                    c10 = (c10 == true ? 1 : 0) | '\b';
                                }
                                ((DH) c5567Mk.f42366f).j(abstractC4916Be.j());
                            case 82:
                                int d13 = abstractC4916Be.d(abstractC4916Be.l());
                                int i16 = (c10 == true ? 1 : 0) & 8;
                                c10 = c10;
                                if (i16 == 0) {
                                    c10 = c10;
                                    if (abstractC4916Be.b() > 0) {
                                        c5567Mk.f42366f = AbstractC10181wz.newIntList();
                                        c10 = (c10 == true ? 1 : 0) | '\b';
                                    }
                                }
                                while (abstractC4916Be.b() > 0) {
                                    ((DH) c5567Mk.f42366f).j(abstractC4916Be.j());
                                }
                                abstractC4916Be.c(d13);
                            case 88:
                                int i17 = (c10 == true ? 1 : 0) & 16;
                                c10 = c10;
                                if (i17 == 0) {
                                    c5567Mk.f42367g = AbstractC10181wz.newIntList();
                                    c10 = (c10 == true ? 1 : 0) | 16;
                                }
                                ((DH) c5567Mk.f42367g).j(abstractC4916Be.j());
                            case 90:
                                int d14 = abstractC4916Be.d(abstractC4916Be.l());
                                int i18 = (c10 == true ? 1 : 0) & 16;
                                c10 = c10;
                                if (i18 == 0) {
                                    c10 = c10;
                                    if (abstractC4916Be.b() > 0) {
                                        c5567Mk.f42367g = AbstractC10181wz.newIntList();
                                        c10 = (c10 == true ? 1 : 0) | 16;
                                    }
                                }
                                while (abstractC4916Be.b() > 0) {
                                    ((DH) c5567Mk.f42367g).j(abstractC4916Be.j());
                                }
                                abstractC4916Be.c(d14);
                            case 98:
                                C7707i8 d15 = abstractC4916Be.d();
                                c5567Mk.f42362b |= 16;
                                c5567Mk.f42374n = d15;
                            default:
                                if (!c5567Mk.parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, s10)) {
                                    z10 = true;
                                }
                        }
                    } catch (IOException e10) {
                        MJ mj2 = new MJ(e10);
                        mj2.f42272b = c5567Mk;
                        throw mj2;
                    }
                } catch (MJ e11) {
                    e11.f42272b = c5567Mk;
                    throw e11;
                }
            } catch (Throwable th2) {
                if (((c10 == true ? 1 : 0) & 4) != 0) {
                    c5567Mk.f42365e = c5567Mk.f42365e.e();
                }
                if (((c10 == true ? 1 : 0) & 32) != 0) {
                    c5567Mk.f42368h = Collections.unmodifiableList(c5567Mk.f42368h);
                }
                if (((c10 == true ? 1 : 0) & 64) != 0) {
                    c5567Mk.f42369i = Collections.unmodifiableList(c5567Mk.f42369i);
                }
                if (((c10 == true ? 1 : 0) & 128) != 0) {
                    c5567Mk.f42370j = Collections.unmodifiableList(c5567Mk.f42370j);
                }
                if (((c10 == true ? 1 : 0) & 256) != 0) {
                    c5567Mk.f42371k = Collections.unmodifiableList(c5567Mk.f42371k);
                }
                if (((c10 == true ? 1 : 0) & 8) != 0) {
                    ((AbstractC9353s1) c5567Mk.f42366f).f52249b = false;
                }
                if (((c10 == true ? 1 : 0) & 16) != 0) {
                    ((AbstractC9353s1) c5567Mk.f42367g).f52249b = false;
                }
                c5567Mk.unknownFields = c8167kv0.build();
                c5567Mk.makeExtensionsImmutable();
                throw th2;
            }
        }
        if (((c10 == true ? 1 : 0) & 4) != 0) {
            c5567Mk.f42365e = c5567Mk.f42365e.e();
        }
        if (((c10 == true ? 1 : 0) & 32) != 0) {
            c5567Mk.f42368h = Collections.unmodifiableList(c5567Mk.f42368h);
        }
        if (((c10 == true ? 1 : 0) & 64) != 0) {
            c5567Mk.f42369i = Collections.unmodifiableList(c5567Mk.f42369i);
        }
        if (((c10 == true ? 1 : 0) & 128) != 0) {
            c5567Mk.f42370j = Collections.unmodifiableList(c5567Mk.f42370j);
        }
        if (((c10 == true ? 1 : 0) & 256) != 0) {
            c5567Mk.f42371k = Collections.unmodifiableList(c5567Mk.f42371k);
        }
        if (((c10 == true ? 1 : 0) & 8) != 0) {
            ((AbstractC9353s1) c5567Mk.f42366f).f52249b = false;
        }
        if (((c10 == true ? 1 : 0) & 16) != 0) {
            ((AbstractC9353s1) c5567Mk.f42367g).f52249b = false;
        }
        c5567Mk.unknownFields = c8167kv0.build();
        c5567Mk.makeExtensionsImmutable();
        return c5567Mk;
    }
}
