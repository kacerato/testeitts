package com.android.tools.r8.internal;

public final class C7797ij {

    public static final boolean f49031c = true;

    public final int f49032a;

    public final DG f49033b;

    public C7797ij(int i10, DG dg2) {
        if (!f49031c && i10 < 0) {
            throw new AssertionError();
        }
        this.f49032a = i10;
        this.f49033b = dg2;
    }

    public final String a(boolean z10) {
        StringBuilder sb2 = new StringBuilder("params:");
        sb2.append(this.f49032a);
        sb2.append('\n');
        DG dg2 = this.f49033b;
        if (dg2 != null) {
            CG cg2 = new CG(((C8731oG) dg2.values()).f51202b);
            while (cg2.hasNext()) {
                sb2.append(cg2.a().f44051c);
                sb2.append('\n');
            }
        } else {
            sb2.append(" no conversions\n");
        }
        return sb2.toString();
    }

    public final String toString() {
        return a(false);
    }
}
