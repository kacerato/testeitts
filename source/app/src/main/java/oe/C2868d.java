package Oe;

import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class C2868d<T> implements Iterable<T> {

    public final Be.G<T> f19434b;

    public final T f19435c;

    public static final class a<T> extends We.b<T> {

        public volatile Object f19436c;

        public final class C0487a implements Iterator<T> {

            public Object f19437b;

            public C0487a() {
            }

            @Override
            public boolean hasNext() {
                this.f19437b = a.this.f19436c;
                return !io.reactivex.internal.util.p.o(r0);
            }

            @Override
            public T next() {
                try {
                    if (this.f19437b == null) {
                        this.f19437b = a.this.f19436c;
                    }
                    if (io.reactivex.internal.util.p.o(this.f19437b)) {
                        throw new NoSuchElementException();
                    }
                    if (io.reactivex.internal.util.p.r(this.f19437b)) {
                        throw ExceptionHelper.f(io.reactivex.internal.util.p.j(this.f19437b));
                    }
                    T t10 = (T) io.reactivex.internal.util.p.m(this.f19437b);
                    this.f19437b = null;
                    return t10;
                } catch (Throwable th2) {
                    this.f19437b = null;
                    throw th2;
                }
            }

            @Override
            public void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        public a(T t10) {
            this.f19436c = io.reactivex.internal.util.p.u(t10);
        }

        @Override
        public void a() {
            this.f19436c = io.reactivex.internal.util.p.e();
        }

        public a<T>.C0487a d() {
            return new C0487a();
        }

        @Override
        public void h(T t10) {
            this.f19436c = io.reactivex.internal.util.p.u(t10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f19436c = io.reactivex.internal.util.p.h(th2);
        }
    }

    public C2868d(Be.G<T> g10, T t10) {
        this.f19434b = g10;
        this.f19435c = t10;
    }

    @Override
    public Iterator<T> iterator() {
        a aVar = new a(this.f19435c);
        this.f19434b.c(aVar);
        return aVar.d();
    }
}
