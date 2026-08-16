package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C6520b10;
import com.android.tools.r8.internal.M70;
import com.android.tools.r8.internal.X70;
import java.util.ArrayList;

public final class A4 extends I4 {

    public final N f56341F;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public A4(C4798y c4798y, N n10, com.android.tools.r8.graph.Y5 y52) {
        super(c4798y, r0 instanceof C6520b10 ? r1 : new X70(r0.a()), y52, null);
        M70 m70 = n10.f56809m0;
        InterfaceC11503x4 interfaceC11503x4 = C11486w4.f57941c;
        m70.getClass();
        this.f56341F = n10;
    }

    @Override
    public final void a(AbstractC11194f abstractC11194f) {
        if (this.f56341F.f56786b.b()) {
            abstractC11194f.getClass();
            if (abstractC11194f instanceof C11160d) {
                N n10 = this.f56341F;
                ArrayList arrayList = abstractC11194f.a().f57230a;
                if (!N.f56757p0 && !n10.f56786b.b()) {
                    throw new AssertionError();
                }
                if (n10.f56808m != null) {
                    int size = arrayList.size();
                    int i10 = 0;
                    while (i10 < size) {
                        Object obj = arrayList.get(i10);
                        i10++;
                        C11177e c11177e = (C11177e) obj;
                        C11211g c11211g = n10.f56808m;
                        c11211g.f57321a.add(c11177e.f57247b);
                        n10.f56776S.a(c11177e.f57246a, c11177e.f57247b, c11177e.f57248c);
                    }
                }
            }
        }
    }
}
