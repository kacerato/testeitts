package java.lang.ref;

import eg.C13143u0;
import java.util.function.Consumer;
import jdk.internal.misc.VM;
import jdk.internal.vm.ContinuationSupport;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/ref/ReferenceQueue.class
 */
public class ReferenceQueue<T> {
    static final ReferenceQueue<Object> NULL_QUEUE;
    static final ReferenceQueue<Object> ENQUEUED;
    private volatile Reference<? extends T> head;
    private long queueLength = 0;
    private final Lock lock = new Lock();
    static final boolean $assertionsDisabled;

    private static class Null extends ReferenceQueue<Object> {
        private Null() {
        }

        @Override
        boolean enqueue(Reference<? extends Object> reference) {
            return false;
        }
    }

    static {
        $assertionsDisabled = !ReferenceQueue.class.desiredAssertionStatus();
        NULL_QUEUE = new Null();
        ENQUEUED = new Null();
    }

    public static class Lock {
        private Lock() {
        }
    }

    private boolean enqueue0(Reference<? extends T> r10) {
        ReferenceQueue<?> queue = r10.queue;
        if (queue == NULL_QUEUE || queue == ENQUEUED) {
            return false;
        }
        if (!$assertionsDisabled && queue != this) {
            throw new AssertionError();
        }
        r10.next = this.head == null ? r10 : this.head;
        this.head = r10;
        this.queueLength++;
        r10.queue = ENQUEUED;
        if (r10 instanceof FinalReference) {
            VM.addFinalRefCount(1);
        }
        this.lock.notifyAll();
        return true;
    }

    private Reference<? extends T> poll0() {
        Reference<? extends T> r10 = this.head;
        if (r10 != null) {
            r10.queue = NULL_QUEUE;
            Reference<? extends T> rn2 = r10.next;
            this.head = rn2 == r10 ? null : rn2;
            r10.next = r10;
            this.queueLength--;
            if (r10 instanceof FinalReference) {
                VM.addFinalRefCount(-1);
            }
            return r10;
        }
        return null;
    }

    private Reference<? extends T> remove0(long timeout) throws InterruptedException {
        Reference<? extends T> r10 = poll0();
        if (r10 != null) {
            return r10;
        }
        long nanoTime = System.nanoTime();
        while (true) {
            long start = nanoTime;
            this.lock.wait(timeout);
            Reference<? extends T> r11 = poll0();
            if (r11 != null) {
                return r11;
            }
            long end = System.nanoTime();
            timeout -= (end - start) / C13143u0.f85788e;
            if (timeout <= 0) {
                return null;
            }
            nanoTime = end;
        }
    }

    private Reference<? extends T> remove0() throws InterruptedException {
        while (true) {
            Reference<? extends T> r10 = poll0();
            if (r10 != null) {
                return r10;
            }
            this.lock.wait();
        }
    }

    public boolean enqueue(Reference<? extends T> r10) {
        boolean enqueue0;
        synchronized (this.lock) {
            enqueue0 = enqueue0(r10);
        }
        return enqueue0;
    }

    public Reference<? extends T> poll() {
        Reference<? extends T> poll0;
        if (this.head == null) {
            return null;
        }
        ContinuationSupport.pinIfSupported();
        try {
            synchronized (this.lock) {
                poll0 = poll0();
            }
            ContinuationSupport.unpinIfSupported();
            return poll0;
        } catch (Throwable th2) {
            ContinuationSupport.unpinIfSupported();
            throw th2;
        }
    }

    public Reference<? extends T> remove(long timeout) throws InterruptedException {
        Reference<? extends T> remove0;
        if (timeout < 0) {
            throw new IllegalArgumentException("Negative timeout value");
        }
        if (timeout == 0) {
            return remove();
        }
        synchronized (this.lock) {
            remove0 = remove0(timeout);
        }
        return remove0;
    }

    public Reference<? extends T> remove() throws InterruptedException {
        Reference<? extends T> remove0;
        synchronized (this.lock) {
            remove0 = remove0();
        }
        return remove0;
    }

    public void forEach(Consumer<? super Reference<? extends T>> action) {
        Reference<? extends T> reference = this.head;
        while (true) {
            Reference<? extends T> r10 = reference;
            if (r10 != null) {
                action.accept(r10);
                Reference<? extends T> rn2 = r10.next;
                if (rn2 == r10) {
                    if (r10.queue == ENQUEUED) {
                        reference = null;
                    } else {
                        reference = this.head;
                    }
                } else {
                    reference = rn2;
                }
            } else {
                return;
            }
        }
    }
}
