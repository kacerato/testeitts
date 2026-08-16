package N0;

import N0.a;
import h1.u;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

public final class b implements a.InterfaceC0434a {
    @Override
    public final ScheduledExecutorService a() {
        u.a();
        return Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));
    }
}
