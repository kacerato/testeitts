package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.function.Function;

public interface InterfaceC8008jy {

    public static final int f49436a = 0;

    static {
        boolean z10 = AbstractC7841iy.f49127a;
    }

    static AD a(com.android.tools.r8.graph.M2 m22) {
        if (m22.P0()) {
            if (AbstractC7841iy.f49127a || m22.P0()) {
                return a((char) m22.v0().f36562f[0]);
            }
            throw new AssertionError();
        }
        if (AbstractC7841iy.f49127a || m22.Q0()) {
            return m22.N0() ? C8353m10.f50176c : b(m22);
        }
        throw new AssertionError();
    }

    static DD b(com.android.tools.r8.graph.M2 m22) {
        boolean z10 = AbstractC7841iy.f49127a;
        if (!z10 && !m22.Q0()) {
            throw new AssertionError();
        }
        if (z10 || !m22.N0()) {
            return new DD(m22);
        }
        throw new AssertionError();
    }

    boolean A();

    boolean B();

    boolean C();

    boolean D();

    AbstractC6668bv0 E();

    boolean F();

    C8353m10 G();

    C8103ka H();

    com.android.tools.r8.graph.M2 a(C4724u1 c4724u1);

    com.android.tools.r8.graph.M2 a(C4724u1 c4724u1, com.android.tools.r8.graph.M2 m22);

    Object a(AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC10992r0 abstractC10992r0);

    boolean a();

    InterfaceC10541z70 asPrimitive();

    DD b();

    boolean c();

    boolean d();

    AbstractC5247Gx0 e();

    boolean f();

    boolean g();

    ED h();

    boolean i();

    boolean isInitialized();

    boolean isPrimitive();

    com.android.tools.r8.graph.M2 j();

    S60 k();

    AbstractC5399Jm0 l();

    boolean m();

    boolean n();

    BD o();

    CD p();

    boolean q();

    boolean r();

    C7501gv0 s();

    boolean t();

    InterfaceC5189Fx0 u();

    int v();

    boolean w();

    InterfaceC5225Gm0 x();

    boolean y();

    C7167ev0 z();

    static InterfaceC10541z70 a(char c10) {
        if (c10 == 'F') {
            return C5014Cx.f39393c;
        }
        if (c10 == 'S') {
            return C5744Pl0.f43364c;
        }
        if (c10 == 'Z') {
            return Z6.f46167c;
        }
        if (c10 == 'I') {
            return NH.f42550c;
        }
        if (c10 != 'J') {
            switch (c10) {
                case 'B':
                    return Y7.f45933c;
                case 'C':
                    return C5602Nb.f42635c;
                case 'D':
                    return C7494gt.f48380c;
                default:
                    throw new C5417Jv0("Unexpected primitive type: " + c10);
            }
        }
        return C7759iU.f48954c;
    }

    static AD a(YV yv, C4724u1 c4724u1) {
        if (!AbstractC7841iy.f49127a && !yv.a()) {
            throw new AssertionError();
        }
        switch (yv.ordinal()) {
            case 0:
                return b(c4724u1.f38068i2);
            case 1:
            case 2:
            case 3:
            case 4:
                return NH.f42550c;
            case 5:
                return C5014Cx.f39393c;
            case 6:
                return C7759iU.f48954c;
            case 7:
                return C7494gt.f48380c;
            default:
                throw new C5417Jv0("Unexpected MemberType: " + ((Object) yv));
        }
    }

    default InterfaceC8008jy a(Function function) {
        if (AbstractC7841iy.f49127a || !D()) {
            return this;
        }
        throw new AssertionError();
    }
}
