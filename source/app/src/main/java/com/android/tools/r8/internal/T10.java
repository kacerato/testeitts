package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;

public enum T10 {
    f44366b,
    f44367c,
    f44368d,
    f44369e,
    f44370f,
    f44371g,
    f44372h;

    T10() {
    }

    public final com.android.tools.r8.graph.M2 a(C4724u1 c4724u1) {
        switch (S10.f44063a[ordinal()]) {
            case 1:
                return c4724u1.f37856F1;
            case 2:
                return c4724u1.f37863G1;
            case 3:
                return c4724u1.f37898L1;
            case 4:
                return c4724u1.f37884J1;
            case 5:
                return c4724u1.f37891K1;
            case 6:
                return c4724u1.f37877I1;
            case 7:
                return c4724u1.f37870H1;
            default:
                throw new C5417Jv0("Invalid numeric type '" + ((Object) this) + "'");
        }
    }

    public static T10 a(com.android.tools.r8.graph.M2 m22) {
        byte b10 = m22.f36592f.f36562f[0];
        if (b10 == 70) {
            return f44371g;
        }
        if (b10 == 83) {
            return f44368d;
        }
        if (b10 == 73) {
            return f44369e;
        }
        if (b10 != 74) {
            switch (b10) {
                case 66:
                    return f44366b;
                case 67:
                    return f44367c;
                case 68:
                    return f44372h;
                default:
                    return null;
            }
        }
        return f44370f;
    }

    public boolean a() {
        return this == f44370f || this == f44372h;
    }
}
