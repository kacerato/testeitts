package ck;

import java.security.spec.AlgorithmParameterSpec;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class C4209b implements AlgorithmParameterSpec {

    public final List<String> f34893b;

    public final List<AlgorithmParameterSpec> f34894c;

    public static class a {

        public List<String> f34895a = new ArrayList();

        public List<AlgorithmParameterSpec> f34896b = new ArrayList();

        public a c(String str) {
            return d(str, null);
        }

        public a d(String str, AlgorithmParameterSpec algorithmParameterSpec) {
            if (this.f34895a.contains(str)) {
                throw new IllegalStateException("cannot build with the same algorithm name added");
            }
            this.f34895a.add(str);
            this.f34896b.add(algorithmParameterSpec);
            return this;
        }

        public C4209b e() {
            if (this.f34895a.isEmpty()) {
                throw new IllegalStateException("cannot call build with no algorithm names added");
            }
            return new C4209b(this);
        }
    }

    public C4209b(a aVar) {
        this.f34893b = Collections.unmodifiableList(new ArrayList(aVar.f34895a));
        this.f34894c = Collections.unmodifiableList(new ArrayList(aVar.f34896b));
    }

    public List<String> a() {
        return this.f34893b;
    }

    public List<AlgorithmParameterSpec> b() {
        return this.f34894c;
    }
}
