package com.android.tools.r8.graph;

public final class A extends B {

    public final C4724u1 f36124a;

    public A(C4724u1 c4724u1) {
        this.f36124a = c4724u1;
    }

    @Override
    public final String a(String str) {
        return str.equals("Lcom/android/tools/r8/RecordTag;") ? "Ljava/lang/Record;" : str;
    }

    @Override
    public final M2 b(M2 m22) {
        C4724u1 c4724u1 = this.f36124a;
        return m22 == c4724u1.f38084k2 ? c4724u1.f38076j2 : m22;
    }

    @Override
    public final M2 a(M2 m22) {
        C4724u1 c4724u1 = this.f36124a;
        return m22 == c4724u1.f38076j2 ? c4724u1.f38084k2 : m22;
    }
}
