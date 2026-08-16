package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.AbstractC6114Vx;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.C9406sK;
import com.android.tools.r8.internal.InterfaceC5422Jy;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import com.android.tools.r8.internal.YS;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.Arrays;
import java.util.Collections;
import java.util.function.Consumer;
import java.util.function.Function;

public class I2 extends AbstractC4406d4 implements InterfaceC4596n5, YS {

    public static final int f36439g = 0;

    public final M2 f36440e;

    public final O2 f36441f;

    static {
        new I2(null, null);
    }

    public I2(M2 m22, O2 o22) {
        this.f36440e = m22;
        this.f36441f = o22;
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    @Override
    public final int R() {
        return 5;
    }

    public final boolean a(I2 i22) {
        return this == i22;
    }

    @Override
    public final boolean c(Object obj) {
        if (obj instanceof I2) {
            I2 i22 = (I2) obj;
            if (this.f36440e.equals(i22.f36440e) && this.f36441f.equals(i22.f36441f)) {
                return true;
            }
        }
        return false;
    }

    public final void d(Consumer consumer) {
        consumer.accept(this.f36440e);
        this.f36441f.forEach(consumer);
    }

    @Override
    public final String i0() {
        return a(AbstractC10992r0.a());
    }

    @Override
    public final int k0() {
        return (Arrays.hashCode(this.f36441f.f36675b) * 13) + (this.f36440e.hashCode() * 7);
    }

    public final String l0() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f36440e.W0());
        for (M2 m22 : this.f36441f.f36675b) {
            sb2.append(m22.W0());
        }
        return sb2.toString();
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                I2.a(abstractC5754Pq0);
            }
        };
    }

    public int m0() {
        return this.f36441f.size();
    }

    public O2 n0() {
        return this.f36441f;
    }

    public M2 o0() {
        return this.f36440e;
    }

    public final String toString() {
        return "Proto " + ((Object) this.f36440e) + " " + ((Object) this.f36441f);
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((I2) obj).o0();
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                O2 o22;
                o22 = ((I2) obj).f36441f;
                return o22;
            }
        });
    }

    public final I2 b(C4724u1 c4724u1, M2 m22) {
        M2[] m2Arr = new M2[n0().size() + 1];
        m2Arr[0] = m22;
        System.arraycopy(n0().f36675b, 0, m2Arr, 1, n0().size());
        return c4724u1.a(o0(), m2Arr);
    }

    public final C9406sK a(final C4724u1 c4724u1) {
        return new C9406sK(AbstractC6114Vx.b(Collections.singleton(this.f36440e), this.f36441f), new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                M2 a10;
                a10 = ((M2) obj).a(C4724u1.this);
                return a10;
            }
        });
    }

    public final String a(AbstractC10992r0 abstractC10992r0) {
        StringBuilder sb2 = new StringBuilder("(");
        int i10 = 0;
        while (true) {
            M2[] m2Arr = this.f36441f.f36675b;
            if (i10 < m2Arr.length) {
                sb2.append((Object) abstractC10992r0.c(m2Arr[i10]));
                i10++;
            } else {
                sb2.append(")");
                sb2.append((Object) abstractC10992r0.c(this.f36440e));
                return sb2.toString();
            }
        }
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        a(abstractC9213rA);
    }

    @Override
    public final int a(YS ys, AbstractC8953pf abstractC8953pf) {
        return a((I2) ys, abstractC8953pf);
    }

    @Override
    public final int a(C4766w5 c4766w5) {
        return C4766w5.a(this, c4766w5.f38339f);
    }
}
