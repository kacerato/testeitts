package Le;

import Be.AbstractC2362l;

public final class V0 extends AbstractC2362l<Long> {

    public final long f12354c;

    public final long f12355d;

    public static abstract class a extends Ue.d<Long> {

        public static final long f12356f = -2252972430506210021L;

        public final long f12357c;

        public long f12358d;

        public volatile boolean f12359e;

        public a(long j10, long j11) {
            this.f12358d = j10;
            this.f12357c = j11;
        }

        public abstract void a();

        @Override
        @Ce.g
        public final Long poll() {
            long j10 = this.f12358d;
            if (j10 == this.f12357c) {
                return null;
            }
            this.f12358d = 1 + j10;
            return Long.valueOf(j10);
        }

        public abstract void c(long j10);

        @Override
        public final void cancel() {
            this.f12359e = true;
        }

        @Override
        public final void clear() {
            this.f12358d = this.f12357c;
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
            return this.f12358d == this.f12357c;
        }

        @Override
        public final int m(int i10) {
            return i10 & 1;
        }
    }

    public static final class b extends a {

        public static final long f12360h = 2587302975077663557L;

        public final Ie.a<? super Long> f12361g;

        public b(Ie.a<? super Long> aVar, long j10, long j11) {
            super(j10, j11);
            this.f12361g = aVar;
        }

        @Override
        public void a() {
            long j10 = this.f12357c;
            Ie.a<? super Long> aVar = this.f12361g;
            for (long j11 = this.f12358d; j11 != j10; j11++) {
                if (this.f12359e) {
                    return;
                }
                aVar.u(Long.valueOf(j11));
            }
            if (this.f12359e) {
                return;
            }
            aVar.a();
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
        
            r12.f12358d = r2;
            r13 = addAndGet(-r7);
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void c(long j10) {
            long j11 = this.f12357c;
            long j12 = this.f12358d;
            Ie.a<? super Long> aVar = this.f12361g;
            do {
                long j13 = 0;
                while (true) {
                    if (j13 == j10 || j12 == j11) {
                        if (j12 == j11) {
                            if (this.f12359e) {
                                return;
                            }
                            aVar.a();
                            return;
                        } else {
                            j10 = get();
                            if (j13 == j10) {
                                break;
                            }
                        }
                    } else {
                        if (this.f12359e) {
                            return;
                        }
                        if (aVar.u(Long.valueOf(j12))) {
                            j13++;
                        }
                        j12++;
                    }
                }
            } while (j10 != 0);
        }
    }

    public static final class c extends a {

        public static final long f12362h = 2587302975077663557L;

        public final hn.c<? super Long> f12363g;

        public c(hn.c<? super Long> cVar, long j10, long j11) {
            super(j10, j11);
            this.f12363g = cVar;
        }

        @Override
        public void a() {
            long j10 = this.f12357c;
            hn.c<? super Long> cVar = this.f12363g;
            for (long j11 = this.f12358d; j11 != j10; j11++) {
                if (this.f12359e) {
                    return;
                }
                cVar.h(Long.valueOf(j11));
            }
            if (this.f12359e) {
                return;
            }
            cVar.a();
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
        
            r11.f12358d = r2;
            r12 = addAndGet(-r7);
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void c(long j10) {
            long j11 = this.f12357c;
            long j12 = this.f12358d;
            hn.c<? super Long> cVar = this.f12363g;
            do {
                long j13 = 0;
                while (true) {
                    if (j13 == j10 || j12 == j11) {
                        if (j12 == j11) {
                            if (this.f12359e) {
                                return;
                            }
                            cVar.a();
                            return;
                        } else {
                            j10 = get();
                            if (j13 == j10) {
                                break;
                            }
                        }
                    } else {
                        if (this.f12359e) {
                            return;
                        }
                        cVar.h(Long.valueOf(j12));
                        j13++;
                        j12++;
                    }
                }
            } while (j10 != 0);
        }
    }

    public V0(long j10, long j11) {
        this.f12354c = j10;
        this.f12355d = j10 + j11;
    }

    @Override
    public void m6(hn.c<? super Long> cVar) {
        if (cVar instanceof Ie.a) {
            cVar.j(new b((Ie.a) cVar, this.f12354c, this.f12355d));
        } else {
            cVar.j(new c(cVar, this.f12354c, this.f12355d));
        }
    }
}
