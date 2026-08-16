package Le;

import Be.AbstractC2362l;
import cf.AbstractC4182a;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class C2701d<T> implements Iterable<T> {

    public final AbstractC2362l<T> f12645b;

    public final T f12646c;

    public static final class a<T> extends AbstractC4182a<T> {

        public volatile Object f12647c;

        public final class C0394a implements Iterator<T> {

            public Object f12648b;

            public C0394a() {
            }

            @Override
            public boolean hasNext() {
                this.f12648b = a.this.f12647c;
                return !io.reactivex.internal.util.p.o(r0);
            }

            @Override
            public T next() {
                try {
                    if (this.f12648b == null) {
                        this.f12648b = a.this.f12647c;
                    }
                    if (io.reactivex.internal.util.p.o(this.f12648b)) {
                        throw new NoSuchElementException();
                    }
                    if (io.reactivex.internal.util.p.r(this.f12648b)) {
                        throw ExceptionHelper.f(io.reactivex.internal.util.p.j(this.f12648b));
                    }
                    T t10 = (T) io.reactivex.internal.util.p.m(this.f12648b);
                    this.f12648b = null;
                    return t10;
                } catch (Throwable th2) {
                    this.f12648b = null;
                    throw th2;
                }
            }

            @Override
            public void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        public a(T t10) {
            this.f12647c = io.reactivex.internal.util.p.u(t10);
        }

        @Override
        public void a() {
            this.f12647c = io.reactivex.internal.util.p.e();
        }

        public a<T>.C0394a e() {
            return new C0394a();
        }

        @Override
        public void h(T t10) {
            this.f12647c = io.reactivex.internal.util.p.u(t10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f12647c = io.reactivex.internal.util.p.h(th2);
        }
    }

    public C2701d(AbstractC2362l<T> abstractC2362l, T t10) {
        this.f12645b = abstractC2362l;
        this.f12646c = t10;
    }

    @Override
    public Iterator<T> iterator() {
        a aVar = new a(this.f12646c);
        this.f12645b.l6(aVar);
        return aVar.e();
    }
}
