package Me;

public final class V<T, R> extends AbstractC2815a<T, R> {

    public final Be.x<? extends R, ? super T> f14952c;

    public V(Be.y<T> yVar, Be.x<? extends R, ? super T> xVar) {
        super(yVar);
        this.f14952c = xVar;
    }

    @Override
    public void t1(Be.v<? super R> vVar) {
        try {
            this.f14976b.d((Be.v) He.b.g(this.f14952c.a(vVar), "The operator returned a null MaybeObserver"));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.g(th2, vVar);
        }
    }
}
