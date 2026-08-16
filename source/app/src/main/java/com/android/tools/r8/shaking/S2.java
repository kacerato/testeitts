package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.internal.AbstractC7552hC;
import java.util.function.BooleanSupplier;
import w2.C15883c;

public class S2 {

    public static final int f56963b = 7;

    public static final AbstractC7552hC f56964c = AbstractC7552hC.a("public", "private", "protected", "static", "final", "abstract", "volatile", "transient", "synchronized", "native", "strictfp", "synthetic", "bridge", "constructor");

    public int f56965a = 0;

    public final AbstractC7552hC a() {
        return AbstractC7552hC.a(new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return S2.this.i();
            }
        }, new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return S2.this.g();
            }
        }, new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return S2.this.h();
            }
        }, new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return S2.this.j();
            }
        }, new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return S2.this.e();
            }
        }, new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return S2.this.b();
            }
        }, new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return S2.this.o();
            }
        }, new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return S2.this.n();
            }
        }, new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return S2.this.l();
            }
        }, new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return S2.this.f();
            }
        }, new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return S2.this.k();
            }
        }, new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return S2.this.m();
            }
        }, new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return S2.this.c();
            }
        }, new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return S2.this.d();
            }
        });
    }

    public boolean b(AbstractC4458g abstractC4458g) {
        return (abstractC4458g.f37196b & this.f56965a) == 0;
    }

    public final boolean c() {
        return a(64);
    }

    public final boolean d() {
        return a(65536);
    }

    public boolean e() {
        return a(16);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof S2) && this.f56965a == ((S2) obj).f56965a;
    }

    public final boolean f() {
        return a(256);
    }

    public final boolean g() {
        return a(2);
    }

    public boolean h() {
        return a(4);
    }

    public final int hashCode() {
        return this.f56965a;
    }

    public boolean i() {
        return a(1);
    }

    public final boolean j() {
        return a(8);
    }

    public final boolean k() {
        return a(2048);
    }

    public final boolean l() {
        return a(32);
    }

    public final boolean m() {
        return a(4096);
    }

    public final boolean n() {
        return a(128);
    }

    public final boolean o() {
        return a(64);
    }

    public final String toString() {
        AbstractC7552hC a10 = a();
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            AbstractC7552hC abstractC7552hC = f56964c;
            if (i10 >= abstractC7552hC.size()) {
                return sb2.toString();
            }
            if (((BooleanSupplier) a10.get(i10)).getAsBoolean()) {
                if (z10) {
                    sb2.append(C15883c.f126249O);
                } else {
                    z10 = true;
                }
                sb2.append((String) abstractC7552hC.get(i10));
            }
            i10++;
        }
    }

    public boolean a(AbstractC4458g abstractC4458g) {
        int i10 = abstractC4458g.f37196b;
        int i11 = this.f56965a;
        int i12 = f56963b;
        int i13 = ~i12;
        int i14 = i10 & i11;
        if ((i13 & i14) == (i11 & i13)) {
            return (i11 & i12) == 0 || (i14 & i12) != 0;
        }
        return false;
    }

    public final boolean b() {
        return a(1024);
    }

    public final boolean a(int i10) {
        return (i10 & this.f56965a) != 0;
    }
}
