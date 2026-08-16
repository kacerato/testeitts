package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.function.ToIntFunction;

public abstract class AbstractC6482ap extends AbstractC9811un {

    public static final boolean f46632i = true;

    public final short f46633f;

    public final short f46634g;

    public final byte f46635h;

    public AbstractC6482ap(int i10, InterfaceC10042w8 interfaceC10042w8) {
        super(interfaceC10042w8);
        this.f46633f = (short) i10;
        C5693Op c5693Op = (C5693Op) interfaceC10042w8;
        this.f46635h = (byte) c5693Op.a();
        this.f46634g = (short) c5693Op.a();
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
    }

    @Override
    public final int hashCode() {
        return (((this.f46633f << 16) | (this.f46634g << 8)) | this.f46635h) ^ getClass().hashCode();
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new W41().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC6482ap) obj).f46633f;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC6482ap) obj).f46634g;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC6482ap) obj).f46635h;
                return i10;
            }
        });
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(this.f46633f, v(), shortBuffer);
        shortBuffer.put(AbstractC5635Np.d(this.f46635h, this.f46634g));
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        return b("v" + ((int) this.f46633f) + ", v" + ((int) this.f46634g) + ", #" + ((int) this.f46635h));
    }

    public AbstractC6482ap(int i10, int i11, int i12) {
        boolean z10 = f46632i;
        if (!z10 && (i10 < 0 || i10 > 255)) {
            throw new AssertionError();
        }
        if (!z10 && (i11 < 0 || i11 > 255)) {
            throw new AssertionError();
        }
        if (!z10 && (-128 > i12 || i12 > 127)) {
            throw new AssertionError();
        }
        this.f46633f = (short) i10;
        this.f46634g = (short) i11;
        this.f46635h = (byte) i12;
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (AbstractC6482ap) abstractC5635Np, new W41());
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        short s10 = this.f46633f;
        short s11 = this.f46634g;
        return a("v" + ((int) s10) + ", v" + ((int) s11) + ", " + C10656zq0.a((int) this.f46635h, 2) + "  # " + ((int) this.f46635h));
    }
}
