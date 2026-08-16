package com.android.tools.r8.internal;

public final class C10353y00 extends AbstractC10644zm0 {
    @Override
    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        String Y02 = h22.Y0();
        return (Y02.startsWith("R$") || Y02.contains("$R$")) ? false : true;
    }

    @Override
    public final String f() {
        return "NoResourceClasses";
    }
}
