package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.function.Function;
import java.util.function.ToIntFunction;

public abstract class AbstractC7649hp extends AbstractC9978vn {

    public static final boolean f48716h = true;

    public final short f48717f;

    public com.android.tools.r8.graph.L2 f48718g;

    public AbstractC7649hp(int i10, C5693Op c5693Op, com.android.tools.r8.graph.L2[] l2Arr) {
        super(c5693Op);
        this.f48717f = (short) i10;
        this.f48718g = l2Arr[(int) (((((char) (c5693Op.b() & 65535)) & Sg.b.f23266s) << 16) | (((char) (c5693Op.b() & 65535)) & Sg.b.f23266s))];
    }

    @Override
    public final int hashCode() {
        return ((this.f48718g.hashCode() << 8) | this.f48717f) ^ getClass().hashCode();
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC7649hp) obj).f48717f;
                return i10;
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.graph.L2 l22;
                l22 = ((AbstractC7649hp) obj).f48718g;
                return l22;
            }
        });
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new C5379Jd1().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    @Override
    public void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(this.f48717f, v(), shortBuffer);
        this.f48718g.getClass();
        AbstractC5635Np.a(C4766w5.a(r2, c4766w5.f38343j), shortBuffer);
    }

    @Override
    public String b(C9970vk0 c9970vk0) {
        short s10 = this.f48717f;
        return b("v" + ((int) s10) + ", " + c9970vk0.a(this.f48718g));
    }

    public AbstractC7649hp(int i10, com.android.tools.r8.graph.L2 l22) {
        if (!f48716h && (i10 < 0 || i10 > 255)) {
            throw new AssertionError();
        }
        this.f48717f = (short) i10;
        this.f48718g = l22;
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (AbstractC7649hp) abstractC5635Np, new C5379Jd1());
    }

    @Override
    public void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
        com.android.tools.r8.graph.L2 l22 = this.f48718g;
        l22.getClass();
        m10.a(l22);
    }
}
