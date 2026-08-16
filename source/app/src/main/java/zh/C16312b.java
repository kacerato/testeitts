package zh;

import hi.C13479C;
import hi.C13510w;
import hi.W;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;
import th.L;

public class C16312b extends AbstractC14545v {

    public static final int f131360l = 1;

    public static final int f131361m = 0;

    public static final int f131362n = 1;

    public static final int f131363o = 2;

    public static final int f131364p = 3;

    public int f131365b;

    public g f131366c;

    public C13510w f131367d;

    public C14539s f131368e;

    public j f131369f;

    public L f131370g;

    public W f131371h;

    public G f131372i;

    public E f131373j;

    public C13479C f131374k;

    public C16312b(E e10) {
        int i10;
        this.f131365b = 1;
        InterfaceC14516g I10 = e10.I(0);
        try {
            this.f131365b = C14539s.F(I10).O();
            try {
                I10 = e10.I(1);
            } catch (IllegalArgumentException unused) {
            }
            i10 = 2;
        } catch (IllegalArgumentException unused2) {
            i10 = 1;
        }
        this.f131366c = g.y(I10);
        this.f131367d = C13510w.w(e10.I(i10));
        int i11 = i10 + 2;
        this.f131368e = C14539s.F(e10.I(i10 + 1));
        int i12 = i10 + 3;
        this.f131369f = j.v(e10.I(i11));
        while (i12 < e10.size()) {
            int i13 = i12 + 1;
            InterfaceC14516g I11 = e10.I(i12);
            if (I11 instanceof M) {
                M R10 = M.R(I11);
                int g10 = R10.g();
                if (g10 == 0) {
                    this.f131370g = L.w(R10, false);
                } else if (g10 == 1) {
                    this.f131371h = W.u(E.H(R10, false));
                } else if (g10 == 2) {
                    this.f131372i = G.G(R10, false);
                } else {
                    if (g10 != 3) {
                        throw new IllegalArgumentException("Unknown tag encountered: " + g10);
                    }
                    this.f131373j = E.H(R10, false);
                }
            } else {
                try {
                    this.f131374k = C13479C.C(I11);
                } catch (IllegalArgumentException unused3) {
                }
            }
            i12 = i13;
        }
    }

    public static C16312b A(M m10, boolean z10) {
        return z(E.H(m10, z10));
    }

    public static C16312b z(Object obj) {
        if (obj instanceof C16312b) {
            return (C16312b) obj;
        }
        if (obj != null) {
            return new C16312b(E.G(obj));
        }
        return null;
    }

    public C13510w B() {
        return this.f131367d;
    }

    public W C() {
        return this.f131371h;
    }

    public G D() {
        return this.f131372i;
    }

    public j E() {
        return this.f131369f;
    }

    public C14539s F() {
        return this.f131368e;
    }

    public int G() {
        return this.f131365b;
    }

    public final void H(g gVar) {
        this.f131366c = gVar;
    }

    public final void I(C13510w c13510w) {
        this.f131367d = c13510w;
    }

    public final void J(int i10) {
        this.f131365b = i10;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(10);
        if (this.f131365b != 1) {
            c14518h.a(new C14539s(this.f131365b));
        }
        c14518h.a(this.f131366c);
        c14518h.a(this.f131367d);
        c14518h.a(this.f131368e);
        c14518h.a(this.f131369f);
        L l10 = this.f131370g;
        if (l10 != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) l10));
        }
        W w10 = this.f131371h;
        if (w10 != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) w10));
        }
        G g10 = this.f131372i;
        if (g10 != null) {
            c14518h.a(new K0(false, 2, (InterfaceC14516g) g10));
        }
        E e10 = this.f131373j;
        if (e10 != null) {
            c14518h.a(new K0(false, 3, (InterfaceC14516g) e10));
        }
        C13479C c13479c = this.f131374k;
        if (c13479c != null) {
            c14518h.a(c13479c);
        }
        return new G0(c14518h);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("DVCSCertInfo {\n");
        if (this.f131365b != 1) {
            stringBuffer.append("version: " + this.f131365b + "\n");
        }
        stringBuffer.append("dvReqInfo: " + ((Object) this.f131366c) + "\n");
        stringBuffer.append("messageImprint: " + ((Object) this.f131367d) + "\n");
        stringBuffer.append("serialNumber: " + ((Object) this.f131368e) + "\n");
        stringBuffer.append("responseTime: " + ((Object) this.f131369f) + "\n");
        if (this.f131370g != null) {
            stringBuffer.append("dvStatus: " + ((Object) this.f131370g) + "\n");
        }
        if (this.f131371h != null) {
            stringBuffer.append("policy: " + ((Object) this.f131371h) + "\n");
        }
        if (this.f131372i != null) {
            stringBuffer.append("reqSignature: " + ((Object) this.f131372i) + "\n");
        }
        if (this.f131373j != null) {
            stringBuffer.append("certs: " + ((Object) this.f131373j) + "\n");
        }
        if (this.f131374k != null) {
            stringBuffer.append("extensions: " + ((Object) this.f131374k) + "\n");
        }
        stringBuffer.append("}\n");
        return stringBuffer.toString();
    }

    public n[] u() {
        E e10 = this.f131373j;
        if (e10 != null) {
            return n.u(e10);
        }
        return null;
    }

    public g v() {
        return this.f131366c;
    }

    public L x() {
        return this.f131370g;
    }

    public C13479C y() {
        return this.f131374k;
    }

    public C16312b(g gVar, C13510w c13510w, C14539s c14539s, j jVar) {
        this.f131365b = 1;
        this.f131366c = gVar;
        this.f131367d = c13510w;
        this.f131368e = c14539s;
        this.f131369f = jVar;
    }
}
