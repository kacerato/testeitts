package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.material.datepicker.a;
import java.util.Arrays;

public class h implements a.c {
    public static final Parcelable.Creator<h> CREATOR = new a();

    public final long f64270b;

    public static class a implements Parcelable.Creator<h> {
        @Override
        @NonNull
        public h createFromParcel(@NonNull Parcel parcel) {
            return new h(parcel.readLong(), null);
        }

        @Override
        @NonNull
        public h[] newArray(int i10) {
            return new h[i10];
        }
    }

    public h(long j10, a aVar) {
        this(j10);
    }

    @NonNull
    public static h b(long j10) {
        return new h(j10);
    }

    @NonNull
    public static h c() {
        return b(y.t().getTimeInMillis());
    }

    @Override
    public boolean a(long j10) {
        return j10 <= this.f64270b;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h) && this.f64270b == ((h) obj).f64270b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f64270b)});
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeLong(this.f64270b);
    }

    public h(long j10) {
        this.f64270b = j10;
    }
}
