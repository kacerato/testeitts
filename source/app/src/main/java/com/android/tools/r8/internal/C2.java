package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.List;

public enum C2 implements C40<C2> {
    B(1),
    B_1_1(2),
    C(3),
    D(4),
    E(5),
    E_0_1(6),
    E_MR1(7),
    F(8),
    G(9),
    G_MR1(10),
    H(11),
    H_MR1(12),
    H_MR2(13),
    I(14),
    I_MR1(15),
    J(16),
    J_MR1(17),
    J_MR2(18),
    K(19),
    K_WATCH(20),
    L(21),
    L_MR1(22),
    M(23),
    N(24),
    N_MR1(25),
    O(26),
    O_MR1(27),
    P(28),
    Q(29),
    R(30),
    S(31),
    Sv2(32),
    T(33),
    U(34),
    V(35),
    BAKLAVA(36),
    MAIN(37),
    EXTENSION(Integer.MAX_VALUE);


    public static final C2 f39077O;

    public static final C2 f39078P;

    public static final C2 f39079Q;

    public static final boolean f39081S = true;

    public final int f39106b;

    static {
        C2 c22 = BAKLAVA;
        C2 c23 = MAIN;
        f39077O = c22;
        f39078P = c22;
        f39079Q = c23;
    }

    C2(int i10) {
        this.f39106b = i10;
    }

    public static List<C2> a() {
        return Arrays.asList(values());
    }

    public static C2 b() {
        return B;
    }

    public C2 c(C2 c22) {
        return (C2) C40.d(this, c22);
    }

    @Override
    public final int compareTo(C2 c22) {
        return compareTo(c22);
    }

    public int d() {
        return this.f39106b;
    }

    public final String e() {
        return "Android " + name();
    }

    public C2 f() {
        return a(d() + 1);
    }

    public static C2 a(int i10) {
        boolean z10 = f39081S;
        if (!z10 && i10 <= 0) {
            throw new AssertionError();
        }
        if (!z10 && BAKLAVA != f39077O) {
            throw new AssertionError();
        }
        if (!z10 && !f39079Q.c(f39077O)) {
            throw new AssertionError();
        }
        switch (i10) {
            case 1:
                return B;
            case 2:
                return B_1_1;
            case 3:
                return C;
            case 4:
                return D;
            case 5:
                return E;
            case 6:
                return E_0_1;
            case 7:
                return E_MR1;
            case 8:
                return F;
            case 9:
                return G;
            case 10:
                return G_MR1;
            case 11:
                return H;
            case 12:
                return H_MR1;
            case 13:
                return H_MR2;
            case 14:
                return I;
            case 15:
                return I_MR1;
            case 16:
                return J;
            case 17:
                return J_MR1;
            case 18:
                return J_MR2;
            case 19:
                return K;
            case 20:
                return K_WATCH;
            case 21:
                return L;
            case 22:
                return L_MR1;
            case 23:
                return M;
            case 24:
                return N;
            case 25:
                return N_MR1;
            case 26:
                return O;
            case 27:
                return O_MR1;
            case 28:
                return P;
            case 29:
                return Q;
            case 30:
                return R;
            case 31:
                return S;
            case 32:
                return Sv2;
            case 33:
                return T;
            case 34:
                return U;
            case 35:
                return V;
            case 36:
                return BAKLAVA;
            default:
                return MAIN;
        }
    }

    public EnumC5583Ms c() {
        return EnumC5583Ms.c(this);
    }

    public static C2 a(String str) {
        int indexOf = str.indexOf(46);
        if (indexOf == -1) {
            return a(Integer.parseInt(str));
        }
        String substring = str.substring(0, indexOf);
        String substring2 = str.substring(indexOf + 1);
        if (f39081S || Integer.parseInt(substring2) >= 0) {
            return a(Integer.parseInt(substring));
        }
        throw new AssertionError();
    }
}
