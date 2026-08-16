package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.fido.u2f.api.common.SignResponseData;
import j1.C13787k;
import j1.C13788l;
import java.util.Arrays;

@c.g({1})
@c.a(creator = "AuthenticatorAttestationResponseCreator")
public class C3537e extends AbstractC3538f {

    @NonNull
    public static final Parcelable.Creator<C3537e> CREATOR = new g0();

    @NonNull
    @c.InterfaceC0186c(getter = "getKeyHandle", id = 2)
    public final byte[] f31579b;

    @NonNull
    @c.InterfaceC0186c(getter = "getClientDataJSON", id = 3)
    public final byte[] f31580c;

    @NonNull
    @c.InterfaceC0186c(getter = "getAttestationObject", id = 4)
    public final byte[] f31581d;

    @NonNull
    @c.InterfaceC0186c(getter = "getTransports", id = 5)
    public final String[] f31582e;

    @c.b
    public C3537e(@NonNull @c.e(id = 2) byte[] bArr, @NonNull @c.e(id = 3) byte[] bArr2, @NonNull @c.e(id = 4) byte[] bArr3, @NonNull @c.e(id = 5) String[] strArr) {
        this.f31579b = (byte[]) G0.A.r(bArr);
        this.f31580c = (byte[]) G0.A.r(bArr2);
        this.f31581d = (byte[]) G0.A.r(bArr3);
        this.f31582e = (String[]) G0.A.r(strArr);
    }

    @NonNull
    public static C3537e b0(@NonNull byte[] bArr) {
        return (C3537e) I0.d.a(bArr, CREATOR);
    }

    public boolean equals(@NonNull Object obj) {
        if (!(obj instanceof C3537e)) {
            return false;
        }
        C3537e c3537e = (C3537e) obj;
        return Arrays.equals(this.f31579b, c3537e.f31579b) && Arrays.equals(this.f31580c, c3537e.f31580c) && Arrays.equals(this.f31581d, c3537e.f31581d);
    }

    public int hashCode() {
        return C2601y.c(Integer.valueOf(Arrays.hashCode(this.f31579b)), Integer.valueOf(Arrays.hashCode(this.f31580c)), Integer.valueOf(Arrays.hashCode(this.f31581d)));
    }

    @Override
    @NonNull
    public byte[] n() {
        return this.f31580c;
    }

    @NonNull
    public byte[] n0() {
        return this.f31581d;
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
        byte[] bArr = this.f31579b;
        a10.b(SignResponseData.f61550g, c10.d(bArr, 0, bArr.length));
        j1.H c11 = j1.H.c();
        byte[] bArr2 = this.f31580c;
        a10.b("clientDataJSON", c11.d(bArr2, 0, bArr2.length));
        j1.H c12 = j1.H.c();
        byte[] bArr3 = this.f31581d;
        a10.b("attestationObject", c12.d(bArr3, 0, bArr3.length));
        a10.b("transports", Arrays.toString(this.f31582e));
        return a10.toString();
    }

    @NonNull
    @Deprecated
    public byte[] u0() {
        return this.f31579b;
    }

    @NonNull
    public String[] v0() {
        return this.f31582e;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.m(parcel, 2, u0(), false);
        I0.b.m(parcel, 3, n(), false);
        I0.b.m(parcel, 4, n0(), false);
        I0.b.Z(parcel, 5, v0(), false);
        I0.b.b(parcel, a10);
    }
}
