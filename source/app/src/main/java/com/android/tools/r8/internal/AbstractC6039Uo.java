package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.function.ToIntFunction;

public abstract class AbstractC6039Uo extends AbstractC9644tn {

    public static final boolean f44875h = true;

    public final byte f44876f;

    public final byte f44877g;

    public AbstractC6039Uo(int i10, InterfaceC10042w8 interfaceC10042w8) {
        super(interfaceC10042w8);
        this.f44876f = (byte) (i10 & 15);
        this.f44877g = (byte) ((i10 >> 4) & 15);
    }

    @Override
    public void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
    }

    @Override
    public final int hashCode() {
        return ((this.f44876f << 4) | this.f44877g) ^ getClass().hashCode();
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new C10437yY0().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC6039Uo) obj).f44876f;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC6039Uo) obj).f44877g;
                return i10;
            }
        });
    }

    public AbstractC6039Uo(int i10, int i11) {
        boolean z10 = f44875h;
        if (!z10 && (i10 < 0 || i10 > 15)) {
            throw new AssertionError();
        }
        if (!z10 && (i11 < 0 || i11 > 15)) {
            throw new AssertionError();
        }
        this.f44876f = (byte) i10;
        this.f44877g = (byte) i11;
    }

    @Override
    public void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(this.f44877g, this.f44876f, shortBuffer, v());
    }

    @Override
    public String b(C9970vk0 c9970vk0) {
        return b("v" + ((int) this.f44876f) + ", v" + ((int) this.f44877g));
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (AbstractC6039Uo) abstractC5635Np, new C10437yY0());
    }

    @Override
    public String a(C9970vk0 c9970vk0) {
        return a("v" + ((int) this.f44876f) + ", v" + ((int) this.f44877g));
    }
}
