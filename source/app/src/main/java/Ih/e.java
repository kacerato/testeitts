package Ih;

import oh.AbstractC14545v;
import oh.B;
import oh.C;
import oh.C14518h;
import oh.E;
import oh.F0;
import oh.G0;

public class e extends AbstractC14545v {

    public C f9448b;

    public C f9449c;

    public e(String str, String str2) {
        this.f9448b = new F0(str);
        this.f9449c = new F0(str2);
    }

    public static e u(Object obj) {
        if (obj instanceof e) {
            return (e) obj;
        }
        if (obj != null) {
            return new e(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f9448b);
        c14518h.a(this.f9449c);
        return new G0(c14518h);
    }

    public String v() {
        return this.f9448b.getString();
    }

    public String x() {
        return this.f9449c.getString();
    }

    public e(E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("sequence wrong size for LDSVersionInfo");
        }
        this.f9448b = C.F(e10.I(0));
        this.f9449c = C.F(e10.I(1));
    }
}
