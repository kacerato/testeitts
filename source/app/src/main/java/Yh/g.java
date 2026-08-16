package yh;

import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.M;

public class g extends AbstractC14545v {

    public C14549x f130323b;

    public C14549x f130324c;

    public C14549x f130325d;

    public g(C14549x c14549x, C14549x c14549x2) {
        this.f130323b = c14549x;
        this.f130324c = c14549x2;
        this.f130325d = null;
    }

    public static g w(Object obj) {
        if (obj instanceof g) {
            return (g) obj;
        }
        if (obj != null) {
            return new g(E.G(obj));
        }
        return null;
    }

    public static g x(M m10, boolean z10) {
        return w(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f130323b);
        C14549x c14549x = this.f130324c;
        if (c14549x != null) {
            c14518h.a(c14549x);
        }
        C14549x c14549x2 = this.f130325d;
        if (c14549x2 != null) {
            c14518h.a(c14549x2);
        }
        return new G0(c14518h);
    }

    public C14549x u() {
        return this.f130324c;
    }

    public C14549x v() {
        return this.f130325d;
    }

    public C14549x y() {
        return this.f130323b;
    }

    public g(C14549x c14549x, C14549x c14549x2, C14549x c14549x3) {
        this.f130323b = c14549x;
        this.f130324c = c14549x2;
        this.f130325d = c14549x3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004b, code lost:
    
        if (r4.size() > 1) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x001b, code lost:
    
        if (r4.size() > 1) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x001d, code lost:
    
        r3.f130324c = oh.C14549x.K(r4.I(1));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public g(E e10) {
        C14549x K10 = C14549x.K(e10.I(0));
        this.f130323b = K10;
        if (!K10.A(Cj.a.f4470o)) {
            if (this.f130323b.A(Cj.a.f4471p) || this.f130323b.A(Cj.a.f4472q) || this.f130323b.A(Cj.a.f4473r)) {
                if (e10.size() > 1) {
                    throw new IllegalArgumentException("digestParamSet expected to be absent");
                }
            }
            if (e10.size() > 2) {
                this.f130325d = (C14549x) e10.I(2);
            }
        }
    }
}
