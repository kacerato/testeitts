package zh;

import hi.C13481E;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.M;

public class f extends AbstractC14545v {

    public g f131399b;

    public k f131400c;

    public C13481E f131401d;

    public f(E e10) {
        this.f131399b = g.y(e10.I(0));
        this.f131400c = k.v(e10.I(1));
        if (e10.size() > 2) {
            this.f131401d = C13481E.v(e10.I(2));
        }
    }

    public static f v(Object obj) {
        if (obj instanceof f) {
            return (f) obj;
        }
        if (obj != null) {
            return new f(E.G(obj));
        }
        return null;
    }

    public static f w(M m10, boolean z10) {
        return v(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f131399b);
        c14518h.a(this.f131400c);
        C13481E c13481e = this.f131401d;
        if (c13481e != null) {
            c14518h.a(c13481e);
        }
        return new G0(c14518h);
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("DVCSRequest {\nrequestInformation: ");
        sb2.append((Object) this.f131399b);
        sb2.append("\ndata: ");
        sb2.append((Object) this.f131400c);
        sb2.append("\n");
        if (this.f131401d != null) {
            str = "transactionIdentifier: " + ((Object) this.f131401d) + "\n";
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append("}\n");
        return sb2.toString();
    }

    public k u() {
        return this.f131400c;
    }

    public g x() {
        return this.f131399b;
    }

    public C13481E y() {
        return this.f131401d;
    }

    public f(g gVar, k kVar) {
        this(gVar, kVar, null);
    }

    public f(g gVar, k kVar, C13481E c13481e) {
        this.f131399b = gVar;
        this.f131400c = kVar;
        this.f131401d = c13481e;
    }
}
