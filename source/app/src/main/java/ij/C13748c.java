package ij;

public class C13748c {

    public final C13747b f92307a;

    public final u f92308b;

    public C13748c(C13747b c13747b, u uVar) {
        this.f92307a = c13747b;
        this.f92308b = uVar;
    }

    public C13747b a() {
        C13747b c13747b = this.f92307a;
        if (c13747b != null) {
            return c13747b;
        }
        throw new IllegalStateException("Response has no CSRAttributesResponse.");
    }

    public Object b() {
        return this.f92308b.a();
    }

    public u c() {
        return this.f92308b;
    }

    public boolean d() {
        return this.f92307a != null;
    }
}
