package Le;

import Be.AbstractC2362l;
import Be.EnumC2351a;
import Be.InterfaceC2367q;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public final class M0<T> extends AbstractC2692a<T, T> {

    public final long f12055d;

    public final Fe.a f12056e;

    public final EnumC2351a f12057f;

    public static class a {

        public static final int[] f12058a;

        static {
            int[] iArr = new int[EnumC2351a.values().length];
            f12058a = iArr;
            try {
                iArr[EnumC2351a.DROP_LATEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12058a[EnumC2351a.DROP_OLDEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static final class b<T> extends AtomicInteger implements InterfaceC2367q<T>, hn.d {

        public static final long f12059l = 3240706908776709697L;

        public final hn.c<? super T> f12060b;

        public final Fe.a f12061c;

        public final EnumC2351a f12062d;

        public final long f12063e;

        public final AtomicLong f12064f = new AtomicLong();

        public final Deque<T> f12065g = new ArrayDeque();

        public hn.d f12066h;

        public volatile boolean f12067i;

        public volatile boolean f12068j;

        public Throwable f12069k;

        public b(hn.c<? super T> cVar, Fe.a aVar, EnumC2351a enumC2351a, long j10) {
            this.f12060b = cVar;
            this.f12061c = aVar;
            this.f12062d = enumC2351a;
            this.f12063e = j10;
        }

        @Override
        public void a() {
            this.f12068j = true;
            c();
        }

        public void b(Deque<T> deque) {
            synchronized (deque) {
                deque.clear();
            }
        }

        public void c() {
            boolean isEmpty;
            T poll;
            if (getAndIncrement() != 0) {
                return;
            }
            Deque<T> deque = this.f12065g;
            hn.c<? super T> cVar = this.f12060b;
            int i10 = 1;
            do {
                long j10 = this.f12064f.get();
                long j11 = 0;
                while (j11 != j10) {
                    if (this.f12067i) {
                        b(deque);
                        return;
                    }
                    boolean z10 = this.f12068j;
                    synchronized (deque) {
                        poll = deque.poll();
                    }
                    boolean z11 = poll == null;
                    if (z10) {
                        Throwable th2 = this.f12069k;
                        if (th2 != null) {
                            b(deque);
                            cVar.onError(th2);
                            return;
                        } else if (z11) {
                            cVar.a();
                            return;
                        }
                    }
                    if (z11) {
                        break;
                    }
                    cVar.h(poll);
                    j11++;
                }
                if (j11 == j10) {
                    if (this.f12067i) {
                        b(deque);
                        return;
                    }
                    boolean z12 = this.f12068j;
                    synchronized (deque) {
                        isEmpty = deque.isEmpty();
                    }
                    if (z12) {
                        Throwable th3 = this.f12069k;
                        if (th3 != null) {
                            b(deque);
                            cVar.onError(th3);
                            return;
                        } else if (isEmpty) {
                            cVar.a();
                            return;
                        }
                    }
                }
                if (j11 != 0) {
                    io.reactivex.internal.util.d.e(this.f12064f, j11);
                }
                i10 = addAndGet(-i10);
            } while (i10 != 0);
        }

        @Override
        public void cancel() {
            this.f12067i = true;
            this.f12066h.cancel();
            if (getAndIncrement() == 0) {
                b(this.f12065g);
            }
        }

        @Override
        public void h(T t10) {
            boolean z10;
            boolean z11;
            if (this.f12068j) {
                return;
            }
            Deque<T> deque = this.f12065g;
            synchronized (deque) {
                try {
                    z10 = false;
                    if (deque.size() == this.f12063e) {
                        int i10 = a.f12058a[this.f12062d.ordinal()];
                        z11 = true;
                        if (i10 == 1) {
                            deque.pollLast();
                            deque.offer(t10);
                        } else if (i10 == 2) {
                            deque.poll();
                            deque.offer(t10);
                        }
                        z11 = false;
                        z10 = true;
                    } else {
                        deque.offer(t10);
                        z11 = false;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (!z10) {
                if (!z11) {
                    c();
                    return;
                } else {
                    this.f12066h.cancel();
                    onError(new MissingBackpressureException());
                    return;
                }
            }
            Fe.a aVar = this.f12061c;
            if (aVar != null) {
                try {
                    aVar.run();
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    this.f12066h.cancel();
                    onError(th3);
                }
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f12064f, j10);
                c();
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12066h, dVar)) {
                this.f12066h = dVar;
                this.f12060b.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12068j) {
                Ye.a.Y(th2);
                return;
            }
            this.f12069k = th2;
            this.f12068j = true;
            c();
        }
    }

    public M0(AbstractC2362l<T> abstractC2362l, long j10, Fe.a aVar, EnumC2351a enumC2351a) {
        super(abstractC2362l);
        this.f12055d = j10;
        this.f12056e = aVar;
        this.f12057f = enumC2351a;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new b(cVar, this.f12056e, this.f12057f, this.f12055d));
    }
}
