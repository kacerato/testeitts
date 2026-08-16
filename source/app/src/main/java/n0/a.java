package N0;

import androidx.annotation.NonNull;
import java.util.concurrent.ScheduledExecutorService;

@C0.a
@Deprecated
public class a {

    public static InterfaceC0434a f15460a;

    public interface InterfaceC0434a {
        @NonNull
        @C0.a
        @Deprecated
        ScheduledExecutorService a();
    }

    @NonNull
    @C0.a
    @Deprecated
    public static synchronized InterfaceC0434a a() {
        InterfaceC0434a interfaceC0434a;
        synchronized (a.class) {
            try {
                if (f15460a == null) {
                    f15460a = new b();
                }
                interfaceC0434a = f15460a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interfaceC0434a;
    }
}
