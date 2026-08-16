package java.lang;

import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.concurrent.RejectedExecutionException;

public class ApplicationShutdownHooks {
    private static IdentityHashMap<Thread, Thread> hooks;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !ApplicationShutdownHooks.class.desiredAssertionStatus();
        try {
            Shutdown.add(1, false, new Runnable() {
                @Override
                public void run() {
                    ApplicationShutdownHooks.runHooks();
                }
            });
            hooks = new IdentityHashMap<>();
        } catch (IllegalStateException e10) {
            hooks = null;
        }
    }

    private ApplicationShutdownHooks() {
    }

    public static synchronized void add(Thread hook) {
        if (hooks == null) {
            throw new IllegalStateException("Shutdown in progress");
        }
        if (hook.isAlive()) {
            throw new IllegalArgumentException("Hook already running");
        }
        if (hooks.containsKey(hook)) {
            throw new IllegalArgumentException("Hook previously registered");
        }
        hooks.put(hook, hook);
    }

    public static synchronized boolean remove(Thread hook) {
        if (hooks == null) {
            throw new IllegalStateException("Shutdown in progress");
        }
        if (hook == null) {
            throw new NullPointerException();
        }
        return hooks.remove(hook) != null;
    }

    static void runHooks() {
        Collection<Thread> threads;
        synchronized (ApplicationShutdownHooks.class) {
            threads = hooks.o();
            hooks = null;
        }
        for (Thread hook : threads) {
            try {
                hook.start();
            } catch (IllegalThreadStateException e10) {
            } catch (RejectedExecutionException e11) {
                if ($assertionsDisabled) {
                    continue;
                } else if (!hook.isVirtual()) {
                    throw new AssertionError();
                }
            }
        }
        Iterator<Thread> it = threads.iterator();
        while (it.hasNext()) {
            while (true) {
                try {
                    it.next().join();
                    break;
                } catch (InterruptedException e12) {
                }
            }
        }
    }
}
