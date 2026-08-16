package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Arrays;

public final class C5284Hn extends AbstractC5168Fn {

    public final AbstractC5635Np[] f40870e;

    public final int f40871f;

    public C5284Hn(AbstractC10561zE abstractC10561zE, AbstractC5635Np[] abstractC5635NpArr) {
        super(abstractC10561zE);
        this.f40870e = abstractC5635NpArr;
        int i10 = 0;
        for (AbstractC5635Np abstractC5635Np : abstractC5635NpArr) {
            i10 += abstractC5635Np.y();
        }
        this.f40871f = i10;
    }

    @Override
    public final int a(C5458Kn c5458Kn) {
        return this.f40871f;
    }

    @Override
    public final int b() {
        return this.f40871f;
    }

    @Override
    public final int c() {
        return this.f40871f;
    }

    @Override
    public final int d() {
        return this.f40871f;
    }

    @Override
    public final void a(C5458Kn c5458Kn, ArrayList arrayList) {
        int a10 = a();
        for (AbstractC5635Np abstractC5635Np : this.f40870e) {
            arrayList.add(abstractC5635Np);
            abstractC5635Np.e(a10);
            a10 += abstractC5635Np.y();
        }
    }

    @Override
    public final boolean a(AbstractC5168Fn abstractC5168Fn, C5458Kn c5458Kn) {
        return (abstractC5168Fn instanceof C5284Hn) && Arrays.equals(this.f40870e, ((C5284Hn) abstractC5168Fn).f40870e);
    }
}
