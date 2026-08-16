package zh;

import hi.C13479C;
import hi.C13482F;
import hi.W;
import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14530n;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class g extends AbstractC14545v {

    public static final int f131402k = 1;

    public static final int f131403l = 0;

    public static final int f131404m = 1;

    public static final int f131405n = 2;

    public static final int f131406o = 3;

    public static final int f131407p = 4;

    public int f131408b;

    public m f131409c;

    public BigInteger f131410d;

    public j f131411e;

    public C13482F f131412f;

    public W f131413g;

    public C13482F f131414h;

    public C13482F f131415i;

    public C13479C f131416j;

    public g(E e10) {
        int i10;
        this.f131408b = 1;
        if (e10.I(0) instanceof C14539s) {
            this.f131408b = C14539s.F(e10.I(0)).O();
            i10 = 1;
        } else {
            this.f131408b = 1;
            i10 = 0;
        }
        this.f131409c = m.u(e10.I(i10));
        for (int i11 = i10 + 1; i11 < e10.size(); i11++) {
            InterfaceC14516g I10 = e10.I(i11);
            if (I10 instanceof C14539s) {
                this.f131410d = C14539s.F(I10).I();
            } else if (!(I10 instanceof C14530n) && (I10 instanceof M)) {
                M R10 = M.R(I10);
                int g10 = R10.g();
                if (g10 == 0) {
                    this.f131412f = C13482F.x(R10, false);
                } else if (g10 == 1) {
                    this.f131413g = W.u(E.H(R10, false));
                } else if (g10 == 2) {
                    this.f131414h = C13482F.x(R10, false);
                } else if (g10 == 3) {
                    this.f131415i = C13482F.x(R10, false);
                } else {
                    if (g10 != 4) {
                        throw new IllegalArgumentException("unknown tag number encountered: " + g10);
                    }
                    this.f131416j = C13479C.D(R10, false);
                }
            } else {
                this.f131411e = j.v(I10);
            }
        }
    }

    public static g y(Object obj) {
        if (obj instanceof g) {
            return (g) obj;
        }
        if (obj != null) {
            return new g(E.G(obj));
        }
        return null;
    }

    public static g z(M m10, boolean z10) {
        return y(E.H(m10, z10));
    }

    public BigInteger A() {
        return this.f131410d;
    }

    public W B() {
        return this.f131413g;
    }

    public j C() {
        return this.f131411e;
    }

    public C13482F D() {
        return this.f131412f;
    }

    public m E() {
        return this.f131409c;
    }

    public int F() {
        return this.f131408b;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(9);
        if (this.f131408b != 1) {
            c14518h.a(new C14539s(this.f131408b));
        }
        c14518h.a(this.f131409c);
        if (this.f131410d != null) {
            c14518h.a(new C14539s(this.f131410d));
        }
        j jVar = this.f131411e;
        if (jVar != null) {
            c14518h.a(jVar);
        }
        int[] iArr = {0, 1, 2, 3, 4};
        InterfaceC14516g[] interfaceC14516gArr = {this.f131412f, this.f131413g, this.f131414h, this.f131415i, this.f131416j};
        for (int i10 = 0; i10 < 5; i10++) {
            int i11 = iArr[i10];
            InterfaceC14516g interfaceC14516g = interfaceC14516gArr[i10];
            if (interfaceC14516g != null) {
                c14518h.a(new K0(false, i11, interfaceC14516g));
            }
        }
        return new G0(c14518h);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("DVCSRequestInformation {\n");
        if (this.f131408b != 1) {
            stringBuffer.append("version: " + this.f131408b + "\n");
        }
        stringBuffer.append("service: " + ((Object) this.f131409c) + "\n");
        if (this.f131410d != null) {
            stringBuffer.append("nonce: " + ((Object) this.f131410d) + "\n");
        }
        if (this.f131411e != null) {
            stringBuffer.append("requestTime: " + ((Object) this.f131411e) + "\n");
        }
        if (this.f131412f != null) {
            stringBuffer.append("requester: " + ((Object) this.f131412f) + "\n");
        }
        if (this.f131413g != null) {
            stringBuffer.append("requestPolicy: " + ((Object) this.f131413g) + "\n");
        }
        if (this.f131414h != null) {
            stringBuffer.append("dvcs: " + ((Object) this.f131414h) + "\n");
        }
        if (this.f131415i != null) {
            stringBuffer.append("dataLocations: " + ((Object) this.f131415i) + "\n");
        }
        if (this.f131416j != null) {
            stringBuffer.append("extensions: " + ((Object) this.f131416j) + "\n");
        }
        stringBuffer.append("}\n");
        return stringBuffer.toString();
    }

    public C13482F u() {
        return this.f131414h;
    }

    public C13482F v() {
        return this.f131415i;
    }

    public C13479C x() {
        return this.f131416j;
    }
}
