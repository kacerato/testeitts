package Le;

import Be.AbstractC2362l;
import cf.AbstractC4183b;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public final class C2704e<T> implements Iterable<T> {

    public final hn.b<? extends T> f12679b;

    public static final class a<T> implements Iterator<T> {

        public final b<T> f12680b;

        public final hn.b<? extends T> f12681c;

        public T f12682d;

        public boolean f12683e = true;

        public boolean f12684f = true;

        public Throwable f12685g;

        public boolean f12686h;

        public a(hn.b<? extends T> bVar, b<T> bVar2) {
            this.f12681c = bVar;
            this.f12680b = bVar2;
        }

        public final boolean a() {
            try {
                if (!this.f12686h) {
                    this.f12686h = true;
                    this.f12680b.k();
                    AbstractC2362l.a3(this.f12681c).N3().l6(this.f12680b);
                }
                Be.A<T> m10 = this.f12680b.m();
                if (m10.h()) {
                    this.f12684f = false;
                    this.f12682d = m10.e();
                    return true;
                }
                this.f12683e = false;
                if (m10.f()) {
                    return false;
                }
                if (!m10.g()) {
                    throw new IllegalStateException("Should not reach here");
                }
                Throwable d10 = m10.d();
                this.f12685g = d10;
                throw ExceptionHelper.f(d10);
            } catch (InterruptedException e10) {
                this.f12680b.dispose();
                this.f12685g = e10;
                throw ExceptionHelper.f(e10);
            }
        }

        @Override
        public boolean hasNext() {
            Throwable th2 = this.f12685g;
            if (th2 != null) {
                throw ExceptionHelper.f(th2);
            }
            if (this.f12683e) {
                return !this.f12684f || a();
            }
            return false;
        }

        @Override
        public T next() {
            Throwable th2 = this.f12685g;
            if (th2 != null) {
                throw ExceptionHelper.f(th2);
            }
            if (!hasNext()) {
                throw new NoSuchElementException("No more elements");
            }
            this.f12684f = true;
            return this.f12682d;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Read only iterator");
        }
    }

    public static final class b<T> extends AbstractC4183b<Be.A<T>> {

        public final BlockingQueue<Be.A<T>> f12687c = new ArrayBlockingQueue(1);

        public final AtomicInteger f12688d = new AtomicInteger();

        @Override
        public void a() {
        }

        @Override
        public void h(Be.A<T> a10) {
            if (this.f12688d.getAndSet(0) == 1 || !a10.h()) {
                while (!this.f12687c.offer(a10)) {
                    Be.A<T> poll = this.f12687c.poll();
                    if (poll != null && !poll.h()) {
                        a10 = poll;
                    }
                }
            }
        }

        public void k() {
            this.f12688d.set(1);
        }

        public Be.A<T> m() throws InterruptedException {
            k();
            io.reactivex.internal.util.e.b();
            return this.f12687c.take();
        }

        @Override
        public void onError(Throwable th2) {
            Ye.a.Y(th2);
        }
    }

    public C2704e(hn.b<? extends T> bVar) {
        this.f12679b = bVar;
    }

    @Override
    public Iterator<T> iterator() {
        return new a(this.f12679b, new b());
    }
}
