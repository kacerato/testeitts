package X0;

import android.os.Looper;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;

public final class d {

    @Nullable
    @GuardedBy("DynamiteLoaderV2ClassLoader.class")
    public static ClassLoader f27882a;

    @Nullable
    @GuardedBy("DynamiteLoaderV2ClassLoader.class")
    public static Thread f27883b;

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00a3, code lost:
    
        if (r1 == null) goto L60;
     */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static synchronized ClassLoader a() {
        ClassLoader classLoader;
        SecurityException e10;
        Thread thread;
        ThreadGroup threadGroup;
        synchronized (d.class) {
            if (f27882a == null) {
                Thread thread2 = f27883b;
                ClassLoader classLoader2 = null;
                if (thread2 == null) {
                    ThreadGroup threadGroup2 = Looper.getMainLooper().getThread().getThreadGroup();
                    if (threadGroup2 == null) {
                        thread2 = null;
                    } else {
                        synchronized (Void.class) {
                            try {
                                try {
                                    int activeGroupCount = threadGroup2.activeGroupCount();
                                    ThreadGroup[] threadGroupArr = new ThreadGroup[activeGroupCount];
                                    threadGroup2.enumerate(threadGroupArr);
                                    int i10 = 0;
                                    int i11 = 0;
                                    while (true) {
                                        if (i11 >= activeGroupCount) {
                                            threadGroup = null;
                                            break;
                                        }
                                        threadGroup = threadGroupArr[i11];
                                        if ("dynamiteLoader".equals(threadGroup.getName())) {
                                            break;
                                        }
                                        i11++;
                                    }
                                    if (threadGroup == null) {
                                        threadGroup = new ThreadGroup(threadGroup2, "dynamiteLoader");
                                    }
                                    int activeCount = threadGroup.activeCount();
                                    Thread[] threadArr = new Thread[activeCount];
                                    threadGroup.enumerate(threadArr);
                                    while (true) {
                                        if (i10 >= activeCount) {
                                            thread = null;
                                            break;
                                        }
                                        thread = threadArr[i10];
                                        if ("GmsDynamite".equals(thread.getName())) {
                                            break;
                                        }
                                        i10++;
                                    }
                                    if (thread == null) {
                                        try {
                                            c cVar = new c(threadGroup, "GmsDynamite");
                                            try {
                                                cVar.setContextClassLoader(null);
                                                cVar.start();
                                                thread = cVar;
                                            } catch (SecurityException e11) {
                                                e10 = e11;
                                                thread = cVar;
                                                Log.w("DynamiteLoaderV2CL", "Failed to enumerate thread/threadgroup " + e10.getMessage());
                                                thread2 = thread;
                                                f27883b = thread2;
                                            }
                                        } catch (SecurityException e12) {
                                            e10 = e12;
                                        }
                                    }
                                } catch (SecurityException e13) {
                                    e10 = e13;
                                    thread = null;
                                }
                            } finally {
                            }
                        }
                        thread2 = thread;
                    }
                    f27883b = thread2;
                }
                synchronized (thread2) {
                    try {
                        classLoader2 = f27883b.getContextClassLoader();
                    } catch (SecurityException e14) {
                        Log.w("DynamiteLoaderV2CL", "Failed to get thread context classloader " + e14.getMessage());
                    }
                }
                f27882a = classLoader2;
            }
            classLoader = f27882a;
        }
        return classLoader;
    }
}
