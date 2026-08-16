package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.function.ToIntFunction;

public abstract class AbstractC6815cp extends AbstractC9811un {

    public static final boolean f47176i = true;

    public final byte f47177f;

    public final byte f47178g;

    public final short f47179h;

    public AbstractC6815cp(int i10, C5693Op c5693Op) {
        super(c5693Op);
        this.f47177f = (byte) (i10 & 15);
        this.f47178g = (byte) ((i10 >> 4) & 15);
        this.f47179h = (short) c5693Op.b();
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
    }

    @Override
    public final int hashCode() {
        return (((this.f47179h << 8) | (this.f47177f << 4)) | this.f47178g) ^ getClass().hashCode();
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new K71().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC6815cp) obj).f47177f;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC6815cp) obj).f47178g;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC6815cp) obj).f47179h;
                return i10;
            }
        });
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(this.f47178g, this.f47177f, shortBuffer, v());
        shortBuffer.put(this.f47179h);
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        return b("v" + ((int) this.f47177f) + ", v" + ((int) this.f47178g) + ", #" + ((int) this.f47179h));
    }

    public AbstractC6815cp(int i10, int i11, int i12) {
        boolean z10 = f47176i;
        if (!z10 && (i10 < 0 || i10 > 15)) {
            throw new AssertionError();
        }
        if (!z10 && (i11 < 0 || i11 > 15)) {
            throw new AssertionError();
        }
        if (!z10 && (-32768 > i12 || i12 > 32767)) {
            throw new AssertionError();
        }
        this.f47177f = (byte) i10;
        this.f47178g = (byte) i11;
        this.f47179h = (short) i12;
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (AbstractC6815cp) abstractC5635Np, new K71());
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        byte b10 = this.f47177f;
        byte b11 = this.f47178g;
        return a("v" + ((int) b10) + ", v" + ((int) b11) + ", " + C10656zq0.a((int) this.f47179h, 4) + "  # " + ((int) this.f47179h));
    }
}
