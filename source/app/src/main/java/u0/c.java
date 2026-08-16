package U0;

import G0.A;
import androidx.annotation.NonNull;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

@C0.a
public class c implements ThreadFactory {

    public final String f25659b;

    public final AtomicInteger f25660c = new AtomicInteger();

    public final ThreadFactory f25661d = Executors.defaultThreadFactory();

    @C0.a
    public c(@NonNull String str) {
        A.s(str, "Name must not be null");
        this.f25659b = str;
    }

    @Override
    @NonNull
    public final Thread newThread(@NonNull Runnable runnable) {
        Thread newThread = this.f25661d.newThread(new d(runnable, 0));
        newThread.setName(this.f25659b + "[" + this.f25660c.getAndIncrement() + "]");
        return newThread;
    }
}
