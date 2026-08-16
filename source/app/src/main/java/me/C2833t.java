package Me;

import Be.AbstractC2368s;
import io.reactivex.exceptions.CompositeException;

public final class C2833t<T> extends AbstractC2368s<T> {

    public final Be.y<T> f15185b;

    public final Fe.a f15186c;

    public final class a implements Be.v<T> {

        public final Be.v<? super T> f15187b;

        public a(Be.v<? super T> vVar) {
            this.f15187b = vVar;
        }

        @Override
        public void a() {
            try {
                C2833t.this.f15186c.run();
                this.f15187b.a();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f15187b.onError(th2);
            }
        }

        @Override
        public void b(T t10) {
            try {
                C2833t.this.f15186c.run();
                this.f15187b.b(t10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f15187b.onError(th2);
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f15187b.e(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            try {
                C2833t.this.f15186c.run();
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                th2 = new CompositeException(th2, th3);
            }
            this.f15187b.onError(th2);
        }
    }

    public C2833t(Be.y<T> yVar, Fe.a aVar) {
        this.f15185b = yVar;
        this.f15186c = aVar;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f15185b.d(new a(vVar));
    }
}
