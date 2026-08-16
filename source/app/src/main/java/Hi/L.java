package hi;

import ei.C13155a;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14512e;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class L extends AbstractC14545v {

    public C13513z f90672b;

    public boolean f90673c;

    public boolean f90674d;

    public C13489c0 f90675e;

    public boolean f90676f;

    public boolean f90677g;

    public oh.E f90678h;

    public L(C13513z c13513z, boolean z10, boolean z11) {
        this(c13513z, false, false, null, z10, z11);
    }

    private void u(StringBuffer stringBuffer, String str, String str2, String str3) {
        stringBuffer.append(C13155a.f85806a);
        stringBuffer.append(str2);
        stringBuffer.append(b3.s.f32937c);
        stringBuffer.append(str);
        stringBuffer.append(C13155a.f85806a);
        stringBuffer.append(C13155a.f85806a);
        stringBuffer.append(str3);
        stringBuffer.append(str);
    }

    public static L y(Object obj) {
        if (obj instanceof L) {
            return (L) obj;
        }
        if (obj != null) {
            return new L(oh.E.G(obj));
        }
        return null;
    }

    public static L z(oh.M m10, boolean z10) {
        return y(oh.E.H(m10, z10));
    }

    public C13489c0 A() {
        return this.f90675e;
    }

    public boolean B() {
        return this.f90676f;
    }

    public boolean C() {
        return this.f90677g;
    }

    public boolean D() {
        return this.f90674d;
    }

    public boolean E() {
        return this.f90673c;
    }

    @Override
    public oh.B r() {
        return this.f90678h;
    }

    public String toString() {
        String f10 = org.bouncycastle.util.w.f();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("IssuingDistributionPoint: [");
        stringBuffer.append(f10);
        C13513z c13513z = this.f90672b;
        if (c13513z != null) {
            u(stringBuffer, f10, "distributionPoint", c13513z.toString());
        }
        boolean z10 = this.f90673c;
        if (z10) {
            u(stringBuffer, f10, "onlyContainsUserCerts", v(z10));
        }
        boolean z11 = this.f90674d;
        if (z11) {
            u(stringBuffer, f10, "onlyContainsCACerts", v(z11));
        }
        C13489c0 c13489c0 = this.f90675e;
        if (c13489c0 != null) {
            u(stringBuffer, f10, "onlySomeReasons", c13489c0.toString());
        }
        boolean z12 = this.f90677g;
        if (z12) {
            u(stringBuffer, f10, "onlyContainsAttributeCerts", v(z12));
        }
        boolean z13 = this.f90676f;
        if (z13) {
            u(stringBuffer, f10, "indirectCRL", v(z13));
        }
        stringBuffer.append("]");
        stringBuffer.append(f10);
        return stringBuffer.toString();
    }

    public final String v(boolean z10) {
        return z10 ? "true" : "false";
    }

    public C13513z x() {
        return this.f90672b;
    }

    public L(C13513z c13513z, boolean z10, boolean z11, C13489c0 c13489c0, boolean z12, boolean z13) {
        this.f90672b = c13513z;
        this.f90676f = z12;
        this.f90677g = z13;
        this.f90674d = z11;
        this.f90673c = z10;
        this.f90675e = c13489c0;
        C14518h c14518h = new C14518h(6);
        if (c13513z != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) c13513z));
        }
        if (z10) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) C14512e.I(true)));
        }
        if (z11) {
            c14518h.a(new K0(false, 2, (InterfaceC14516g) C14512e.I(true)));
        }
        if (c13489c0 != null) {
            c14518h.a(new K0(false, 3, (InterfaceC14516g) c13489c0));
        }
        if (z12) {
            c14518h.a(new K0(false, 4, (InterfaceC14516g) C14512e.I(true)));
        }
        if (z13) {
            c14518h.a(new K0(false, 5, (InterfaceC14516g) C14512e.I(true)));
        }
        this.f90678h = new G0(c14518h);
    }

    public L(oh.E e10) {
        this.f90678h = e10;
        for (int i10 = 0; i10 != e10.size(); i10++) {
            oh.M R10 = oh.M.R(e10.I(i10));
            int g10 = R10.g();
            if (g10 == 0) {
                this.f90672b = C13513z.w(R10, true);
            } else if (g10 == 1) {
                this.f90673c = C14512e.H(R10, false).J();
            } else if (g10 == 2) {
                this.f90674d = C14512e.H(R10, false).J();
            } else if (g10 == 3) {
                this.f90675e = new C13489c0(AbstractC14508c.I(R10, false));
            } else if (g10 == 4) {
                this.f90676f = C14512e.H(R10, false).J();
            } else {
                if (g10 != 5) {
                    throw new IllegalArgumentException("unknown tag in IssuingDistributionPoint");
                }
                this.f90677g = C14512e.H(R10, false).J();
            }
        }
    }
}
