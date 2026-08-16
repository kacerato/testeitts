package com.google.android.gms.internal.auth;

import android.os.IBinder;
import android.os.IInterface;

public abstract class AbstractBinderC11932f1 extends B implements G1 {
    public static G1 k(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.auth.IAuthManagerService");
        return queryLocalInterface instanceof G1 ? (G1) queryLocalInterface : new E0(iBinder);
    }
}
