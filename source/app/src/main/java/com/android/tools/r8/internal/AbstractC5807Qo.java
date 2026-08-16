package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;

public abstract class AbstractC5807Qo extends AbstractC9644tn {

    public static final boolean f43729g = true;

    public byte f43730f;

    public AbstractC5807Qo(int i10, C5693Op c5693Op) {
        super(c5693Op);
        this.f43730f = (byte) i10;
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        ((C9547tA) abstractC9213rA).f52553a.a((int) this.f43730f);
    }

    @Override
    public final int hashCode() {
        return this.f43730f ^ getClass().hashCode();
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(this.f43730f, v(), shortBuffer);
    }

    public AbstractC5807Qo(int i10) {
        if (!f43729g && (-128 > i10 || i10 > 127)) {
            throw new AssertionError();
        }
        this.f43730f = (byte) i10;
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a((int) this.f43730f, (int) ((AbstractC5807Qo) abstractC5635Np).f43730f);
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        return b(b(this.f43730f));
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        return a(":label_" + (u() + this.f43730f));
    }
}
