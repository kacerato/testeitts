package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8570nJ;

public class C6340Zw extends AbstractC9617te<C4477h> {

    public static final C7119ef0 f46378f;

    public final C8570nJ.o f46379e;

    static {
        int i10 = QC.f43505c;
        f46378f = C7119ef0.f47742j;
    }

    public C6340Zw(C4798y<?> c4798y) {
        super(c4798y);
        this.f46379e = this.f52648c.b0();
    }

    @Override
    public final String a() {
        return "FilledNewArrayRemover";
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        return new C6283Yw(this).a(c7215fB);
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return c7215fB.f47902i.a(36);
    }
}
