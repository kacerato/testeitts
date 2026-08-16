package hi;

import ei.C13155a;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class C13512y extends AbstractC14545v {

    public C13513z f90974b;

    public C13489c0 f90975c;

    public C13482F f90976d;

    public C13512y(C13513z c13513z, C13489c0 c13489c0, C13482F c13482f) {
        this.f90974b = c13513z;
        this.f90975c = c13489c0;
        this.f90976d = c13482f;
    }

    public static C13512y y(Object obj) {
        if (obj == null || (obj instanceof C13512y)) {
            return (C13512y) obj;
        }
        if (obj instanceof oh.E) {
            return new C13512y((oh.E) obj);
        }
        throw new IllegalArgumentException("Invalid DistributionPoint: " + obj.getClass().getName());
    }

    public static C13512y z(oh.M m10, boolean z10) {
        return y(oh.E.H(m10, z10));
    }

    public C13489c0 A() {
        return this.f90975c;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        C13513z c13513z = this.f90974b;
        if (c13513z != null) {
            c14518h.a(new K0(0, c13513z));
        }
        C13489c0 c13489c0 = this.f90975c;
        if (c13489c0 != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) c13489c0));
        }
        C13482F c13482f = this.f90976d;
        if (c13482f != null) {
            c14518h.a(new K0(false, 2, (InterfaceC14516g) c13482f));
        }
        return new G0(c14518h);
    }

    public String toString() {
        String f10 = org.bouncycastle.util.w.f();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("DistributionPoint: [");
        stringBuffer.append(f10);
        C13513z c13513z = this.f90974b;
        if (c13513z != null) {
            u(stringBuffer, f10, "distributionPoint", c13513z.toString());
        }
        C13489c0 c13489c0 = this.f90975c;
        if (c13489c0 != null) {
            u(stringBuffer, f10, "reasons", c13489c0.toString());
        }
        C13482F c13482f = this.f90976d;
        if (c13482f != null) {
            u(stringBuffer, f10, "cRLIssuer", c13482f.toString());
        }
        stringBuffer.append("]");
        stringBuffer.append(f10);
        return stringBuffer.toString();
    }

    public final void u(StringBuffer stringBuffer, String str, String str2, String str3) {
        stringBuffer.append(C13155a.f85806a);
        stringBuffer.append(str2);
        stringBuffer.append(b3.s.f32937c);
        stringBuffer.append(str);
        stringBuffer.append(C13155a.f85806a);
        stringBuffer.append(C13155a.f85806a);
        stringBuffer.append(str3);
        stringBuffer.append(str);
    }

    public C13482F v() {
        return this.f90976d;
    }

    public C13513z x() {
        return this.f90974b;
    }

    public C13512y(oh.E e10) {
        for (int i10 = 0; i10 != e10.size(); i10++) {
            oh.M R10 = oh.M.R(e10.I(i10));
            int g10 = R10.g();
            if (g10 == 0) {
                this.f90974b = C13513z.w(R10, true);
            } else if (g10 == 1) {
                this.f90975c = new C13489c0(AbstractC14508c.I(R10, false));
            } else {
                if (g10 != 2) {
                    throw new IllegalArgumentException("Unknown tag encountered in structure: " + R10.g());
                }
                this.f90976d = C13482F.x(R10, false);
            }
        }
    }
}
