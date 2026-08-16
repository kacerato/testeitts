package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialType;
import java.util.Arrays;

@c.a(creator = "PublicKeyCredentialCreator")
public class C3549q extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C3549q> CREATOR = new L();

    @NonNull
    @c.InterfaceC0186c(getter = "getId", id = 1)
    public final String f31620b;

    @NonNull
    @c.InterfaceC0186c(getter = "getType", id = 2)
    public final String f31621c;

    @NonNull
    @c.InterfaceC0186c(getter = "getRawId", id = 3)
    public final byte[] f31622d;

    @Nullable
    @c.InterfaceC0186c(getter = "getRegisterResponse", id = 4)
    public final C3537e f31623e;

    @Nullable
    @c.InterfaceC0186c(getter = "getSignResponse", id = 5)
    public final C3536d f31624f;

    @Nullable
    @c.InterfaceC0186c(getter = "getErrorResponse", id = 6)
    public final com.google.android.gms.fido.fido2.api.common.b f31625g;

    @Nullable
    @c.InterfaceC0186c(getter = "getClientExtensionResults", id = 7)
    public final C3534b f31626h;

    @Nullable
    @c.InterfaceC0186c(getter = "getAuthenticatorAttachment", id = 8)
    public final String f31627i;

    public static class a {

        public String f31628a;

        public byte[] f31629b;

        public AbstractC3538f f31630c;

        public C3534b f31631d;

        public String f31632e;

        @NonNull
        public C3549q a() {
            AbstractC3538f abstractC3538f = this.f31630c;
            return new C3549q(this.f31628a, PublicKeyCredentialType.PUBLIC_KEY.toString(), this.f31629b, abstractC3538f instanceof C3537e ? (C3537e) abstractC3538f : null, abstractC3538f instanceof C3536d ? (C3536d) abstractC3538f : null, abstractC3538f instanceof com.google.android.gms.fido.fido2.api.common.b ? (com.google.android.gms.fido.fido2.api.common.b) abstractC3538f : null, this.f31631d, this.f31632e);
        }

        @NonNull
        public a b(@Nullable C3534b c3534b) {
            this.f31631d = c3534b;
            return this;
        }

        @NonNull
        public a c(@NonNull String str) {
            this.f31632e = str;
            return this;
        }

        @NonNull
        public a d(@NonNull String str) {
            this.f31628a = str;
            return this;
        }

        @NonNull
        public a e(@NonNull byte[] bArr) {
            this.f31629b = bArr;
            return this;
        }

        @NonNull
        public a f(@NonNull AbstractC3538f abstractC3538f) {
            this.f31630c = abstractC3538f;
            return this;
        }
    }

    @c.b
    public C3549q(@NonNull @c.e(id = 1) String str, @NonNull @c.e(id = 2) String str2, @NonNull @c.e(id = 3) byte[] bArr, @Nullable @c.e(id = 4) C3537e c3537e, @Nullable @c.e(id = 5) C3536d c3536d, @Nullable @c.e(id = 6) com.google.android.gms.fido.fido2.api.common.b bVar, @Nullable @c.e(id = 7) C3534b c3534b, @Nullable @c.e(id = 8) String str3) {
        boolean z10 = true;
        if ((c3537e == null || c3536d != null || bVar != null) && ((c3537e != null || c3536d == null || bVar != null) && (c3537e != null || c3536d != null || bVar == null))) {
            z10 = false;
        }
        G0.A.a(z10);
        this.f31620b = str;
        this.f31621c = str2;
        this.f31622d = bArr;
        this.f31623e = c3537e;
        this.f31624f = c3536d;
        this.f31625g = bVar;
        this.f31626h = c3534b;
        this.f31627i = str3;
    }

    @NonNull
    public static C3549q b(@NonNull byte[] bArr) {
        return (C3549q) I0.d.a(bArr, CREATOR);
    }

    @NonNull
    public String b0() {
        return this.f31620b;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C3549q)) {
            return false;
        }
        C3549q c3549q = (C3549q) obj;
        return C2601y.b(this.f31620b, c3549q.f31620b) && C2601y.b(this.f31621c, c3549q.f31621c) && Arrays.equals(this.f31622d, c3549q.f31622d) && C2601y.b(this.f31623e, c3549q.f31623e) && C2601y.b(this.f31624f, c3549q.f31624f) && C2601y.b(this.f31625g, c3549q.f31625g) && C2601y.b(this.f31626h, c3549q.f31626h) && C2601y.b(this.f31627i, c3549q.f31627i);
    }

    public int hashCode() {
        return C2601y.c(this.f31620b, this.f31621c, this.f31622d, this.f31624f, this.f31623e, this.f31625g, this.f31626h, this.f31627i);
    }

    @Nullable
    public String n() {
        return this.f31627i;
    }

    @NonNull
    public byte[] n0() {
        return this.f31622d;
    }

    @Nullable
    public C3534b t() {
        return this.f31626h;
    }

    @NonNull
    public AbstractC3538f u0() {
        C3537e c3537e = this.f31623e;
        if (c3537e != null) {
            return c3537e;
        }
        C3536d c3536d = this.f31624f;
        if (c3536d != null) {
            return c3536d;
        }
        com.google.android.gms.fido.fido2.api.common.b bVar = this.f31625g;
        if (bVar != null) {
            return bVar;
        }
        throw new IllegalStateException("No response set.");
    }

    @NonNull
    public String v0() {
        return this.f31621c;
    }

    @NonNull
    public byte[] w0() {
        return I0.d.n(this);
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 1, b0(), false);
        I0.b.Y(parcel, 2, v0(), false);
        I0.b.m(parcel, 3, n0(), false);
        I0.b.S(parcel, 4, this.f31623e, i10, false);
        I0.b.S(parcel, 5, this.f31624f, i10, false);
        I0.b.S(parcel, 6, this.f31625g, i10, false);
        I0.b.S(parcel, 7, t(), i10, false);
        I0.b.Y(parcel, 8, n(), false);
        I0.b.b(parcel, a10);
    }
}
