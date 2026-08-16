package com.google.android.gms.measurement.internal;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.List;

@c.g({1, 13, 17, 19, 20, 24, 33})
@c.a(creator = "AppMetadataCreator")
public final class o7 extends I0.a {
    public static final Parcelable.Creator<o7> CREATOR = new p7();

    @c.InterfaceC0186c(id = 32)
    public final int f63438A;

    @c.InterfaceC0186c(id = 34)
    public final long f63439B;

    @Nullable
    @c.InterfaceC0186c(id = 35)
    public final String f63440C;

    @c.InterfaceC0186c(defaultValue = "", id = 36)
    public final String f63441D;

    @c.InterfaceC0186c(id = 37)
    public final long f63442E;

    @c.InterfaceC0186c(id = 38)
    public final int f63443F;

    @Nullable
    @c.InterfaceC0186c(id = 2)
    public final String f63444b;

    @Nullable
    @c.InterfaceC0186c(id = 3)
    public final String f63445c;

    @Nullable
    @c.InterfaceC0186c(id = 4)
    public final String f63446d;

    @Nullable
    @c.InterfaceC0186c(id = 5)
    public final String f63447e;

    @c.InterfaceC0186c(id = 6)
    public final long f63448f;

    @c.InterfaceC0186c(id = 7)
    public final long f63449g;

    @Nullable
    @c.InterfaceC0186c(id = 8)
    public final String f63450h;

    @c.InterfaceC0186c(defaultValue = "true", id = 9)
    public final boolean f63451i;

    @c.InterfaceC0186c(id = 10)
    public final boolean f63452j;

    @c.InterfaceC0186c(defaultValueUnchecked = "Integer.MIN_VALUE", id = 11)
    public final long f63453k;

    @Nullable
    @c.InterfaceC0186c(id = 12)
    public final String f63454l;

    @c.InterfaceC0186c(id = 14)
    public final long f63455m;

    @c.InterfaceC0186c(id = 15)
    public final int f63456n;

    @c.InterfaceC0186c(defaultValue = "true", id = 16)
    public final boolean f63457o;

    @c.InterfaceC0186c(id = 18)
    public final boolean f63458p;

    @Nullable
    @c.InterfaceC0186c(id = 21)
    public final Boolean f63459q;

    @c.InterfaceC0186c(id = 22)
    public final long f63460r;

    @Nullable
    @c.InterfaceC0186c(id = 23)
    public final List f63461s;

    @c.InterfaceC0186c(defaultValue = "", id = 25)
    public final String f63462t;

    @c.InterfaceC0186c(defaultValue = "", id = 26)
    public final String f63463u;

    @Nullable
    @c.InterfaceC0186c(id = 27)
    public final String f63464v;

    @c.InterfaceC0186c(defaultValue = "false", id = 28)
    public final boolean f63465w;

    @c.InterfaceC0186c(id = 29)
    public final long f63466x;

    @c.InterfaceC0186c(defaultValue = Dd.c.f5131w, id = 30)
    public final int f63467y;

    @c.InterfaceC0186c(defaultValue = "", id = 31)
    public final String f63468z;

    public o7(@Nullable String str, @Nullable String str2, @Nullable String str3, long j10, @Nullable String str4, long j11, long j12, @Nullable String str5, boolean z10, boolean z11, @Nullable String str6, long j13, int i10, boolean z12, boolean z13, @Nullable Boolean bool, long j14, @Nullable List list, String str7, String str8, @Nullable String str9, boolean z14, long j15, int i11, String str10, int i12, long j16, @Nullable String str11, String str12, long j17, int i13) {
        G0.A.l(str);
        this.f63444b = str;
        this.f63445c = true == TextUtils.isEmpty(str2) ? null : str2;
        this.f63446d = str3;
        this.f63453k = j10;
        this.f63447e = str4;
        this.f63448f = j11;
        this.f63449g = j12;
        this.f63450h = str5;
        this.f63451i = z10;
        this.f63452j = z11;
        this.f63454l = str6;
        this.f63455m = j13;
        this.f63456n = i10;
        this.f63457o = z12;
        this.f63458p = z13;
        this.f63459q = bool;
        this.f63460r = j14;
        this.f63461s = list;
        this.f63462t = str7;
        this.f63463u = str8;
        this.f63464v = str9;
        this.f63465w = z14;
        this.f63466x = j15;
        this.f63467y = i11;
        this.f63468z = str10;
        this.f63438A = i12;
        this.f63439B = j16;
        this.f63440C = str11;
        this.f63441D = str12;
        this.f63442E = j17;
        this.f63443F = i13;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        String str = this.f63444b;
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 2, str, false);
        I0.b.Y(parcel, 3, this.f63445c, false);
        I0.b.Y(parcel, 4, this.f63446d, false);
        I0.b.Y(parcel, 5, this.f63447e, false);
        I0.b.K(parcel, 6, this.f63448f);
        I0.b.K(parcel, 7, this.f63449g);
        I0.b.Y(parcel, 8, this.f63450h, false);
        I0.b.g(parcel, 9, this.f63451i);
        I0.b.g(parcel, 10, this.f63452j);
        I0.b.K(parcel, 11, this.f63453k);
        I0.b.Y(parcel, 12, this.f63454l, false);
        I0.b.K(parcel, 14, this.f63455m);
        I0.b.F(parcel, 15, this.f63456n);
        I0.b.g(parcel, 16, this.f63457o);
        I0.b.g(parcel, 18, this.f63458p);
        I0.b.j(parcel, 21, this.f63459q, false);
        I0.b.K(parcel, 22, this.f63460r);
        I0.b.a0(parcel, 23, this.f63461s, false);
        I0.b.Y(parcel, 25, this.f63462t, false);
        I0.b.Y(parcel, 26, this.f63463u, false);
        I0.b.Y(parcel, 27, this.f63464v, false);
        I0.b.g(parcel, 28, this.f63465w);
        I0.b.K(parcel, 29, this.f63466x);
        I0.b.F(parcel, 30, this.f63467y);
        I0.b.Y(parcel, 31, this.f63468z, false);
        I0.b.F(parcel, 32, this.f63438A);
        I0.b.K(parcel, 34, this.f63439B);
        I0.b.Y(parcel, 35, this.f63440C, false);
        I0.b.Y(parcel, 36, this.f63441D, false);
        I0.b.K(parcel, 37, this.f63442E);
        I0.b.F(parcel, 38, this.f63443F);
        I0.b.b(parcel, a10);
    }

    @c.b
    public o7(@Nullable @c.e(id = 2) String str, @Nullable @c.e(id = 3) String str2, @Nullable @c.e(id = 4) String str3, @Nullable @c.e(id = 5) String str4, @c.e(id = 6) long j10, @c.e(id = 7) long j11, @Nullable @c.e(id = 8) String str5, @c.e(id = 9) boolean z10, @c.e(id = 10) boolean z11, @c.e(id = 11) long j12, @Nullable @c.e(id = 12) String str6, @c.e(id = 14) long j13, @c.e(id = 15) int i10, @c.e(id = 16) boolean z12, @c.e(id = 18) boolean z13, @Nullable @c.e(id = 21) Boolean bool, @c.e(id = 22) long j14, @Nullable @c.e(id = 23) List list, @c.e(id = 25) String str7, @c.e(id = 26) String str8, @c.e(id = 27) String str9, @c.e(id = 28) boolean z14, @c.e(id = 29) long j15, @c.e(id = 30) int i11, @c.e(id = 31) String str10, @c.e(id = 32) int i12, @c.e(id = 34) long j16, @Nullable @c.e(id = 35) String str11, @c.e(id = 36) String str12, @c.e(id = 37) long j17, @c.e(id = 38) int i13) {
        this.f63444b = str;
        this.f63445c = str2;
        this.f63446d = str3;
        this.f63453k = j12;
        this.f63447e = str4;
        this.f63448f = j10;
        this.f63449g = j11;
        this.f63450h = str5;
        this.f63451i = z10;
        this.f63452j = z11;
        this.f63454l = str6;
        this.f63455m = j13;
        this.f63456n = i10;
        this.f63457o = z12;
        this.f63458p = z13;
        this.f63459q = bool;
        this.f63460r = j14;
        this.f63461s = list;
        this.f63462t = str7;
        this.f63463u = str8;
        this.f63464v = str9;
        this.f63465w = z14;
        this.f63466x = j15;
        this.f63467y = i11;
        this.f63468z = str10;
        this.f63438A = i12;
        this.f63439B = j16;
        this.f63440C = str11;
        this.f63441D = str12;
        this.f63442E = j17;
        this.f63443F = i13;
    }
}
