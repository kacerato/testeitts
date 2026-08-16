package Se;

import Be.J;
import java.util.concurrent.ThreadFactory;

public final class h extends J {

    public final ThreadFactory f23137c;

    public static final String f23134d = "RxNewThreadScheduler";

    public static final String f23136f = "rx2.newthread-priority";

    public static final k f23135e = new k(f23134d, Math.max(1, Math.min(10, Integer.getInteger(f23136f, 5).intValue())));

    public h() {
        this(f23135e);
    }

    @Override
    @Ce.f
    public J.c c() {
        return new i(this.f23137c);
    }

    public h(ThreadFactory threadFactory) {
        this.f23137c = threadFactory;
    }
}
