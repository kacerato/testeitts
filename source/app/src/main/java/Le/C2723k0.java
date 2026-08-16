package Le;

import Be.AbstractC2362l;
import java.util.Iterator;

public final class C2723k0<T> extends AbstractC2362l<T> {

    public final Iterable<? extends T> f12877c;

    public static abstract class a<T> extends Ue.d<T> {

        public static final long f12878f = -2252972430506210021L;

        public Iterator<? extends T> f12879c;

        public volatile boolean f12880d;

        public boolean f12881e;

        public a(Iterator<? extends T> it) {
            this.f12879c = it;
        }

        public abstract void a();

        public abstract void b(long j10);

        @Override
        public final void cancel() {
            this.f12880d = true;
        }

        @Override
        public final void clear() {
            this.f12879c = null;
        }

        @Override
        public final void i(long j10) {
            if (Ue.j.m(j10) && io.reactivex.internal.util.d.a(this, j10) == 0) {
                if (j10 == Long.MAX_VALUE) {
                    a();
                } else {
                    b(j10);
                }
            }
        }

        @Override
        public final boolean isEmpty() {
            Iterator<? extends T> it = this.f12879c;
            return it == null || !it.hasNext();
        }

        @Override
        public final int m(int i10) {
            return i10 & 1;
        }

        @Override
        @Ce.g
        public final T poll() {
            Iterator<? extends T> it = this.f12879c;
            if (it == null) {
                return null;
            }
            if (!this.f12881e) {
                this.f12881e = true;
            } else if (!it.hasNext()) {
                return null;
            }
            return (T) He.b.g(this.f12879c.next(), "Iterator.next() returned a null value");
        }
    }

    public static final class b<T> extends a<T> {

        public static final long f12882h = -6022804456014692607L;

        public final Ie.a<? super T> f12883g;

        public b(Ie.a<? super T> aVar, Iterator<? extends T> it) {
            super(it);
            this.f12883g = aVar;
        }

        @Override
        public void a() {
            Iterator<? extends T> it = this.f12879c;
            Ie.a<? super T> aVar = this.f12883g;
            while (!this.f12880d) {
                try {
                    T next = it.next();
                    if (this.f12880d) {
                        return;
                    }
                    if (next == null) {
                        aVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                        return;
                    }
                    aVar.u(next);
                    if (this.f12880d) {
                        return;
                    }
                    try {
                        if (!it.hasNext()) {
                            if (this.f12880d) {
                                return;
                            }
                            aVar.a();
                            return;
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        aVar.onError(th2);
                        return;
                    }
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    aVar.onError(th3);
                    return;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x005b, code lost:
        
            r9 = addAndGet(-r4);
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void b(long j10) {
            Iterator<? extends T> it = this.f12879c;
            Ie.a<? super T> aVar = this.f12883g;
            do {
                long j11 = 0;
                while (true) {
                    if (j11 == j10) {
                        j10 = get();
                        if (j11 == j10) {
                            break;
                        }
                    } else {
                        if (this.f12880d) {
                            return;
                        }
                        try {
                            T next = it.next();
                            if (this.f12880d) {
                                return;
                            }
                            if (next == null) {
                                aVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                                return;
                            }
                            boolean u10 = aVar.u(next);
                            if (this.f12880d) {
                                return;
                            }
                            try {
                                if (!it.hasNext()) {
                                    if (this.f12880d) {
                                        return;
                                    }
                                    aVar.a();
                                    return;
                                } else if (u10) {
                                    j11++;
                                }
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                aVar.onError(th2);
                                return;
                            }
                        } catch (Throwable th3) {
                            io.reactivex.exceptions.a.b(th3);
                            aVar.onError(th3);
                            return;
                        }
                    }
                }
            } while (j10 != 0);
        }
    }

    public static final class c<T> extends a<T> {

        public static final long f12884h = -6022804456014692607L;

        public final hn.c<? super T> f12885g;

        public c(hn.c<? super T> cVar, Iterator<? extends T> it) {
            super(it);
            this.f12885g = cVar;
        }

        @Override
        public void a() {
            Iterator<? extends T> it = this.f12879c;
            hn.c<? super T> cVar = this.f12885g;
            while (!this.f12880d) {
                try {
                    T next = it.next();
                    if (this.f12880d) {
                        return;
                    }
                    if (next == null) {
                        cVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                        return;
                    }
                    cVar.h(next);
                    if (this.f12880d) {
                        return;
                    }
                    try {
                        if (!it.hasNext()) {
                            if (this.f12880d) {
                                return;
                            }
                            cVar.a();
                            return;
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        cVar.onError(th2);
                        return;
                    }
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    cVar.onError(th3);
                    return;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x0058, code lost:
        
            r9 = addAndGet(-r4);
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void b(long j10) {
            Iterator<? extends T> it = this.f12879c;
            hn.c<? super T> cVar = this.f12885g;
            do {
                long j11 = 0;
                while (true) {
                    if (j11 == j10) {
                        j10 = get();
                        if (j11 == j10) {
                            break;
                        }
                    } else {
                        if (this.f12880d) {
                            return;
                        }
                        try {
                            T next = it.next();
                            if (this.f12880d) {
                                return;
                            }
                            if (next == null) {
                                cVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                                return;
                            }
                            cVar.h(next);
                            if (this.f12880d) {
                                return;
                            }
                            try {
                                if (!it.hasNext()) {
                                    if (this.f12880d) {
                                        return;
                                    }
                                    cVar.a();
                                    return;
                                }
                                j11++;
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                cVar.onError(th2);
                                return;
                            }
                        } catch (Throwable th3) {
                            io.reactivex.exceptions.a.b(th3);
                            cVar.onError(th3);
                            return;
                        }
                    }
                }
            } while (j10 != 0);
        }
    }

    public C2723k0(Iterable<? extends T> iterable) {
        this.f12877c = iterable;
    }

    public static <T> void O8(hn.c<? super T> cVar, Iterator<? extends T> it) {
        try {
            if (!it.hasNext()) {
                Ue.g.a(cVar);
            } else if (cVar instanceof Ie.a) {
                cVar.j(new b((Ie.a) cVar, it));
            } else {
                cVar.j(new c(cVar, it));
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ue.g.b(th2, cVar);
        }
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        try {
            O8(cVar, this.f12877c.iterator());
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ue.g.b(th2, cVar);
        }
    }
}
