package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C9875v8;
import java.util.Set;
import java.util.function.Consumer;

public class C5128Ew {

    public static final boolean f40051b = true;

    public final C4798y f40052a;

    public C5128Ew(C4798y c4798y) {
        this.f40052a = c4798y;
    }

    public final void a(AbstractC7670hw abstractC7670hw, C9875v8.a aVar, com.android.tools.r8.graph.H5 h52) {
        if (abstractC7670hw instanceof C5576Mo0) {
            C10340xw0 d10 = ((C5576Mo0) abstractC7670hw).d();
            C6286Yx0 c6286Yx0 = new C6286Yx0(2);
            final Set set = null;
            if (!d10.y() && !d10.B()) {
                c6286Yx0.b((Iterable) d10.b0());
                Set c10 = AbstractC5513Ll0.c();
                loop0: while (true) {
                    if (!c6286Yx0.b()) {
                        set = c10;
                        break;
                    }
                    AbstractC10561zE abstractC10561zE = (AbstractC10561zE) c6286Yx0.c();
                    abstractC10561zE.getClass();
                    if (abstractC10561zE instanceof C4) {
                        C10340xw0 d11 = abstractC10561zE.d();
                        if (d11.y() || d11.B()) {
                            break;
                        } else {
                            c6286Yx0.b((Iterable) d11.b0());
                        }
                    } else {
                        if (!abstractC10561zE.Q1()) {
                            break;
                        }
                        WJ f02 = abstractC10561zE.f0();
                        int i10 = 1;
                        while (true) {
                            if (i10 < f02.f54321f.size()) {
                                if (f02.b(i10).i() == d10) {
                                    break loop0;
                                } else {
                                    i10++;
                                }
                            } else {
                                if (!f40051b && f02.C2().i() != d10) {
                                    throw new AssertionError();
                                }
                                com.android.tools.r8.graph.H0 e10 = f02.e(this.f40052a, h52);
                                boolean z10 = com.android.tools.r8.graph.H0.f36361e;
                                com.android.tools.r8.graph.H5 H10 = e10 != null ? e10.H() : null;
                                if (H10 == null) {
                                    break;
                                } else {
                                    c10.add(H10.getReference());
                                }
                            }
                        }
                    }
                }
            }
            if (set == null || set.isEmpty()) {
                return;
            }
            aVar.a(abstractC7670hw, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C5128Ew.a(Set.this, (C9207r8) obj);
                }
            });
        }
    }

    public static void a(Set set, C9207r8 c9207r8) {
        c9207r8.getClass();
        boolean z10 = C9207r8.f51978c;
        if (!z10 && set == null) {
            throw new AssertionError();
        }
        if (!z10 && set.isEmpty()) {
            throw new AssertionError();
        }
        c9207r8.f51979a = set;
    }
}
