package wh;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.M;

public class e extends AbstractC14545v {

    public f f127488b;

    public u f127489c;

    public E f127490d;

    public e(E e10) {
        Enumeration J10 = e10.J();
        this.f127488b = f.y(J10.nextElement());
        while (J10.hasMoreElements()) {
            Object nextElement = J10.nextElement();
            if ((nextElement instanceof M) || (nextElement instanceof u)) {
                this.f127489c = u.u(nextElement);
            } else {
                this.f127490d = E.G(nextElement);
            }
        }
    }

    private void u(C14518h c14518h, InterfaceC14516g interfaceC14516g) {
        if (interfaceC14516g != null) {
            c14518h.a(interfaceC14516g);
        }
    }

    public static e w(Object obj) {
        if (obj instanceof e) {
            return (e) obj;
        }
        if (obj != null) {
            return new e(E.G(obj));
        }
        return null;
    }

    public static e x(M m10, boolean z10) {
        return w(E.H(m10, z10));
    }

    public C16003a[] A() {
        E e10 = this.f127490d;
        if (e10 == null) {
            return null;
        }
        int size = e10.size();
        C16003a[] c16003aArr = new C16003a[size];
        for (int i10 = 0; i10 != size; i10++) {
            c16003aArr[i10] = C16003a.u(this.f127490d.I(i10));
        }
        return c16003aArr;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f127488b);
        u(c14518h, this.f127489c);
        u(c14518h, this.f127490d);
        return new G0(c14518h);
    }

    public f v() {
        return this.f127488b;
    }

    public u y() {
        return this.f127489c;
    }

    public u z() {
        return this.f127489c;
    }

    public e(f fVar, u uVar, C16003a[] c16003aArr) {
        if (fVar == null) {
            throw new IllegalArgumentException("'certReq' cannot be null");
        }
        this.f127488b = fVar;
        this.f127489c = uVar;
        if (c16003aArr != null) {
            this.f127490d = new G0(c16003aArr);
        }
    }
}
