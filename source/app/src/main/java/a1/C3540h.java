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
@c.a(creator = "BrowserPublicKeyCredentialRequestOptionsCreator")
public class C3540h extends AbstractC3541i {

    @NonNull
    public static final Parcelable.Creator<C3540h> CREATOR = new k0();

    @NonNull
    @c.InterfaceC0186c(getter = "getPublicKeyCredentialRequestOptions", id = 2)
    public final r f31589b;

    @NonNull
    @c.InterfaceC0186c(getter = "getOrigin", id = 3)
    public final Uri f31590c;

    @Nullable
    @c.InterfaceC0186c(getter = "getClientDataHash", id = 4)
    public final byte[] f31591d;

    public static final class a {

        public r f31592a;

        public Uri f31593b;

        public byte[] f31594c;

        @NonNull
        public C3540h a() {
            return new C3540h(this.f31592a, this.f31593b, this.f31594c);
        }

        @NonNull
        public a b(@NonNull byte[] bArr) {
            C3540h.B0(bArr);
            this.f31594c = bArr;
            return this;
        }

        @NonNull
        public a c(@NonNull Uri uri) {
            C3540h.A0(uri);
            this.f31593b = uri;
            return this;
        }

        @NonNull
        public a d(@NonNull r rVar) {
            this.f31592a = (r) G0.A.r(rVar);
            return this;
        }
    }

    @c.b
    public C3540h(@NonNull @c.e(id = 2) r rVar, @NonNull @c.e(id = 3) Uri uri, @Nullable @c.e(id = 4) byte[] bArr) {
        this.f31589b = (r) G0.A.r(rVar);
        C0(uri);
        this.f31590c = uri;
        D0(bArr);
        this.f31591d = bArr;
    }

    public static Uri A0(Uri uri) {
        C0(uri);
        return uri;
    }

    public static byte[] B0(byte[] bArr) {
        D0(bArr);
        return bArr;
    }

    private static Uri C0(Uri uri) {
        G0.A.r(uri);
        G0.A.b(uri.getScheme() != null, "origin scheme must be non-empty");
        G0.A.b(uri.getAuthority() != null, "origin authority must be non-empty");
        return uri;
    }

    private static byte[] D0(byte[] bArr) {
        boolean z10 = true;
        if (bArr != null && bArr.length != 32) {
            z10 = false;
        }
        G0.A.b(z10, "clientDataHash must be 32 bytes long");
        return bArr;
    }

    @NonNull
    public static C3540h y0(@NonNull byte[] bArr) {
        return (C3540h) I0.d.a(bArr, CREATOR);
    }

    @Override
    @Nullable
    public Integer b0() {
        return this.f31589b.b0();
    }

    public boolean equals(@NonNull Object obj) {
        if (!(obj instanceof C3540h)) {
            return false;
        }
        C3540h c3540h = (C3540h) obj;
        return C2601y.b(this.f31589b, c3540h.f31589b) && C2601y.b(this.f31590c, c3540h.f31590c);
    }

    public int hashCode() {
        return C2601y.c(this.f31589b, this.f31590c);
    }

    @Override
    @Nullable
    public C3533a n() {
        return this.f31589b.n();
    }

    @Override
    @Nullable
    public Double n0() {
        return this.f31589b.n0();
    }

    @Override
    @NonNull
    public byte[] t() {
        return this.f31589b.t();
    }

    @Override
    @Nullable
    public TokenBinding u0() {
        return this.f31589b.u0();
    }

    @Override
    @NonNull
    public byte[] v0() {
        return I0.d.n(this);
    }

    @Override
    @Nullable
    public byte[] w0() {
        return this.f31591d;
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
        return this.f31590c;
    }

    @NonNull
    public r z0() {
        return this.f31589b;
    }
}
