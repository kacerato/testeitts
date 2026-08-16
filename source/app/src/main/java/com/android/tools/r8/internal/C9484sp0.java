package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4650q2;
import com.android.tools.r8.graph.C4724u1;
import java.util.Set;
import java.util.function.Consumer;

public final class C9484sp0 implements YR {

    public static final boolean f52460c = true;

    public final C6012Uc0 f52461a = new C6012Uc0();

    public final C9651tp0 f52462b;

    public C9484sp0(C9651tp0 c9651tp0) {
        this.f52462b = c9651tp0;
    }

    public final void a(C10340xw0 c10340xw0) {
        final boolean z10;
        if (!f52460c && this.f52461a.containsKey(c10340xw0)) {
            throw new AssertionError();
        }
        Set c10 = AbstractC5513Ll0.c();
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) c10340xw0);
        loop0: while (c6286Yx0.b()) {
            C10340xw0 c10340xw02 = (C10340xw0) c6286Yx0.c();
            c10.add(c10340xw02);
            if (this.f52461a.containsKey(c10340xw02)) {
                if (!f52460c && this.f52461a.a(c10340xw02)) {
                    throw new AssertionError();
                }
            } else if (!c10340xw02.B() && !c10340xw02.j()) {
                AbstractC10561zE abstractC10561zE = c10340xw02.f53886c;
                int r22 = abstractC10561zE.r2();
                if (r22 == 9) {
                    c6286Yx0.b((Iterable) abstractC10561zE.f54321f);
                } else if (r22 == 40) {
                    C8405mK k02 = abstractC10561zE.k0();
                    C4650q2 c4650q2 = this.f52462b.f52703d;
                    if (c4650q2.f37667s.contains(k02.B2())) {
                        c6286Yx0.b((C6286Yx0) k02.C2());
                    }
                } else if (r22 == 49) {
                    if (!f52460c && abstractC10561zE.w0().f52627k != this.f52462b.f52701b.f37857F2) {
                        throw new AssertionError();
                    }
                }
                for (AbstractC10561zE abstractC10561zE2 : c10340xw02.b0()) {
                    int r23 = abstractC10561zE2.r2();
                    if (r23 == 9) {
                        c6286Yx0.b((C6286Yx0) abstractC10561zE2.d());
                    } else if (r23 == 25) {
                        continue;
                    } else if (r23 == 33) {
                        QJ c02 = abstractC10561zE2.c0();
                        if (c02.f54321f.lastIndexOf(c10340xw02) <= 0) {
                            C4650q2 c4650q22 = this.f52462b.f52703d;
                            if (!c4650q22.f37669u.contains(c02.B2())) {
                            }
                        }
                    } else if (r23 == 38) {
                        C7405gK i02 = abstractC10561zE2.i0();
                        com.android.tools.r8.graph.A2 B22 = i02.B2();
                        C4724u1 c4724u1 = this.f52462b.f52701b;
                        if (B22 != c4724u1.f37852E4.f37359k) {
                            if (B22 != c4724u1.f37887J4.f38236A) {
                            }
                        }
                        if (i02.e1() && i02.d().A()) {
                        }
                    } else if (r23 == 40) {
                        C8405mK k03 = abstractC10561zE2.k0();
                        if (k03.f54321f.lastIndexOf(c10340xw02) <= 0) {
                            com.android.tools.r8.graph.A2 B23 = k03.B2();
                            if (this.f52462b.f52703d.f37667s.contains(B23)) {
                                if (k03.e1()) {
                                    c6286Yx0.b((C6286Yx0) k03.d());
                                }
                            } else {
                                C9651tp0 c9651tp0 = this.f52462b;
                                if (B23 != c9651tp0.f52701b.f37859F4.f38230h) {
                                    if (B23 != c9651tp0.f52703d.f37666r) {
                                    }
                                }
                                if (k03.e1() && k03.d().A()) {
                                }
                            }
                        }
                    }
                }
            }
            z10 = false;
        }
        z10 = true;
        c10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9484sp0.this.a(z10, (C10340xw0) obj);
            }
        });
    }

    public final void a(boolean z10, C10340xw0 c10340xw0) {
        this.f52461a.a(c10340xw0, z10);
    }
}
