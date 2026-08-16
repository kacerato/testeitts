package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.IC;
import com.android.tools.r8.internal.InterfaceC5351Ir0;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.internal.R00;
import java.util.Iterator;

public final class C4590n implements InterfaceC5351Ir0 {

    public final C4798y f37499a;

    public final R00 f37500b;

    public final AbstractC5308Hz f37501c;

    public C4590n(C4798y c4798y, R00 r00, AbstractC5308Hz abstractC5308Hz) {
        this.f37499a = c4798y;
        this.f37500b = r00;
        this.f37501c = abstractC5308Hz;
    }

    @Override
    public final void a(C8659ns0 c8659ns0) {
        int i10 = QC.f43505c;
        IC ic2 = new IC();
        Iterator it = this.f37499a.f38396K.iterator();
        while (it.hasNext()) {
            ic2.a(this.f37500b.d(this.f37501c, (A2) it.next()));
        }
        this.f37499a.f38396K = ic2.a();
    }

    @Override
    public final boolean b() {
        return !this.f37499a.f38396K.isEmpty();
    }
}
