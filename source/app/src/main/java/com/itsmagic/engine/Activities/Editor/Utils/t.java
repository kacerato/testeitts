package com.itsmagic.engine.Activities.Editor.Utils;

import android.content.Context;
import com.itsmagic.engine.Activities.Editor.TextOutputActivity;
import java.lang.Thread;

public final class t {

    public static final String f72297a = "last_fatal.txt";

    public static void b(final Context ctx) {
        final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() {
            @Override
            public final void uncaughtException(Thread thread, Throwable th2) {
                t.c(Context.this, defaultUncaughtExceptionHandler, thread, th2);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x000f, code lost:
    
        android.os.Process.killProcess(android.os.Process.myPid());
        java.lang.System.exit(10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x001a, code lost:
    
        if (r3 != null) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0009, code lost:
    
        if (r3 != null) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x000b, code lost:
    
        r3.uncaughtException(r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void c(Context context, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Thread thread, Throwable th2) {
        try {
            if (th2 instanceof OutOfMemoryError) {
                d(context, thread, th2);
            }
        } catch (Throwable unused) {
        }
    }

    public static void d(Context ctx, Thread t10, Throwable e10) {
        e10.printStackTrace();
        TextOutputActivity.h(e10);
    }
}
