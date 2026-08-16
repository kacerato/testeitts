package hk;

import fk.InterfaceC13244j;
import java.security.spec.AlgorithmParameterSpec;
import oh.C14549x;
import yh.InterfaceC16192a;

public class n implements AlgorithmParameterSpec, InterfaceC13244j {

    public p f91078b;

    public String f91079c;

    public String f91080d;

    public String f91081e;

    public n(p pVar) {
        this.f91078b = pVar;
        this.f91080d = InterfaceC16192a.f130284p.J();
        this.f91081e = null;
    }

    public static n e(yh.g gVar) {
        return gVar.v() != null ? new n(gVar.y().J(), gVar.u().J(), gVar.v().J()) : gVar.u() != null ? new n(gVar.y().J(), gVar.u().J()) : new n(gVar.y().J(), null);
    }

    @Override
    public p a() {
        return this.f91078b;
    }

    @Override
    public String b() {
        return this.f91079c;
    }

    @Override
    public String c() {
        return this.f91081e;
    }

    @Override
    public String d() {
        return this.f91080d;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        if (!this.f91078b.equals(nVar.f91078b)) {
            return false;
        }
        String str = this.f91080d;
        String str2 = nVar.f91080d;
        if (str != str2 && (str == null || !str.equals(str2))) {
            return false;
        }
        String str3 = this.f91081e;
        String str4 = nVar.f91081e;
        return str3 == str4 || (str3 != null && str3.equals(str4));
    }

    public int hashCode() {
        int hashCode = this.f91078b.hashCode() ^ this.f91080d.hashCode();
        String str = this.f91081e;
        return hashCode ^ (str != null ? str.hashCode() : 0);
    }

    public n(String str) {
        this(str, InterfaceC16192a.f130284p.J(), null);
    }

    public n(String str, String str2) {
        this(str, str2, null);
    }

    public n(String str, String str2, String str3) {
        yh.f fVar;
        try {
            fVar = yh.e.b(new C14549x(str));
        } catch (IllegalArgumentException unused) {
            C14549x d10 = yh.e.d(str);
            if (d10 != null) {
                str = d10.J();
                fVar = yh.e.b(d10);
            } else {
                fVar = null;
            }
        }
        if (fVar == null) {
            throw new IllegalArgumentException("no key parameter set for passed in name/OID.");
        }
        this.f91078b = new p(fVar.z(), fVar.A(), fVar.u());
        this.f91079c = str;
        this.f91080d = str2;
        this.f91081e = str3;
    }
}
