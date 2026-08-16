package com.google.android.gms.internal.auth;

import android.os.Binder;

public final class C11963n0 {
    public static Object a(InterfaceC11967o0 interfaceC11967o0) {
        try {
            return interfaceC11967o0.N1();
        } catch (SecurityException unused) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return interfaceC11967o0.N1();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }
}
