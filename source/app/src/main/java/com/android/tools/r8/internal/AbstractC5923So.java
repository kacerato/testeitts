package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.function.ToIntFunction;

public abstract class AbstractC5923So extends AbstractC9644tn {

    public static final boolean f44312h = true;

    public final byte f44313f;

    public final byte f44314g;

    public AbstractC5923So(int i10, C5693Op c5693Op) {
        super(c5693Op);
        this.f44313f = (byte) (i10 & 15);
        int i11 = i10 >> 4;
        if ((i11 & 8) != 0) {
            this.f44314g = (byte) (~((~i11) & 15));
        } else {
            this.f44314g = (byte) (i11 & 15);
        }
    }

    @Override
    public void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
    }

    @Override
    public final int hashCode() {
        return ((this.f44313f << 4) | this.f44314g) ^ getClass().hashCode();
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new C7597hW0().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC5923So) obj).f44313f;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC5923So) obj).f44314g;
                return i10;
            }
        });
    }

    @Override
    public void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(this.f44314g, this.f44313f, shortBuffer, v());
    }

    @Override
    public String b(C9970vk0 c9970vk0) {
        return b("v" + ((int) this.f44313f) + ", #" + ((int) this.f44314g));
    }

    public AbstractC5923So(int i10, int i11) {
        boolean z10 = f44312h;
        if (!z10 && (i10 < 0 || i10 > 15)) {
            throw new AssertionError();
        }
        if (!z10 && (-8 > i11 || i11 > 7)) {
            throw new AssertionError();
        }
        this.f44313f = (byte) i10;
        this.f44314g = (byte) i11;
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (AbstractC5923So) abstractC5635Np, new C7597hW0());
    }
}
