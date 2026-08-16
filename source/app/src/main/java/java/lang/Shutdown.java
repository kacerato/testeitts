package java.lang;

import java.lang.System;
import jdk.internal.misc.VM;

public class Shutdown {
    private static final int MAX_SYSTEM_HOOKS = 10;
    private static final Runnable[] hooks = new Runnable[10];
    private static int currentRunningHook = -1;
    private static Object lock = new Lock();
    private static Object haltLock = new Lock();

    public static native void beforeHalt();

    static native void halt0(int i10);

    Shutdown() {
    }

    private static class Lock {
        private Lock() {
        }
    }

    public static void add(int slot, boolean registerShutdownInProgress, Runnable hook) {
        if (slot < 0 || slot >= 10) {
            throw new IllegalArgumentException("Invalid slot: " + slot);
        }
        synchronized (lock) {
            if (hooks[slot] != null) {
                throw new InternalError("Shutdown hook at slot " + slot + " already registered");
            }
            if (!registerShutdownInProgress) {
                if (currentRunningHook >= 0) {
                    throw new IllegalStateException("Shutdown in progress");
                }
            } else if (VM.isShutdown() || slot <= currentRunningHook) {
                throw new IllegalStateException("Shutdown in progress");
            }
            hooks[slot] = hook;
        }
    }

    private static void runHooks() {
        Runnable hook;
        synchronized (lock) {
            if (VM.isShutdown()) {
                return;
            }
            for (int i10 = 0; i10 < 10; i10++) {
                try {
                    synchronized (lock) {
                        currentRunningHook = i10;
                        hook = hooks[i10];
                    }
                    if (hook != null) {
                        hook.run();
                    }
                } catch (Throwable th2) {
                }
            }
            VM.shutdown();
        }
    }

    public static void halt(int status) {
        synchronized (haltLock) {
            halt0(status);
        }
    }

    public static void exit(int status) {
        logRuntimeExit(status);
        synchronized (Shutdown.class) {
            beforeHalt();
            runHooks();
            halt(status);
        }
    }

    private static void logRuntimeExit(int status) {
        try {
            System.Logger log = System.getLogger("java.lang.Runtime");
            if (log.isLoggable(System.Logger.Level.DEBUG)) {
                Throwable throwable = new Throwable("Runtime.exit(" + status + ")");
                log.log(System.Logger.Level.DEBUG, "Runtime.exit() called with status: " + status, throwable);
            }
        } catch (Throwable throwable2) {
            try {
                System.err.println("Runtime.exit(" + status + ") logging failed: " + throwable2.getMessage());
            } catch (Throwable th2) {
            }
        }
    }

    static void shutdown() {
        synchronized (Shutdown.class) {
            runHooks();
        }
    }
}
