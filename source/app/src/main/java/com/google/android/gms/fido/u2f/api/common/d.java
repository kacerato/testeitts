package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fido.u2f.api.common.ChannelIdValue;

public final class d implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        try {
            return ChannelIdValue.v0(parcel.readInt());
        } catch (ChannelIdValue.UnsupportedChannelIdValueTypeException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override
    public final Object[] newArray(int i10) {
        return new ChannelIdValue.a[i10];
    }
}
