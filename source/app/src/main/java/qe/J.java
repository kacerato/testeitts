package Qe;

public final class J<T, R> extends Be.K<R> {

    public final Be.Q<T> f22106b;

    public final Be.P<? extends R, ? super T> f22107c;

    public J(Be.Q<T> q10, Be.P<? extends R, ? super T> p10) {
        this.f22106b = q10;
        this.f22107c = p10;
    }

    @Override
    public void d1(Be.N<? super R> n10) {
        try {
            this.f22106b.a((Be.N) He.b.g(this.f22107c.a(n10), "The onLift returned a null SingleObserver"));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.i(th2, n10);
        }
    }
}
