package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2366p;

public final class A0<R, T> extends AbstractC2692a<T, R> {

    public final InterfaceC2366p<? extends R, ? super T> f11725d;

    public A0(AbstractC2362l<T> abstractC2362l, InterfaceC2366p<? extends R, ? super T> interfaceC2366p) {
        super(abstractC2362l);
        this.f11725d = interfaceC2366p;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        try {
            hn.c<? super Object> a10 = this.f11725d.a(cVar);
            if (a10 != null) {
                this.f12507c.l(a10);
                return;
            }
            throw new NullPointerException("Operator " + ((Object) this.f11725d) + " returned a null Subscriber");
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
