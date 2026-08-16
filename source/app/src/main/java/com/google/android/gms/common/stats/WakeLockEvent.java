package com.google.android.gms.common.stats;

import C0.a;
import I0.b;
import I0.c;
import S0.f;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.util.List;
import javax.annotation.Nullable;
import org.openjdk.tools.doclint.DocLint;

@a
@c.a(creator = "WakeLockEventCreator")
@Deprecated
public final class WakeLockEvent extends StatsEvent {

    @NonNull
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new f();

    @c.h(id = 1)
    public final int f61416b;

    @c.InterfaceC0186c(getter = "getTimeMillis", id = 2)
    public final long f61417c;

    @c.InterfaceC0186c(getter = "getEventType", id = 11)
    public final int f61418d;

    @c.InterfaceC0186c(getter = "getWakeLockName", id = 4)
    public final String f61419e;

    @c.InterfaceC0186c(getter = "getSecondaryWakeLockName", id = 10)
    public final String f61420f;

    @c.InterfaceC0186c(getter = "getCodePackage", id = 17)
    public final String f61421g;

    @c.InterfaceC0186c(getter = "getWakeLockType", id = 5)
    public final int f61422h;

    @c.InterfaceC0186c(getter = "getCallingPackages", id = 6)
    @Nullable
    public final List f61423i;

    @c.InterfaceC0186c(getter = "getEventKey", id = 12)
    public final String f61424j;

    @c.InterfaceC0186c(getter = "getElapsedRealtime", id = 8)
    public final long f61425k;

    @c.InterfaceC0186c(getter = "getDeviceState", id = 14)
    public final int f61426l;

    @c.InterfaceC0186c(getter = "getHostPackage", id = 13)
    public final String f61427m;

    @c.InterfaceC0186c(getter = "getBeginPowerPercentage", id = 15)
    public final float f61428n;

    @c.InterfaceC0186c(getter = "getTimeout", id = 16)
    public final long f61429o;

    @c.InterfaceC0186c(getter = "getAcquiredWithTimeout", id = 18)
    public final boolean f61430p;

    @c.b
    public WakeLockEvent(@c.e(id = 1) int i10, @c.e(id = 2) long j10, @c.e(id = 11) int i11, @c.e(id = 4) String str, @c.e(id = 5) int i12, @Nullable @c.e(id = 6) List list, @c.e(id = 12) String str2, @c.e(id = 8) long j11, @c.e(id = 14) int i13, @c.e(id = 10) String str3, @c.e(id = 13) String str4, @c.e(id = 15) float f10, @c.e(id = 16) long j12, @c.e(id = 17) String str5, @c.e(id = 18) boolean z10) {
        this.f61416b = i10;
        this.f61417c = j10;
        this.f61418d = i11;
        this.f61419e = str;
        this.f61420f = str3;
        this.f61421g = str5;
        this.f61422h = i12;
        this.f61423i = list;
        this.f61424j = str2;
        this.f61425k = j11;
        this.f61426l = i13;
        this.f61427m = str4;
        this.f61428n = f10;
        this.f61429o = j12;
        this.f61430p = z10;
    }

    @Override
    @NonNull
    public final String b0() {
        List list = this.f61423i;
        String join = list == null ? "" : TextUtils.join(DocLint.SEPARATOR, list);
        int i10 = this.f61426l;
        String str = this.f61420f;
        String str2 = this.f61427m;
        float f10 = this.f61428n;
        String str3 = this.f61421g;
        int i11 = this.f61422h;
        String str4 = this.f61419e;
        boolean z10 = this.f61430p;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\t");
        sb2.append(str4);
        sb2.append("\t");
        sb2.append(i11);
        sb2.append("\t");
        sb2.append(join);
        sb2.append("\t");
        sb2.append(i10);
        sb2.append("\t");
        if (str == null) {
            str = "";
        }
        sb2.append(str);
        sb2.append("\t");
        if (str2 == null) {
            str2 = "";
        }
        sb2.append(str2);
        sb2.append("\t");
        sb2.append(f10);
        sb2.append("\t");
        sb2.append(str3 != null ? str3 : "");
        sb2.append("\t");
        sb2.append(z10);
        return sb2.toString();
    }

    @Override
    public final int n() {
        return this.f61418d;
    }

    @Override
    public final long t() {
        return this.f61417c;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = b.a(parcel);
        b.F(parcel, 1, this.f61416b);
        b.K(parcel, 2, this.f61417c);
        b.Y(parcel, 4, this.f61419e, false);
        b.F(parcel, 5, this.f61422h);
        b.a0(parcel, 6, this.f61423i, false);
        b.K(parcel, 8, this.f61425k);
        b.Y(parcel, 10, this.f61420f, false);
        b.F(parcel, 11, this.f61418d);
        b.Y(parcel, 12, this.f61424j, false);
        b.Y(parcel, 13, this.f61427m, false);
        b.F(parcel, 14, this.f61426l);
        b.w(parcel, 15, this.f61428n);
        b.K(parcel, 16, this.f61429o);
        b.Y(parcel, 17, this.f61421g, false);
        b.g(parcel, 18, this.f61430p);
        b.b(parcel, a10);
    }
}
