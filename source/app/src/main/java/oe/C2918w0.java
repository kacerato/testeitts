package Oe;

public final class C2918w0<R, T> extends AbstractC2859a<T, R> {

    public final Be.F<? extends R, ? super T> f19996c;

    public C2918w0(Be.G<T> g10, Be.F<? extends R, ? super T> f10) {
        super(g10);
        this.f19996c = f10;
    }

    @Override
    public void J5(Be.I<? super R> i10) {
        try {
            this.f19344b.c((Be.I) He.b.g(this.f19996c.a(i10), "Operator " + ((Object) this.f19996c) + " returned a null Observer"));
        } catch (NullPointerException e10) {
            throw e10;
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ye.a.Y(th2);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th2);
            throw nullPointerException;
        }
    }
}
