package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.function.Consumer;

public final class C6419aR extends AbstractC7586hR {

    public static final boolean f46531j = true;

    public final C4798y f46532f;

    public final com.android.tools.r8.graph.A2 f46533g;

    public final boolean f46534h;

    public final com.android.tools.r8.graph.B2 f46535i;

    public C6419aR(com.android.tools.r8.graph.A2 a22, boolean z10, com.android.tools.r8.graph.B2 b22, com.android.tools.r8.graph.A2 a23, boolean z11, C4798y c4798y) {
        super(a23, EnumC8071kK.f49582f, z11);
        this.f46532f = c4798y;
        this.f46533g = a22;
        this.f46534h = z10;
        this.f46535i = b22;
    }

    @Override
    public final com.android.tools.r8.graph.H5 a(InterfaceC6342Zx interfaceC6342Zx, InterfaceC9323rr0 interfaceC9323rr0, Consumer consumer) {
        com.android.tools.r8.graph.H2 b10 = this.f46532f.b(this.f48554a.f38297f);
        boolean z10 = f46531j;
        if (!z10 && b10 == null) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.H5 e10 = b10.e(this.f48554a);
        if (e10 != null) {
            if (!z10 && !e10.getAccessFlags().o()) {
                throw new AssertionError();
            }
            if (!z10 && !e10.getAccessFlags().l()) {
                throw new AssertionError();
            }
            if (z10 || e10.getAccessFlags().n()) {
                return e10;
            }
            throw new AssertionError();
        }
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        C4516j1.a a10 = new C4516j1.a(true).a(this.f48554a).a(com.android.tools.r8.graph.L4.b(4105, false));
        com.android.tools.r8.graph.A2 a22 = this.f46533g;
        boolean z11 = this.f46534h;
        com.android.tools.r8.graph.B2 b22 = this.f46535i;
        com.android.tools.r8.graph.A2 a23 = this.f48554a;
        C4724u1 b11 = this.f46532f.b();
        C6842cy c6842cy = new C6842cy(b11);
        c6842cy.f47222b = a23;
        c6842cy.f47225e = true;
        switch (b22.ordinal()) {
            case 4:
                c6842cy.a(a22, z11);
                break;
            case 5:
            case 8:
                c6842cy.b(a22, z11);
                break;
            case 6:
                if (!C6842cy.f47220l && !a22.b(b11)) {
                    throw new AssertionError();
                }
                c6842cy.f47223c = a22;
                c6842cy.f47230j = true;
                c6842cy.f47226f = EnumC6509ay.f46667e;
                c6842cy.f47227g = Boolean.FALSE;
                break;
            case 7:
                c6842cy.f47223c = a22;
                c6842cy.f47226f = EnumC6509ay.f46667e;
                c6842cy.f47227g = Boolean.valueOf(z11);
                break;
            default:
                throw new C5417Jv0();
        }
        com.android.tools.r8.graph.H5 h52 = new com.android.tools.r8.graph.H5(b10, a10.a(c6842cy.a()).b().a());
        b10.a(h52.d());
        interfaceC9323rr0.a(h52, this.f46533g);
        consumer.accept(h52);
        return h52;
    }

    @Override
    public final com.android.tools.r8.graph.A2 a() {
        return this.f46533g;
    }
}
