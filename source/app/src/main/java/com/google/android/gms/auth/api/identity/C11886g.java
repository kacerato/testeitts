package com.google.android.gms.auth.api.identity;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@c.a(creator = "GetPhoneNumberHintIntentRequestCreator")
public class C11886g extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C11886g> CREATOR = new A();

    @c.InterfaceC0186c(getter = "getTheme", id = 1)
    public final int f60934b;

    public static final class a {
        public a() {
            throw null;
        }

        @NonNull
        public C11886g a() {
            return new C11886g(0);
        }

        public a(byte[] bArr) {
        }
    }

    @c.b
    public C11886g(@c.e(id = 1) int i10) {
        this.f60934b = i10;
    }

    @NonNull
    public static a n() {
        return new a(null);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof C11886g) {
            return C2601y.b(Integer.valueOf(this.f60934b), Integer.valueOf(((C11886g) obj).f60934b));
        }
        return false;
    }

    public int hashCode() {
        return C2601y.c(Integer.valueOf(this.f60934b));
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int i11 = this.f60934b;
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, i11);
        I0.b.b(parcel, a10);
    }
}
