package x2;

import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

public class RunnableC16052a implements Runnable {

    public static final Logger f127912e = Logger.getLogger(RunnableC16052a.class.getName());

    public static final String f127913f = "com.google.common.base.FinalizableReference";

    @CheckForNull
    public static final Constructor<Thread> f127914g;

    @CheckForNull
    public static final Field f127915h;

    public final WeakReference<Class<?>> f127916b;

    public final PhantomReference<Object> f127917c;

    public final ReferenceQueue<Object> f127918d;

    static {
        Constructor<Thread> b10 = b();
        f127914g = b10;
        f127915h = b10 == null ? d() : null;
    }

    public RunnableC16052a(Class<?> cls, ReferenceQueue<Object> referenceQueue, PhantomReference<Object> phantomReference) {
        this.f127918d = referenceQueue;
        this.f127916b = new WeakReference<>(cls);
        this.f127917c = phantomReference;
    }

    @CheckForNull
    public static Constructor<Thread> b() {
        try {
            return Thread.class.getConstructor(ThreadGroup.class, Runnable.class, String.class, Long.TYPE, Boolean.TYPE);
        } catch (Throwable unused) {
            return null;
        }
    }

    @CheckForNull
    public static Field d() {
        try {
            Field declaredField = Thread.class.getDeclaredField("inheritableThreadLocals");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            f127912e.log(Level.INFO, "Couldn't access Thread.inheritableThreadLocals. Reference finalizer threads will inherit thread local values.");
            return null;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:3|(10:5|6|7|(1:9)|10|11|12|(1:14)|16|17)|24|(0)|10|11|12|(0)|16|17) */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004d, code lost:
    
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004e, code lost:
    
        x2.RunnableC16052a.f127912e.log(java.util.logging.Level.INFO, "Failed to clear thread local values inherited by reference finalizer thread.", r4);
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0049 A[Catch: all -> 0x004d, TRY_LEAVE, TryCatch #0 {all -> 0x004d, blocks: (B:12:0x0045, B:14:0x0049), top: B:11:0x0045 }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void e(Class<?> cls, ReferenceQueue<Object> referenceQueue, PhantomReference<Object> phantomReference) {
        Thread thread;
        Field field;
        if (!cls.getName().equals("w2.p")) {
            throw new IllegalArgumentException("Expected com.google.common.base.FinalizableReference.");
        }
        RunnableC16052a runnableC16052a = new RunnableC16052a(cls, referenceQueue, phantomReference);
        String name = RunnableC16052a.class.getName();
        Constructor<Thread> constructor = f127914g;
        if (constructor != null) {
            try {
                thread = constructor.newInstance(null, runnableC16052a, name, 0L, Boolean.FALSE);
            } catch (Throwable th2) {
                f127912e.log(Level.INFO, "Failed to create a thread without inherited thread-local values", th2);
            }
            if (thread == null) {
                thread = new Thread((ThreadGroup) null, runnableC16052a, name);
            }
            thread.setDaemon(true);
            field = f127915h;
            if (field != null) {
                field.set(thread, null);
            }
            thread.start();
        }
        thread = null;
        if (thread == null) {
        }
        thread.setDaemon(true);
        field = f127915h;
        if (field != null) {
        }
        thread.start();
    }

    public final boolean a(Reference<?> reference) {
        Method c10 = c();
        if (c10 == null) {
            return false;
        }
        do {
            reference.clear();
            if (reference == this.f127917c) {
                return false;
            }
            try {
                c10.invoke(reference, null);
            } catch (Throwable th2) {
                f127912e.log(Level.SEVERE, "Error cleaning up after reference.", th2);
            }
            reference = this.f127918d.poll();
        } while (reference != null);
        return true;
    }

    @CheckForNull
    public final Method c() {
        Class<?> cls = this.f127916b.get();
        if (cls == null) {
            return null;
        }
        try {
            return cls.getMethod("finalizeReferent", null);
        } catch (NoSuchMethodException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override
    public void run() {
        while (a(this.f127918d.remove())) {
        }
    }
}
