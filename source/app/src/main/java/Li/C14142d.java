package li;

import hi.C13478B;
import hi.C13480D;
import hi.C13505q;
import java.io.IOException;
import oh.AbstractC14508c;
import oh.C14518h;
import oh.C14538r0;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import oh.K0;
import oh.M;

public class C14142d {
    public static C14146h a(C14146h c14146h) {
        E G10 = E.G(c14146h.b(C13478B.f90528N).A());
        E G11 = E.G(c14146h.x().E().r());
        InterfaceC14516g[] Q10 = G11.Q();
        Q10[0] = G11.I(0);
        Q10[1] = C14539s.F(G10.I(0));
        InterfaceC14516g I10 = G10.I(1);
        int i10 = 2;
        while (I10 instanceof M) {
            M R10 = M.R(I10);
            int g10 = R10.g();
            if (g10 == 0) {
                Q10[2] = E.H(R10, false);
            } else if (g10 == 1) {
                Q10[3] = E.H(R10, true);
            } else if (g10 == 2) {
                Q10[4] = E.H(R10, false);
            } else if (g10 == 3) {
                Q10[5] = E.H((M) I10, true);
            }
            int i11 = i10 + 1;
            InterfaceC14516g I11 = G10.I(i10);
            i10 = i11;
            I10 = I11;
        }
        Q10[6] = I10;
        if (Q10[2] == null) {
            Q10[2] = G11.I(2);
        }
        if (Q10[3] == null) {
            Q10[3] = G11.I(3);
        }
        if (Q10[4] == null) {
            Q10[4] = G11.I(4);
        }
        if (Q10[5] == null) {
            Q10[5] = G11.I(5);
        }
        C13480D b10 = b(G11);
        if (i10 < G10.size() - 1) {
            M R11 = M.R(G10.I(i10));
            if (R11.g() != 4) {
                throw new IllegalArgumentException("malformed delta extension");
            }
            E H10 = E.H(R11, false);
            for (int i12 = 0; i12 != H10.size(); i12++) {
                b10.j(C13478B.z(H10.I(i12)));
            }
            Q10[7] = new K0(3, b10.e());
        } else if (b10.h()) {
            Q10[7] = null;
        } else {
            Q10[7] = new K0(3, b10.e());
        }
        C14518h c14518h = new C14518h(7);
        for (int i13 = 0; i13 != Q10.length; i13++) {
            InterfaceC14516g interfaceC14516g = Q10[i13];
            if (interfaceC14516g != null) {
                c14518h.a(interfaceC14516g);
            }
        }
        C14518h c14518h2 = new C14518h();
        c14518h2.a(new G0(c14518h));
        c14518h2.a(E.G(Q10[2]));
        c14518h2.a(AbstractC14508c.H(G10.I(G10.size() - 1)));
        return new C14146h(C13505q.v(new G0(c14518h2)));
    }

    public static C13480D b(E e10) {
        C14549x c14549x = C13478B.f90528N;
        E H10 = E.H(M.R(e10.I(e10.size() - 1)), true);
        C13480D c13480d = new C13480D();
        for (int i10 = 0; i10 != H10.size(); i10++) {
            C13478B z10 = C13478B.z(H10.I(i10));
            if (!c14549x.A(z10.x())) {
                c13480d.a(z10);
            }
        }
        return c13480d;
    }

    public static C13478B c(boolean z10, C14146h c14146h) throws IOException {
        C14518h c14518h = new C14518h();
        c14518h.a(new C14539s(c14146h.i()));
        c14518h.a(new K0(false, 0, (InterfaceC14516g) c14146h.k()));
        c14518h.a(new K0(false, 1, (InterfaceC14516g) c14146h.e()));
        C14518h c14518h2 = new C14518h(2);
        c14518h2.a(c14146h.x().B());
        c14518h2.a(c14146h.x().u());
        c14518h.a(new K0(false, 2, (InterfaceC14516g) new G0(c14518h2)));
        c14518h.a(new K0(false, 3, (InterfaceC14516g) c14146h.l()));
        c14518h.a(c14146h.m());
        if (c14146h.d() != null) {
            c14518h.a(new K0(false, 4, (InterfaceC14516g) c14146h.d()));
        }
        c14518h.a(new C14538r0(c14146h.j()));
        return new C13478B(C13478B.f90528N, z10, new G0(c14518h).s(InterfaceC14520i.f98892a));
    }
}
