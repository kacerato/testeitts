package hi;

import ei.C13155a;
import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class C13513z extends AbstractC14545v implements InterfaceC14514f {

    public static final int f91010d = 0;

    public static final int f91011e = 1;

    public InterfaceC14516g f91012b;

    public int f91013c;

    public C13513z(int i10, InterfaceC14516g interfaceC14516g) {
        this.f91013c = i10;
        this.f91012b = interfaceC14516g;
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

    public static C13513z v(Object obj) {
        if (obj == null || (obj instanceof C13513z)) {
            return (C13513z) obj;
        }
        if (obj instanceof oh.M) {
            return new C13513z((oh.M) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    public static C13513z w(oh.M m10, boolean z10) {
        return v(oh.M.W(m10, true));
    }

    @Override
    public oh.B r() {
        return new K0(false, this.f91013c, this.f91012b);
    }

    public String toString() {
        String obj;
        String str;
        String f10 = org.bouncycastle.util.w.f();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("DistributionPointName: [");
        stringBuffer.append(f10);
        if (this.f91013c == 0) {
            obj = this.f91012b.toString();
            str = "fullName";
        } else {
            obj = this.f91012b.toString();
            str = "nameRelativeToCRLIssuer";
        }
        u(stringBuffer, f10, str, obj);
        stringBuffer.append("]");
        stringBuffer.append(f10);
        return stringBuffer.toString();
    }

    public InterfaceC14516g x() {
        return this.f91012b;
    }

    public int y() {
        return this.f91013c;
    }

    public C13513z(C13482F c13482f) {
        this(0, c13482f);
    }

    public C13513z(oh.M m10) {
        int g10 = m10.g();
        this.f91013c = g10;
        this.f91012b = g10 == 0 ? C13482F.x(m10, false) : oh.G.G(m10, false);
    }
}
