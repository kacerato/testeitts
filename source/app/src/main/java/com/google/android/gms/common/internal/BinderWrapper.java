package com.google.android.gms.common.internal;

import C0.a;
import G0.K0;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepName;

@a
@KeepName
public final class BinderWrapper implements Parcelable {

    @NonNull
    public static final Parcelable.Creator<BinderWrapper> CREATOR = new K0();

    public final IBinder f61361b;

    @a
    public BinderWrapper(@NonNull IBinder iBinder) {
        this.f61361b = iBinder;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeStrongBinder(this.f61361b);
    }
}
