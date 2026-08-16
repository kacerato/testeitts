package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.function.ToIntFunction;

public abstract class AbstractC7315fp extends AbstractC9811un {

    public static final boolean f48098i = true;

    public final short f48099f;

    public final short f48100g;

    public final short f48101h;

    public AbstractC7315fp(int i10, InterfaceC10042w8 interfaceC10042w8) {
        super(interfaceC10042w8);
        this.f48099f = (short) i10;
        C5693Op c5693Op = (C5693Op) interfaceC10042w8;
        this.f48101h = (short) c5693Op.a();
        this.f48100g = (short) c5693Op.a();
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
    }

    @Override
    public final int hashCode() {
        return (((this.f48099f << 16) | (this.f48100g << 8)) | this.f48101h) ^ getClass().hashCode();
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new C6293Za1().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC7315fp) obj).f48099f;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC7315fp) obj).f48100g;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC7315fp) obj).f48101h;
                return i10;
            }
        });
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(this.f48099f, v(), shortBuffer);
        shortBuffer.put(AbstractC5635Np.d(this.f48101h, this.f48100g));
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        return b("v" + ((int) this.f48099f) + ", v" + ((int) this.f48100g) + ", v" + ((int) this.f48101h));
    }

    public AbstractC7315fp(int i10, int i11, int i12) {
        boolean z10 = f48098i;
        if (!z10 && (i10 < 0 || i10 > 255)) {
            throw new AssertionError();
        }
        if (!z10 && (i11 < 0 || i11 > 255)) {
            throw new AssertionError();
        }
        if (!z10 && (i12 < 0 || i12 > 255)) {
            throw new AssertionError();
        }
        this.f48099f = (short) i10;
        this.f48100g = (short) i11;
        this.f48101h = (short) i12;
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (AbstractC7315fp) abstractC5635Np, new C6293Za1());
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        return a("v" + ((int) this.f48099f) + ", v" + ((int) this.f48100g) + ", v" + ((int) this.f48101h));
    }
}
