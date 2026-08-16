package Xi;

import oh.C14549x;

public class H extends K {

    public final C14549x f29228n;

    public final C14549x f29229o;

    public final C14549x f29230p;

    public H(G g10, C14549x c14549x, C14549x c14549x2) {
        this(g10, c14549x, c14549x2, null);
    }

    public C14549x k() {
        return this.f29229o;
    }

    public C14549x l() {
        return this.f29230p;
    }

    public C14549x m() {
        return this.f29228n;
    }

    public H(G g10, C14549x c14549x, C14549x c14549x2, C14549x c14549x3) {
        super(c14549x, g10);
        if ((g10 instanceof K) && !c14549x.A(((K) g10).j())) {
            throw new IllegalArgumentException("named parameters do not match publicKeyParamSet value");
        }
        this.f29228n = c14549x;
        this.f29229o = c14549x2;
        this.f29230p = c14549x3;
    }
}
