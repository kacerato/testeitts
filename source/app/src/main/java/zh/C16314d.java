package zh;

import hi.C13481E;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.M;
import th.L;

public class C16314d extends AbstractC14545v {

    public L f131390b;

    public C13481E f131391c;

    public C16314d(E e10) {
        this.f131390b = L.v(e10.I(0));
        if (e10.size() > 1) {
            this.f131391c = C13481E.v(e10.I(1));
        }
    }

    public static C16314d u(Object obj) {
        if (obj instanceof C16314d) {
            return (C16314d) obj;
        }
        if (obj != null) {
            return new C16314d(E.G(obj));
        }
        return null;
    }

    public static C16314d v(M m10, boolean z10) {
        return u(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f131390b);
        C13481E c13481e = this.f131391c;
        if (c13481e != null) {
            c14518h.a(c13481e);
        }
        return new G0(c14518h);
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("DVCSErrorNotice {\ntransactionStatus: ");
        sb2.append((Object) this.f131390b);
        sb2.append("\n");
        if (this.f131391c != null) {
            str = "transactionIdentifier: " + ((Object) this.f131391c) + "\n";
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append("}\n");
        return sb2.toString();
    }

    public C13481E x() {
        return this.f131391c;
    }

    public L y() {
        return this.f131390b;
    }

    public C16314d(L l10) {
        this(l10, null);
    }

    public C16314d(L l10, C13481E c13481e) {
        this.f131390b = l10;
        this.f131391c = c13481e;
    }
}
