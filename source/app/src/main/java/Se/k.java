package Se;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

public final class k extends AtomicLong implements ThreadFactory {

    public static final long f23140e = -7789753024099756196L;

    public final String f23141b;

    public final int f23142c;

    public final boolean f23143d;

    public static final class a extends Thread implements j {
        public a(Runnable runnable, String str) {
            super(runnable, str);
        }
    }

    public k(String str) {
        this(str, 5, false);
    }

    @Override
    public Thread newThread(Runnable runnable) {
        String str = this.f23141b + '-' + incrementAndGet();
        Thread aVar = this.f23143d ? new a(runnable, str) : new Thread(runnable, str);
        aVar.setPriority(this.f23142c);
        aVar.setDaemon(true);
        return aVar;
    }

    @Override
    public String toString() {
        return "RxThreadFactory[" + this.f23141b + "]";
    }

    public k(String str, int i10) {
        this(str, i10, false);
    }

    public k(String str, int i10, boolean z10) {
        this.f23141b = str;
        this.f23142c = i10;
        this.f23143d = z10;
    }
}
