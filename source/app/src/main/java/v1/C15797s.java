package v1;

import androidx.annotation.NonNull;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public final class C15797s<T> implements InterfaceC15798t<T> {

    public final CountDownLatch f121150a = new CountDownLatch(1);

    public C15797s() {
    }

    @Override
    public final void a() {
        this.f121150a.countDown();
    }

    @Override
    public final void b(T t10) {
        this.f121150a.countDown();
    }

    @Override
    public final void c(@NonNull Exception exc) {
        this.f121150a.countDown();
    }

    public final void d() throws InterruptedException {
        this.f121150a.await();
    }

    public final boolean e(long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.f121150a.await(j10, timeUnit);
    }

    public C15797s(r rVar) {
    }
}
