package Le;

import Be.AbstractC2362l;
import java.util.concurrent.Callable;

public final class C2724k1 {

    public static final class a<T, R> extends AbstractC2362l<R> {

        public final T f12886c;

        public final Fe.o<? super T, ? extends hn.b<? extends R>> f12887d;

        public a(T t10, Fe.o<? super T, ? extends hn.b<? extends R>> oVar) {
            this.f12886c = t10;
            this.f12887d = oVar;
        }

        @Override
        public void m6(hn.c<? super R> cVar) {
            try {
                hn.b bVar = (hn.b) He.b.g(this.f12887d.apply(this.f12886c), "The mapper returned a null Publisher");
                if (!(bVar instanceof Callable)) {
                    bVar.l(cVar);
                    return;
                }
                try {
                    Object call = ((Callable) bVar).call();
                    if (call == null) {
                        Ue.g.a(cVar);
                    } else {
                        cVar.j(new Ue.h(cVar, call));
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    Ue.g.b(th2, cVar);
                }
            } catch (Throwable th3) {
                Ue.g.b(th3, cVar);
            }
        }
    }

    public C2724k1() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> AbstractC2362l<U> a(T t10, Fe.o<? super T, ? extends hn.b<? extends U>> oVar) {
        return Ye.a.P(new a(t10, oVar));
    }

    public static <T, R> boolean b(hn.b<T> bVar, hn.c<? super R> cVar, Fe.o<? super T, ? extends hn.b<? extends R>> oVar) {
        if (!(bVar instanceof Callable)) {
            return false;
        }
        try {
            A.c cVar2 = (Object) ((Callable) bVar).call();
            if (cVar2 == null) {
                Ue.g.a(cVar);
                return true;
            }
            try {
                hn.b bVar2 = (hn.b) He.b.g(oVar.apply(cVar2), "The mapper returned a null Publisher");
                if (bVar2 instanceof Callable) {
                    try {
                        Object call = ((Callable) bVar2).call();
                        if (call == null) {
                            Ue.g.a(cVar);
                            return true;
                        }
                        cVar.j(new Ue.h(cVar, call));
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        Ue.g.b(th2, cVar);
                        return true;
                    }
                } else {
                    bVar2.l(cVar);
                }
                return true;
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                Ue.g.b(th3, cVar);
                return true;
            }
        } catch (Throwable th4) {
            io.reactivex.exceptions.a.b(th4);
            Ue.g.b(th4, cVar);
            return true;
        }
    }
}
