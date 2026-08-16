package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.function.Function;
import java.util.function.ToIntFunction;

public abstract class F9 extends W9 {

    public final C4554l1 f40119c;

    public F9(C4554l1 c4554l1) {
        this.f40119c = c4554l1;
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ((F9) obj).B();
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((F9) obj).getField();
            }
        });
    }

    @Override
    public final boolean I() {
        return true;
    }

    public abstract F9 a(C4554l1 c4554l1);

    @Override
    public final F9 f() {
        return this;
    }

    public C4554l1 getField() {
        return this.f40119c;
    }

    @Override
    public final int y() {
        return 3;
    }

    @Override
    public final boolean z() {
        return true;
    }

    public static F9 a(int i10, C4554l1 c4554l1) {
        switch (i10) {
            case 178:
                return new C9942vb(c4554l1);
            case 179:
                return new C10109wb(c4554l1);
            case 180:
                return new T9(c4554l1);
            case 181:
                return new U9(c4554l1);
            default:
                throw new C5417Jv0("Unexpected opcode " + i10);
        }
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        return abstractC8953pf.a(this, w92.f(), new C8058kE0());
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        C8058kE0 c8058kE0 = new C8058kE0();
        C9547tA c9547tA = (C9547tA) abstractC9213rA;
        c9547tA.getClass();
        c8058kE0.a(new C9380sA(this, c9547tA));
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        C4554l1 e10 = abstractC5308Hz.e(abstractC5308Hz2, this.f40119c);
        ex.a(B(), abstractC10992r0.d(e10.f38297f), abstractC10992r0.a(this.f40119c).toString(), abstractC10992r0.c(e10.f37449i).toString());
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }
}
