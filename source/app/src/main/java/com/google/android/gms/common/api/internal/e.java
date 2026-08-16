package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import g1.BinderC13280b;
import g1.C13281c;

public interface e extends IInterface {

    public static abstract class a extends BinderC13280b implements e {
        public a() {
            super("com.google.android.gms.common.api.internal.IStatusCallback");
        }

        @NonNull
        public static e f1(@NonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.api.internal.IStatusCallback");
            return queryLocalInterface instanceof e ? (e) queryLocalInterface : new w(iBinder);
        }

        @Override
        public final boolean e1(int i10, @NonNull Parcel parcel, @NonNull Parcel parcel2, int i11) throws RemoteException {
            if (i10 != 1) {
                return false;
            }
            Status status = (Status) C13281c.a(parcel, Status.CREATOR);
            C13281c.b(parcel);
            Z(status);
            return true;
        }
    }

    void Z(@NonNull Status status) throws RemoteException;
}
