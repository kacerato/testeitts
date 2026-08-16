package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.function.ToIntFunction;

public abstract class AbstractC7815ip extends AbstractC9978vn {

    public static final boolean f49063h = true;

    public final short f49064f;

    public final int f49065g;

    public AbstractC7815ip(int i10, C5693Op c5693Op) {
        super(c5693Op);
        this.f49064f = (short) i10;
        this.f49065g = AbstractC5635Np.a(c5693Op);
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
    }

    @Override
    public final int hashCode() {
        return ((this.f49065g << 8) | this.f49064f) ^ getClass().hashCode();
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new C5034De1().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC7815ip) obj).f49064f;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC7815ip) obj).f49065g;
                return i10;
            }
        });
    }

    public AbstractC7815ip(int i10, int i11) {
        if (!f49063h && (i10 < 0 || i10 > 255)) {
            throw new AssertionError();
        }
        this.f49064f = (short) i10;
        this.f49065g = i11;
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(this.f49064f, v(), shortBuffer);
        AbstractC5635Np.a(this.f49065g, shortBuffer);
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (AbstractC7815ip) abstractC5635Np, new C5034De1());
    }
}
