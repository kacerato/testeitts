package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;

@c.g({1})
@c.a(creator = "PublicKeyCredentialUserEntityCreator")
public class C3551t extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C3551t> CREATOR = new Q();

    @NonNull
    @c.InterfaceC0186c(getter = "getId", id = 2)
    public final byte[] f31653b;

    @NonNull
    @c.InterfaceC0186c(getter = "getName", id = 3)
    public final String f31654c;

    @Nullable
    @c.InterfaceC0186c(getter = "getIcon", id = 4)
    public final String f31655d;

    @NonNull
    @c.InterfaceC0186c(getter = "getDisplayName", id = 5)
    public final String f31656e;

    @c.b
    public C3551t(@NonNull @c.e(id = 2) byte[] bArr, @NonNull @c.e(id = 3) String str, @NonNull @c.e(id = 4) String str2, @NonNull @c.e(id = 5) String str3) {
        this.f31653b = (byte[]) G0.A.r(bArr);
        this.f31654c = (String) G0.A.r(str);
        this.f31655d = str2;
        this.f31656e = (String) G0.A.r(str3);
    }

    @NonNull
    public byte[] b0() {
        return this.f31653b;
    }

    public boolean equals(@NonNull Object obj) {
        if (!(obj instanceof C3551t)) {
            return false;
        }
        C3551t c3551t = (C3551t) obj;
        return Arrays.equals(this.f31653b, c3551t.f31653b) && C2601y.b(this.f31654c, c3551t.f31654c) && C2601y.b(this.f31655d, c3551t.f31655d) && C2601y.b(this.f31656e, c3551t.f31656e);
    }

    public int hashCode() {
        return C2601y.c(this.f31653b, this.f31654c, this.f31655d, this.f31656e);
    }

    @NonNull
    public String n() {
        return this.f31656e;
    }

    @NonNull
    public String n0() {
        return this.f31654c;
    }

    @Nullable
    public String t() {
        return this.f31655d;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.m(parcel, 2, b0(), false);
        I0.b.Y(parcel, 3, n0(), false);
        I0.b.Y(parcel, 4, t(), false);
        I0.b.Y(parcel, 5, n(), false);
        I0.b.b(parcel, a10);
    }
}
