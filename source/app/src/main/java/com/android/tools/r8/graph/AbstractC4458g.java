package com.android.tools.r8.graph;

import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.ToIntFunction;
import w2.C15883c;

public abstract class AbstractC4458g<T extends AbstractC4458g<T>> implements InterfaceC5580Mq0<T> {

    public static final AbstractC7552hC f37194d = AbstractC7552hC.a("public", "private", "protected", "static", "final", "synthetic");

    public static final boolean f37195e = true;

    public int f37196b;

    public int f37197c;

    public AbstractC4458g(int i10, int i11) {
        this.f37196b = i10;
        this.f37197c = i11;
    }

    public static boolean d(int i10, int i11) {
        return (i10 & i11) != 0;
    }

    public void A() {
        b(2);
    }

    public void B() {
        b(4);
    }

    public void C() {
        b(1);
    }

    public AbstractC7552hC b() {
        return f37194d;
    }

    public AbstractC7552hC c() {
        return AbstractC7552hC.a(new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return AbstractC4458g.this.l();
            }
        }, new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return AbstractC4458g.this.h();
            }
        }, new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return AbstractC4458g.this.k();
            }
        }, new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return AbstractC4458g.this.n();
            }
        }, new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return AbstractC4458g.this.e();
            }
        }, new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return AbstractC4458g.this.o();
            }
        });
    }

    public boolean e() {
        return d(this.f37197c, 16);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof AbstractC4458g) {
            AbstractC4458g abstractC4458g = (AbstractC4458g) obj;
            if (this.f37196b == abstractC4458g.f37196b && this.f37197c == abstractC4458g.f37197c) {
                return true;
            }
        }
        return false;
    }

    public boolean f() {
        return (l() || h() || k()) ? false : true;
    }

    public final boolean g() {
        return (l() || h()) ? false : true;
    }

    public boolean h() {
        return d(this.f37197c, 2);
    }

    public final int hashCode() {
        return this.f37196b | this.f37197c;
    }

    public final boolean i() {
        return !d(this.f37196b, 1) && d(this.f37197c, 1);
    }

    public final boolean j() {
        return d(this.f37196b, 2) && !d(this.f37197c, 2) && i();
    }

    public boolean k() {
        return d(this.f37197c, 4);
    }

    public boolean l() {
        return d(this.f37197c, 1);
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                AbstractC4458g.a(abstractC5754Pq0);
            }
        };
    }

    public boolean n() {
        return d(this.f37197c, 8);
    }

    public boolean o() {
        return d(this.f37197c, 4096);
    }

    public final AbstractC4458g p() {
        this.f37197c |= 16;
        return E();
    }

    public T r() {
        this.f37197c = (this.f37197c & (-7)) | 1;
        return (T) E();
    }

    @Override
    public abstract AbstractC4458g E();

    public void t() {
        a(16);
    }

    public final String toString() {
        return a(false);
    }

    public void u() {
        if (!f37195e && (l() || k())) {
            throw new AssertionError();
        }
        a(2);
    }

    public void v() {
        if (!f37195e && (l() || h())) {
            throw new AssertionError();
        }
        a(4);
    }

    public void w() {
        if (!f37195e && (h() || k())) {
            throw new AssertionError();
        }
        a(1);
    }

    public void y() {
        a(8);
    }

    public T z() {
        a(4096);
        return (T) E();
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC4458g) obj).f37196b;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC4458g) obj).f37197c;
                return i10;
            }
        });
    }

    public final int d() {
        if (l()) {
            return 3;
        }
        if (k()) {
            return 2;
        }
        return h() ? 0 : 1;
    }

    public final void a(boolean z10, Consumer consumer) {
        if (z10) {
            consumer.accept(E());
        }
    }

    public final void b(int i10) {
        int i11 = this.f37196b;
        int i12 = ~i10;
        this.f37196b = i11 & i12;
        this.f37197c = i12 & this.f37197c;
    }

    public final void a(int i10) {
        this.f37196b |= i10;
        this.f37197c = i10 | this.f37197c;
    }

    public final AbstractC4458g a() {
        this.f37197c &= -17;
        return E();
    }

    public final String a(boolean z10) {
        AbstractC7552hC b10 = b();
        AbstractC7552hC c10 = c();
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < b10.size(); i10++) {
            if (((BooleanSupplier) c10.get(i10)).getAsBoolean() && (!z10 || !((String) b10.get(i10)).equals("super"))) {
                if (sb2.length() > 0) {
                    sb2.append(C15883c.f126249O);
                }
                sb2.append((String) b10.get(i10));
            }
        }
        return sb2.toString();
    }
}
