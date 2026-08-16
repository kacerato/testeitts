package com.google.android.gms.internal.measurement;

import android.os.Binder;
import androidx.annotation.Nullable;

public interface InterfaceC12054e4 {
    static Object b(InterfaceC12045d4 interfaceC12045d4) {
        try {
            return interfaceC12045d4.N1();
        } catch (SecurityException unused) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return interfaceC12045d4.N1();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    @Nullable
    Object a(String str);
}
