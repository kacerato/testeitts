package Xi;

public class V extends C3335c {

    public W f29285c;

    public V(boolean z10, W w10) {
        super(z10);
        this.f29285c = w10;
    }

    public W d() {
        return this.f29285c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof V)) {
            return false;
        }
        W w10 = this.f29285c;
        W d10 = ((V) obj).d();
        return w10 == null ? d10 == null : w10.equals(d10);
    }

    public int hashCode() {
        W w10 = this.f29285c;
        if (w10 != null) {
            return w10.hashCode();
        }
        return 0;
    }
}
