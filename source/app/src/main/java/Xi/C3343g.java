package Xi;

public class C3343g extends C3335c {

    public C3345h f29344c;

    public C3343g(boolean z10, C3345h c3345h) {
        super(z10);
        this.f29344c = c3345h;
    }

    public C3345h d() {
        return this.f29344c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C3343g)) {
            return false;
        }
        C3345h c3345h = this.f29344c;
        C3345h d10 = ((C3343g) obj).d();
        return c3345h == null ? d10 == null : c3345h.equals(d10);
    }

    public int hashCode() {
        int i10 = !c() ? 1 : 0;
        C3345h c3345h = this.f29344c;
        return c3345h != null ? i10 ^ c3345h.hashCode() : i10;
    }
}
