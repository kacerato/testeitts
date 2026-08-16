package com.threed.jpct;

import android.util.Log;
import java.io.IOException;
import java.io.Writer;

public class Logger {
    public static final int DEBUG = 3;
    public static final int ERROR = 0;
    private static final String[] HEAD = {"ERROR: ", "WARNING: ", "MESSAGE: "};
    public static final int LL_DEBUG = 3;
    public static final int LL_ERRORS_AND_WARNINGS = 1;
    public static final int LL_ONLY_ERRORS = 0;
    public static final int LL_VERBOSE = 2;
    public static final int MESSAGE = 2;
    public static final int ON_ERROR_EXIT = 1;
    public static final int ON_ERROR_RESUME_NEXT = 0;
    public static final int ON_ERROR_THROW_EXCEPTION = 2;
    public static final int WARNING = 1;
    private static int logLevel = 2;
    private static int mode = 2;

    public static int getLogLevel() {
        return logLevel;
    }

    public static Writer getWriter() {
        return new Writer() {

            private StringBuilder f83621sb = new StringBuilder();

            @Override
            public void close() throws IOException {
                flush();
                this.f83621sb = null;
            }

            @Override
            public void flush() throws IOException {
                StringBuilder sb2 = this.f83621sb;
                if (sb2 == null) {
                    return;
                }
                Logger.log(sb2.toString());
                this.f83621sb.setLength(0);
            }

            @Override
            public void write(char[] cArr, int i10, int i11) throws IOException {
                if (this.f83621sb == null) {
                    return;
                }
                if (i10 != 0 || i11 + i10 != cArr.length) {
                    System.arraycopy(cArr, i10, new char[i11], 0, i11);
                }
                String valueOf = String.valueOf(cArr);
                int indexOf = valueOf.indexOf(10);
                if (indexOf == -1) {
                    this.f83621sb.append(valueOf);
                    return;
                }
                this.f83621sb.append(valueOf.substring(0, indexOf));
                flush();
                if (indexOf < valueOf.length() - 1) {
                    this.f83621sb.append(valueOf.substring(indexOf + 1));
                }
            }
        };
    }

    public static boolean isDebugEnabled() {
        return logLevel == 3;
    }

    public static void log(String str) {
        log(str, 2);
    }

    public static void setLogLevel(int i10) {
        logLevel = i10;
    }

    public static void setOnError(int i10) {
        mode = i10;
    }

    public static void log(Throwable th2) {
        log(Log.getStackTraceString(th2), 0);
    }

    public static void log(Throwable th2, int i10) {
        log(Log.getStackTraceString(th2), i10);
    }

    public static void log(String str, int i10) {
        if (i10 <= logLevel) {
            if (i10 < 0 || i10 > 3) {
                i10 = 3;
            }
            if (i10 < 2) {
                str = "[ " + System.currentTimeMillis() + " ] - " + HEAD[i10] + str;
            }
            Log.i("jPCT-AE", str);
            if (i10 == 0) {
                int i11 = mode;
                if (i11 == 1) {
                    System.exit(-99);
                } else if (i11 == 2) {
                    throw new RuntimeException(str);
                }
            }
        }
    }
}
