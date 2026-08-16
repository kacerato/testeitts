package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;

public final class C7771ia extends W9 {

    public final int f48973c;

    public C7771ia(int i10) {
        this.f48973c = i10;
    }

    @Override
    public final int B() {
        return 169;
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        throw new C5325If("Invalid compilation of code with reachable jump subroutine RET instruction");
    }

    @Override
    public final int y() {
        throw new C5325If("Invalid compilation of code with reachable jump subroutine RET instruction");
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        throw new C5325If("Invalid compilation of code with reachable jump subroutine RET instruction");
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        throw new C5325If("Invalid compilation of code with reachable jump subroutine RET instruction");
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        throw new C5325If("Invalid compilation of code with reachable jump subroutine RET instruction");
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        return new C7667hv("Unexpected JSR/RET instruction");
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a();
        StringBuilder sb2 = c6063Va.f45094e;
        sb2.append("ret ");
        sb2.append(this.f48973c);
    }
}
