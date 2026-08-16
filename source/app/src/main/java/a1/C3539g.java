package a1;

import G0.C2601y;
import I0.c;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.fido.fido2.api.common.TokenBinding;

@c.g({1})
@c.a(creator = "BrowserPublicKeyCredentialCreationOptionsCreator")
public class C3539g extends AbstractC3541i {

    @NonNull
    public static final Parcelable.Creator<C3539g> CREATOR = new j0();

    @NonNull
    @c.InterfaceC0186c(getter = "getPublicKeyCredentialCreationOptions", id = 2)
    public final com.google.android.gms.fido.fido2.api.common.d f31583b;

    @NonNull
    @c.InterfaceC0186c(getter = "getOrigin", id = 3)
    public final Uri f31584c;

    @Nullable
    @c.InterfaceC0186c(getter = "getClientDataHash", id = 4)
    public final byte[] f31585d;

    public static final class a {

        public com.google.android.gms.fido.fido2.api.common.d f31586a;

        public Uri f31587b;

        public byte[] f31588c;

        @NonNull
        public C3539g a() {
            return new C3539g(this.f31586a, this.f31587b, this.f31588c);
        }

        @NonNull
        public a b(@NonNull byte[] bArr) {
            C3539g.B0(bArr);
            this.f31588c = bArr;
            return this;
        }

        @NonNull
        public a c(@NonNull Uri uri) {
            C3539g.A0(uri);
            this.f31587b = uri;
            return this;
        }

        @NonNull
        public a d(@NonNull com.google.android.gms.fido.fido2.api.common.d dVar) {
            this.f31586a = dVar;
            return this;
        }
    }

    @c.b
    public C3539g(@NonNull @c.e(id = 2) com.google.android.gms.fido.fido2.api.common.d dVar, @NonNull @c.e(id = 3) Uri uri, @Nullable @c.e(id = 4) byte[] bArr) {
        this.f31583b = (com.google.android.gms.fido.fido2.api.common.d) G0.A.r(dVar);
        C0(uri);
        this.f31584c = uri;
        D0(bArr);
        this.f31585d = bArr;
    }

    public static Uri A0(Uri uri) {
        C0(uri);
        return uri;
    }

    public static byte[] B0(byte[] bArr) {
        D0(bArr);
        return bArr;
    }

    public static Uri C0(Uri uri) {
        G0.A.r(uri);
        G0.A.b(uri.getScheme() != null, "origin scheme must be non-empty");
        G0.A.b(uri.getAuthority() != null, "origin authority must be non-empty");
        return uri;
    }

    public static byte[] D0(byte[] bArr) {
        boolean z10 = true;
        if (bArr != null && bArr.length != 32) {
            z10 = false;
        }
        G0.A.b(z10, "clientDataHash must be 32 bytes long");
        return bArr;
    }

    @NonNull
    public static C3539g y0(@NonNull byte[] bArr) {
        return (C3539g) I0.d.a(bArr, CREATOR);
    }

    @Override
    @Nullable
    public Integer b0() {
        return this.f31583b.b0();
    }

    public boolean equals(@NonNull Object obj) {
        if (!(obj instanceof C3539g)) {
            return false;
        }
        C3539g c3539g = (C3539g) obj;
        return C2601y.b(this.f31583b, c3539g.f31583b) && C2601y.b(this.f31584c, c3539g.f31584c);
    }

    public int hashCode() {
        return C2601y.c(this.f31583b, this.f31584c);
    }

    @Override
    @Nullable
    public C3533a n() {
        return this.f31583b.n();
    }

    @Override
    @Nullable
    public Double n0() {
        return this.f31583b.n0();
    }

    @Override
    @NonNull
    public byte[] t() {
        return this.f31583b.t();
    }

    @Override
    @Nullable
    public TokenBinding u0() {
        return this.f31583b.u0();
    }

    @Override
    @NonNull
    public byte[] v0() {
        return I0.d.n(this);
    }

    @Override
    @Nullable
    public byte[] w0() {
        return this.f31585d;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.S(parcel, 2, z0(), i10, false);
        I0.b.S(parcel, 3, x0(), i10, false);
        I0.b.m(parcel, 4, w0(), false);
        I0.b.b(parcel, a10);
    }

    @Override
    @NonNull
    public Uri x0() {
        return this.f31584c;
    }

    @NonNull
    public com.google.android.gms.fido.fido2.api.common.d z0() {
        return this.f31583b;
    }
}
