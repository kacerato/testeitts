package Oe;

import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;

public final class C2865c<T> implements Iterable<T> {

    public final Be.G<T> f19407b;

    public static final class a<T> extends We.e<Be.A<T>> implements Iterator<T> {

        public Be.A<T> f19408c;

        public final Semaphore f19409d = new Semaphore(0);

        public final AtomicReference<Be.A<T>> f19410e = new AtomicReference<>();

        @Override
        public void a() {
        }

        @Override
        public void h(Be.A<T> a10) {
            if (this.f19410e.getAndSet(a10) == null) {
                this.f19409d.release();
            }
        }

        @Override
        public boolean hasNext() {
            Be.A<T> a10 = this.f19408c;
            if (a10 != null && a10.g()) {
                throw ExceptionHelper.f(this.f19408c.d());
            }
            if (this.f19408c == null) {
                try {
                    io.reactivex.internal.util.e.b();
                    this.f19409d.acquire();
                    Be.A<T> andSet = this.f19410e.getAndSet(null);
                    this.f19408c = andSet;
                    if (andSet.g()) {
                        throw ExceptionHelper.f(andSet.d());
                    }
                } catch (InterruptedException e10) {
                    dispose();
                    this.f19408c = Be.A.b(e10);
                    throw ExceptionHelper.f(e10);
                }
            }
            return this.f19408c.h();
        }

        @Override
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T e10 = this.f19408c.e();
            this.f19408c = null;
            return e10;
        }

        @Override
        public void onError(Throwable th2) {
            Ye.a.Y(th2);
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }

    public C2865c(Be.G<T> g10) {
        this.f19407b = g10;
    }

    @Override
    public Iterator<T> iterator() {
        a aVar = new a();
        Be.B.Q7(this.f19407b).C3().c(aVar);
        return aVar;
    }
}
