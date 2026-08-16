package Oe;

import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public final class C2871e<T> implements Iterable<T> {

    public final Be.G<T> f19445b;

    public static final class a<T> implements Iterator<T> {

        public final b<T> f19446b;

        public final Be.G<T> f19447c;

        public T f19448d;

        public boolean f19449e = true;

        public boolean f19450f = true;

        public Throwable f19451g;

        public boolean f19452h;

        public a(Be.G<T> g10, b<T> bVar) {
            this.f19447c = g10;
            this.f19446b = bVar;
        }

        public final boolean a() {
            if (!this.f19452h) {
                this.f19452h = true;
                this.f19446b.f();
                new C2924z0(this.f19447c).c(this.f19446b);
            }
            try {
                Be.A<T> g10 = this.f19446b.g();
                if (g10.h()) {
                    this.f19450f = false;
                    this.f19448d = g10.e();
                    return true;
                }
                this.f19449e = false;
                if (g10.f()) {
                    return false;
                }
                Throwable d10 = g10.d();
                this.f19451g = d10;
                throw ExceptionHelper.f(d10);
            } catch (InterruptedException e10) {
                this.f19446b.dispose();
                this.f19451g = e10;
                throw ExceptionHelper.f(e10);
            }
        }

        @Override
        public boolean hasNext() {
            Throwable th2 = this.f19451g;
            if (th2 != null) {
                throw ExceptionHelper.f(th2);
            }
            if (this.f19449e) {
                return !this.f19450f || a();
            }
            return false;
        }

        @Override
        public T next() {
            Throwable th2 = this.f19451g;
            if (th2 != null) {
                throw ExceptionHelper.f(th2);
            }
            if (!hasNext()) {
                throw new NoSuchElementException("No more elements");
            }
            this.f19450f = true;
            return this.f19448d;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Read only iterator");
        }
    }

    public static final class b<T> extends We.e<Be.A<T>> {

        public final BlockingQueue<Be.A<T>> f19453c = new ArrayBlockingQueue(1);

        public final AtomicInteger f19454d = new AtomicInteger();

        @Override
        public void a() {
        }

        @Override
        public void h(Be.A<T> a10) {
            if (this.f19454d.getAndSet(0) == 1 || !a10.h()) {
                while (!this.f19453c.offer(a10)) {
                    Be.A<T> poll = this.f19453c.poll();
                    if (poll != null && !poll.h()) {
                        a10 = poll;
                    }
                }
            }
        }

        public void f() {
            this.f19454d.set(1);
        }

        public Be.A<T> g() throws InterruptedException {
            f();
            io.reactivex.internal.util.e.b();
            return this.f19453c.take();
        }

        @Override
        public void onError(Throwable th2) {
            Ye.a.Y(th2);
        }
    }

    public C2871e(Be.G<T> g10) {
        this.f19445b = g10;
    }

    @Override
    public Iterator<T> iterator() {
        return new a(this.f19445b, new b());
    }
}
