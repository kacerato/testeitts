package Me;

import Be.AbstractC2368s;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class m0 extends AbstractC2368s<Long> {

    public final long f15136b;

    public final TimeUnit f15137c;

    public final Be.J f15138d;

    public static final class a extends AtomicReference<De.c> implements De.c, Runnable {

        public static final long f15139c = 2875964065294031672L;

        public final Be.v<? super Long> f15140b;

        public a(Be.v<? super Long> vVar) {
            this.f15140b = vVar;
        }

        public void a(De.c cVar) {
            Ge.d.c(this, cVar);
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
        public void run() {
            this.f15140b.b(0L);
        }
    }

    public m0(long j10, TimeUnit timeUnit, Be.J j11) {
        this.f15136b = j10;
        this.f15137c = timeUnit;
        this.f15138d = j11;
    }

    @Override
    public void t1(Be.v<? super Long> vVar) {
        a aVar = new a(vVar);
        vVar.e(aVar);
        aVar.a(this.f15138d.g(aVar, this.f15136b, this.f15137c));
    }
}
