package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.function.ToIntFunction;

public abstract class AbstractC7148ep extends AbstractC9811un {

    public static final boolean f47787h = true;

    public final short f47788f;

    public final char f47789g;

    public AbstractC7148ep(int i10, C5693Op c5693Op) {
        super(c5693Op);
        this.f47788f = (short) i10;
        this.f47789g = (char) (c5693Op.b() & 65535);
    }

    @Override
    public void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
    }

    @Override
    public final int hashCode() {
        return ((this.f47789g << '\b') | this.f47788f) ^ getClass().hashCode();
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new A91().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC7148ep) obj).f47788f;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC7148ep) obj).f47789g;
                return i10;
            }
        });
    }

    @Override
    public void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(this.f47788f, v(), shortBuffer);
        shortBuffer.put((short) this.f47789g);
    }

    @Override
    public String b(C9970vk0 c9970vk0) {
        return b("v" + ((int) this.f47788f) + ", v" + ((int) this.f47789g));
    }

    public AbstractC7148ep(int i10, int i11) {
        boolean z10 = f47787h;
        if (!z10 && (i10 < 0 || i10 > 255)) {
            throw new AssertionError();
        }
        if (!z10 && (i11 < 0 || i11 > 65535)) {
            throw new AssertionError();
        }
        this.f47788f = (short) i10;
        this.f47789g = (char) i11;
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (AbstractC7148ep) abstractC5635Np, new A91());
    }

    @Override
    public String a(C9970vk0 c9970vk0) {
        return a("v" + ((int) this.f47788f) + ", v" + ((int) this.f47789g));
    }
}
