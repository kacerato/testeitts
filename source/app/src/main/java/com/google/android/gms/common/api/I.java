package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;

public final class I implements Parcelable.Creator {

    public static final I f61034b = new I(new J());

    public final Parcelable.Creator f61035a;

    public I(Parcelable.Creator creator) {
        this.f61035a = creator;
    }

    public static I a() {
        return f61034b;
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        int dataPosition = parcel.dataPosition();
        if (parcel.readInt() == -204102970) {
            return J.a(parcel);
        }
        parcel.setDataPosition(dataPosition - 4);
        return C11895b.n();
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C11895b[i10];
    }
}
