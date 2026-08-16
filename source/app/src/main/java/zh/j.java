package zh;

import java.util.Date;
import oh.AbstractC14545v;
import oh.B;
import oh.C14530n;
import oh.InterfaceC14514f;
import oh.M;
import uh.C15624o;

public class j extends AbstractC14545v implements InterfaceC14514f {

    public final C14530n f131435b;

    public final C15624o f131436c;

    public j(Date date) {
        this(new C14530n(date));
    }

    public static j v(Object obj) {
        if (obj instanceof j) {
            return (j) obj;
        }
        if (obj instanceof C14530n) {
            return new j(C14530n.J(obj));
        }
        if (obj != null) {
            return new j(C15624o.w(obj));
        }
        return null;
    }

    public static j w(M m10, boolean z10) {
        if (z10) {
            return v(M.S(m10, 128).O());
        }
        throw new IllegalArgumentException("choice item must be explicitly tagged");
    }

    @Override
    public B r() {
        C14530n c14530n = this.f131435b;
        return c14530n != null ? c14530n : this.f131436c.r();
    }

    public String toString() {
        C14530n c14530n = this.f131435b;
        return c14530n != null ? c14530n.toString() : this.f131436c.toString();
    }

    public C14530n u() {
        return this.f131435b;
    }

    public C15624o x() {
        return this.f131436c;
    }

    public j(C14530n c14530n) {
        this.f131435b = c14530n;
        this.f131436c = null;
    }

    public j(C15624o c15624o) {
        this.f131435b = null;
        this.f131436c = c15624o;
    }
}
