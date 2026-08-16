package b3;

import androidx.annotation.NonNull;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import v1.AbstractC15790k;
import v1.InterfaceC15784e;

public final class C3840b implements InterfaceC15784e<Void> {

    public final CountDownLatch f32915a = new CountDownLatch(1);

    @Override
    public void a(@NonNull AbstractC15790k<Void> abstractC15790k) {
        this.f32915a.countDown();
    }

    public boolean b(long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.f32915a.await(j10, timeUnit);
    }

    public void c() {
        this.f32915a.countDown();
    }
}
