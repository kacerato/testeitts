package hi;

import java.io.IOException;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14512e;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;

public class C13478B extends AbstractC14545v {

    public C14549x f90551b;

    public boolean f90552c;

    public AbstractC14551y f90553d;

    public static final C14549x f90529e = new C14549x("2.5.29.9").M();

    public static final C14549x f90530f = new C14549x("2.5.29.14").M();

    public static final C14549x f90531g = new C14549x("2.5.29.15").M();

    public static final C14549x f90532h = new C14549x("2.5.29.16").M();

    public static final C14549x f90533i = new C14549x("2.5.29.17").M();

    public static final C14549x f90534j = new C14549x("2.5.29.18").M();

    public static final C14549x f90535k = new C14549x("2.5.29.19").M();

    public static final C14549x f90536l = new C14549x("2.5.29.20").M();

    public static final C14549x f90537m = new C14549x("2.5.29.21").M();

    public static final C14549x f90538n = new C14549x("2.5.29.23").M();

    public static final C14549x f90539o = new C14549x("2.5.29.24").M();

    public static final C14549x f90540p = new C14549x("2.5.29.27").M();

    public static final C14549x f90541q = new C14549x("2.5.29.28").M();

    public static final C14549x f90542r = new C14549x("2.5.29.29").M();

    public static final C14549x f90543s = new C14549x("2.5.29.30").M();

    public static final C14549x f90544t = new C14549x("2.5.29.31").M();

    public static final C14549x f90545u = new C14549x("2.5.29.32").M();

    public static final C14549x f90546v = new C14549x("2.5.29.33").M();

    public static final C14549x f90547w = new C14549x("2.5.29.35").M();

    public static final C14549x f90548x = new C14549x("2.5.29.36").M();

    public static final C14549x f90549y = new C14549x("2.5.29.37").M();

    public static final C14549x f90550z = new C14549x("2.5.29.46").M();

    public static final C14549x f90515A = new C14549x("2.5.29.54").M();

    public static final C14549x f90516B = new C14549x("1.3.6.1.5.5.7.1.1").M();

    public static final C14549x f90517C = new C14549x("1.3.6.1.5.5.7.1.11").M();

    public static final C14549x f90518D = new C14549x("1.3.6.1.5.5.7.1.12").M();

    public static final C14549x f90519E = new C14549x("1.3.6.1.5.5.7.1.2").M();

    public static final C14549x f90520F = new C14549x("1.3.6.1.5.5.7.1.3").M();

    public static final C14549x f90521G = new C14549x("1.3.6.1.5.5.7.1.4").M();

    public static final C14549x f90522H = new C14549x("2.5.29.56").M();

    public static final C14549x f90523I = new C14549x("2.5.29.55").M();

    public static final C14549x f90524J = new C14549x("2.5.29.60").M();

    public static final C14549x f90525K = new C14549x("2.5.29.72").M();

    public static final C14549x f90526L = new C14549x("2.5.29.73").M();

    public static final C14549x f90527M = new C14549x("2.5.29.74").M();

    public static final C14549x f90528N = new C14549x("2.16.840.1.114027.80.6.1");

    public C13478B(C14549x c14549x, C14512e c14512e, AbstractC14551y abstractC14551y) {
        this(c14549x, c14512e.J(), abstractC14551y);
    }

    public static oh.B u(C13478B c13478b) throws IllegalArgumentException {
        try {
            return oh.B.B(c13478b.y().H());
        } catch (IOException e10) {
            throw new IllegalArgumentException("can't convert extension: " + ((Object) e10));
        }
    }

    public static C13478B v(C14549x c14549x, boolean z10, InterfaceC14516g interfaceC14516g) throws IOException {
        return new C13478B(c14549x, z10, interfaceC14516g.r().getEncoded());
    }

    public static C13478B z(Object obj) {
        if (obj instanceof C13478B) {
            return (C13478B) obj;
        }
        if (obj != null) {
            return new C13478B(oh.E.G(obj));
        }
        return null;
    }

    public InterfaceC14516g A() {
        return u(this);
    }

    public boolean B() {
        return this.f90552c;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof C13478B)) {
            return false;
        }
        C13478B c13478b = (C13478B) obj;
        return c13478b.x().A(x()) && c13478b.y().A(y()) && c13478b.B() == B();
    }

    @Override
    public int hashCode() {
        return B() ? y().hashCode() ^ x().hashCode() : ~(y().hashCode() ^ x().hashCode());
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f90551b);
        if (this.f90552c) {
            c14518h.a(C14512e.I(true));
        }
        c14518h.a(this.f90553d);
        return new G0(c14518h);
    }

    public C14549x x() {
        return this.f90551b;
    }

    public AbstractC14551y y() {
        return this.f90553d;
    }

    public C13478B(C14549x c14549x, boolean z10, AbstractC14551y abstractC14551y) {
        this.f90551b = c14549x;
        this.f90552c = z10;
        this.f90553d = abstractC14551y;
    }

    public C13478B(C14549x c14549x, boolean z10, byte[] bArr) {
        this(c14549x, z10, new oh.C0(org.bouncycastle.util.a.p(bArr)));
    }

    public C13478B(oh.E e10) {
        InterfaceC14516g I10;
        if (e10.size() == 2) {
            this.f90551b = C14549x.K(e10.I(0));
            this.f90552c = false;
            I10 = e10.I(1);
        } else {
            if (e10.size() != 3) {
                throw new IllegalArgumentException("Bad sequence size: " + e10.size());
            }
            this.f90551b = C14549x.K(e10.I(0));
            this.f90552c = C14512e.G(e10.I(1)).J();
            I10 = e10.I(2);
        }
        this.f90553d = AbstractC14551y.F(I10);
    }
}
