package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.UserManager;
import android.util.Log;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.GuardedBy;

public final class C11935g0 {

    @GuardedBy("DirectBootUtils.class")
    public static UserManager f61737a;

    public static volatile boolean f61738b = !b();

    /* JADX WARN: Code restructure failed: missing block: B:26:0x003f, code lost:
    
        if (r4.isUserRunning(android.os.Process.myUserHandle()) == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0041, code lost:
    
        r8 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(Context context) {
        int i10;
        boolean z10;
        if (b() && !f61738b) {
            synchronized (C11935g0.class) {
                try {
                    if (!f61738b) {
                        i10 = 1;
                        while (true) {
                            if (i10 <= 2) {
                                if (f61737a == null) {
                                    f61737a = (UserManager) context.getSystemService(UserManager.class);
                                }
                                UserManager userManager = f61737a;
                                if (userManager != null) {
                                    if (userManager.isUserUnlocked()) {
                                        break;
                                    }
                                } else {
                                    z10 = true;
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                        z10 = false;
                        if (z10) {
                            f61737a = null;
                        }
                        if (z10) {
                            f61738b = true;
                        }
                        if (!z10) {
                            return true;
                        }
                    }
                } catch (NullPointerException e10) {
                    Log.w("DirectBootUtils", "Failed to check if user is unlocked.", e10);
                    f61737a = null;
                    i10++;
                } finally {
                }
            }
        }
        return false;
    }

    @ChecksSdkIntAtLeast(api = 24)
    public static boolean b() {
        return true;
    }
}
