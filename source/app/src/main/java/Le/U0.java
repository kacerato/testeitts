package Le;

import Be.AbstractC2362l;

public final class U0 extends AbstractC2362l<Integer> {

    public final int f12319c;

    public final int f12320d;

    public static abstract class a extends Ue.d<Integer> {

        public static final long f12321f = -2252972430506210021L;

        public final int f12322c;

        public int f12323d;

        public volatile boolean f12324e;

        public a(int i10, int i11) {
            this.f12323d = i10;
            this.f12322c = i11;
        }

        public abstract void a();

        @Override
        @Ce.g
        public final Integer poll() {
            int i10 = this.f12323d;
            if (i10 == this.f12322c) {
                return null;
            }
            this.f12323d = i10 + 1;
            return Integer.valueOf(i10);
        }

        public abstract void c(long j10);

        @Override
        public final void cancel() {
            this.f12324e = true;
        }

        @Override
        public final void clear() {
            this.f12323d = this.f12322c;
        }

        @Override
        public final void i(long j10) {
            if (Ue.j.m(j10) && io.reactivex.internal.util.d.a(this, j10) == 0) {
                if (j10 == Long.MAX_VALUE) {
                    a();
                } else {
                    c(j10);
                }
            }
        }

        @Override
        public final boolean isEmpty() {
            return this.f12323d == this.f12322c;
        }

        @Override
        public final int m(int i10) {
            return i10 & 1;
        }
    }

    public static final class b extends a {

        public static final long f12325h = 2587302975077663557L;

        public final Ie.a<? super Integer> f12326g;

        public b(Ie.a<? super Integer> aVar, int i10, int i11) {
            super(i10, i11);
            this.f12326g = aVar;
        }

        @Override
        public void a() {
            int i10 = this.f12322c;
            Ie.a<? super Integer> aVar = this.f12326g;
            for (int i11 = this.f12323d; i11 != i10; i11++) {
                if (this.f12324e) {
                    return;
                }
                aVar.u(Integer.valueOf(i11));
            }
            if (this.f12324e) {
                return;
            }
            aVar.a();
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0036, code lost:
        
            r9.f12323d = r1;
            r10 = addAndGet(-r5);
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void c(long j10) {
            int i10 = this.f12322c;
            int i11 = this.f12323d;
            Ie.a<? super Integer> aVar = this.f12326g;
            do {
                long j11 = 0;
                while (true) {
                    if (j11 == j10 || i11 == i10) {
                        if (i11 == i10) {
                            if (this.f12324e) {
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
                        if (this.f12324e) {
                            return;
                        }
                        if (aVar.u(Integer.valueOf(i11))) {
                            j11++;
                        }
                        i11++;
                    }
                }
            } while (j10 != 0);
        }
    }

    public static final class c extends a {

        public static final long f12327h = 2587302975077663557L;

        public final hn.c<? super Integer> f12328g;

        public c(hn.c<? super Integer> cVar, int i10, int i11) {
            super(i10, i11);
            this.f12328g = cVar;
        }

        @Override
        public void a() {
            int i10 = this.f12322c;
            hn.c<? super Integer> cVar = this.f12328g;
            for (int i11 = this.f12323d; i11 != i10; i11++) {
                if (this.f12324e) {
                    return;
                }
                cVar.h(Integer.valueOf(i11));
            }
            if (this.f12324e) {
                return;
            }
            cVar.a();
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0033, code lost:
        
            r9.f12323d = r1;
            r10 = addAndGet(-r5);
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void c(long j10) {
            int i10 = this.f12322c;
            int i11 = this.f12323d;
            hn.c<? super Integer> cVar = this.f12328g;
            do {
                long j11 = 0;
                while (true) {
                    if (j11 == j10 || i11 == i10) {
                        if (i11 == i10) {
                            if (this.f12324e) {
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
                        if (this.f12324e) {
                            return;
                        }
                        cVar.h(Integer.valueOf(i11));
                        j11++;
                        i11++;
                    }
                }
            } while (j10 != 0);
        }
    }

    public U0(int i10, int i11) {
        this.f12319c = i10;
        this.f12320d = i10 + i11;
    }

    @Override
    public void m6(hn.c<? super Integer> cVar) {
        if (cVar instanceof Ie.a) {
            cVar.j(new b((Ie.a) cVar, this.f12319c, this.f12320d));
        } else {
            cVar.j(new c(cVar, this.f12319c, this.f12320d));
        }
    }
}
