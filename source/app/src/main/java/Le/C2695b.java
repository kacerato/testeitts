package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class C2695b<T> implements Iterable<T> {

    public final AbstractC2362l<T> f12580b;

    public final int f12581c;

    public static final class a<T> extends AtomicReference<hn.d> implements InterfaceC2367q<T>, Iterator<T>, Runnable, De.c {

        public static final long f12582j = 6695226475494099826L;

        public final Re.b<T> f12583b;

        public final long f12584c;

        public final long f12585d;

        public final Lock f12586e;

        public final Condition f12587f;

        public long f12588g;

        public volatile boolean f12589h;

        public Throwable f12590i;

        public a(int i10) {
            this.f12583b = new Re.b<>(i10);
            this.f12584c = i10;
            this.f12585d = i10 - (i10 >> 2);
            ReentrantLock reentrantLock = new ReentrantLock();
            this.f12586e = reentrantLock;
            this.f12587f = reentrantLock.newCondition();
        }

        @Override
        public void a() {
            this.f12589h = true;
            b();
        }

        public void b() {
            this.f12586e.lock();
            try {
                this.f12587f.signalAll();
            } finally {
                this.f12586e.unlock();
            }
        }

        @Override
        public boolean d() {
            return get() == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            Ue.j.a(this);
        }

        @Override
        public void h(T t10) {
            if (this.f12583b.offer(t10)) {
                b();
            } else {
                Ue.j.a(this);
                onError(new MissingBackpressureException("Queue full?!"));
            }
        }

        @Override
        public boolean hasNext() {
            while (true) {
                boolean z10 = this.f12589h;
                boolean isEmpty = this.f12583b.isEmpty();
                if (z10) {
                    Throwable th2 = this.f12590i;
                    if (th2 != null) {
                        throw ExceptionHelper.f(th2);
                    }
                    if (isEmpty) {
                        return false;
                    }
                }
                if (!isEmpty) {
                    return true;
                }
                io.reactivex.internal.util.e.b();
                this.f12586e.lock();
                while (!this.f12589h && this.f12583b.isEmpty()) {
                    try {
                        try {
                            this.f12587f.await();
                        } catch (InterruptedException e10) {
                            run();
                            throw ExceptionHelper.f(e10);
                        }
                    } finally {
                        this.f12586e.unlock();
                    }
                }
            }
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.k(this, dVar, this.f12584c);
        }

        @Override
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T poll = this.f12583b.poll();
            long j10 = this.f12588g + 1;
            if (j10 == this.f12585d) {
                this.f12588g = 0L;
                get().i(j10);
            } else {
                this.f12588g = j10;
            }
            return poll;
        }

        @Override
        public void onError(Throwable th2) {
            this.f12590i = th2;
            this.f12589h = true;
            b();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }

        @Override
        public void run() {
            Ue.j.a(this);
            b();
        }
    }

    public C2695b(AbstractC2362l<T> abstractC2362l, int i10) {
        this.f12580b = abstractC2362l;
        this.f12581c = i10;
    }

    @Override
    public Iterator<T> iterator() {
        a aVar = new a(this.f12581c);
        this.f12580b.l6(aVar);
        return aVar;
    }
}
