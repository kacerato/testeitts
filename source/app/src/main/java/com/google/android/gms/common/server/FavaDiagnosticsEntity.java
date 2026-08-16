package com.google.android.gms.common.server;

import C0.a;
import I0.b;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;

@a
@c.a(creator = "FavaDiagnosticsEntityCreator")
public class FavaDiagnosticsEntity extends I0.a implements ReflectedParcelable {

    @NonNull
    @a
    public static final Parcelable.Creator<FavaDiagnosticsEntity> CREATOR = new O0.a();

    @c.h(id = 1)
    public final int f61364b;

    @NonNull
    @c.InterfaceC0186c(id = 2)
    public final String f61365c;

    @c.InterfaceC0186c(id = 3)
    public final int f61366d;

    @c.b
    public FavaDiagnosticsEntity(@c.e(id = 1) int i10, @NonNull @c.e(id = 2) String str, @c.e(id = 3) int i11) {
        this.f61364b = i10;
        this.f61365c = str;
        this.f61366d = i11;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        int i11 = this.f61364b;
        int a10 = b.a(parcel);
        b.F(parcel, 1, i11);
        b.Y(parcel, 2, this.f61365c, false);
        b.F(parcel, 3, this.f61366d);
        b.b(parcel, a10);
    }

    @a
    public FavaDiagnosticsEntity(@NonNull String str, int i10) {
        this.f61364b = 1;
        this.f61365c = str;
        this.f61366d = i10;
    }
}
