package Vj;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.bouncycastle.util.q;

public class c implements Runnable {

    public static final Logger f27130f = Logger.getLogger(c.class.getName());

    public final long f27131b = a();

    public final AtomicBoolean f27132c;

    public final AtomicReference<byte[]> f27133d;

    public final d f27134e;

    public c(d dVar, AtomicBoolean atomicBoolean, AtomicReference<byte[]> atomicReference) {
        this.f27134e = dVar;
        this.f27132c = atomicBoolean;
        this.f27133d = atomicReference;
    }

    public static long a() {
        String d10 = q.d("org.bouncycastle.drbg.gather_pause_secs");
        if (d10 != null) {
            try {
                return Long.parseLong(d10) * 1000;
            } catch (Exception unused) {
            }
        }
        return 5000L;
    }

    @Override
    public void run() {
        try {
            this.f27133d.set(this.f27134e.a(this.f27131b));
            this.f27132c.set(true);
        } catch (InterruptedException unused) {
            Logger logger = f27130f;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine("entropy request interrupted - exiting");
            }
            Thread.currentThread().interrupt();
        }
    }
}
