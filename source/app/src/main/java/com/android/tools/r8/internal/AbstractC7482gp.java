package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;

public abstract class AbstractC7482gp extends AbstractC9978vn {

    public int f48363f;

    public AbstractC7482gp(C5693Op c5693Op) {
        super(c5693Op);
        this.f48363f = AbstractC5635Np.a(c5693Op);
    }

    @Override
    public void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        ((C9547tA) abstractC9213rA).f52553a.a(this.f48363f);
    }

    @Override
    public final int hashCode() {
        return this.f48363f ^ getClass().hashCode();
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this.f48363f, ((AbstractC7482gp) abstractC5635Np).f48363f);
    }

    public AbstractC7482gp(int i10) {
        this.f48363f = i10;
    }

    @Override
    public String a(C9970vk0 c9970vk0) {
        return a(":label_" + (u() + this.f48363f));
    }

    @Override
    public void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(0, v(), shortBuffer);
        AbstractC5635Np.a(this.f48363f, shortBuffer);
    }

    @Override
    public String b(C9970vk0 c9970vk0) {
        return b(C10656zq0.a(this.f48363f, 2));
    }
}
