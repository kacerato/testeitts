package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

public final class C7800ik extends AbstractC8018k1 {
    @Override
    public final Object parsePartialFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C8634nk c8634nk = new C8634nk();
        c10670zv.getClass();
        C8167kv0 c8167kv0 = new C8167kv0();
        boolean z10 = false;
        int i10 = 0;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 10) {
                            C7707i8 d10 = abstractC4916Be.d();
                            c8634nk.f51056b = 1 | c8634nk.f51056b;
                            c8634nk.f51057c = d10;
                        } else if (s10 == 18) {
                            if ((i10 & 2) == 0) {
                                c8634nk.f51058d = new ArrayList();
                                i10 |= 2;
                            }
                            c8634nk.f51058d.add(abstractC4916Be.a(C9635tk.f52679h, c10670zv));
                        } else if (s10 == 26) {
                            C8968pk builder = (c8634nk.f51056b & 2) != 0 ? c8634nk.f51059e.toBuilder() : null;
                            C9135qk c9135qk = (C9135qk) abstractC4916Be.a(C9135qk.f51868i, c10670zv);
                            c8634nk.f51059e = c9135qk;
                            if (builder != null) {
                                builder.a(c9135qk);
                                c8634nk.f51059e = builder.m1181buildPartial();
                            }
                            c8634nk.f51056b |= 2;
                        } else if (s10 == 34) {
                            if ((i10 & 8) == 0) {
                                c8634nk.f51060f = new ArrayList();
                                i10 |= 8;
                            }
                            c8634nk.f51060f.add(abstractC4916Be.a(C8467mk.f50405g, c10670zv));
                        } else if (s10 == 42) {
                            C7707i8 d11 = abstractC4916Be.d();
                            if ((i10 & 16) == 0) {
                                c8634nk.f51061g = new C10255xR(10);
                                i10 |= 16;
                            }
                            c8634nk.f51061g.a(d11);
                        } else if (!c8634nk.parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, s10)) {
                        }
                    }
                    z10 = true;
                } catch (MJ e10) {
                    e10.f42272b = c8634nk;
                    throw e10;
                } catch (IOException e11) {
                    MJ mj2 = new MJ(e11);
                    mj2.f42272b = c8634nk;
                    throw mj2;
                }
            } catch (Throwable th2) {
                if ((i10 & 2) != 0) {
                    c8634nk.f51058d = Collections.unmodifiableList(c8634nk.f51058d);
                }
                if ((i10 & 8) != 0) {
                    c8634nk.f51060f = Collections.unmodifiableList(c8634nk.f51060f);
                }
                if ((i10 & 16) != 0) {
                    c8634nk.f51061g = c8634nk.f51061g.e();
                }
                c8634nk.unknownFields = c8167kv0.build();
                c8634nk.makeExtensionsImmutable();
                throw th2;
            }
        }
        if ((i10 & 2) != 0) {
            c8634nk.f51058d = Collections.unmodifiableList(c8634nk.f51058d);
        }
        if ((i10 & 8) != 0) {
            c8634nk.f51060f = Collections.unmodifiableList(c8634nk.f51060f);
        }
        if ((i10 & 16) != 0) {
            c8634nk.f51061g = c8634nk.f51061g.e();
        }
        c8634nk.unknownFields = c8167kv0.build();
        c8634nk.makeExtensionsImmutable();
        return c8634nk;
    }
}
