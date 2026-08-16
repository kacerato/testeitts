package U0;

import G0.A;
import androidx.annotation.NonNull;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

@C0.a
public class b implements ThreadFactory {

    public final String f25657b;

    public final ThreadFactory f25658c = Executors.defaultThreadFactory();

    @C0.a
    public b(@NonNull String str) {
        A.s(str, "Name must not be null");
        this.f25657b = str;
    }

    @Override
    @NonNull
    public final Thread newThread(@NonNull Runnable runnable) {
        Thread newThread = this.f25658c.newThread(new d(runnable, 0));
        newThread.setName(this.f25657b);
        return newThread;
    }
}
