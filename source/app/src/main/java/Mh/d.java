package Mh;

import oh.AbstractC14545v;
import oh.B;
import oh.C14512e;
import oh.C14518h;
import oh.C14530n;
import oh.C14539s;
import oh.E;
import oh.F0;
import oh.G0;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class d extends AbstractC14545v implements InterfaceC14514f {

    public static final int f15274c = 0;

    public static final int f15275d = 1;

    public static final int f15276e = 2;

    public M f15277b;

    public d(int i10) {
        this.f15277b = new K0(false, 0, (InterfaceC14516g) new C14539s(i10));
    }

    public static d w(Object obj) {
        if (obj == null || (obj instanceof d)) {
            return (d) obj;
        }
        if (obj instanceof M) {
            return new d(M.S(obj, 128));
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    @Override
    public B r() {
        return this.f15277b;
    }

    public E u() {
        if (this.f15277b.g() != 1) {
            return null;
        }
        return E.H(this.f15277b, false);
    }

    public C14530n v() {
        if (this.f15277b.g() != 2) {
            return null;
        }
        return C14530n.K(this.f15277b, false);
    }

    public int x() {
        return this.f15277b.g();
    }

    public int y() {
        if (this.f15277b.g() != 0) {
            return -1;
        }
        return C14539s.G(this.f15277b, false).O();
    }

    public d(C14530n c14530n) {
        this.f15277b = new K0(false, 2, (InterfaceC14516g) c14530n);
    }

    public d(M m10) {
        if (m10.g() <= 2) {
            this.f15277b = m10;
            return;
        }
        throw new IllegalArgumentException("Bad tag number: " + m10.g());
    }

    public d(boolean z10, String str) {
        if (str.length() > 2) {
            throw new IllegalArgumentException("country can only be 2 characters");
        }
        if (z10) {
            this.f15277b = new K0(false, 1, (InterfaceC14516g) new G0(new F0(str, true)));
            return;
        }
        C14518h c14518h = new C14518h(2);
        c14518h.a(C14512e.f98876f);
        c14518h.a(new F0(str, true));
        this.f15277b = new K0(false, 1, (InterfaceC14516g) new G0(c14518h));
    }
}
