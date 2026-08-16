package uh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class C15618i extends AbstractC14545v {

    public static final int f120682e = 1;

    public static final int f120683f = 2;

    public final C13486b f120684b;

    public final C13486b f120685c;

    public final C13486b f120686d;

    public C15618i(C13486b c13486b, int i10, C13486b c13486b2) {
        if (c13486b == null || c13486b2 == null) {
            throw new NullPointerException("AlgorithmIdentifiers cannot be null");
        }
        this.f120684b = c13486b;
        if (i10 == 1) {
            this.f120685c = c13486b2;
            this.f120686d = null;
        } else if (i10 == 2) {
            this.f120685c = null;
            this.f120686d = c13486b2;
        } else {
            throw new IllegalArgumentException("Unknown type: " + i10);
        }
    }

    public static C15618i v(Object obj) {
        if (obj instanceof C15618i) {
            return (C15618i) obj;
        }
        if (obj != null) {
            return new C15618i(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f120684b);
        C13486b c13486b = this.f120685c;
        if (c13486b != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) c13486b));
        }
        C13486b c13486b2 = this.f120686d;
        if (c13486b2 != null) {
            c14518h.a(new K0(false, 2, (InterfaceC14516g) c13486b2));
        }
        return new G0(c14518h);
    }

    public C13486b u() {
        return this.f120684b;
    }

    public C13486b x() {
        return this.f120686d;
    }

    public C13486b y() {
        return this.f120685c;
    }

    public C15618i(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("Sequence wrong size: One of signatureAlgorithm or macAlgorithm must be present");
        }
        this.f120684b = C13486b.v(e10.I(0));
        oh.M R10 = oh.M.R(e10.I(1));
        if (R10.g() == 1) {
            this.f120685c = C13486b.w(R10, false);
            this.f120686d = null;
        } else if (R10.g() == 2) {
            this.f120685c = null;
            this.f120686d = C13486b.w(R10, false);
        } else {
            throw new IllegalArgumentException("Unknown tag found: " + R10.g());
        }
    }
}
