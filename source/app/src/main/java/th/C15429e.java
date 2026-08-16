package th;

import hi.C13482F;
import hi.C13513z;
import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class C15429e extends AbstractC14545v implements InterfaceC14514f {

    public final C13513z f117597b;

    public final C13482F f117598c;

    public C15429e(C13513z c13513z, C13482F c13482f) {
        if ((c13513z == null) == (c13482f == null)) {
            throw new IllegalArgumentException("either dpn or issuer must be set");
        }
        this.f117597b = c13513z;
        this.f117598c = c13482f;
    }

    public static C15429e v(Object obj) {
        if (obj instanceof C15429e) {
            return (C15429e) obj;
        }
        if (obj != null) {
            return new C15429e(oh.M.R(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C13513z c13513z = this.f117597b;
        return c13513z != null ? new K0(true, 0, (InterfaceC14516g) c13513z) : new K0(true, 1, (InterfaceC14516g) this.f117598c);
    }

    public C13513z u() {
        return this.f117597b;
    }

    public C13482F x() {
        return this.f117598c;
    }

    public C15429e(oh.M m10) {
        if (m10.p(0)) {
            this.f117597b = C13513z.w(m10, true);
            this.f117598c = null;
        } else if (m10.p(1)) {
            this.f117597b = null;
            this.f117598c = C13482F.x(m10, true);
        } else {
            throw new IllegalArgumentException("unknown tag " + oh.V.y(m10));
        }
    }
}
