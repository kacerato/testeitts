package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.function.ToIntFunction;

public abstract class AbstractC7981jp extends AbstractC9978vn {

    public static final boolean f49362h = true;

    public final short f49363f;

    public int f49364g;

    public AbstractC7981jp(int i10, C5693Op c5693Op) {
        super(c5693Op);
        this.f49363f = (short) i10;
        this.f49364g = AbstractC5635Np.a(c5693Op);
    }

    @Override
    public final boolean B() {
        return true;
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
    }

    @Override
    public final int hashCode() {
        return ((this.f49364g << 8) | this.f49363f) ^ getClass().hashCode();
    }

    @Override
    public final int w() {
        return this.f49364g;
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new Yf1().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC7981jp) obj).f49363f;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC7981jp) obj).f49364g;
                return i10;
            }
        });
    }

    public AbstractC7981jp(int i10) {
        if (!f49362h && (i10 < 0 || i10 > 255)) {
            throw new AssertionError();
        }
        this.f49363f = (short) i10;
        this.f49364g = -1;
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(this.f49363f, v(), shortBuffer);
        if (!f49362h && (u() + this.f49364g) % 2 != 0) {
            throw new AssertionError();
        }
        AbstractC5635Np.a(this.f49364g, shortBuffer);
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        short s10 = this.f49363f;
        return b("v" + ((int) s10) + ", " + b(this.f49364g));
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (AbstractC7981jp) abstractC5635Np, new Yf1());
    }
}
