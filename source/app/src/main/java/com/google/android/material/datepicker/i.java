package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.material.datepicker.a;
import java.util.Arrays;

public class i implements a.c {
    public static final Parcelable.Creator<i> CREATOR = new a();

    public final long f64271b;

    public static class a implements Parcelable.Creator<i> {
        @Override
        @NonNull
        public i createFromParcel(@NonNull Parcel parcel) {
            return new i(parcel.readLong(), null);
        }

        @Override
        @NonNull
        public i[] newArray(int i10) {
            return new i[i10];
        }
    }

    public i(long j10, a aVar) {
        this(j10);
    }

    @NonNull
    public static i b(long j10) {
        return new i(j10);
    }

    @NonNull
    public static i c() {
        return b(y.t().getTimeInMillis());
    }

    @Override
    public boolean a(long j10) {
        return j10 >= this.f64271b;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof i) && this.f64271b == ((i) obj).f64271b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f64271b)});
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeLong(this.f64271b);
    }

    public i(long j10) {
        this.f64271b = j10;
    }
}
