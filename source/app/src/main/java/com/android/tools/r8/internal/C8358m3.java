package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;

public final class C8358m3 implements InterfaceC7861j40 {

    public final AbstractC5308Hz f50183a;

    public final com.android.tools.r8.graph.O5 f50184b;

    public final C8525n3 f50185c;

    public C8358m3(C8525n3 c8525n3, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.O5 o52) {
        this.f50185c = c8525n3;
        this.f50183a = abstractC5308Hz;
        this.f50184b = o52;
    }

    @Override
    public final void a(C4460g1 c4460g1, VY vy) {
        C8525n3 c8525n3 = this.f50185c;
        vy.a(vy.f45079a.b(c8525n3.f50491f, c4460g1.getType(), c8525n3.f50492g, this.f50183a), c4460g1);
    }

    @Override
    public final void a(C4516j1 c4516j1, WY wy) {
        C8525n3 c8525n3 = this.f50185c;
        wy.f45451f = wy.f45451f.b(c8525n3.f50491f, c4516j1.Y0(), c8525n3.f50492g, this.f50183a);
        C8525n3 c8525n32 = this.f50185c;
        wy.f45458m = wy.f45458m.a(c8525n32.f50491f, c8525n32.f50492g, this.f50183a, this.f50184b);
        C9693u3 c9693u3 = this.f50185c.f50492g;
        if (c9693u3.f52774n.containsKey(c4516j1.getReference())) {
            com.android.tools.r8.graph.proto.j f10 = this.f50185c.f50492g.f(c4516j1.getReference());
            f10.getClass();
            wy.a(this.f50185c.f50491f, new com.android.tools.r8.graph.S5(f10));
        }
    }
}
