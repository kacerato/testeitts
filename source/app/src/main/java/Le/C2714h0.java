package Le;

import Be.AbstractC2362l;

public final class C2714h0<T> extends AbstractC2362l<T> {

    public final T[] f12818c;

    public static final class a<T> extends c<T> {

        public static final long f12819h = 2587302975077663557L;

        public final Ie.a<? super T> f12820g;

        public a(Ie.a<? super T> aVar, T[] tArr) {
            super(tArr);
            this.f12820g = aVar;
        }

        @Override
        public void a() {
            T[] tArr = this.f12824c;
            int length = tArr.length;
            Ie.a<? super T> aVar = this.f12820g;
            for (int i10 = this.f12825d; i10 != length; i10++) {
                if (this.f12826e) {
                    return;
                }
                T t10 = tArr[i10];
                if (t10 == null) {
                    aVar.onError(new NullPointerException("The element at index " + i10 + " is null"));
                    return;
                }
                aVar.u(t10);
            }
            if (this.f12826e) {
                return;
            }
            aVar.a();
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0056, code lost:
        
            r10.f12825d = r2;
            r11 = addAndGet(-r6);
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void b(long j10) {
            T[] tArr = this.f12824c;
            int length = tArr.length;
            int i10 = this.f12825d;
            Ie.a<? super T> aVar = this.f12820g;
            do {
                long j11 = 0;
                while (true) {
                    if (j11 == j10 || i10 == length) {
                        if (i10 == length) {
                            if (this.f12826e) {
                                return;
                            }
                            aVar.a();
                            return;
                        } else {
                            j10 = get();
                            if (j11 == j10) {
                                break;
                            }
                        }
                    } else {
                        if (this.f12826e) {
                            return;
                        }
                        T t10 = tArr[i10];
                        if (t10 == null) {
                            aVar.onError(new NullPointerException("The element at index " + i10 + " is null"));
                            return;
                        }
                        if (aVar.u(t10)) {
                            j11++;
                        }
                        i10++;
                    }
                }
            } while (j10 != 0);
        }
    }

    public static final class b<T> extends c<T> {

        public static final long f12821h = 2587302975077663557L;

        public final hn.c<? super T> f12822g;

        public b(hn.c<? super T> cVar, T[] tArr) {
            super(tArr);
            this.f12822g = cVar;
        }

        @Override
        public void a() {
            T[] tArr = this.f12824c;
            int length = tArr.length;
            hn.c<? super T> cVar = this.f12822g;
            for (int i10 = this.f12825d; i10 != length; i10++) {
                if (this.f12826e) {
                    return;
                }
                T t10 = tArr[i10];
                if (t10 == null) {
                    cVar.onError(new NullPointerException("The element at index " + i10 + " is null"));
                    return;
                }
                cVar.h(t10);
            }
            if (this.f12826e) {
                return;
            }
            cVar.a();
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0053, code lost:
        
            r10.f12825d = r2;
            r11 = addAndGet(-r6);
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void b(long j10) {
            T[] tArr = this.f12824c;
            int length = tArr.length;
            int i10 = this.f12825d;
            hn.c<? super T> cVar = this.f12822g;
            do {
                long j11 = 0;
                while (true) {
                    if (j11 == j10 || i10 == length) {
                        if (i10 == length) {
                            if (this.f12826e) {
                                return;
                            }
                            cVar.a();
                            return;
                        } else {
                            j10 = get();
                            if (j11 == j10) {
                                break;
                            }
                        }
                    } else {
                        if (this.f12826e) {
                            return;
                        }
                        T t10 = tArr[i10];
                        if (t10 == null) {
                            cVar.onError(new NullPointerException("The element at index " + i10 + " is null"));
                            return;
                        }
                        cVar.h(t10);
                        j11++;
                        i10++;
                    }
                }
            } while (j10 != 0);
        }
    }

    public static abstract class c<T> extends Ue.d<T> {

        public static final long f12823f = -2252972430506210021L;

        public final T[] f12824c;

        public int f12825d;

        public volatile boolean f12826e;

        public c(T[] tArr) {
            this.f12824c = tArr;
        }

        public abstract void a();

        public abstract void b(long j10);

        @Override
        public final void cancel() {
            this.f12826e = true;
        }

        @Override
        public final void clear() {
            this.f12825d = this.f12824c.length;
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
            return this.f12825d == this.f12824c.length;
        }

        @Override
        public final int m(int i10) {
            return i10 & 1;
        }

        @Override
        @Ce.g
        public final T poll() {
            int i10 = this.f12825d;
            T[] tArr = this.f12824c;
            if (i10 == tArr.length) {
                return null;
            }
            this.f12825d = i10 + 1;
            return (T) He.b.g(tArr[i10], "array element is null");
        }
    }

    public C2714h0(T[] tArr) {
        this.f12818c = tArr;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        if (cVar instanceof Ie.a) {
            cVar.j(new a((Ie.a) cVar, this.f12818c));
        } else {
            cVar.j(new b(cVar, this.f12818c));
        }
    }
}
