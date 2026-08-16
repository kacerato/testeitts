package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import java.util.function.Consumer;

public final class C10794i0 implements InterfaceC10788h0 {

    public final C10745a f55336a;

    public final int f55337b;

    public C10794i0(C10745a c10745a, int i10) {
        this.f55336a = c10745a;
        this.f55337b = i10;
    }

    @Override
    public final boolean a(Consumer consumer, C4798y c4798y) {
        return this.f55336a.a(consumer, c4798y);
    }

    @Override
    public final InterfaceC10788h0 getReference() {
        return this.f55336a;
    }

    @Override
    public final int s() {
        return this.f55337b;
    }

    public final String toString() {
        return "Del" + this.f55336a.toString();
    }

    @Override
    public final boolean a(Consumer consumer, C4460g1 c4460g1, C4516j1 c4516j1, C4516j1 c4516j12, C4516j1 c4516j13, C4798y c4798y) {
        return this.f55336a.a(consumer, c4460g1, c4516j1, c4516j12, c4516j13, c4798y);
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        this.f55336a.a(interfaceC4403d1);
    }
}
