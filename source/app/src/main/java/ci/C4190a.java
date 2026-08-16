package ci;

import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class C4190a extends AbstractC14545v {

    public static final int f34824e = 1;

    public static final int f34825f = 999;

    public static final int f34826g = 1;

    public static final int f34827h = 999;

    public C14539s f34828b;

    public C14539s f34829c;

    public C14539s f34830d;

    public C4190a() {
    }

    public static C4190a u(Object obj) {
        if (obj instanceof C4190a) {
            return (C4190a) obj;
        }
        if (obj != null) {
            return new C4190a(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        C14539s c14539s = this.f34828b;
        if (c14539s != null) {
            c14518h.a(c14539s);
        }
        C14539s c14539s2 = this.f34829c;
        if (c14539s2 != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) c14539s2));
        }
        C14539s c14539s3 = this.f34830d;
        if (c14539s3 != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) c14539s3));
        }
        return new G0(c14518h);
    }

    public C14539s v() {
        return this.f34830d;
    }

    public C14539s x() {
        return this.f34829c;
    }

    public C14539s y() {
        return this.f34828b;
    }

    public C4190a(C14539s c14539s, C14539s c14539s2, C14539s c14539s3) {
        int O10;
        int O11;
        if (c14539s2 != null && ((O11 = c14539s2.O()) < 1 || O11 > 999)) {
            throw new IllegalArgumentException("Invalid millis field : not in (1..999)");
        }
        if (c14539s3 != null && ((O10 = c14539s3.O()) < 1 || O10 > 999)) {
            throw new IllegalArgumentException("Invalid micros field : not in (1..999)");
        }
        this.f34828b = c14539s;
        this.f34829c = c14539s2;
        this.f34830d = c14539s3;
    }

    public C4190a(E e10) {
        this.f34828b = null;
        this.f34829c = null;
        this.f34830d = null;
        for (int i10 = 0; i10 < e10.size(); i10++) {
            if (e10.I(i10) instanceof C14539s) {
                this.f34828b = (C14539s) e10.I(i10);
            } else if (e10.I(i10) instanceof M) {
                M m10 = (M) e10.I(i10);
                int g10 = m10.g();
                if (g10 == 0) {
                    C14539s G10 = C14539s.G(m10, false);
                    this.f34829c = G10;
                    int O10 = G10.O();
                    if (O10 < 1 || O10 > 999) {
                        throw new IllegalArgumentException("Invalid millis field : not in (1..999)");
                    }
                } else {
                    if (g10 != 1) {
                        throw new IllegalArgumentException("Invalid tag number");
                    }
                    C14539s G11 = C14539s.G(m10, false);
                    this.f34830d = G11;
                    int O11 = G11.O();
                    if (O11 < 1 || O11 > 999) {
                        throw new IllegalArgumentException("Invalid micros field : not in (1..999)");
                    }
                }
            } else {
                continue;
            }
        }
    }
}
