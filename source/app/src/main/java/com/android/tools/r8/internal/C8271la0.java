package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11498x;
import com.android.tools.r8.shaking.InterfaceC11246i0;
import java.util.ListIterator;

public final class C8271la0 extends C11498x {

    public static final InterfaceC11246i0 f50005r = new InterfaceC11246i0() {
        @Override
        public final C11498x a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.shaking.N n10, com.android.tools.r8.androidapi.a aVar) {
            return new C8271la0(c4798y, h52, n10, aVar);
        }
    };

    public final C5485La0 f50006q;

    public C8271la0(C4798y c4798y, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.shaking.N n10, com.android.tools.r8.androidapi.a aVar) {
        super(c4798y, h52, n10, aVar);
        this.f50006q = c4798y.f38388C.f42929h;
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, ListIterator listIterator, boolean z10) {
        if (!this.f50006q.a(((com.android.tools.r8.graph.H5) this.f37177b).d())) {
            super.a(m22, listIterator, z10);
            return;
        }
        com.android.tools.r8.shaking.N n10 = this.f57953j;
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(n10.f56794f.g(m22));
        if (a10 != null) {
            n10.f56762E.add(a10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0067, code lost:
    
        if (r5 == r1.f41989a.a(r0.f36245e, r1.f41992d, r1.f42011w)) goto L15;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e(C4554l1 c4554l1) {
        if (this.f50006q.a(((com.android.tools.r8.graph.H5) this.f37177b).d()) && c4554l1.s0() != ((com.android.tools.r8.graph.H5) this.f37177b).getHolder().getType()) {
            C5485La0 c5485La0 = this.f50006q;
            com.android.tools.r8.graph.H2 holder = ((com.android.tools.r8.graph.H5) this.f37177b).getHolder();
            C4724u1 c4724u1 = c5485La0.f41989a;
            com.android.tools.r8.graph.M2 m22 = holder.f36245e;
            if (c4554l1 != c4724u1.a(m22, m22, c5485La0.f42010v)) {
                com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f57952i.g(c4554l1.s0()));
                if (a10 != null && a10.R0().a(this.f50006q.f41992d)) {
                    C5485La0 c5485La02 = this.f50006q;
                }
            }
            com.android.tools.r8.shaking.N n10 = this.f57953j;
            com.android.tools.r8.graph.H2 a11 = com.android.tools.r8.graph.H2.a(n10.f56794f.g(c4554l1.s0()));
            if (a11 != null) {
                n10.f56762E.add(a11);
                return;
            }
            return;
        }
        super.e(c4554l1);
    }
}
