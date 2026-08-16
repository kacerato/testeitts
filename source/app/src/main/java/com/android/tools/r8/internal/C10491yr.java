package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4346a1;
import com.android.tools.r8.graph.O0;
import java.util.ArrayList;

public final class C10491yr extends C4346a1 {

    public static final boolean f54170l = true;

    public final IH f54171g;

    public final C8699o50 f54172h;

    public final D60 f54173i;

    public final ArrayList f54174j;

    public final C10658zr f54175k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10491yr(C10658zr c10658zr, int i10, com.android.tools.r8.graph.A2 a22, boolean z10, IH ih2, C8699o50 c8699o50, D60 d60, ArrayList arrayList) {
        super(i10, a22, z10);
        this.f54175k = c10658zr;
        this.f54171g = ih2;
        this.f54172h = c8699o50;
        this.f54173i = d60;
        this.f54174j = arrayList;
    }

    @Override
    public final void a(O0.b bVar) {
        super.a(bVar);
        if (!f54170l && a() < 0) {
            throw new AssertionError();
        }
        if (this.f54171g.a() < 0) {
            this.f54171g.d(b());
        }
        B60 c10 = c();
        if (this.f54172h.b() != null) {
            K60 k60 = this.f54175k.f54557b;
            int b10 = b();
            B60 b60 = (B60) this.f54172h.b();
            D60 d60 = this.f54173i;
            ArrayList arrayList = this.f54174j;
            B60 b602 = (B60) d60.a(b60).a();
            for (int intValue = ((Integer) this.f54172h.a()).intValue(); intValue < b10; intValue++) {
                arrayList.add(new UU(k60.a(intValue), b602));
            }
        }
        this.f54172h.f51166a = Integer.valueOf(b());
        this.f54172h.f51167b = c10;
    }
}
