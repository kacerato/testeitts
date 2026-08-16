package qd;

import java.util.logging.Level;
import java.util.logging.Logger;

public final class q implements p {

    public static final Logger f106098b = Logger.getLogger(q.class.getName());

    public final Logger f106099a;

    public q() {
        this.f106099a = f106098b;
    }

    @Override
    public void a(Throwable th2) {
        this.f106099a.log(Level.SEVERE, "Exception during onStart()", th2);
    }

    @Override
    public void b(Throwable th2) {
        this.f106099a.log(Level.SEVERE, "Exception during onShutdown()", th2);
    }

    @Override
    public void c(Throwable th2, long j10, Object obj) {
        this.f106099a.log(Level.SEVERE, "Exception processing: " + j10 + " " + obj, th2);
        throw new RuntimeException(th2);
    }

    public q(Logger logger) {
        this.f106099a = logger;
    }
}
