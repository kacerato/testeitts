package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;

public abstract class D70 extends AbstractC8999pu0 {

    public static final boolean f39450b = true;

    @Override
    public final C8854p10 B() {
        return C8854p10.b();
    }

    public abstract String D();

    public abstract String E();

    public final com.android.tools.r8.graph.M2 a(C4724u1 c4724u1) {
        if (this instanceof C8537n7) {
            return c4724u1.f37849E1;
        }
        if (this instanceof C8540n8) {
            return c4724u1.f37856F1;
        }
        if (this instanceof C5860Rl0) {
            return c4724u1.f37898L1;
        }
        if (this instanceof C6610bc) {
            return c4724u1.f37863G1;
        }
        if (this instanceof C9736uI) {
            return c4724u1.f37884J1;
        }
        if (this instanceof C5188Fx) {
            return c4724u1.f37877I1;
        }
        if (this instanceof C9593tU) {
            return c4724u1.f37891K1;
        }
        if (this instanceof C8160kt) {
            return c4724u1.f37870H1;
        }
        throw new C5417Jv0("Imprecise primitive type '" + toString() + "'");
    }

    @Override
    public final D70 c() {
        return this;
    }

    @Override
    public final boolean x() {
        return true;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x0018. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static D70 a(char c10, boolean z10) {
        if (c10 != 'F') {
            if (c10 != 'S') {
                if (c10 == 'V') {
                    throw new C6570bJ("No value type for void type.");
                }
                if (c10 != 'Z') {
                    if (c10 != 'I') {
                        if (c10 != 'J') {
                            switch (c10) {
                                case 'B':
                                    break;
                                case 'C':
                                    if (z10) {
                                        return AbstractC8999pu0.h();
                                    }
                                    break;
                                case 'D':
                                    return AbstractC8999pu0.i();
                                default:
                                    throw new C5417Jv0("Invalid descriptor char '" + c10 + "'");
                            }
                        } else {
                            return AbstractC8999pu0.l();
                        }
                    }
                    return AbstractC8999pu0.k();
                }
                if (z10) {
                    return AbstractC8999pu0.e();
                }
                if (z10) {
                    return AbstractC8999pu0.g();
                }
            }
            if (z10) {
                return AbstractC8999pu0.n();
            }
            if (z10) {
            }
            return AbstractC8999pu0.k();
        }
        return AbstractC8999pu0.j();
    }

    public static D70 a(T10 t10) {
        switch (C70.f39126a[t10.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                return AbstractC8999pu0.k();
            case 5:
                return AbstractC8999pu0.j();
            case 6:
                return AbstractC8999pu0.l();
            case 7:
                return AbstractC8999pu0.i();
            default:
                throw new C5417Jv0("Invalid numeric type '" + ((Object) t10) + "'");
        }
    }
}
