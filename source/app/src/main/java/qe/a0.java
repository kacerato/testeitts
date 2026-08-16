package Qe;

import Qe.K;
import Qe.Z;
import java.util.Arrays;
import java.util.NoSuchElementException;

public final class a0<T, R> extends Be.K<R> {

    public final Iterable<? extends Be.Q<? extends T>> f22201b;

    public final Fe.o<? super Object[], ? extends R> f22202c;

    public final class a implements Fe.o<T, R> {
        public a() {
        }

        @Override
        public R apply(T t10) throws Exception {
            return (R) He.b.g(a0.this.f22202c.apply(new Object[]{t10}), "The zipper returned a null value");
        }
    }

    public a0(Iterable<? extends Be.Q<? extends T>> iterable, Fe.o<? super Object[], ? extends R> oVar) {
        this.f22201b = iterable;
        this.f22202c = oVar;
    }

    @Override
    public void d1(Be.N<? super R> n10) {
        Be.Q[] qArr = new Be.Q[8];
        try {
            int i10 = 0;
            for (Be.Q<? extends T> q10 : this.f22201b) {
                if (q10 == null) {
                    Ge.e.i(new NullPointerException("One of the sources is null"), n10);
                    return;
                }
                if (i10 == qArr.length) {
                    qArr = (Be.Q[]) Arrays.copyOf(qArr, (i10 >> 2) + i10);
                }
                int i11 = i10 + 1;
                qArr[i10] = q10;
                i10 = i11;
            }
            if (i10 == 0) {
                Ge.e.i(new NoSuchElementException(), n10);
                return;
            }
            if (i10 == 1) {
                qArr[0].a(new K.a(n10, new a()));
                return;
            }
            Z.b bVar = new Z.b(n10, i10, this.f22202c);
            n10.e(bVar);
            for (int i12 = 0; i12 < i10 && !bVar.d(); i12++) {
                qArr[i12].a(bVar.f22190d[i12]);
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.i(th2, n10);
        }
    }
}
