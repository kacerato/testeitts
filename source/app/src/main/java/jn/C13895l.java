package jn;

import java.util.List;

public class C13895l {

    public final List<Long> f94268a;

    public final List<Long> f94269b;

    public final List<Float> f94270c;

    public C13895l(List<Long> refs, List<Long> parentRefs, List<Float> costs) {
        this.f94268a = refs;
        this.f94269b = parentRefs;
        this.f94270c = costs;
    }

    public List<Float> a() {
        return this.f94270c;
    }

    public List<Long> b() {
        return this.f94269b;
    }

    public List<Long> c() {
        return this.f94268a;
    }
}
