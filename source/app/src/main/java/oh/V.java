package oh;

import java.io.IOException;

public abstract class V {
    public static InterfaceC14516g A(N n10, int i10, int i11, boolean z10, int i12) throws IOException {
        return f(n10, i10, i11).d(z10, i12);
    }

    public static InterfaceC14516g B(N n10, int i10, boolean z10, int i11) throws IOException {
        return A(n10, 128, i10, z10, i11);
    }

    public static InterfaceC14516g C(N n10, int i10, int i11) throws IOException {
        return f(n10, i10, i11).b();
    }

    public static N D(N n10, int i10) throws IOException {
        return h(n10, i10).j();
    }

    public static N E(N n10, int i10, int i11) throws IOException {
        return f(n10, i10, i11).j();
    }

    public static InterfaceC14516g F(N n10, int i10) throws IOException {
        return C(n10, 128, i10);
    }

    public static N G(N n10) throws IOException {
        return D(n10, 128);
    }

    public static N H(N n10, int i10) throws IOException {
        return E(n10, 128, i10);
    }

    public static N I(N n10, int i10, int i11, int i12, int i13) throws IOException {
        return f(n10, i10, i11).h(i12, i13);
    }

    public static N J(N n10, int i10, int i11, int i12) throws IOException {
        return I(n10, 128, i10, i11, i12);
    }

    public static B K(M m10, int i10, int i11, boolean z10, int i12) {
        if (m10.m(i10, i11)) {
            return m10.M(z10, i12);
        }
        return null;
    }

    public static B L(M m10, int i10, boolean z10, int i11) {
        return K(m10, 128, i10, z10, i11);
    }

    public static AbstractC14545v M(M m10, int i10, int i11) {
        if (m10.m(i10, i11)) {
            return m10.O();
        }
        return null;
    }

    public static M N(M m10, int i10) {
        if (m10.k(i10)) {
            return m10.P();
        }
        return null;
    }

    public static M O(M m10, int i10, int i11) {
        if (m10.m(i10, i11)) {
            return m10.P();
        }
        return null;
    }

    public static AbstractC14545v P(M m10, int i10) {
        return M(m10, 128, i10);
    }

    public static M Q(M m10) {
        return N(m10, 128);
    }

    public static M R(M m10, int i10) {
        return O(m10, 128, i10);
    }

    public static M S(M m10, int i10, int i11, int i12, int i13) {
        if (m10.m(i10, i11)) {
            return m10.Q(i12, i13);
        }
        return null;
    }

    public static M T(M m10, int i10, int i11, int i12) {
        return S(m10, 128, i10, i11, i12);
    }

    public static InterfaceC14516g U(N n10, int i10, int i11, boolean z10, int i12) throws IOException {
        if (n10.m(i10, i11)) {
            return n10.d(z10, i12);
        }
        return null;
    }

    public static InterfaceC14516g V(N n10, int i10, boolean z10, int i11) throws IOException {
        return U(n10, 128, i10, z10, i11);
    }

    public static InterfaceC14516g W(N n10, int i10, int i11) throws IOException {
        if (n10.m(i10, i11)) {
            return n10.b();
        }
        return null;
    }

    public static N X(N n10, int i10) throws IOException {
        if (n10.k(i10)) {
            return n10.j();
        }
        return null;
    }

    public static N Y(N n10, int i10, int i11) throws IOException {
        if (n10.m(i10, i11)) {
            return n10.j();
        }
        return null;
    }

    public static InterfaceC14516g Z(N n10, int i10) throws IOException {
        return W(n10, 128, i10);
    }

    public static M a(M m10, int i10) {
        return e(m10, 128, i10);
    }

    public static N a0(N n10) throws IOException {
        return X(n10, 128);
    }

    public static N b(N n10, int i10) {
        return f(n10, 128, i10);
    }

    public static N b0(N n10, int i10) throws IOException {
        return Y(n10, 128, i10);
    }

    public static M c(M m10) {
        return g(m10, 128);
    }

    public static N c0(N n10, int i10, int i11, int i12, int i13) throws IOException {
        if (n10.m(i10, i11)) {
            return n10.h(i12, i13);
        }
        return null;
    }

    public static N d(N n10) {
        return h(n10, 128);
    }

    public static N d0(N n10, int i10, int i11, int i12) throws IOException {
        return c0(n10, 128, i10, i11, i12);
    }

    public static M e(M m10, int i10, int i11) {
        if (m10.m(i10, i11)) {
            return m10;
        }
        throw new IllegalStateException("Expected " + w(i10, i11) + " tag but found " + y(m10));
    }

    public static N f(N n10, int i10, int i11) {
        if (n10.m(i10, i11)) {
            return n10;
        }
        throw new IllegalStateException("Expected " + w(i10, i11) + " tag but found " + z(n10));
    }

    public static M g(M m10, int i10) {
        if (m10.k(i10)) {
            return m10;
        }
        throw new IllegalStateException("Expected " + s(i10) + " tag but found " + u(m10));
    }

    public static N h(N n10, int i10) {
        if (n10.k(i10)) {
            return n10;
        }
        throw new IllegalStateException("Expected " + s(i10) + " tag but found " + v(n10));
    }

    public static B i(M m10, int i10, int i11, boolean z10, int i12) {
        return e(m10, i10, i11).M(z10, i12);
    }

    public static B j(M m10, int i10, boolean z10, int i11) {
        return i(m10, 128, i10, z10, i11);
    }

    public static AbstractC14545v k(M m10, int i10, int i11) {
        return e(m10, i10, i11).O();
    }

    public static M l(M m10, int i10) {
        return g(m10, i10).P();
    }

    public static M m(M m10, int i10, int i11) {
        return e(m10, i10, i11).P();
    }

    public static AbstractC14545v n(M m10, int i10) {
        return k(m10, 128, i10);
    }

    public static M o(M m10) {
        return l(m10, 128);
    }

    public static M p(M m10, int i10) {
        return m(m10, 128, i10);
    }

    public static M q(M m10, int i10, int i11, int i12, int i13) {
        return e(m10, i10, i11).Q(i12, i13);
    }

    public static M r(M m10, int i10, int i11, int i12) {
        return q(m10, 128, i10, i11, i12);
    }

    public static String s(int i10) {
        return i10 != 64 ? i10 != 128 ? i10 != 192 ? "UNIVERSAL" : "PRIVATE" : "CONTEXT" : "APPLICATION";
    }

    public static String t(L l10) {
        return s(l10.b());
    }

    public static String u(M m10) {
        return s(m10.l());
    }

    public static String v(N n10) {
        return s(n10.l());
    }

    public static String w(int i10, int i11) {
        StringBuilder sb2;
        String str;
        if (i10 == 64) {
            sb2 = new StringBuilder();
            str = "[APPLICATION ";
        } else if (i10 == 128) {
            sb2 = new StringBuilder();
            str = "[CONTEXT ";
        } else if (i10 != 192) {
            sb2 = new StringBuilder();
            str = "[UNIVERSAL ";
        } else {
            sb2 = new StringBuilder();
            str = "[PRIVATE ";
        }
        sb2.append(str);
        sb2.append(i11);
        sb2.append("]");
        return sb2.toString();
    }

    public static String x(L l10) {
        return w(l10.b(), l10.c());
    }

    public static String y(M m10) {
        return w(m10.l(), m10.g());
    }

    public static String z(N n10) {
        return w(n10.l(), n10.g());
    }
}
