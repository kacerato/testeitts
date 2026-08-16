package hi;

import java.util.Enumeration;
import java.util.Hashtable;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G0;

public class X extends AbstractC14545v {

    public oh.E f90747b;

    public X(C13504p c13504p, C13504p c13504p2) {
        this.f90747b = null;
        C14518h c14518h = new C14518h(2);
        c14518h.a(c13504p);
        c14518h.a(c13504p2);
        this.f90747b = new G0(new G0(c14518h));
    }

    public static X u(Object obj) {
        if (obj instanceof X) {
            return (X) obj;
        }
        if (obj != null) {
            return new X(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return this.f90747b;
    }

    public X(Hashtable hashtable) {
        this.f90747b = null;
        C14518h c14518h = new C14518h(hashtable.size());
        Enumeration keys = hashtable.keys();
        while (keys.hasMoreElements()) {
            String str = (String) keys.nextElement();
            String str2 = (String) hashtable.get(str);
            C14518h c14518h2 = new C14518h(2);
            c14518h2.a(new C14549x(str));
            c14518h2.a(new C14549x(str2));
            c14518h.a(new G0(c14518h2));
        }
        this.f90747b = new G0(c14518h);
    }

    public X(oh.E e10) {
        this.f90747b = e10;
    }

    public X(C13504p[] c13504pArr, C13504p[] c13504pArr2) {
        this.f90747b = null;
        C14518h c14518h = new C14518h(c13504pArr.length);
        for (int i10 = 0; i10 != c13504pArr.length; i10++) {
            C14518h c14518h2 = new C14518h(2);
            c14518h2.a(c13504pArr[i10]);
            c14518h2.a(c13504pArr2[i10]);
            c14518h.a(new G0(c14518h2));
        }
        this.f90747b = new G0(c14518h);
    }
}
