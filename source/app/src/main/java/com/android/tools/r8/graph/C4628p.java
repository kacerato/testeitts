package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC5351Ir0;
import com.android.tools.r8.internal.R00;

public final class C4628p implements InterfaceC5351Ir0 {

    public static final boolean f37560f = true;

    public C4514j f37561a;

    public final C4798y f37562b;

    public final C4462g3 f37563c;

    public final R00 f37564d;

    public final AbstractC5308Hz f37565e;

    public C4628p(C4798y c4798y, C4462g3 c4462g3, R00 r00, AbstractC5308Hz abstractC5308Hz) {
        this.f37562b = c4798y;
        this.f37563c = c4462g3;
        this.f37564d = r00;
        this.f37565e = abstractC5308Hz;
    }

    @Override
    public final void a(C8659ns0 c8659ns0) {
        if (this.f37562b.f().i()) {
            this.f37561a = this.f37562b.h().a(this.f37563c, this.f37564d, this.f37565e, c8659ns0);
        } else {
            if (!f37560f && !this.f37562b.f().h()) {
                throw new AssertionError();
            }
            C4514j c4514j = (C4514j) this.f37562b.L().f();
            this.f37561a = c4514j.a(c4514j.f().a(this.f37562b.f38408a.g(), this.f37564d, c8659ns0));
        }
    }

    @Override
    public final void a() {
        this.f37562b.L().b(this.f37561a);
    }
}
