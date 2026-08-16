package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.function.ToIntFunction;

public abstract class AbstractC6210Xo extends AbstractC9811un {

    public static final boolean f45821h = true;

    public final short f45822f;

    public final char f45823g;

    public AbstractC6210Xo(int i10, C5693Op c5693Op) {
        super(c5693Op);
        this.f45822f = (short) i10;
        this.f45823g = (char) (c5693Op.b() & 65535);
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
    }

    @Override
    public final int hashCode() {
        return ((this.f45823g << '\b') | this.f45822f) ^ getClass().hashCode();
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new C8524n21().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC6210Xo) obj).f45822f;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC6210Xo) obj).f45823g;
                return i10;
            }
        });
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(this.f45822f, v(), shortBuffer);
        shortBuffer.put((short) this.f45823g);
    }

    public AbstractC6210Xo(int i10, int i11) {
        boolean z10 = f45821h;
        if (!z10 && (i10 < 0 || i10 > 255)) {
            throw new AssertionError();
        }
        if (!z10 && (i11 < 0 || i11 > 65535)) {
            throw new AssertionError();
        }
        this.f45822f = (short) i10;
        this.f45823g = (char) i11;
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (AbstractC6210Xo) abstractC5635Np, new C8524n21());
    }
}
