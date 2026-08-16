package com.google.android.gms.measurement.internal;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

@c.a(creator = "UserAttributeParcelCreator")
public final class i7 extends I0.a {
    public static final Parcelable.Creator<i7> CREATOR = new j7();

    @c.InterfaceC0186c(id = 1)
    public final int f63357b;

    @c.InterfaceC0186c(id = 2)
    public final String f63358c;

    @c.InterfaceC0186c(id = 3)
    public final long f63359d;

    @Nullable
    @c.InterfaceC0186c(id = 4)
    public final Long f63360e;

    @Nullable
    @c.InterfaceC0186c(id = 6)
    public final String f63361f;

    @c.InterfaceC0186c(id = 7)
    public final String f63362g;

    @Nullable
    @c.InterfaceC0186c(id = 8)
    public final Double f63363h;

    @c.b
    public i7(@c.e(id = 1) int i10, @c.e(id = 2) String str, @c.e(id = 3) long j10, @Nullable @c.e(id = 4) Long l10, @c.e(id = 5) Float f10, @Nullable @c.e(id = 6) String str2, @c.e(id = 7) String str3, @Nullable @c.e(id = 8) Double d10) {
        this.f63357b = i10;
        this.f63358c = str;
        this.f63359d = j10;
        this.f63360e = l10;
        this.f63363h = i10 == 1 ? f10 != null ? Double.valueOf(f10.doubleValue()) : null : d10;
        this.f63361f = str2;
        this.f63362g = str3;
    }

    @Nullable
    public final Object n() {
        Long l10 = this.f63360e;
        if (l10 != null) {
            return l10;
        }
        Double d10 = this.f63363h;
        if (d10 != null) {
            return d10;
        }
        String str = this.f63361f;
        if (str != null) {
            return str;
        }
        return null;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        j7.a(this, parcel, i10);
    }

    public i7(k7 k7Var) {
        this(k7Var.f63380c, k7Var.f63381d, k7Var.f63382e, k7Var.f63379b);
    }

    public i7(String str, long j10, @Nullable Object obj, String str2) {
        G0.A.l(str);
        this.f63357b = 2;
        this.f63358c = str;
        this.f63359d = j10;
        this.f63362g = str2;
        if (obj == null) {
            this.f63360e = null;
            this.f63363h = null;
            this.f63361f = null;
            return;
        }
        if (obj instanceof Long) {
            this.f63360e = (Long) obj;
            this.f63363h = null;
            this.f63361f = null;
        } else if (obj instanceof String) {
            this.f63360e = null;
            this.f63363h = null;
            this.f63361f = (String) obj;
        } else {
            if (obj instanceof Double) {
                this.f63360e = null;
                this.f63363h = (Double) obj;
                this.f63361f = null;
                return;
            }
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
    }
}
