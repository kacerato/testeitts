package com.google.android.gms.internal.measurement;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.UserManager;
import android.util.Log;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

public final class W3 {

    @Nullable
    @GuardedBy("DirectBootUtils.class")
    public static UserManager f62155a;

    public static volatile boolean f62156b = !a();

    @ChecksSdkIntAtLeast(api = 24)
    public static boolean a() {
        return true;
    }

    public static boolean b(Context context) {
        return a() && !d(context);
    }

    public static boolean c(Context context) {
        return !a() || d(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0039, code lost:
    
        if (r3.isUserRunning(android.os.Process.myUserHandle()) == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003b, code lost:
    
        r5 = true;
     */
    @RequiresApi(24)
    @TargetApi(24)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean d(Context context) {
        boolean z10;
        if (f62156b) {
            return true;
        }
        synchronized (W3.class) {
            try {
                if (f62156b) {
                    return true;
                }
                int i10 = 1;
                while (true) {
                    z10 = false;
                    if (i10 > 2) {
                        break;
                    }
                    if (f62155a == null) {
                        f62155a = (UserManager) context.getSystemService(UserManager.class);
                    }
                    UserManager userManager = f62155a;
                    if (userManager == null) {
                        z10 = true;
                        break;
                    }
                    try {
                        if (userManager.isUserUnlocked()) {
                            break;
                        }
                    } catch (NullPointerException e10) {
                        Log.w("DirectBootUtils", "Failed to check if user is unlocked.", e10);
                        f62155a = null;
                        i10++;
                    }
                }
                if (z10) {
                    f62155a = null;
                }
                if (z10) {
                    f62156b = true;
                }
                return z10;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
