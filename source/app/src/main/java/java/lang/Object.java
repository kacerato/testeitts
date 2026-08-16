package java.lang;

import jdk.internal.vm.annotation.IntrinsicCandidate;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Object.class
 */
public class Object {
    @IntrinsicCandidate
    public final native Class<?> getClass();

    @IntrinsicCandidate
    public native int hashCode();

    @IntrinsicCandidate
    public native Object clone() throws CloneNotSupportedException;

    @IntrinsicCandidate
    public final native void notify();

    @IntrinsicCandidate
    public final native void notifyAll();

    private final native void wait0(long j10) throws InterruptedException;

    @IntrinsicCandidate
    public Object() {
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public String toString() {
        return getClass().getName() + "@" + Integer.toHexString(hashCode());
    }

    public final void wait() throws InterruptedException {
        wait(0L);
    }

    public final void wait(long timeoutMillis) throws InterruptedException {
        if (timeoutMillis < 0) {
            throw new IllegalArgumentException("timeout value is negative");
        }
        Thread currentThread = Thread.currentThread();
        if (currentThread instanceof VirtualThread) {
            VirtualThread vthread = (VirtualThread) currentThread;
            try {
                wait0(timeoutMillis);
                return;
            } catch (InterruptedException e10) {
                vthread.getAndClearInterrupt();
                throw e10;
            }
        }
        wait0(timeoutMillis);
    }

    public final void wait(long timeoutMillis, int nanos) throws InterruptedException {
        if (timeoutMillis < 0) {
            throw new IllegalArgumentException("timeoutMillis value is negative");
        }
        if (nanos < 0 || nanos > 999999) {
            throw new IllegalArgumentException("nanosecond timeout value out of range");
        }
        if (nanos > 0 && timeoutMillis < Long.MAX_VALUE) {
            timeoutMillis++;
        }
        wait(timeoutMillis);
    }

    @Deprecated(since = "9", forRemoval = true)
    public void finalize() throws Throwable {
    }
}
