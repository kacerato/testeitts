package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class HI extends C8268lZ {

    public static final int f40731o = 0;

    public final InterfaceC9368s6 f40732n;

    public HI(C4798y c4798y, C8534n6 c8534n6, UY uy) {
        super(c4798y, C8268lZ.f49994j, c8534n6.f49890b, C8268lZ.f49996l, c8534n6);
        this.f40732n = uy;
    }

    @Override
    public final com.android.tools.r8.graph.A2 c(com.android.tools.r8.graph.A2 a22) {
        InterfaceC8033k6 interfaceC8033k6 = this.f50001i;
        Object b10 = this.f40732n.b(a22);
        if (b10 == null) {
            b10 = a22;
        }
        Object obj = (com.android.tools.r8.graph.A2) b10;
        Object b11 = interfaceC8033k6.b(a22);
        if (b11 != null) {
            obj = b11;
        }
        return (com.android.tools.r8.graph.A2) obj;
    }

    @Override
    public final com.android.tools.r8.graph.A2 d(com.android.tools.r8.graph.A2 a22) {
        InterfaceC9368s6 interfaceC9368s6 = this.f40732n;
        Object c10 = this.f50001i.c(a22);
        if (c10 == null) {
            c10 = a22;
        }
        Object obj = (com.android.tools.r8.graph.A2) c10;
        Object c11 = interfaceC9368s6.c(a22);
        if (c11 != null) {
            obj = c11;
        }
        return (com.android.tools.r8.graph.A2) obj;
    }
}
