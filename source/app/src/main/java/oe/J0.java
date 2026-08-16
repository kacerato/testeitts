package Oe;

public final class J0 extends Be.B<Integer> {

    public final int f18949b;

    public final long f18950c;

    public static final class a extends Je.b<Integer> {

        public static final long f18951g = 396518478098735504L;

        public final Be.I<? super Integer> f18952c;

        public final long f18953d;

        public long f18954e;

        public boolean f18955f;

        public a(Be.I<? super Integer> i10, long j10, long j11) {
            this.f18952c = i10;
            this.f18954e = j10;
            this.f18953d = j11;
        }

        @Override
        @Ce.g
        public Integer poll() throws Exception {
            long j10 = this.f18954e;
            if (j10 != this.f18953d) {
                this.f18954e = 1 + j10;
                return Integer.valueOf((int) j10);
            }
            lazySet(1);
            return null;
        }

        @Override
        public void clear() {
            this.f18954e = this.f18953d;
            lazySet(1);
        }

        @Override
        public boolean d() {
            return get() != 0;
        }

        @Override
        public void dispose() {
            set(1);
        }

        @Override
        public boolean isEmpty() {
            return this.f18954e == this.f18953d;
        }

        @Override
        public int m(int i10) {
            if ((i10 & 1) == 0) {
                return 0;
            }
            this.f18955f = true;
            return 1;
        }

        public void run() {
            if (this.f18955f) {
                return;
            }
            Be.I<? super Integer> i10 = this.f18952c;
            long j10 = this.f18953d;
            for (long j11 = this.f18954e; j11 != j10 && get() == 0; j11++) {
                i10.h(Integer.valueOf((int) j11));
            }
            if (get() == 0) {
                lazySet(1);
                i10.a();
            }
        }
    }

    public J0(int i10, int i11) {
        this.f18949b = i10;
        this.f18950c = i10 + i11;
    }

    @Override
    public void J5(Be.I<? super Integer> i10) {
        a aVar = new a(i10, this.f18949b, this.f18950c);
        i10.e(aVar);
        aVar.run();
    }
}
