package com.android.tools.r8.internal;

public final class C6056Uw0 extends AbstractC10644zm0 {

    public static final boolean f44908c = true;

    public final AbstractC10644zm0 f44909b;

    public C6056Uw0(AbstractC10644zm0 abstractC10644zm0) {
        this.f44909b = abstractC10644zm0;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        if (f44908c || this.f44909b.a(h22)) {
            return true;
        }
        throw new AssertionError((Object) "Verification of single class policies failed");
    }

    @Override
    public final String f() {
        return "VerifySingleClassPolicyAlwaysSatisfied(" + this.f44909b.f() + ")";
    }

    @Override
    public final boolean l() {
        return !C8570nJ.b() || this.f44909b.l();
    }
}
