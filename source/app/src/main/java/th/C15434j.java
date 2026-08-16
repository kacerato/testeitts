package th;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class C15434j extends AbstractC14545v {

    public final oh.E f117604b;

    public final oh.E f117605c;

    public C15434j(oh.E e10) {
        int i10 = 0;
        if (e10.size() > 1) {
            this.f117604b = oh.E.H((oh.M) e10.I(0), true);
            i10 = 1;
        } else {
            this.f117604b = null;
        }
        this.f117605c = oh.E.G(e10.I(i10));
    }

    public static C15434j v(Object obj) {
        if (obj instanceof C15434j) {
            return (C15434j) obj;
        }
        if (obj != null) {
            return new C15434j(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        oh.E e10 = this.f117604b;
        if (e10 != null) {
            c14518h.a(new K0(true, 1, (InterfaceC14516g) e10));
        }
        c14518h.a(this.f117605c);
        return new G0(c14518h);
    }

    public C15426b[] u() {
        oh.E e10 = this.f117604b;
        if (e10 == null) {
            return null;
        }
        int size = e10.size();
        C15426b[] c15426bArr = new C15426b[size];
        for (int i10 = 0; i10 != size; i10++) {
            c15426bArr[i10] = C15426b.u(this.f117604b.I(i10));
        }
        return c15426bArr;
    }

    public C15436l[] x() {
        int size = this.f117605c.size();
        C15436l[] c15436lArr = new C15436l[size];
        for (int i10 = 0; i10 != size; i10++) {
            c15436lArr[i10] = C15436l.w(this.f117605c.I(i10));
        }
        return c15436lArr;
    }

    public C15434j(C15426b[] c15426bArr, C15436l[] c15436lArr) {
        if (c15436lArr == null) {
            throw new IllegalArgumentException("'response' cannot be null");
        }
        if (c15426bArr == null || c15426bArr.length == 0) {
            this.f117604b = null;
        } else {
            this.f117604b = new G0(c15426bArr);
        }
        this.f117605c = new G0(c15436lArr);
    }
}
