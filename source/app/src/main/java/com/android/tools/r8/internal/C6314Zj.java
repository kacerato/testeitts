package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

public final class C6314Zj extends AbstractC8018k1 {
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0016. Please report as an issue. */
    @Override
    public final Object parsePartialFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C7634hk c7634hk = new C7634hk();
        c10670zv.getClass();
        C8167kv0 c8167kv0 = new C8167kv0();
        boolean z10 = false;
        int i10 = 0;
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
                                c7634hk.f48691b = 1 | c7634hk.f48691b;
                                c7634hk.f48692c = d10;
                            case 18:
                                if ((i10 & 2) == 0) {
                                    c7634hk.f48693d = new ArrayList();
                                    i10 |= 2;
                                }
                                c7634hk.f48693d.add(abstractC4916Be.a(C5104Ek.f39992p, c10670zv));
                            case 26:
                                if ((i10 & 8) == 0) {
                                    c7634hk.f48695f = new ArrayList();
                                    i10 |= 8;
                                }
                                c7634hk.f48695f.add(abstractC4916Be.a(C7634hk.f48690o, c10670zv));
                            case 34:
                                if ((i10 & 16) == 0) {
                                    c7634hk.f48696g = new ArrayList();
                                    i10 |= 16;
                                }
                                c7634hk.f48696g.add(abstractC4916Be.a(C8634nk.f51055j, c10670zv));
                            case 42:
                                if ((i10 & 32) == 0) {
                                    c7634hk.f48697h = new ArrayList();
                                    i10 |= 32;
                                }
                                c7634hk.f48697h.add(abstractC4916Be.a(C6967dk.f47485h, c10670zv));
                            case 50:
                                if ((i10 & 4) == 0) {
                                    c7634hk.f48694e = new ArrayList();
                                    i10 |= 4;
                                }
                                c7634hk.f48694e.add(abstractC4916Be.a(C5104Ek.f39992p, c10670zv));
                            case 58:
                                C5915Sk builder = (c7634hk.f48691b & 2) != 0 ? c7634hk.f48699j.toBuilder() : null;
                                C5973Tk c5973Tk = (C5973Tk) abstractC4916Be.a(C5973Tk.f44564k, c10670zv);
                                c7634hk.f48699j = c5973Tk;
                                if (builder != null) {
                                    builder.a(c5973Tk);
                                    c7634hk.f48699j = builder.m1181buildPartial();
                                }
                                c7634hk.f48691b |= 2;
                            case 66:
                                if ((i10 & 64) == 0) {
                                    c7634hk.f48698i = new ArrayList();
                                    i10 |= 64;
                                }
                                c7634hk.f48698i.add(abstractC4916Be.a(C6970dl.f47494g, c10670zv));
                            case 74:
                                if ((i10 & 256) == 0) {
                                    c7634hk.f48700k = new ArrayList();
                                    i10 |= 256;
                                }
                                c7634hk.f48700k.add(abstractC4916Be.a(C7467gk.f48346g, c10670zv));
                            case 82:
                                C7707i8 d11 = abstractC4916Be.d();
                                if ((i10 & 512) == 0) {
                                    c7634hk.f48701l = new C10255xR(10);
                                    i10 |= 512;
                                }
                                c7634hk.f48701l.a(d11);
                            default:
                                if (!c7634hk.parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, s10)) {
                                    z10 = true;
                                }
                        }
                    } catch (IOException e10) {
                        MJ mj2 = new MJ(e10);
                        mj2.f42272b = c7634hk;
                        throw mj2;
                    }
                } catch (MJ e11) {
                    e11.f42272b = c7634hk;
                    throw e11;
                }
            } catch (Throwable th2) {
                if ((i10 & 2) != 0) {
                    c7634hk.f48693d = Collections.unmodifiableList(c7634hk.f48693d);
                }
                if ((i10 & 8) != 0) {
                    c7634hk.f48695f = Collections.unmodifiableList(c7634hk.f48695f);
                }
                if ((i10 & 16) != 0) {
                    c7634hk.f48696g = Collections.unmodifiableList(c7634hk.f48696g);
                }
                if ((i10 & 32) != 0) {
                    c7634hk.f48697h = Collections.unmodifiableList(c7634hk.f48697h);
                }
                if ((i10 & 4) != 0) {
                    c7634hk.f48694e = Collections.unmodifiableList(c7634hk.f48694e);
                }
                if ((i10 & 64) != 0) {
                    c7634hk.f48698i = Collections.unmodifiableList(c7634hk.f48698i);
                }
                if ((i10 & 256) != 0) {
                    c7634hk.f48700k = Collections.unmodifiableList(c7634hk.f48700k);
                }
                if ((i10 & 512) != 0) {
                    c7634hk.f48701l = c7634hk.f48701l.e();
                }
                c7634hk.unknownFields = c8167kv0.build();
                c7634hk.makeExtensionsImmutable();
                throw th2;
            }
        }
        if ((i10 & 2) != 0) {
            c7634hk.f48693d = Collections.unmodifiableList(c7634hk.f48693d);
        }
        if ((i10 & 8) != 0) {
            c7634hk.f48695f = Collections.unmodifiableList(c7634hk.f48695f);
        }
        if ((i10 & 16) != 0) {
            c7634hk.f48696g = Collections.unmodifiableList(c7634hk.f48696g);
        }
        if ((i10 & 32) != 0) {
            c7634hk.f48697h = Collections.unmodifiableList(c7634hk.f48697h);
        }
        if ((i10 & 4) != 0) {
            c7634hk.f48694e = Collections.unmodifiableList(c7634hk.f48694e);
        }
        if ((i10 & 64) != 0) {
            c7634hk.f48698i = Collections.unmodifiableList(c7634hk.f48698i);
        }
        if ((i10 & 256) != 0) {
            c7634hk.f48700k = Collections.unmodifiableList(c7634hk.f48700k);
        }
        if ((i10 & 512) != 0) {
            c7634hk.f48701l = c7634hk.f48701l.e();
        }
        c7634hk.unknownFields = c8167kv0.build();
        c7634hk.makeExtensionsImmutable();
        return c7634hk;
    }
}
