package qd;

import java.util.logging.Level;
import java.util.logging.Logger;

public final class s implements p {

    public static final Logger f106101b = Logger.getLogger(s.class.getName());

    public final Logger f106102a;

    public s() {
        this.f106102a = f106101b;
    }

    @Override
    public void a(Throwable th2) {
        this.f106102a.log(Level.INFO, "Exception during onStart()", th2);
    }

    @Override
    public void b(Throwable th2) {
        this.f106102a.log(Level.INFO, "Exception during onShutdown()", th2);
    }

    @Override
    public void c(Throwable th2, long j10, Object obj) {
        this.f106102a.log(Level.INFO, "Exception processing: " + j10 + " " + obj, th2);
    }

    public s(Logger logger) {
        this.f106102a = logger;
    }
}
