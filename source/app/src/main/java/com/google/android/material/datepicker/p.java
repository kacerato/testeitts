package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;

public final class p implements Comparable<p>, Parcelable {
    public static final Parcelable.Creator<p> CREATOR = new a();

    @NonNull
    public final Calendar f64364b;

    public final int f64365c;

    public final int f64366d;

    public final int f64367e;

    public final int f64368f;

    public final long f64369g;

    @Nullable
    public String f64370h;

    public static class a implements Parcelable.Creator<p> {
        @Override
        @NonNull
        public p createFromParcel(@NonNull Parcel parcel) {
            return p.d(parcel.readInt(), parcel.readInt());
        }

        @Override
        @NonNull
        public p[] newArray(int i10) {
            return new p[i10];
        }
    }

    public p(@NonNull Calendar calendar) {
        calendar.set(5, 1);
        Calendar f10 = y.f(calendar);
        this.f64364b = f10;
        this.f64365c = f10.get(2);
        this.f64366d = f10.get(1);
        this.f64367e = f10.getMaximum(7);
        this.f64368f = f10.getActualMaximum(5);
        this.f64369g = f10.getTimeInMillis();
    }

    @NonNull
    public static p d(int i10, int i11) {
        Calendar v10 = y.v();
        v10.set(1, i10);
        v10.set(2, i11);
        return new p(v10);
    }

    @NonNull
    public static p e(long j10) {
        Calendar v10 = y.v();
        v10.setTimeInMillis(j10);
        return new p(v10);
    }

    @NonNull
    public static p g() {
        return new p(y.t());
    }

    public long C() {
        return this.f64364b.getTimeInMillis();
    }

    @NonNull
    public p D(int i10) {
        Calendar f10 = y.f(this.f64364b);
        f10.add(2, i10);
        return new p(f10);
    }

    public int E(@NonNull p pVar) {
        if (this.f64364b instanceof GregorianCalendar) {
            return ((pVar.f64366d - this.f64366d) * 12) + (pVar.f64365c - this.f64365c);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    @Override
    public int compareTo(@NonNull p pVar) {
        return this.f64364b.compareTo(pVar.f64364b);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f64365c == pVar.f64365c && this.f64366d == pVar.f64366d;
    }

    public int h() {
        int firstDayOfWeek = this.f64364b.get(7) - this.f64364b.getFirstDayOfWeek();
        return firstDayOfWeek < 0 ? firstDayOfWeek + this.f64367e : firstDayOfWeek;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f64365c), Integer.valueOf(this.f64366d)});
    }

    public long m(int i10) {
        Calendar f10 = y.f(this.f64364b);
        f10.set(5, i10);
        return f10.getTimeInMillis();
    }

    public int q(long j10) {
        Calendar f10 = y.f(this.f64364b);
        f10.setTimeInMillis(j10);
        return f10.get(5);
    }

    @NonNull
    public String t(Context context) {
        if (this.f64370h == null) {
            this.f64370h = g.i(context, this.f64364b.getTimeInMillis());
        }
        return this.f64370h;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeInt(this.f64366d);
        parcel.writeInt(this.f64365c);
    }
}
