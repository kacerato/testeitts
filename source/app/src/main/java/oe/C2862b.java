package Oe;

import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class C2862b<T> implements Iterable<T> {

    public final Be.G<? extends T> f19366b;

    public final int f19367c;

    public static final class a<T> extends AtomicReference<De.c> implements Be.I<T>, Iterator<T>, De.c {

        public static final long f19368g = 6695226475494099826L;

        public final Re.c<T> f19369b;

        public final Lock f19370c;

        public final Condition f19371d;

        public volatile boolean f19372e;

        public Throwable f19373f;

        public a(int i10) {
            this.f19369b = new Re.c<>(i10);
            ReentrantLock reentrantLock = new ReentrantLock();
            this.f19370c = reentrantLock;
            this.f19371d = reentrantLock.newCondition();
        }

        @Override
        public void a() {
            this.f19372e = true;
            b();
        }

        public void b() {
            this.f19370c.lock();
            try {
                this.f19371d.signalAll();
            } finally {
                this.f19370c.unlock();
            }
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        @Override
        public void h(T t10) {
            this.f19369b.offer(t10);
            b();
        }

        @Override
        public boolean hasNext() {
            while (true) {
                boolean z10 = this.f19372e;
                boolean isEmpty = this.f19369b.isEmpty();
                if (z10) {
                    Throwable th2 = this.f19373f;
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
                try {
                    io.reactivex.internal.util.e.b();
                    this.f19370c.lock();
                    while (!this.f19372e && this.f19369b.isEmpty()) {
                        try {
                            this.f19371d.await();
                        } finally {
                        }
                    }
                    this.f19370c.unlock();
                } catch (InterruptedException e10) {
                    Ge.d.a(this);
                    b();
                    throw ExceptionHelper.f(e10);
                }
            }
        }

        @Override
        public T next() {
            if (hasNext()) {
                return this.f19369b.poll();
            }
            throw new NoSuchElementException();
        }

        @Override
        public void onError(Throwable th2) {
            this.f19373f = th2;
            this.f19372e = true;
            b();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }
    }

    public C2862b(Be.G<? extends T> g10, int i10) {
        this.f19366b = g10;
        this.f19367c = i10;
    }

    @Override
    public Iterator<T> iterator() {
        a aVar = new a(this.f19367c);
        this.f19366b.c(aVar);
        return aVar;
    }
}
