package oh;

import java.io.IOException;

public abstract class M extends B implements N {

    public static final int f98813f = 1;

    public static final int f98814g = 2;

    public static final int f98815h = 3;

    public static final int f98816i = 4;

    public final int f98817b;

    public final int f98818c;

    public final int f98819d;

    public final InterfaceC14516g f98820e;

    public M(int i10, int i11, int i12, InterfaceC14516g interfaceC14516g) {
        if (interfaceC14516g == null) {
            throw new NullPointerException("'obj' cannot be null");
        }
        if (i11 == 0 || (i11 & 192) != i11) {
            throw new IllegalArgumentException("invalid tag class: " + i11);
        }
        this.f98817b = interfaceC14516g instanceof InterfaceC14514f ? 1 : i10;
        this.f98818c = i11;
        this.f98819d = i12;
        this.f98820e = interfaceC14516g;
    }

    public static M E(Object obj) {
        if (obj != null) {
            return R(obj);
        }
        throw new NullPointerException("'obj' cannot be null");
    }

    public static M F(M m10, boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException("this method not valid for implicitly tagged tagged objects");
        }
        if (m10 != null) {
            return m10;
        }
        throw new NullPointerException("'taggedObject' cannot be null");
    }

    public static M G(B b10) {
        if (b10 instanceof M) {
            return (M) b10;
        }
        throw new IllegalStateException("unexpected object: " + b10.getClass().getName());
    }

    public static B H(int i10, int i11, C14518h c14518h) {
        return c14518h.i() == 1 ? new Z0(3, i10, i11, c14518h.g(0)) : new Z0(4, i10, i11, T0.a(c14518h));
    }

    public static B I(int i10, int i11, C14518h c14518h) {
        return c14518h.i() == 1 ? new C14527l0(3, i10, i11, c14518h.g(0)) : new C14527l0(4, i10, i11, C14505a0.a(c14518h));
    }

    public static B J(int i10, int i11, byte[] bArr) {
        return new Z0(4, i10, i11, new C0(bArr));
    }

    public static M R(Object obj) {
        if (obj == null || (obj instanceof M)) {
            return (M) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof M) {
                return (M) r10;
            }
        } else if (obj instanceof byte[]) {
            try {
                return G(B.B((byte[]) obj));
            } catch (IOException e10) {
                throw new IllegalArgumentException("failed to construct tagged object from byte[]: " + e10.getMessage());
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    public static M S(Object obj, int i10) {
        return V.g(E(obj), i10);
    }

    public static M T(Object obj, int i10, int i11) {
        return V.e(E(obj), i10, i11);
    }

    public static M U(M m10, int i10, int i11, boolean z10) {
        return V.m(F(m10, z10), i10, i11);
    }

    public static M V(M m10, int i10, boolean z10) {
        return V.l(F(m10, z10), i10);
    }

    public static M W(M m10, boolean z10) {
        return V.o(F(m10, z10));
    }

    @Override
    public B C() {
        return new K0(this.f98817b, this.f98818c, this.f98819d, this.f98820e);
    }

    @Override
    public B D() {
        return new Z0(this.f98817b, this.f98818c, this.f98819d, this.f98820e);
    }

    public AbstractC14545v L() {
        InterfaceC14516g interfaceC14516g = this.f98820e;
        return interfaceC14516g instanceof AbstractC14545v ? (AbstractC14545v) interfaceC14516g : interfaceC14516g.r();
    }

    public B M(boolean z10, int i10) {
        T a10 = U.a(i10);
        if (a10 != null) {
            return N(z10, a10);
        }
        throw new IllegalArgumentException("unsupported UNIVERSAL tag number: " + i10);
    }

    public B N(boolean z10, T t10) {
        if (z10) {
            if (X()) {
                return t10.b(this.f98820e.r());
            }
            throw new IllegalStateException("object explicit - implicit expected.");
        }
        if (1 == this.f98817b) {
            throw new IllegalStateException("object explicit - implicit expected.");
        }
        B r10 = this.f98820e.r();
        int i10 = this.f98817b;
        return i10 != 3 ? i10 != 4 ? t10.b(r10) : r10 instanceof E ? t10.d((E) r10) : t10.e((C0) r10) : t10.d(Z(r10));
    }

    public AbstractC14545v O() {
        if (!X()) {
            throw new IllegalStateException("object implicit - explicit expected.");
        }
        InterfaceC14516g interfaceC14516g = this.f98820e;
        return interfaceC14516g instanceof AbstractC14545v ? (AbstractC14545v) interfaceC14516g : interfaceC14516g.r();
    }

    public M P() {
        if (X()) {
            return G(this.f98820e.r());
        }
        throw new IllegalStateException("object implicit - explicit expected.");
    }

    public M Q(int i10, int i11) {
        if (i10 == 0 || (i10 & 192) != i10) {
            throw new IllegalArgumentException("invalid base tag class: " + i10);
        }
        int i12 = this.f98817b;
        if (i12 != 1) {
            return i12 != 2 ? a0(i10, i11) : V.e(G(this.f98820e.r()), i10, i11);
        }
        throw new IllegalStateException("object explicit - implicit expected.");
    }

    public boolean X() {
        int i10 = this.f98817b;
        return i10 == 1 || i10 == 3;
    }

    public boolean Y() {
        int i10 = this.f98817b;
        return i10 == 3 || i10 == 4;
    }

    public abstract E Z(B b10);

    public abstract M a0(int i10, int i11);

    @Override
    public InterfaceC14516g b() throws IOException {
        return O();
    }

    @Override
    public final B c() {
        return this;
    }

    @Override
    public InterfaceC14516g d(boolean z10, int i10) throws IOException {
        B M10 = M(z10, i10);
        return i10 != 3 ? i10 != 4 ? i10 != 16 ? i10 != 17 ? M10 : ((G) M10).L() : ((E) M10).L() : ((AbstractC14551y) M10).J() : ((AbstractC14508c) M10).M();
    }

    @Override
    public int g() {
        return this.f98819d;
    }

    @Override
    public N h(int i10, int i11) throws IOException {
        return Q(i10, i11);
    }

    @Override
    public int hashCode() {
        return (((this.f98818c * 7919) ^ this.f98819d) ^ (X() ? 15 : 240)) ^ this.f98820e.r().hashCode();
    }

    @Override
    public N j() throws IOException {
        return P();
    }

    @Override
    public boolean k(int i10) {
        return this.f98818c == i10;
    }

    @Override
    public int l() {
        return this.f98818c;
    }

    @Override
    public boolean m(int i10, int i11) {
        return this.f98818c == i10 && this.f98819d == i11;
    }

    @Override
    public boolean o() {
        return this.f98818c == 128;
    }

    @Override
    public boolean p(int i10) {
        return this.f98818c == 128 && this.f98819d == i10;
    }

    public String toString() {
        return V.w(this.f98818c, this.f98819d) + ((Object) this.f98820e);
    }

    @Override
    public final boolean u(B b10) {
        if (!(b10 instanceof M)) {
            return false;
        }
        M m10 = (M) b10;
        if (this.f98819d != m10.f98819d || this.f98818c != m10.f98818c) {
            return false;
        }
        if (this.f98817b != m10.f98817b && X() != m10.X()) {
            return false;
        }
        B r10 = this.f98820e.r();
        B r11 = m10.f98820e.r();
        if (r10 == r11) {
            return true;
        }
        if (X()) {
            return r10.u(r11);
        }
        try {
            return org.bouncycastle.util.a.g(getEncoded(), m10.getEncoded());
        } catch (IOException unused) {
            return false;
        }
    }

    public M(boolean z10, int i10, int i11, InterfaceC14516g interfaceC14516g) {
        this(z10 ? 1 : 2, i10, i11, interfaceC14516g);
    }

    public M(boolean z10, int i10, InterfaceC14516g interfaceC14516g) {
        this(z10, 128, i10, interfaceC14516g);
    }
}
