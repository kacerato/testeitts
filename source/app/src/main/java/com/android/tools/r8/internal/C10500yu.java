package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import java.util.Collections;
import java.util.function.Consumer;

public final class C10500yu implements InterfaceC7861j40 {

    public final R00 f54183a;

    public final AbstractC5308Hz f54184b;

    public final C5761Pu f54185c;

    public final C10667zu f54186d;

    public C10500yu(C10667zu c10667zu, R00 r00, AbstractC5308Hz abstractC5308Hz, C5761Pu c5761Pu) {
        this.f54186d = c10667zu;
        this.f54183a = r00;
        this.f54184b = abstractC5308Hz;
        this.f54185c = c5761Pu;
    }

    @Override
    public final void a(C4516j1 c4516j1, WY wy) {
        F8 f82 = wy.f45447b;
        f82.getClass();
        if (f82 instanceof C7954jg) {
            wy.f45447b = wy.f45447b.a().a(this.f54183a.f(this.f54184b, c4516j1.getReference()));
        }
        wy.f45451f = wy.f45451f.b(this.f54186d.f54566a, c4516j1.Y0(), this.f54183a, this.f54184b);
        wy.f45458m = wy.f45458m.a(this.f54186d.f54566a, this.f54183a, this.f54184b, this.f54185c.f43404d);
        boolean L02 = c4516j1.Y0().L0();
        C9649to1 c9649to1 = new C9649to1();
        final R00 r00 = this.f54183a;
        wy.a(L02, c9649to1, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10500yu.this.a(r00, (WY) obj);
            }
        });
        if (this.f54185c.f43401a.containsValue(c4516j1.getReference())) {
            return;
        }
        wy.f45454i = C8000jv0.f49417a;
    }

    @Override
    public final void a(C4460g1 c4460g1, VY vy) {
        VY a10 = vy.a(vy.f45079a.b(this.f54186d.f54566a, c4460g1.getType(), this.f54183a, this.f54184b), c4460g1);
        boolean L02 = c4460g1.getType().L0();
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((VY) obj).k();
            }
        };
        final R00 r00 = this.f54183a;
        a10.a(L02, consumer, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10500yu.this.a(r00, (VY) obj);
            }
        });
    }

    public final void a(R00 r00, VY vy) {
        C4798y c4798y = this.f54186d.f54566a;
        vy.getClass();
        vy.f45082d = vy.f45082d.a(c4798y, r00, Collections.EMPTY_SET);
    }

    public final void a(R00 r00, WY wy) {
        C4798y c4798y = this.f54186d.f54566a;
        wy.getClass();
        wy.a(c4798y, r00, Collections.EMPTY_SET);
    }
}
