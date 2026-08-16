package com.android.tools.r8.internal;

public class C5832Ra0 {

    public static final boolean f43938a = true;

    public static C10340xw0 a(VJ vj2, C5485La0 c5485La0) {
        boolean z10 = f43938a;
        if (!z10 && !c5485La0.a(vj2)) {
            throw new AssertionError();
        }
        if (vj2.B2().c(c5485La0.f41985G)) {
            return vj2.a(1);
        }
        if (!z10 && !vj2.O1()) {
            throw new AssertionError();
        }
        if (vj2.B2() == c5485La0.f41986H) {
            return vj2.a(2);
        }
        if (!z10 && vj2.B2() != c5485La0.f41989a.f37859F4.f38228f) {
            throw new AssertionError();
        }
        C10340xw0 b10 = vj2.b(0);
        for (C9225rE c9225rE : C9073qK.a(b10.b0(), new C9763uV0())) {
            if (c9225rE.getField() == c5485La0.f41987I) {
                return c9225rE.value();
            }
        }
        throw new C5417Jv0();
    }

    public static C10340xw0 b(VJ vj2, C5485La0 c5485La0) {
        boolean z10 = f43938a;
        if (!z10 && !c5485La0.a(vj2)) {
            throw new AssertionError();
        }
        if (vj2.B2().c(c5485La0.f41985G)) {
            return vj2.a(2);
        }
        if (!z10 && !vj2.O1()) {
            throw new AssertionError();
        }
        if (vj2.B2() == c5485La0.f41986H) {
            return vj2.a(3);
        }
        if (!z10 && vj2.B2() != c5485La0.f41989a.f37859F4.f38228f) {
            throw new AssertionError();
        }
        C10340xw0 b10 = vj2.b(0);
        for (C9225rE c9225rE : C9073qK.a(b10.b0(), new C9763uV0())) {
            if (c9225rE.getField() == c5485La0.f41988J) {
                return c9225rE.value();
            }
        }
        throw new C5417Jv0();
    }

    public static void a(VJ vj2, C10340xw0 c10340xw0, C5485La0 c5485La0) {
        boolean z10 = f43938a;
        if (!z10 && !c5485La0.a(vj2)) {
            throw new AssertionError();
        }
        if (vj2.B2().c(c5485La0.f41985G)) {
            vj2.a(2, c10340xw0);
            return;
        }
        if (!z10 && !vj2.O1()) {
            throw new AssertionError();
        }
        if (vj2.B2() == c5485La0.f41986H) {
            vj2.a(3, c10340xw0);
            return;
        }
        if (!z10 && vj2.B2() != c5485La0.f41989a.f37859F4.f38228f) {
            throw new AssertionError();
        }
        C10340xw0 b10 = vj2.b(0);
        for (C9225rE c9225rE : C9073qK.a(b10.b0(), new C9763uV0())) {
            if (c9225rE.getField() == c5485La0.f41988J) {
                c9225rE.a(1, c10340xw0);
                return;
            }
        }
        throw new C5417Jv0();
    }
}
