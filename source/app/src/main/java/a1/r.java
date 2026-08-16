package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialDescriptor;
import com.google.android.gms.fido.fido2.api.common.TokenBinding;
import com.google.android.gms.fido.fido2.api.common.zzax;
import java.util.Arrays;
import java.util.List;

@c.g({1})
@c.a(creator = "PublicKeyCredentialRequestOptionsCreator")
public class r extends AbstractC3553v {

    @NonNull
    public static final Parcelable.Creator<r> CREATOR = new O();

    @NonNull
    @c.InterfaceC0186c(getter = "getChallenge", id = 2)
    public final byte[] f31633b;

    @Nullable
    @c.InterfaceC0186c(getter = "getTimeoutSeconds", id = 3)
    public final Double f31634c;

    @NonNull
    @c.InterfaceC0186c(getter = "getRpId", id = 4)
    public final String f31635d;

    @Nullable
    @c.InterfaceC0186c(getter = "getAllowList", id = 5)
    public final List f31636e;

    @Nullable
    @c.InterfaceC0186c(getter = "getRequestId", id = 6)
    public final Integer f31637f;

    @Nullable
    @c.InterfaceC0186c(getter = "getTokenBinding", id = 7)
    public final TokenBinding f31638g;

    @Nullable
    @c.InterfaceC0186c(getter = "getUserVerificationAsString", id = 8, type = "java.lang.String")
    public final V f31639h;

    @Nullable
    @c.InterfaceC0186c(getter = "getAuthenticationExtensions", id = 9)
    public final C3533a f31640i;

    @Nullable
    @c.InterfaceC0186c(getter = "getLongRequestId", id = 10)
    public final Long f31641j;

    public static final class a {

        public byte[] f31642a;

        public Double f31643b;

        public String f31644c;

        public List f31645d;

        public Integer f31646e;

        public TokenBinding f31647f;

        public V f31648g;

        public C3533a f31649h;

        public a() {
        }

        @NonNull
        public r a() {
            byte[] bArr = this.f31642a;
            Double d10 = this.f31643b;
            String str = this.f31644c;
            List list = this.f31645d;
            Integer num = this.f31646e;
            TokenBinding tokenBinding = this.f31647f;
            V v10 = this.f31648g;
            return new r(bArr, d10, str, list, num, tokenBinding, v10 == null ? null : v10.toString(), this.f31649h, null);
        }

        @NonNull
        public a b(@Nullable List<PublicKeyCredentialDescriptor> list) {
            this.f31645d = list;
            return this;
        }

        @NonNull
        public a c(@Nullable C3533a c3533a) {
            this.f31649h = c3533a;
            return this;
        }

        @NonNull
        public a d(@NonNull byte[] bArr) {
            this.f31642a = (byte[]) G0.A.r(bArr);
            return this;
        }

        @NonNull
        public a e(@Nullable Integer num) {
            this.f31646e = num;
            return this;
        }

        @NonNull
        public a f(@NonNull String str) {
            this.f31644c = (String) G0.A.r(str);
            return this;
        }

        @NonNull
        public a g(@Nullable Double d10) {
            this.f31643b = d10;
            return this;
        }

        @NonNull
        public a h(@Nullable TokenBinding tokenBinding) {
            this.f31647f = tokenBinding;
            return this;
        }

        public a(@Nullable r rVar) {
            if (rVar != null) {
                this.f31642a = rVar.t();
                this.f31643b = rVar.n0();
                this.f31644c = rVar.y0();
                this.f31645d = rVar.x0();
                this.f31646e = rVar.b0();
                this.f31647f = rVar.u0();
                this.f31648g = rVar.z0();
                this.f31649h = rVar.n();
            }
        }
    }

    @c.b
    public r(@NonNull @c.e(id = 2) byte[] bArr, @Nullable @c.e(id = 3) Double d10, @NonNull @c.e(id = 4) String str, @Nullable @c.e(id = 5) List list, @Nullable @c.e(id = 6) Integer num, @Nullable @c.e(id = 7) TokenBinding tokenBinding, @Nullable @c.e(id = 8) String str2, @Nullable @c.e(id = 9) C3533a c3533a, @Nullable @c.e(id = 10) Long l10) {
        this.f31633b = (byte[]) G0.A.r(bArr);
        this.f31634c = d10;
        this.f31635d = (String) G0.A.r(str);
        this.f31636e = list;
        this.f31637f = num;
        this.f31638g = tokenBinding;
        this.f31641j = l10;
        if (str2 != null) {
            try {
                this.f31639h = V.b(str2);
            } catch (zzax e10) {
                throw new IllegalArgumentException(e10);
            }
        } else {
            this.f31639h = null;
        }
        this.f31640i = c3533a;
    }

    @NonNull
    public static r w0(@Nullable byte[] bArr) {
        return (r) I0.d.a(bArr, CREATOR);
    }

    @Override
    @Nullable
    public Integer b0() {
        return this.f31637f;
    }

    public boolean equals(@NonNull Object obj) {
        List list;
        List list2;
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return Arrays.equals(this.f31633b, rVar.f31633b) && C2601y.b(this.f31634c, rVar.f31634c) && C2601y.b(this.f31635d, rVar.f31635d) && (((list = this.f31636e) == null && rVar.f31636e == null) || (list != null && (list2 = rVar.f31636e) != null && list.containsAll(list2) && rVar.f31636e.containsAll(this.f31636e))) && C2601y.b(this.f31637f, rVar.f31637f) && C2601y.b(this.f31638g, rVar.f31638g) && C2601y.b(this.f31639h, rVar.f31639h) && C2601y.b(this.f31640i, rVar.f31640i) && C2601y.b(this.f31641j, rVar.f31641j);
    }

    public int hashCode() {
        return C2601y.c(Integer.valueOf(Arrays.hashCode(this.f31633b)), this.f31634c, this.f31635d, this.f31636e, this.f31637f, this.f31638g, this.f31639h, this.f31640i, this.f31641j);
    }

    @Override
    @Nullable
    public C3533a n() {
        return this.f31640i;
    }

    @Override
    @Nullable
    public Double n0() {
        return this.f31634c;
    }

    @Override
    @NonNull
    public byte[] t() {
        return this.f31633b;
    }

    @Override
    @Nullable
    public TokenBinding u0() {
        return this.f31638g;
    }

    @Override
    @NonNull
    public byte[] v0() {
        return I0.d.n(this);
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.m(parcel, 2, t(), false);
        I0.b.u(parcel, 3, n0(), false);
        I0.b.Y(parcel, 4, y0(), false);
        I0.b.d0(parcel, 5, x0(), false);
        I0.b.I(parcel, 6, b0(), false);
        I0.b.S(parcel, 7, u0(), i10, false);
        V v10 = this.f31639h;
        I0.b.Y(parcel, 8, v10 == null ? null : v10.toString(), false);
        I0.b.S(parcel, 9, n(), i10, false);
        I0.b.N(parcel, 10, this.f31641j, false);
        I0.b.b(parcel, a10);
    }

    @Nullable
    public List<PublicKeyCredentialDescriptor> x0() {
        return this.f31636e;
    }

    @NonNull
    public String y0() {
        return this.f31635d;
    }

    @Nullable
    public final V z0() {
        return this.f31639h;
    }
}
