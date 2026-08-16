package Xi;

public class C3357n extends C3335c {

    public C3363q f29387c;

    public C3357n(boolean z10, C3363q c3363q) {
        super(z10);
        this.f29387c = c3363q;
    }

    public C3363q d() {
        return this.f29387c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C3357n)) {
            return false;
        }
        C3363q c3363q = this.f29387c;
        C3363q d10 = ((C3357n) obj).d();
        return c3363q == null ? d10 == null : c3363q.equals(d10);
    }

    public int hashCode() {
        int i10 = !c() ? 1 : 0;
        C3363q c3363q = this.f29387c;
        return c3363q != null ? i10 ^ c3363q.hashCode() : i10;
    }
}
