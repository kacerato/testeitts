package com.google.common.util.concurrent;

import java.lang.Thread;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;

@A
@v2.c
public final class G0 {

    @v2.d
    public static final class a implements Thread.UncaughtExceptionHandler {

        public static final Logger f67295b = Logger.getLogger(a.class.getName());

        public final Runtime f67296a;

        public a(Runtime runtime) {
            this.f67296a = runtime;
        }

        @Override
        public void uncaughtException(Thread thread, Throwable th2) {
            try {
                f67295b.log(Level.SEVERE, String.format(Locale.ROOT, "Caught an exception in %s.  Shutting down.", thread), th2);
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    public static Thread.UncaughtExceptionHandler a() {
        return new a(Runtime.getRuntime());
    }
}
