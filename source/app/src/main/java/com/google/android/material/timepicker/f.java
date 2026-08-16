package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.IntRange;
import java.util.Arrays;

public class f implements Parcelable {
    public static final Parcelable.Creator<f> CREATOR = new a();

    public static final String f65290i = "%02d";

    public static final String f65291j = "%d";

    public final c f65292b;

    public final c f65293c;

    public final int f65294d;

    public int f65295e;

    public int f65296f;

    public int f65297g;

    public int f65298h;

    public static class a implements Parcelable.Creator<f> {
        @Override
        public f createFromParcel(Parcel parcel) {
            return new f(parcel);
        }

        @Override
        public f[] newArray(int i10) {
            return new f[i10];
        }
    }

    public f() {
        this(0);
    }

    public static String b(Resources resources, CharSequence charSequence) {
        return c(resources, charSequence, f65290i);
    }

    public static String c(Resources resources, CharSequence charSequence, String str) {
        return String.format(resources.getConfiguration().locale, str, Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
    }

    public static int g(int i10) {
        return i10 >= 12 ? 1 : 0;
    }

    public int d() {
        if (this.f65294d == 1) {
            return this.f65295e % 24;
        }
        int i10 = this.f65295e;
        if (i10 % 12 == 0) {
            return 12;
        }
        return this.f65298h == 1 ? i10 - 12 : i10;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public c e() {
        return this.f65293c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f65295e == fVar.f65295e && this.f65296f == fVar.f65296f && this.f65294d == fVar.f65294d && this.f65297g == fVar.f65297g;
    }

    public c f() {
        return this.f65292b;
    }

    public void h(int i10) {
        if (this.f65294d == 1) {
            this.f65295e = i10;
        } else {
            this.f65295e = (i10 % 12) + (this.f65298h != 1 ? 0 : 12);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f65294d), Integer.valueOf(this.f65295e), Integer.valueOf(this.f65296f), Integer.valueOf(this.f65297g)});
    }

    public void i(int i10) {
        this.f65298h = g(i10);
        this.f65295e = i10;
    }

    public void l(@IntRange(from = 0, to = 60) int i10) {
        this.f65296f = i10 % 60;
    }

    public void m(int i10) {
        if (i10 != this.f65298h) {
            this.f65298h = i10;
            int i11 = this.f65295e;
            if (i11 < 12 && i10 == 1) {
                this.f65295e = i11 + 12;
            } else {
                if (i11 < 12 || i10 != 0) {
                    return;
                }
                this.f65295e = i11 - 12;
            }
        }
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f65295e);
        parcel.writeInt(this.f65296f);
        parcel.writeInt(this.f65297g);
        parcel.writeInt(this.f65294d);
    }

    public f(int i10) {
        this(0, 0, 10, i10);
    }

    public f(int i10, int i11, int i12, int i13) {
        this.f65295e = i10;
        this.f65296f = i11;
        this.f65297g = i12;
        this.f65294d = i13;
        this.f65298h = g(i10);
        this.f65292b = new c(59);
        this.f65293c = new c(i13 == 1 ? 24 : 12);
    }

    public f(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }
}
