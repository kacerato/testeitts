package com.google.android.gms.common.api;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Objects;

@C0.a
@c.a(creator = "ApiMetadataCreator")
public final class C11895b extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C11895b> CREATOR = I.a();

    public static final C11895b f61057c = t().a();

    @Nullable
    @c.InterfaceC0186c(getter = "getComplianceOptions", id = 1)
    public final C11901h f61058b;

    @C0.a
    public static final class a {

        @Nullable
        public C11901h f61059a;

        @NonNull
        @C0.a
        public C11895b a() {
            return new C11895b(this.f61059a);
        }

        @NonNull
        @C0.a
        public a b(@Nullable C11901h c11901h) {
            this.f61059a = c11901h;
            return this;
        }
    }

    @c.b
    public C11895b(@Nullable @c.e(id = 1) C11901h c11901h) {
        this.f61058b = c11901h;
    }

    @NonNull
    @C0.a
    public static final C11895b b(@NonNull C11901h c11901h) {
        a t10 = t();
        t10.b(c11901h);
        return t10.a();
    }

    @NonNull
    @C0.a
    public static final C11895b n() {
        return f61057c;
    }

    @NonNull
    @C0.a
    public static a t() {
        return new a();
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj instanceof C11895b) {
            return Objects.equals(this.f61058b, ((C11895b) obj).f61058b);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f61058b);
    }

    @NonNull
    public final String toString() {
        return "ApiMetadata(complianceOptions=" + String.valueOf(this.f61058b) + ")";
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeInt(-204102970);
        C11901h c11901h = this.f61058b;
        int a10 = I0.b.a(parcel);
        I0.b.S(parcel, 1, c11901h, i10, false);
        I0.b.b(parcel, a10);
    }
}
