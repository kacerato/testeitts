package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import java.io.File;

public final class w {

    @VisibleForTesting
    public static final int f59442f = 128;

    public static final int f59443g = 0;

    public static final File f59444h = new File("/proc/self/fd");

    public static final int f59445i = 50;

    public static final int f59446j = 700;

    public static final int f59447k = 20000;

    public static volatile w f59448l;

    public final int f59450b;

    public final int f59451c;

    @GuardedBy("this")
    public int f59452d;

    @GuardedBy("this")
    public boolean f59453e = true;

    public final boolean f59449a = d();

    @VisibleForTesting
    public w() {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f59450b = 20000;
            this.f59451c = 0;
        } else {
            this.f59450b = 700;
            this.f59451c = 128;
        }
    }

    public static w a() {
        if (f59448l == null) {
            synchronized (w.class) {
                try {
                    if (f59448l == null) {
                        f59448l = new w();
                    }
                } finally {
                }
            }
        }
        return f59448l;
    }

    public static boolean d() {
        String str = Build.MODEL;
        if (str == null || str.length() < 7) {
            return true;
        }
        String substring = str.substring(0, 7);
        substring.hashCode();
        char c10 = '\uffff';
        switch (substring.hashCode()) {
            case -1398613787:
                if (substring.equals("SM-A520")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1398431166:
                if (substring.equals("SM-G930")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1398431161:
                if (substring.equals("SM-G935")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1398431073:
                if (substring.equals("SM-G960")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1398431068:
                if (substring.equals("SM-G965")) {
                    c10 = 4;
                    break;
                }
                break;
            case -1398343746:
                if (substring.equals("SM-J720")) {
                    c10 = 5;
                    break;
                }
                break;
            case -1398222624:
                if (substring.equals("SM-N935")) {
                    c10 = 6;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return Build.VERSION.SDK_INT != 26;
            default:
                return true;
        }
    }

    public final synchronized boolean b() {
        try {
            boolean z10 = true;
            int i10 = this.f59452d + 1;
            this.f59452d = i10;
            if (i10 >= 50) {
                this.f59452d = 0;
                int length = f59444h.list().length;
                if (length >= this.f59450b) {
                    z10 = false;
                }
                this.f59453e = z10;
                if (!z10 && Log.isLoggable(q.f59413f, 5)) {
                    Log.w(q.f59413f, "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + this.f59450b);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f59453e;
    }

    public boolean c(int i10, int i11, boolean z10, boolean z11) {
        int i12;
        return z10 && this.f59449a && !z11 && i10 >= (i12 = this.f59451c) && i11 >= i12 && b();
    }

    @TargetApi(26)
    public boolean e(int i10, int i11, BitmapFactory.Options options, boolean z10, boolean z11) {
        boolean c10 = c(i10, i11, z10, z11);
        if (c10) {
            options.inPreferredConfig = Bitmap.Config.HARDWARE;
            options.inMutable = false;
        }
        return c10;
    }
}
