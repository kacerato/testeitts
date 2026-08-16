package ci;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;

public class C4192c extends AbstractC14545v {

    public E f34835b;

    public C4192c(C4191b c4191b) {
        this.f34835b = new G0(c4191b);
    }

    public static C4192c w(Object obj) {
        if (obj instanceof C4192c) {
            return (C4192c) obj;
        }
        if (obj != null) {
            return new C4192c(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return this.f34835b;
    }

    public C4192c u(C4191b c4191b) {
        C14518h c14518h = new C14518h(this.f34835b.size() + 1);
        for (int i10 = 0; i10 != this.f34835b.size(); i10++) {
            c14518h.a(this.f34835b.I(i10));
        }
        c14518h.a(c4191b);
        return new C4192c(new G0(c14518h));
    }

    public C4191b[] v() {
        int size = this.f34835b.size();
        C4191b[] c4191bArr = new C4191b[size];
        for (int i10 = 0; i10 != size; i10++) {
            c4191bArr[i10] = C4191b.y(this.f34835b.I(i10));
        }
        return c4191bArr;
    }

    public C4192c(E e10) {
        C14518h c14518h = new C14518h(e10.size());
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            c14518h.a(C4191b.y(J10.nextElement()));
        }
        this.f34835b = new G0(c14518h);
    }

    public C4192c(C4191b[] c4191bArr) {
        this.f34835b = new G0(c4191bArr);
    }
}
