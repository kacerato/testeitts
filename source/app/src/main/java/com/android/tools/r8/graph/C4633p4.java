package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC10188x1;
import com.android.tools.r8.internal.AbstractC7449ge;
import com.android.tools.r8.internal.C6184Xc0;
import com.android.tools.r8.internal.DX;
import com.android.tools.r8.internal.OK;
import com.android.tools.r8.origin.Origin;
import java.util.function.Supplier;

public final class C4633p4 extends AbstractC7449ge {

    public final E0 f37579c;

    public final C4670r4 f37580d;

    public final C4482h4 f37581e;

    public final boolean f37582f;

    public final Origin f37583g;

    public final C4652q4 f37584h;

    public C6184Xc0 f37585i;

    public C4633p4(E0 e02, C4670r4 c4670r4, C4482h4 c4482h4, boolean z10, Origin origin, C4652q4 c4652q4) {
        super(null);
        this.f37579c = e02;
        this.f37580d = c4670r4;
        this.f37581e = c4482h4;
        this.f37582f = z10;
        this.f37583g = origin;
        this.f37584h = c4652q4;
    }

    @Override
    public final DX a(int i10, String str, String str2, String str3, String[] strArr) {
        C4727u4 c4727u4;
        L4 a10 = C4614o4.a(i10, str);
        if (a10.H() || a10.J() || (c4727u4 = (C4727u4) this.f37580d.apply(str, str2)) == null) {
            return null;
        }
        C4708t4 c4708t4 = new C4708t4(this.f37581e, this.f37581e.a(this.f37579c.f36245e, str, str2), c4727u4, this.f37583g, this.f37584h, new Supplier() {
            @Override
            public final Object get() {
                return C4633p4.this.b();
            }
        });
        return !this.f37582f ? c4708t4 : new OK(c4708t4, i10, str, str2, strArr);
    }

    public final AbstractC10188x1 b() {
        if (this.f37585i == null) {
            this.f37585i = new C6184Xc0();
        }
        return this.f37585i;
    }
}
