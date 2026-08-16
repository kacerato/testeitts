package Oe;

import bf.C3886j;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public final class F1<T> extends AbstractC2859a<T, Be.B<T>> {

    public final long f18824c;

    public final long f18825d;

    public final int f18826e;

    public static final class a<T> extends AtomicInteger implements Be.I<T>, De.c, Runnable {

        public static final long f18827i = -7481782523886138128L;

        public final Be.I<? super Be.B<T>> f18828b;

        public final long f18829c;

        public final int f18830d;

        public long f18831e;

        public De.c f18832f;

        public C3886j<T> f18833g;

        public volatile boolean f18834h;

        public a(Be.I<? super Be.B<T>> i10, long j10, int i11) {
            this.f18828b = i10;
            this.f18829c = j10;
            this.f18830d = i11;
        }

        @Override
        public void a() {
            C3886j<T> c3886j = this.f18833g;
            if (c3886j != null) {
                this.f18833g = null;
                c3886j.a();
            }
            this.f18828b.a();
        }

        @Override
        public boolean d() {
            return this.f18834h;
        }

        @Override
        public void dispose() {
            this.f18834h = true;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f18832f, cVar)) {
                this.f18832f = cVar;
                this.f18828b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            C3886j<T> c3886j = this.f18833g;
            if (c3886j == null && !this.f18834h) {
                c3886j = C3886j.q8(this.f18830d, this);
                this.f18833g = c3886j;
                this.f18828b.h(c3886j);
            }
            if (c3886j != null) {
                c3886j.h(t10);
                long j10 = this.f18831e + 1;
                this.f18831e = j10;
                if (j10 >= this.f18829c) {
                    this.f18831e = 0L;
                    this.f18833g = null;
                    c3886j.a();
                    if (this.f18834h) {
                        this.f18832f.dispose();
                    }
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            C3886j<T> c3886j = this.f18833g;
            if (c3886j != null) {
                this.f18833g = null;
                c3886j.onError(th2);
            }
            this.f18828b.onError(th2);
        }

        @Override
        public void run() {
            if (this.f18834h) {
                this.f18832f.dispose();
            }
        }
    }

    public static final class b<T> extends AtomicBoolean implements Be.I<T>, De.c, Runnable {

        public static final long f18835l = 3366976432059579510L;

        public final Be.I<? super Be.B<T>> f18836b;

        public final long f18837c;

        public final long f18838d;

        public final int f18839e;

        public long f18841g;

        public volatile boolean f18842h;

        public long f18843i;

        public De.c f18844j;

        public final AtomicInteger f18845k = new AtomicInteger();

        public final ArrayDeque<C3886j<T>> f18840f = new ArrayDeque<>();

        public b(Be.I<? super Be.B<T>> i10, long j10, long j11, int i11) {
            this.f18836b = i10;
            this.f18837c = j10;
            this.f18838d = j11;
            this.f18839e = i11;
        }

        @Override
        public void a() {
            ArrayDeque<C3886j<T>> arrayDeque = this.f18840f;
            while (!arrayDeque.isEmpty()) {
                arrayDeque.poll().a();
            }
            this.f18836b.a();
        }

        @Override
        public boolean d() {
            return this.f18842h;
        }

        @Override
        public void dispose() {
            this.f18842h = true;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f18844j, cVar)) {
                this.f18844j = cVar;
                this.f18836b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            ArrayDeque<C3886j<T>> arrayDeque = this.f18840f;
            long j10 = this.f18841g;
            long j11 = this.f18838d;
            if (j10 % j11 == 0 && !this.f18842h) {
                this.f18845k.getAndIncrement();
                C3886j<T> q82 = C3886j.q8(this.f18839e, this);
                arrayDeque.offer(q82);
                this.f18836b.h(q82);
            }
            long j12 = this.f18843i + 1;
            Iterator<C3886j<T>> it = arrayDeque.iterator();
            while (it.hasNext()) {
                it.next().h(t10);
            }
            if (j12 >= this.f18837c) {
                arrayDeque.poll().a();
                if (arrayDeque.isEmpty() && this.f18842h) {
                    this.f18844j.dispose();
                    return;
                }
                this.f18843i = j12 - j11;
            } else {
                this.f18843i = j12;
            }
            this.f18841g = j10 + 1;
        }

        @Override
        public void onError(Throwable th2) {
            ArrayDeque<C3886j<T>> arrayDeque = this.f18840f;
            while (!arrayDeque.isEmpty()) {
                arrayDeque.poll().onError(th2);
            }
            this.f18836b.onError(th2);
        }

        @Override
        public void run() {
            if (this.f18845k.decrementAndGet() == 0 && this.f18842h) {
                this.f18844j.dispose();
            }
        }
    }

    public F1(Be.G<T> g10, long j10, long j11, int i10) {
        super(g10);
        this.f18824c = j10;
        this.f18825d = j11;
        this.f18826e = i10;
    }

    @Override
    public void J5(Be.I<? super Be.B<T>> i10) {
        if (this.f18824c == this.f18825d) {
            this.f19344b.c(new a(i10, this.f18824c, this.f18826e));
        } else {
            this.f19344b.c(new b(i10, this.f18824c, this.f18825d, this.f18826e));
        }
    }
}
