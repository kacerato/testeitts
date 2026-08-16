package Vj;

import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class b implements Runnable {

    public static final Logger f27128c = Logger.getLogger(b.class.getName());

    public final LinkedList<Runnable> f27129b = new LinkedList<>();

    public void a(Runnable runnable) {
        synchronized (this.f27129b) {
            this.f27129b.add(runnable);
        }
    }

    @Override
    public void run() {
        Runnable poll;
        while (!Thread.currentThread().isInterrupted()) {
            synchronized (this.f27129b) {
                poll = this.f27129b.poll();
            }
            if (poll != null) {
                try {
                    poll.run();
                } catch (Throwable unused) {
                }
            } else {
                try {
                    Thread.sleep(5000L);
                } catch (InterruptedException unused2) {
                    Thread.currentThread().interrupt();
                }
            }
        }
        Logger logger = f27128c;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine("entropy thread interrupted - exiting");
        }
    }
}
