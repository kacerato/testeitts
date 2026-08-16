package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;

public abstract class AbstractC5981To extends AbstractC9644tn {

    public static final boolean f44593g = true;

    public final short f44594f;

    public AbstractC5981To(int i10, C5693Op c5693Op) {
        super(c5693Op);
        this.f44594f = (short) i10;
    }

    @Override
    public void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        ((C9547tA) abstractC9213rA).f52553a.a((int) this.f44594f);
    }

    @Override
    public final int hashCode() {
        return this.f44594f ^ getClass().hashCode();
    }

    @Override
    public void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(this.f44594f, v(), shortBuffer);
    }

    public AbstractC5981To(int i10) {
        if (!f44593g && (i10 < 0 || i10 > 255)) {
            throw new AssertionError();
        }
        this.f44594f = (short) i10;
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a((int) this.f44594f, (int) ((AbstractC5981To) abstractC5635Np).f44594f);
    }

    @Override
    public String b(C9970vk0 c9970vk0) {
        return b("v" + ((int) this.f44594f));
    }

    @Override
    public String a(C9970vk0 c9970vk0) {
        return a("v" + ((int) this.f44594f));
    }
}
