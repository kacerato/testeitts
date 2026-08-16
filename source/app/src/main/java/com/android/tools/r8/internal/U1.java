package com.android.tools.r8.internal;

public class U1 {

    public boolean f44650a = AbstractC9824ur0.a("com.android.tools.r8.accessmodification.forcePackagePrivateAndProtected", true);

    public final C8570nJ f44651b;

    public U1(C8570nJ c8570nJ) {
        this.f44651b = c8570nJ;
    }

    public final boolean a() {
        C8570nJ c8570nJ = this.f44651b;
        if (c8570nJ.f50688i != null && c8570nJ.B().f57602f) {
            return true;
        }
        C8570nJ c8570nJ2 = this.f44651b;
        return !c8570nJ2.f50674d1 && c8570nJ2.T();
    }

    public void a(boolean z10) {
        this.f44650a = z10;
    }
}
