package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.function.ToIntFunction;

public abstract class AbstractC8148kp extends AbstractC9978vn {

    public static final boolean f49764h = true;

    public final int f49765f;

    public final int f49766g;

    public AbstractC8148kp(C5693Op c5693Op) {
        super(c5693Op);
        this.f49765f = (char) (c5693Op.b() & 65535);
        this.f49766g = (char) (c5693Op.b() & 65535);
    }

    @Override
    public void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
    }

    @Override
    public final int hashCode() {
        return ((this.f49765f << 16) | this.f49766g) ^ getClass().hashCode();
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new C9461sh1().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC8148kp) obj).f49765f;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC8148kp) obj).f49766g;
                return i10;
            }
        });
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (AbstractC8148kp) abstractC5635Np, new C9461sh1());
    }

    @Override
    public String b(C9970vk0 c9970vk0) {
        return b("v" + this.f49765f + ", v" + this.f49766g);
    }

    @Override
    public String a(C9970vk0 c9970vk0) {
        return a("v" + this.f49765f + ", v" + this.f49766g);
    }

    public AbstractC8148kp(int i10, int i11) {
        boolean z10 = f49764h;
        if (!z10 && (i10 < 0 || i10 > 65535)) {
            throw new AssertionError();
        }
        if (!z10 && (i11 < 0 || i11 > 65535)) {
            throw new AssertionError();
        }
        this.f49765f = i10;
        this.f49766g = i11;
    }

    @Override
    public void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(0, v(), shortBuffer);
        shortBuffer.put((short) this.f49765f);
        shortBuffer.put((short) this.f49766g);
    }
}
