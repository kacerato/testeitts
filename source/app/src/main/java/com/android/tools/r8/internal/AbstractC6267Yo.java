package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.function.ToIntFunction;

public abstract class AbstractC6267Yo extends AbstractC9811un {

    public static final boolean f46087h = true;

    public final short f46088f;

    public final short f46089g;

    public AbstractC6267Yo(int i10, C5693Op c5693Op) {
        super(c5693Op);
        this.f46088f = (short) i10;
        this.f46089g = (short) c5693Op.b();
    }

    @Override
    public void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
    }

    @Override
    public final int hashCode() {
        return ((this.f46089g << 8) | this.f46088f) ^ getClass().hashCode();
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new C10363y31().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC6267Yo) obj).f46088f;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC6267Yo) obj).f46089g;
                return i10;
            }
        });
    }

    @Override
    public void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(this.f46088f, v(), shortBuffer);
        shortBuffer.put(this.f46089g);
    }

    @Override
    public String b(C9970vk0 c9970vk0) {
        return b("v" + ((int) this.f46088f) + ", #" + ((int) this.f46089g));
    }

    public AbstractC6267Yo(int i10, int i11) {
        boolean z10 = f46087h;
        if (!z10 && (-32768 > i11 || i11 > 32767)) {
            throw new AssertionError();
        }
        if (!z10 && (i10 < 0 || i10 > 255)) {
            throw new AssertionError();
        }
        this.f46088f = (short) i10;
        this.f46089g = (short) i11;
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (AbstractC6267Yo) abstractC5635Np, new C10363y31());
    }

    @Override
    public String a(C9970vk0 c9970vk0) {
        short s10 = this.f46088f;
        return a("v" + ((int) s10) + ", " + C10656zq0.a((int) this.f46089g, 4) + "  # " + ((int) this.f46089g));
    }
}
