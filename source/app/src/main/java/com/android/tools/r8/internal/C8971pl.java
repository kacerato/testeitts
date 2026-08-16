package com.android.tools.r8.internal;

import java.io.IOException;

public final class C8971pl extends AbstractC8018k1 {
    @Override
    public final Object parsePartialFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C9304rl c9304rl = new C9304rl();
        c10670zv.getClass();
        C8167kv0 c8167kv0 = new C8167kv0();
        boolean z10 = false;
        int i10 = 0;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 8) {
                            if ((i10 & 1) == 0) {
                                c9304rl.f52128c = AbstractC10181wz.newIntList();
                                i10 |= 1;
                            }
                            ((DH) c9304rl.f52128c).j(abstractC4916Be.j());
                        } else if (s10 == 10) {
                            int d10 = abstractC4916Be.d(abstractC4916Be.l());
                            if ((i10 & 1) == 0 && abstractC4916Be.b() > 0) {
                                c9304rl.f52128c = AbstractC10181wz.newIntList();
                                i10 |= 1;
                            }
                            while (abstractC4916Be.b() > 0) {
                                ((DH) c9304rl.f52128c).j(abstractC4916Be.j());
                            }
                            abstractC4916Be.c(d10);
                        } else if (s10 == 16) {
                            if ((i10 & 2) == 0) {
                                c9304rl.f52130e = AbstractC10181wz.newIntList();
                                i10 |= 2;
                            }
                            ((DH) c9304rl.f52130e).j(abstractC4916Be.j());
                        } else if (s10 == 18) {
                            int d11 = abstractC4916Be.d(abstractC4916Be.l());
                            if ((i10 & 2) == 0 && abstractC4916Be.b() > 0) {
                                c9304rl.f52130e = AbstractC10181wz.newIntList();
                                i10 |= 2;
                            }
                            while (abstractC4916Be.b() > 0) {
                                ((DH) c9304rl.f52130e).j(abstractC4916Be.j());
                            }
                            abstractC4916Be.c(d11);
                        } else if (s10 == 26) {
                            C7707i8 d12 = abstractC4916Be.d();
                            c9304rl.f52127b = 1 | c9304rl.f52127b;
                            c9304rl.f52132g = d12;
                        } else if (s10 == 34) {
                            C7707i8 d13 = abstractC4916Be.d();
                            c9304rl.f52127b |= 2;
                            c9304rl.f52133h = d13;
                        } else if (s10 == 50) {
                            C7707i8 d14 = abstractC4916Be.d();
                            if ((i10 & 16) == 0) {
                                c9304rl.f52134i = new C10255xR(10);
                                i10 |= 16;
                            }
                            c9304rl.f52134i.a(d14);
                        } else if (!c9304rl.parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, s10)) {
                        }
                    }
                    z10 = true;
                } catch (MJ e10) {
                    e10.f42272b = c9304rl;
                    throw e10;
                } catch (IOException e11) {
                    MJ mj2 = new MJ(e11);
                    mj2.f42272b = c9304rl;
                    throw mj2;
                }
            } catch (Throwable th2) {
                if ((i10 & 1) != 0) {
                    ((AbstractC9353s1) c9304rl.f52128c).f52249b = false;
                }
                if ((i10 & 2) != 0) {
                    ((AbstractC9353s1) c9304rl.f52130e).f52249b = false;
                }
                if ((i10 & 16) != 0) {
                    c9304rl.f52134i = c9304rl.f52134i.e();
                }
                c9304rl.unknownFields = c8167kv0.build();
                c9304rl.makeExtensionsImmutable();
                throw th2;
            }
        }
        if ((i10 & 1) != 0) {
            ((AbstractC9353s1) c9304rl.f52128c).f52249b = false;
        }
        if ((i10 & 2) != 0) {
            ((AbstractC9353s1) c9304rl.f52130e).f52249b = false;
        }
        if ((i10 & 16) != 0) {
            c9304rl.f52134i = c9304rl.f52134i.e();
        }
        c9304rl.unknownFields = c8167kv0.build();
        c9304rl.makeExtensionsImmutable();
        return c9304rl;
    }
}
