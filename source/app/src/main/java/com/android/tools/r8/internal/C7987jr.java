package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.function.Function;

public final class C7987jr extends AbstractC6153Wo {

    public final int f49369i;

    public C7987jr(int i10, int i11, com.android.tools.r8.graph.M2 m22) {
        super(i10, m22);
        this.f49369i = i11;
    }

    public static com.android.tools.r8.graph.M2 b(AbstractC6153Wo abstractC6153Wo) {
        return (com.android.tools.r8.graph.M2) abstractC6153Wo.f45541g;
    }

    @Override
    public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C7987jr.b((AbstractC6153Wo) obj);
            }
        });
    }

    @Override
    public final boolean l() {
        return true;
    }

    @Override
    public final String t() {
        return "NewUnboxedEnumInstance";
    }

    @Override
    public final int v() {
        throw new C5417Jv0();
    }

    @Override
    public final String z() {
        return "new-unboxed-enum-instance";
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.f((com.android.tools.r8.graph.M2) this.f45541g);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        short s10 = this.f45540f;
        com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) this.f45541g;
        int i10 = this.f49369i;
        c6382aB.getClass();
        c6382aB.a(c6382aB.f46462u.g(), new C9937vZ(m22, i10, c6382aB.a(s10, 2, AbstractC8999pu0.a(m22, C8854p10.b(), (C4798y<?>) c6382aB.f46457p))));
    }
}
