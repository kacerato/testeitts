package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.fido.u2f.api.common.SignResponseData;
import j1.C13787k;
import j1.C13788l;
import java.util.Arrays;

@c.g({1})
@c.a(creator = "AuthenticatorAssertionResponseCreator")
public class C3536d extends AbstractC3538f {

    @NonNull
    public static final Parcelable.Creator<C3536d> CREATOR = new f0();

    @NonNull
    @c.InterfaceC0186c(getter = "getKeyHandle", id = 2)
    public final byte[] f31572b;

    @NonNull
    @c.InterfaceC0186c(getter = "getClientDataJSON", id = 3)
    public final byte[] f31573c;

    @NonNull
    @c.InterfaceC0186c(getter = "getAuthenticatorData", id = 4)
    public final byte[] f31574d;

    @NonNull
    @c.InterfaceC0186c(getter = "getSignature", id = 5)
    public final byte[] f31575e;

    @Nullable
    @c.InterfaceC0186c(getter = "getUserHandle", id = 6)
    public final byte[] f31576f;

    @c.b
    public C3536d(@NonNull @c.e(id = 2) byte[] bArr, @NonNull @c.e(id = 3) byte[] bArr2, @NonNull @c.e(id = 4) byte[] bArr3, @NonNull @c.e(id = 5) byte[] bArr4, @Nullable @c.e(id = 6) byte[] bArr5) {
        this.f31572b = (byte[]) G0.A.r(bArr);
        this.f31573c = (byte[]) G0.A.r(bArr2);
        this.f31574d = (byte[]) G0.A.r(bArr3);
        this.f31575e = (byte[]) G0.A.r(bArr4);
        this.f31576f = bArr5;
    }

    @NonNull
    public static C3536d b0(@NonNull byte[] bArr) {
        return (C3536d) I0.d.a(bArr, CREATOR);
    }

    public boolean equals(@NonNull Object obj) {
        if (!(obj instanceof C3536d)) {
            return false;
        }
        C3536d c3536d = (C3536d) obj;
        return Arrays.equals(this.f31572b, c3536d.f31572b) && Arrays.equals(this.f31573c, c3536d.f31573c) && Arrays.equals(this.f31574d, c3536d.f31574d) && Arrays.equals(this.f31575e, c3536d.f31575e) && Arrays.equals(this.f31576f, c3536d.f31576f);
    }

    public int hashCode() {
        return C2601y.c(Integer.valueOf(Arrays.hashCode(this.f31572b)), Integer.valueOf(Arrays.hashCode(this.f31573c)), Integer.valueOf(Arrays.hashCode(this.f31574d)), Integer.valueOf(Arrays.hashCode(this.f31575e)), Integer.valueOf(Arrays.hashCode(this.f31576f)));
    }

    @Override
    @NonNull
    public byte[] n() {
        return this.f31573c;
    }

    @NonNull
    public byte[] n0() {
        return this.f31574d;
    }

    @Override
    @NonNull
    public byte[] t() {
        return I0.d.n(this);
    }

    @NonNull
    public String toString() {
        C13787k a10 = C13788l.a(this);
        j1.H c10 = j1.H.c();
        byte[] bArr = this.f31572b;
        a10.b(SignResponseData.f61550g, c10.d(bArr, 0, bArr.length));
        j1.H c11 = j1.H.c();
        byte[] bArr2 = this.f31573c;
        a10.b("clientDataJSON", c11.d(bArr2, 0, bArr2.length));
        j1.H c12 = j1.H.c();
        byte[] bArr3 = this.f31574d;
        a10.b("authenticatorData", c12.d(bArr3, 0, bArr3.length));
        j1.H c13 = j1.H.c();
        byte[] bArr4 = this.f31575e;
        a10.b("signature", c13.d(bArr4, 0, bArr4.length));
        byte[] bArr5 = this.f31576f;
        if (bArr5 != null) {
            a10.b("userHandle", j1.H.c().d(bArr5, 0, bArr5.length));
        }
        return a10.toString();
    }

    @NonNull
    @Deprecated
    public byte[] u0() {
        return this.f31572b;
    }

    @NonNull
    public byte[] v0() {
        return this.f31575e;
    }

    @Nullable
    public byte[] w0() {
        return this.f31576f;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.m(parcel, 2, u0(), false);
        I0.b.m(parcel, 3, n(), false);
        I0.b.m(parcel, 4, n0(), false);
        I0.b.m(parcel, 5, v0(), false);
        I0.b.m(parcel, 6, w0(), false);
        I0.b.b(parcel, a10);
    }
}
