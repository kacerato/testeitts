package Oe;

public final class K0 extends Be.B<Long> {

    public final long f19003b;

    public final long f19004c;

    public static final class a extends Je.b<Long> {

        public static final long f19005g = 396518478098735504L;

        public final Be.I<? super Long> f19006c;

        public final long f19007d;

        public long f19008e;

        public boolean f19009f;

        public a(Be.I<? super Long> i10, long j10, long j11) {
            this.f19006c = i10;
            this.f19008e = j10;
            this.f19007d = j11;
        }

        @Override
        @Ce.g
        public Long poll() throws Exception {
            long j10 = this.f19008e;
            if (j10 != this.f19007d) {
                this.f19008e = 1 + j10;
                return Long.valueOf(j10);
            }
            lazySet(1);
            return null;
        }

        @Override
        public void clear() {
            this.f19008e = this.f19007d;
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
            return this.f19008e == this.f19007d;
        }

        @Override
        public int m(int i10) {
            if ((i10 & 1) == 0) {
                return 0;
            }
            this.f19009f = true;
            return 1;
        }

        public void run() {
            if (this.f19009f) {
                return;
            }
            Be.I<? super Long> i10 = this.f19006c;
            long j10 = this.f19007d;
            for (long j11 = this.f19008e; j11 != j10 && get() == 0; j11++) {
                i10.h(Long.valueOf(j11));
            }
            if (get() == 0) {
                lazySet(1);
                i10.a();
            }
        }
    }

    public K0(long j10, long j11) {
        this.f19003b = j10;
        this.f19004c = j11;
    }

    @Override
    public void J5(Be.I<? super Long> i10) {
        long j10 = this.f19003b;
        a aVar = new a(i10, j10, j10 + this.f19004c);
        i10.e(aVar);
        aVar.run();
    }
}
