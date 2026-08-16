package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C6683c00 extends AbstractC10644zm0 {

    public final C4798y f46932b;

    public final C6012Uc0 f46933c = new C6012Uc0();

    public C6683c00(C4798y c4798y) {
        this.f46932b = c4798y;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        return (h22.o1() || a((com.android.tools.r8.graph.E0) h22)) ? false : true;
    }

    @Override
    public final void e() {
        this.f46933c.clear();
    }

    @Override
    public final String f() {
        return "NoEnums";
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003f, code lost:
    
        if (a(r0) != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(com.android.tools.r8.graph.E0 e02) {
        boolean z10;
        if (this.f46933c.containsKey(e02)) {
            return this.f46933c.a(e02);
        }
        if (e02.f36245e != this.f46932b.b().f38068i2) {
            if (e02.f36245e != this.f46932b.b().f38108n2) {
                com.android.tools.r8.graph.E0 g10 = e02.i1() ? this.f46932b.g(e02.f36247g) : null;
                if (g10 != null) {
                }
            }
            z10 = true;
            this.f46933c.a(e02, z10);
            return z10;
        }
        z10 = false;
        this.f46933c.a(e02, z10);
        return z10;
    }
}
