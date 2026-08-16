package W;

import W.j;

public class i<R> implements g<R> {

    public final j.a f27196a;

    public j<R> f27197b;

    public i(j.a aVar) {
        this.f27196a = aVar;
    }

    @Override
    public f<R> a(C.a aVar, boolean z10) {
        if (aVar == C.a.MEMORY_CACHE || !z10) {
            return e.b();
        }
        if (this.f27197b == null) {
            this.f27197b = new j<>(this.f27196a);
        }
        return this.f27197b;
    }
}
