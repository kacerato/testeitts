package vh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class C15847a extends AbstractC14545v {

    public final C13486b f121610b;

    public final byte[] f121611c;

    public final byte[] f121612d;

    public C15847a(C13486b c13486b, byte[] bArr) {
        this.f121610b = c13486b;
        this.f121611c = null;
        this.f121612d = org.bouncycastle.util.a.p(bArr);
    }

    public static C15847a u(Object obj) {
        if (obj instanceof C15847a) {
            return (C15847a) obj;
        }
        if (obj != null) {
            return new C15847a(E.G(obj));
        }
        return null;
    }

    public static C15847a v(M m10, boolean z10) {
        return u(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f121610b);
        if (this.f121611c != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) new C0(this.f121611c)));
        }
        c14518h.a(new K0(true, 2, (InterfaceC14516g) new C0(this.f121612d)));
        return new G0(c14518h);
    }

    public C15847a(C13486b c13486b, byte[] bArr, byte[] bArr2) {
        this.f121610b = c13486b;
        this.f121611c = org.bouncycastle.util.a.p(bArr);
        this.f121612d = org.bouncycastle.util.a.p(bArr2);
    }

    public C15847a(E e10) {
        this.f121610b = C13486b.v(e10.I(0));
        if (e10.size() == 2) {
            this.f121611c = null;
            this.f121612d = AbstractC14551y.G((M) e10.I(1), true).H();
        } else {
            this.f121611c = AbstractC14551y.G((M) e10.I(1), true).H();
            this.f121612d = AbstractC14551y.G((M) e10.I(2), true).H();
        }
    }
}
