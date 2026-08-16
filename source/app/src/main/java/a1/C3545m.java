package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;

@c.a(creator = "FidoCredentialDetailsCreator")
public class C3545m extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C3545m> CREATOR = new s0();

    @Nullable
    @c.InterfaceC0186c(getter = "getUserName", id = 1)
    public final String f31603b;

    @Nullable
    @c.InterfaceC0186c(getter = "getUserDisplayName", id = 2)
    public final String f31604c;

    @Nullable
    @c.InterfaceC0186c(getter = "getUserId", id = 3)
    public final byte[] f31605d;

    @NonNull
    @c.InterfaceC0186c(getter = "getCredentialId", id = 4)
    public final byte[] f31606e;

    @c.InterfaceC0186c(getter = "getIsDiscoverable", id = 5)
    public final boolean f31607f;

    @c.InterfaceC0186c(getter = "getIsPaymentCredential", id = 6)
    public final boolean f31608g;

    @c.b
    public C3545m(@Nullable @c.e(id = 1) String str, @Nullable @c.e(id = 2) String str2, @Nullable @c.e(id = 3) byte[] bArr, @NonNull @c.e(id = 4) byte[] bArr2, @c.e(id = 5) boolean z10, @c.e(id = 6) boolean z11) {
        this.f31603b = str;
        this.f31604c = str2;
        this.f31605d = bArr;
        this.f31606e = bArr2;
        this.f31607f = z10;
        this.f31608g = z11;
    }

    @NonNull
    public static C3545m b(@NonNull byte[] bArr) {
        return (C3545m) I0.d.a(bArr, CREATOR);
    }

    public boolean b0() {
        return this.f31608g;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C3545m)) {
            return false;
        }
        C3545m c3545m = (C3545m) obj;
        return C2601y.b(this.f31603b, c3545m.f31603b) && C2601y.b(this.f31604c, c3545m.f31604c) && Arrays.equals(this.f31605d, c3545m.f31605d) && Arrays.equals(this.f31606e, c3545m.f31606e) && this.f31607f == c3545m.f31607f && this.f31608g == c3545m.f31608g;
    }

    public int hashCode() {
        return C2601y.c(this.f31603b, this.f31604c, this.f31605d, this.f31606e, Boolean.valueOf(this.f31607f), Boolean.valueOf(this.f31608g));
    }

    @NonNull
    public byte[] n() {
        return this.f31606e;
    }

    @Nullable
    public String n0() {
        return this.f31604c;
    }

    public boolean t() {
        return this.f31607f;
    }

    @Nullable
    public byte[] u0() {
        return this.f31605d;
    }

    @Nullable
    public String v0() {
        return this.f31603b;
    }

    @NonNull
    public byte[] w0() {
        return I0.d.n(this);
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 1, v0(), false);
        I0.b.Y(parcel, 2, n0(), false);
        I0.b.m(parcel, 3, u0(), false);
        I0.b.m(parcel, 4, n(), false);
        I0.b.g(parcel, 5, t());
        I0.b.g(parcel, 6, b0());
        I0.b.b(parcel, a10);
    }
}
