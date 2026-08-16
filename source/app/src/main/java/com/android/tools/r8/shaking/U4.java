package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.InterfaceC7861j40;
import com.android.tools.r8.internal.VY;
import com.android.tools.r8.internal.WY;

public final class U4 implements InterfaceC7861j40 {

    public final V4 f57028a;

    public U4(V4 v42) {
        this.f57028a = v42;
    }

    @Override
    public final void a(C4460g1 c4460g1, VY vy) {
        C4798y c4798y = this.f57028a.f57059a;
        vy.f45082d = vy.f45082d.a(c4798y, c4798y.v(), this.f57028a.f57064f);
    }

    @Override
    public final void a(C4516j1 c4516j1, WY wy) {
        C4798y c4798y = this.f57028a.f57059a;
        wy.a(c4798y, c4798y.v(), this.f57028a.f57064f);
    }
}
