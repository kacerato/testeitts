package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.B60;
import java.util.IdentityHashMap;

public class JD {

    public static final boolean f41350g = true;

    public final C4798y f41351a;

    public final com.android.tools.r8.graph.H5 f41352b;

    public final QR f41353c;

    public final C10523z10 f41354d;

    public final AbstractC6931dX f41355e;

    public final IdentityHashMap f41356f;

    public JD() {
        this.f41356f = new IdentityHashMap();
        this.f41351a = null;
        this.f41352b = null;
        this.f41353c = null;
        this.f41354d = null;
        this.f41355e = null;
    }

    public C7215fB a(com.android.tools.r8.graph.H5 h52, VJ vj2) {
        C7215fB b10 = b(h52, vj2);
        a(vj2, b10);
        return b10;
    }

    public C7215fB b(com.android.tools.r8.graph.H5 h52, VJ vj2) {
        AbstractC5308Hz abstractC5308Hz;
        com.android.tools.r8.graph.proto.j jVar;
        C7215fB c7215fB = (C7215fB) this.f41356f.remove(vj2);
        if (c7215fB != null) {
            return c7215fB;
        }
        com.android.tools.r8.graph.H5 h53 = this.f41352b;
        C4798y c4798y = this.f41351a;
        C10523z10 c10523z10 = this.f41354d;
        boolean z10 = B60.f38806g;
        B60 position = vj2.getPosition();
        if (position.f38808c == null) {
            if (!z10 && !position.o()) {
                throw new AssertionError();
            }
            position = B60.b.t().a(h53.getReference()).a();
        }
        B60 b60 = position;
        if (!z10 && !h53.getReference().a(b60.h().f38808c)) {
            throw new AssertionError();
        }
        AbstractC6931dX abstractC6931dX = this.f41355e;
        AbstractC4497i0 Q02 = h52.d().Q0();
        AbstractC5308Hz v10 = c4798y.v();
        com.android.tools.r8.graph.proto.j jVar2 = com.android.tools.r8.graph.proto.j.f37620d;
        if (abstractC6931dX.c(h52)) {
            abstractC5308Hz = h52.d().Q0().a(c4798y);
            jVar = c4798y.v().f((AbstractC5308Hz) null, h52.getReference());
        } else {
            abstractC5308Hz = v10;
            jVar = jVar2;
        }
        C7215fB a10 = Q02.a(h53, h52, c4798y, abstractC5308Hz, c10523z10, b60, jVar);
        if (this.f41353c != null && this.f41355e.c(h52)) {
            this.f41353c.a(h52, a10, this.f41355e);
        }
        return a10;
    }

    public void a(VJ vj2, C7215fB c7215fB) {
        C7215fB c7215fB2 = (C7215fB) this.f41356f.put(vj2, c7215fB);
        if (!f41350g && c7215fB2 != null) {
            throw new AssertionError();
        }
    }

    public JD(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C7215fB c7215fB, QR qr, AbstractC6931dX abstractC6931dX) {
        this.f41356f = new IdentityHashMap();
        this.f41351a = c4798y;
        this.f41352b = h52;
        this.f41353c = qr;
        this.f41354d = c7215fB.f47898e;
        this.f41355e = abstractC6931dX;
    }
}
