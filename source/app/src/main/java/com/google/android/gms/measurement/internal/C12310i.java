package com.google.android.gms.measurement.internal;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

@c.a(creator = "ConditionalUserPropertyParcelCreator")
public final class C12310i extends I0.a {
    public static final Parcelable.Creator<C12310i> CREATOR = new C12318j();

    @Nullable
    @c.InterfaceC0186c(id = 2)
    public String f63338b;

    @c.InterfaceC0186c(id = 3)
    public String f63339c;

    @c.InterfaceC0186c(id = 4)
    public i7 f63340d;

    @c.InterfaceC0186c(id = 5)
    public long f63341e;

    @c.InterfaceC0186c(id = 6)
    public boolean f63342f;

    @Nullable
    @c.InterfaceC0186c(id = 7)
    public String f63343g;

    @Nullable
    @c.InterfaceC0186c(id = 8)
    public final I f63344h;

    @c.InterfaceC0186c(id = 9)
    public long f63345i;

    @Nullable
    @c.InterfaceC0186c(id = 10)
    public I f63346j;

    @c.InterfaceC0186c(id = 11)
    public final long f63347k;

    @Nullable
    @c.InterfaceC0186c(id = 12)
    public final I f63348l;

    public C12310i(C12310i c12310i) {
        G0.A.r(c12310i);
        this.f63338b = c12310i.f63338b;
        this.f63339c = c12310i.f63339c;
        this.f63340d = c12310i.f63340d;
        this.f63341e = c12310i.f63341e;
        this.f63342f = c12310i.f63342f;
        this.f63343g = c12310i.f63343g;
        this.f63344h = c12310i.f63344h;
        this.f63345i = c12310i.f63345i;
        this.f63346j = c12310i.f63346j;
        this.f63347k = c12310i.f63347k;
        this.f63348l = c12310i.f63348l;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 2, this.f63338b, false);
        I0.b.Y(parcel, 3, this.f63339c, false);
        I0.b.S(parcel, 4, this.f63340d, i10, false);
        I0.b.K(parcel, 5, this.f63341e);
        I0.b.g(parcel, 6, this.f63342f);
        I0.b.Y(parcel, 7, this.f63343g, false);
        I0.b.S(parcel, 8, this.f63344h, i10, false);
        I0.b.K(parcel, 9, this.f63345i);
        I0.b.S(parcel, 10, this.f63346j, i10, false);
        I0.b.K(parcel, 11, this.f63347k);
        I0.b.S(parcel, 12, this.f63348l, i10, false);
        I0.b.b(parcel, a10);
    }

    @c.b
    public C12310i(@Nullable @c.e(id = 2) String str, @c.e(id = 3) String str2, @c.e(id = 4) i7 i7Var, @c.e(id = 5) long j10, @c.e(id = 6) boolean z10, @Nullable @c.e(id = 7) String str3, @Nullable @c.e(id = 8) I i10, @c.e(id = 9) long j11, @Nullable @c.e(id = 10) I i11, @c.e(id = 11) long j12, @Nullable @c.e(id = 12) I i12) {
        this.f63338b = str;
        this.f63339c = str2;
        this.f63340d = i7Var;
        this.f63341e = j10;
        this.f63342f = z10;
        this.f63343g = str3;
        this.f63344h = i10;
        this.f63345i = j11;
        this.f63346j = i11;
        this.f63347k = j12;
        this.f63348l = i12;
    }
}
