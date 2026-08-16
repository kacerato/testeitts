package com.google.android.gms.auth.api.identity;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;

@c.a(creator = "ClearTokenRequestCreator")
public class ClearTokenRequest extends I0.a implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<ClearTokenRequest> CREATOR = new y();

    @c.InterfaceC0186c(getter = "getToken", id = 1)
    public final String f60862b;

    @Nullable
    @c.InterfaceC0186c(getter = "getSessionId", id = 2)
    public final String f60863c;

    public static abstract class a {
        @NonNull
        public abstract ClearTokenRequest a();

        @NonNull
        public abstract a b(@NonNull String str);

        @NonNull
        public abstract a c(@Nullable String str);
    }

    @c.b
    public ClearTokenRequest(@NonNull @c.e(id = 1) String str, @Nullable @c.e(id = 2) String str2) {
        this.f60862b = str;
        this.f60863c = str2;
    }

    @NonNull
    public static a n() {
        return new t();
    }

    @Nullable
    public final String b0() {
        return this.f60863c;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof ClearTokenRequest) {
            ClearTokenRequest clearTokenRequest = (ClearTokenRequest) obj;
            if (C2601y.b(this.f60862b, clearTokenRequest.f60862b) && C2601y.b(this.f60863c, clearTokenRequest.f60863c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return C2601y.c(this.f60862b, this.f60863c);
    }

    @NonNull
    public final a n0() {
        return new t(this);
    }

    @NonNull
    public String t() {
        return this.f60862b;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 1, t(), false);
        I0.b.Y(parcel, 2, this.f60863c, false);
        I0.b.b(parcel, a10);
    }
}
