package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;

public abstract class AbstractC6096Vo extends AbstractC9811un {

    public static final boolean f45178g = true;

    public short f45179f;

    public AbstractC6096Vo(C5693Op c5693Op) {
        super(c5693Op);
        this.f45179f = (short) c5693Op.b();
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        ((C9547tA) abstractC9213rA).f52553a.a((int) this.f45179f);
    }

    @Override
    public final int hashCode() {
        return this.f45179f ^ getClass().hashCode();
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a((int) this.f45179f, (int) ((AbstractC6096Vo) abstractC5635Np).f45179f);
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        return a(":label_" + (u() + this.f45179f));
    }

    public AbstractC6096Vo(int i10) {
        if (!f45178g && (-32768 > i10 || i10 > 32767)) {
            throw new AssertionError();
        }
        this.f45179f = (short) i10;
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(0, 41, shortBuffer);
        shortBuffer.put(this.f45179f);
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        short s10 = this.f45179f;
        return b(((int) s10) + " " + b(s10));
    }
}
