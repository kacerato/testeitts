package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

public abstract class AbstractC8649np extends AbstractC5635Np {

    public static final boolean f51084h = true;

    public final short f51085f;

    public final long f51086g;

    public AbstractC8649np(int i10, long j10) {
        if (!f51084h && (i10 < 0 || i10 > 255)) {
            throw new AssertionError();
        }
        this.f51085f = (short) i10;
        this.f51086g = j10;
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
    }

    @Override
    public final int hashCode() {
        return ((((int) this.f51086g) << 8) | this.f51085f) ^ getClass().hashCode();
    }

    @Override
    public final int y() {
        return 5;
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new Jn1().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC8649np) obj).f51085f;
                return i10;
            }
        }).a(new ToLongFunction() {
            @Override
            public final long applyAsLong(Object obj) {
                long j10;
                j10 = ((AbstractC8649np) obj).f51086g;
                return j10;
            }
        });
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(this.f51085f, v(), shortBuffer);
        long j10 = this.f51086g;
        AbstractC5635Np.a(j10, shortBuffer);
        AbstractC5635Np.a(j10 >> 32, shortBuffer);
    }

    public AbstractC8649np(int i10, C5693Op c5693Op) {
        super(c5693Op);
        this.f51085f = (short) i10;
        this.f51086g = ((((((char) (c5693Op.b() & 65535)) & Sg.b.f23266s) << 16) | (((char) (c5693Op.b() & 65535)) & Sg.b.f23266s)) << 32) | (((char) (c5693Op.b() & 65535)) & Sg.b.f23266s) | ((((char) (c5693Op.b() & 65535)) & Sg.b.f23266s) << 16);
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (AbstractC8649np) abstractC5635Np, new Jn1());
    }
}
