package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import java.util.function.Consumer;

public abstract class O1 {

    public static final boolean f42757a = true;

    public static com.android.tools.r8.graph.H5 a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.F5 f52, boolean z10) {
        boolean z11 = f42757a;
        if (!z11 && a22.s0() != f52.p()) {
            throw new AssertionError();
        }
        if (!z11 && !f52.getAccessFlags().h()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.H2 holder = f52.getHolder();
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        C4516j1.a aVar = new C4516j1.a(true);
        com.android.tools.r8.graph.K4 k42 = new com.android.tools.r8.graph.K4();
        ((com.android.tools.r8.graph.L4) k42.f37168a).N();
        com.android.tools.r8.graph.K4 k43 = (com.android.tools.r8.graph.K4) k42.a(f52.getHolder().isInterface());
        k43.f37168a.y();
        k43.f37168a.z();
        C4516j1.a a10 = aVar.a((com.android.tools.r8.graph.L4) k43.f37168a);
        C6053Uv a11 = new C6053Uv().a(z10, new C6416aP0(), new C6583bP0());
        if (f52.getAccessFlags().n()) {
            a11.f44901a = f52.getReference();
            a11.f44902b = AbstractC9530t40.f52518b;
        } else {
            a11.f44901a = f52.getReference();
            a11.f44902b = AbstractC9530t40.f52517a;
        }
        a11.f44904d = a22;
        C4516j1.a a12 = a10.a(a11.a()).a(a22);
        a12.f37340l = f52.d().f37261e;
        a12.f37341m = f52.d().f37261e;
        return new com.android.tools.r8.graph.H5(holder, a12.a());
    }

    public static com.android.tools.r8.graph.H5 b(com.android.tools.r8.graph.A2 a22, final com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1) {
        boolean z10 = f42757a;
        if (!z10 && a22.s0() != h52.p()) {
            throw new AssertionError();
        }
        if (!z10 && AbstractC4458g.d(h52.getAccessFlags().f37197c, 65536)) {
            throw new AssertionError();
        }
        if (!z10 && !h52.getAccessFlags().h()) {
            throw new AssertionError();
        }
        final boolean isInterface = h52.getHolder().isInterface();
        com.android.tools.r8.graph.H2 holder = h52.getHolder();
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        C4516j1.a aVar = new C4516j1.a(true);
        com.android.tools.r8.graph.K4 k42 = new com.android.tools.r8.graph.K4();
        ((com.android.tools.r8.graph.L4) k42.f37168a).N();
        com.android.tools.r8.graph.K4 k43 = (com.android.tools.r8.graph.K4) k42.a(isInterface);
        k43.f37168a.y();
        k43.f37168a.z();
        C4516j1.a a10 = aVar.a((com.android.tools.r8.graph.L4) k43.f37168a);
        C6842cy c6842cy = new C6842cy(c4724u1);
        c6842cy.f47222b = a22;
        c6842cy.f47225e = true;
        C4516j1.a a11 = a10.a(c6842cy.a(h52.getAccessFlags().n(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6842cy c6842cy2 = (C6842cy) obj;
                c6842cy2.a(com.android.tools.r8.graph.H5.this.getReference(), isInterface);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                O1.b(com.android.tools.r8.graph.H5.this, isInterface, (C6842cy) obj);
            }
        }).a()).a(a22);
        a11.f37340l = h52.d().f37261e;
        a11.f37341m = h52.d().f37261e;
        return new com.android.tools.r8.graph.H5(holder, a11.a());
    }

    public static void b(com.android.tools.r8.graph.H5 h52, boolean z10, C6842cy c6842cy) {
        c6842cy.f47223c = h52.getReference();
        c6842cy.f47226f = EnumC6509ay.f46667e;
        c6842cy.f47227g = Boolean.valueOf(z10);
    }

    public static com.android.tools.r8.graph.H5 a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1) {
        boolean z10 = f42757a;
        if (!z10 && a22.s0() != h52.p()) {
            throw new AssertionError();
        }
        if (!z10 && !AbstractC4458g.d(h52.getAccessFlags().f37197c, 65536)) {
            throw new AssertionError();
        }
        if (!z10 && !h52.getAccessFlags().h()) {
            throw new AssertionError();
        }
        if (!z10 && h52.getHolder().isInterface()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.H2 holder = h52.getHolder();
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        C4516j1.a aVar = new C4516j1.a(true);
        com.android.tools.r8.graph.K4 k42 = new com.android.tools.r8.graph.K4();
        ((com.android.tools.r8.graph.L4) k42.f37168a).a(65536);
        k42.f37168a.z();
        C4516j1.a a10 = aVar.a((com.android.tools.r8.graph.L4) k42.f37168a);
        C6842cy c6842cy = new C6842cy(c4724u1);
        c6842cy.f47222b = a22;
        c6842cy.f47225e = false;
        c6842cy.f47224d = true;
        c6842cy.f47223c = h52.getReference();
        c6842cy.f47226f = EnumC6509ay.f46667e;
        c6842cy.f47227g = Boolean.FALSE;
        C4516j1.a a11 = a10.a(c6842cy.a()).a(a22);
        a11.f37340l = h52.d().f37261e;
        a11.f37341m = h52.d().f37322o;
        return new com.android.tools.r8.graph.H5(holder, a11.a());
    }
}
