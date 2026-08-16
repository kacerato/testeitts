package Gj;

import Fk.C2539k;
import Fk.C2540l;
import Fk.C2541m;
import Fk.C2542n;
import Fk.j0;
import bi.InterfaceC3890b;
import java.io.IOException;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;

public class a {
    public static j0 a(C14549x c14549x, byte[] bArr) {
        E G10 = E.G(bArr);
        if (c14549x.A(Zh.d.f31273H)) {
            return new j0(0, new C2541m(new C2539k(0, new C0(org.bouncycastle.util.b.b(32, C14539s.F(G10.I(0)).I()))), new C0(org.bouncycastle.util.b.b(32, C14539s.F(G10.I(1)).I()))));
        }
        if (c14549x.A(InterfaceC3890b.f33255u)) {
            return new j0(1, new C2541m(new C2539k(0, new C0(org.bouncycastle.util.b.b(32, C14539s.F(G10.I(0)).I()))), new C0(org.bouncycastle.util.b.b(32, C14539s.F(G10.I(1)).I()))));
        }
        if (c14549x.A(InterfaceC3890b.f33259y)) {
            return new j0(2, new C2542n(new C2540l(0, new C0(org.bouncycastle.util.b.b(48, C14539s.F(G10.I(0)).I()))), new C0(org.bouncycastle.util.b.b(48, C14539s.F(G10.I(1)).I()))));
        }
        throw new IllegalArgumentException("unknown curveID");
    }

    public static byte[] b(j0 j0Var) {
        byte[] H10;
        AbstractC14551y y10;
        if (j0Var.x() == 0 || j0Var.x() == 1) {
            C2541m v10 = C2541m.v(j0Var.z());
            H10 = AbstractC14551y.F(v10.x().D()).H();
            y10 = v10.y();
        } else {
            C2542n v11 = C2542n.v(j0Var.z());
            H10 = AbstractC14551y.F(v11.x().B()).H();
            y10 = v11.y();
        }
        try {
            return new G0(new InterfaceC14516g[]{new C14539s(org.bouncycastle.util.b.i(H10)), new C14539s(org.bouncycastle.util.b.i(y10.H()))}).getEncoded();
        } catch (IOException unused) {
            throw new RuntimeException("der encoding r & s");
        }
    }
}
