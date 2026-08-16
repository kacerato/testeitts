package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C9666tu0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import java.util.function.Function;
import java.util.function.ToIntFunction;

public class N2 extends C4666r0 {

    public final int f36633f;

    public final C9666tu0 f36634g;

    public N2(int i10, C4422e1 c4422e1, int i11, C9666tu0 c9666tu0) {
        super(i10, c4422e1);
        this.f36633f = i11;
        this.f36634g = c9666tu0;
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.dex.M m10) {
        throw new C5417Jv0("Should not collect type annotation in DEX");
    }

    public final void b(AbstractC5754Pq0 abstractC5754Pq0) {
        new E9().a(abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return N2.this.d((C4666r0) obj);
            }
        }).d(new Function() {
            @Override
            public final Object apply(Object obj) {
                return N2.this.e((C4666r0) obj);
            }
        }));
    }

    public final int d(C4666r0 c4666r0) {
        return this.f36633f;
    }

    public final int[] e(C4666r0 c4666r0) {
        C9666tu0 c9666tu0 = this.f36634g;
        int i10 = c9666tu0.f52727a[c9666tu0.f52728b] * 2;
        int[] iArr = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = i11 * 2;
            C9666tu0 c9666tu02 = this.f36634g;
            byte[] bArr = c9666tu02.f52727a;
            int i13 = c9666tu02.f52728b + i12;
            iArr[i12] = bArr[i13 + 1];
            iArr[i12 + 1] = bArr[i13 + 2];
        }
        return iArr;
    }

    @Override
    public final N2 k0() {
        return this;
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                N2.this.b(abstractC5754Pq0);
            }
        };
    }

    @Override
    public final boolean n0() {
        return true;
    }

    @Override
    public final void a(com.android.tools.r8.dex.X x10) {
        throw new C5417Jv0("Should not collect type annotation in DEX");
    }
}
