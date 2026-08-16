package Me;

import Be.AbstractC2368s;
import Me.W;
import Me.u0;
import java.util.Arrays;

public final class v0<T, R> extends AbstractC2368s<R> {

    public final Iterable<? extends Be.y<? extends T>> f15220b;

    public final Fe.o<? super Object[], ? extends R> f15221c;

    public final class a implements Fe.o<T, R> {
        public a() {
        }

        @Override
        public R apply(T t10) throws Exception {
            return (R) He.b.g(v0.this.f15221c.apply(new Object[]{t10}), "The zipper returned a null value");
        }
    }

    public v0(Iterable<? extends Be.y<? extends T>> iterable, Fe.o<? super Object[], ? extends R> oVar) {
        this.f15220b = iterable;
        this.f15221c = oVar;
    }

    @Override
    public void t1(Be.v<? super R> vVar) {
        Be.y[] yVarArr = new Be.y[8];
        try {
            int i10 = 0;
            for (Be.y<? extends T> yVar : this.f15220b) {
                if (yVar == null) {
                    Ge.e.g(new NullPointerException("One of the sources is null"), vVar);
                    return;
                }
                if (i10 == yVarArr.length) {
                    yVarArr = (Be.y[]) Arrays.copyOf(yVarArr, (i10 >> 2) + i10);
                }
                int i11 = i10 + 1;
                yVarArr[i10] = yVar;
                i10 = i11;
            }
            if (i10 == 0) {
                Ge.e.b(vVar);
                return;
            }
            if (i10 == 1) {
                yVarArr[0].d(new W.a(vVar, new a()));
                return;
            }
            u0.b bVar = new u0.b(vVar, i10, this.f15221c);
            vVar.e(bVar);
            for (int i12 = 0; i12 < i10 && !bVar.d(); i12++) {
                yVarArr[i12].d(bVar.f15205d[i12]);
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.g(th2, vVar);
        }
    }
}
