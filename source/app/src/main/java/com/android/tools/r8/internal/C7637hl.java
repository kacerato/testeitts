package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

public final class C7637hl extends AbstractC8018k1 {
    @Override
    public final Object parsePartialFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C7969jl c7969jl = new C7969jl();
        c10670zv.getClass();
        C8167kv0 c8167kv0 = new C8167kv0();
        boolean z10 = false;
        char c10 = 0;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 10) {
                            C7707i8 d10 = abstractC4916Be.d();
                            c7969jl.f49335b = 1 | c7969jl.f49335b;
                            c7969jl.f49336c = d10;
                        } else if (s10 == 18) {
                            if ((c10 & 2) == 0) {
                                c7969jl.f49337d = new ArrayList();
                                c10 = 2;
                            }
                            c7969jl.f49337d.add(abstractC4916Be.a(C6145Wk.f45522k, c10670zv));
                        } else if (s10 == 26) {
                            C8303ll builder = (c7969jl.f49335b & 2) != 0 ? c7969jl.f49338e.toBuilder() : null;
                            C8470ml c8470ml = (C8470ml) abstractC4916Be.a(C8470ml.f50413h, c10670zv);
                            c7969jl.f49338e = c8470ml;
                            if (builder != null) {
                                builder.a(c8470ml);
                                c7969jl.f49338e = builder.m1181buildPartial();
                            }
                            c7969jl.f49335b |= 2;
                        } else if (!c7969jl.parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, s10)) {
                        }
                    }
                    z10 = true;
                } catch (MJ e10) {
                    e10.f42272b = c7969jl;
                    throw e10;
                } catch (IOException e11) {
                    MJ mj2 = new MJ(e11);
                    mj2.f42272b = c7969jl;
                    throw mj2;
                }
            } catch (Throwable th2) {
                if ((c10 & 2) != 0) {
                    c7969jl.f49337d = Collections.unmodifiableList(c7969jl.f49337d);
                }
                c7969jl.unknownFields = c8167kv0.build();
                c7969jl.makeExtensionsImmutable();
                throw th2;
            }
        }
        if ((c10 & 2) != 0) {
            c7969jl.f49337d = Collections.unmodifiableList(c7969jl.f49337d);
        }
        c7969jl.unknownFields = c8167kv0.build();
        c7969jl.makeExtensionsImmutable();
        return c7969jl;
    }
}
