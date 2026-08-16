package b3;

import v1.C15791l;

public class l implements r {

    public final s f32930a;

    public final C15791l<n> f32931b;

    public l(s sVar, C15791l<n> c15791l) {
        this.f32930a = sVar;
        this.f32931b = c15791l;
    }

    @Override
    public boolean a(f3.d dVar) {
        if (!dVar.k() || this.f32930a.f(dVar)) {
            return false;
        }
        this.f32931b.c(n.a().b(dVar.b()).d(dVar.c()).c(dVar.h()).a());
        return true;
    }

    @Override
    public boolean onException(Exception exc) {
        this.f32931b.d(exc);
        return true;
    }
}
