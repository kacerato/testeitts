package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@c.g({1})
@c.a(creator = "AuthenticationExtensionsCreator")
public class C3533a extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C3533a> CREATOR = new Z();

    @Nullable
    @c.InterfaceC0186c(getter = "getFidoAppIdExtension", id = 2)
    public final C3544l f31543b;

    @Nullable
    @c.InterfaceC0186c(getter = "getCableAuthenticationExtension", id = 3)
    public final n0 f31544c;

    @Nullable
    @c.InterfaceC0186c(getter = "getUserVerificationMethodExtension", id = 4)
    public final C3554w f31545d;

    @Nullable
    @c.InterfaceC0186c(getter = "getGoogleMultiAssertionExtension", id = 5)
    public final t0 f31546e;

    @Nullable
    @c.InterfaceC0186c(getter = "getGoogleSessionIdExtension", id = 6)
    public final B f31547f;

    @Nullable
    @c.InterfaceC0186c(getter = "getGoogleSilentVerificationExtension", id = 7)
    public final D f31548g;

    @Nullable
    @c.InterfaceC0186c(getter = "getDevicePublicKeyExtension", id = 8)
    public final p0 f31549h;

    @Nullable
    @c.InterfaceC0186c(getter = "getGoogleTunnelServerIdExtension", id = 9)
    public final G f31550i;

    @Nullable
    @c.InterfaceC0186c(getter = "getGoogleThirdPartyPaymentExtension", id = 10)
    public final C3546n f31551j;

    @Nullable
    @c.InterfaceC0186c(getter = "getPrfExtension", id = 11)
    public final I f31552k;

    public static final class C0838a {

        public C3544l f31553a;

        public C3554w f31554b;

        public n0 f31555c;

        public t0 f31556d;

        public B f31557e;

        public D f31558f;

        public p0 f31559g;

        public G f31560h;

        public C3546n f31561i;

        public I f31562j;

        public C0838a() {
        }

        @NonNull
        public C3533a a() {
            return new C3533a(this.f31553a, this.f31555c, this.f31554b, this.f31556d, this.f31557e, this.f31558f, this.f31559g, this.f31560h, this.f31561i, this.f31562j);
        }

        @NonNull
        public C0838a b(@Nullable C3544l c3544l) {
            this.f31553a = c3544l;
            return this;
        }

        @NonNull
        public C0838a c(@Nullable C3546n c3546n) {
            this.f31561i = c3546n;
            return this;
        }

        @NonNull
        public C0838a d(@Nullable C3554w c3554w) {
            this.f31554b = c3554w;
            return this;
        }

        public C0838a(@Nullable C3533a c3533a) {
            if (c3533a != null) {
                this.f31553a = c3533a.n();
                this.f31554b = c3533a.t();
                this.f31555c = c3533a.b0();
                this.f31556d = c3533a.u0();
                this.f31557e = c3533a.v0();
                this.f31558f = c3533a.w0();
                this.f31559g = c3533a.n0();
                this.f31560h = c3533a.y0();
                this.f31561i = c3533a.x0();
                this.f31562j = c3533a.z0();
            }
        }
    }

    @c.b
    public C3533a(@Nullable @c.e(id = 2) C3544l c3544l, @Nullable @c.e(id = 3) n0 n0Var, @Nullable @c.e(id = 4) C3554w c3554w, @Nullable @c.e(id = 5) t0 t0Var, @Nullable @c.e(id = 6) B b10, @Nullable @c.e(id = 7) D d10, @Nullable @c.e(id = 8) p0 p0Var, @Nullable @c.e(id = 9) G g10, @Nullable @c.e(id = 10) C3546n c3546n, @Nullable @c.e(id = 11) I i10) {
        this.f31543b = c3544l;
        this.f31545d = c3554w;
        this.f31544c = n0Var;
        this.f31546e = t0Var;
        this.f31547f = b10;
        this.f31548g = d10;
        this.f31549h = p0Var;
        this.f31550i = g10;
        this.f31551j = c3546n;
        this.f31552k = i10;
    }

    @Nullable
    public final n0 b0() {
        return this.f31544c;
    }

    public boolean equals(@NonNull Object obj) {
        if (!(obj instanceof C3533a)) {
            return false;
        }
        C3533a c3533a = (C3533a) obj;
        return C2601y.b(this.f31543b, c3533a.f31543b) && C2601y.b(this.f31544c, c3533a.f31544c) && C2601y.b(this.f31545d, c3533a.f31545d) && C2601y.b(this.f31546e, c3533a.f31546e) && C2601y.b(this.f31547f, c3533a.f31547f) && C2601y.b(this.f31548g, c3533a.f31548g) && C2601y.b(this.f31549h, c3533a.f31549h) && C2601y.b(this.f31550i, c3533a.f31550i) && C2601y.b(this.f31551j, c3533a.f31551j) && C2601y.b(this.f31552k, c3533a.f31552k);
    }

    public int hashCode() {
        return C2601y.c(this.f31543b, this.f31544c, this.f31545d, this.f31546e, this.f31547f, this.f31548g, this.f31549h, this.f31550i, this.f31551j, this.f31552k);
    }

    @Nullable
    public C3544l n() {
        return this.f31543b;
    }

    @Nullable
    public final p0 n0() {
        return this.f31549h;
    }

    @Nullable
    public C3554w t() {
        return this.f31545d;
    }

    @Nullable
    public final t0 u0() {
        return this.f31546e;
    }

    @Nullable
    public final B v0() {
        return this.f31547f;
    }

    @Nullable
    public final D w0() {
        return this.f31548g;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.S(parcel, 2, n(), i10, false);
        I0.b.S(parcel, 3, this.f31544c, i10, false);
        I0.b.S(parcel, 4, t(), i10, false);
        I0.b.S(parcel, 5, this.f31546e, i10, false);
        I0.b.S(parcel, 6, this.f31547f, i10, false);
        I0.b.S(parcel, 7, this.f31548g, i10, false);
        I0.b.S(parcel, 8, this.f31549h, i10, false);
        I0.b.S(parcel, 9, this.f31550i, i10, false);
        I0.b.S(parcel, 10, this.f31551j, i10, false);
        I0.b.S(parcel, 11, this.f31552k, i10, false);
        I0.b.b(parcel, a10);
    }

    @Nullable
    public final C3546n x0() {
        return this.f31551j;
    }

    @Nullable
    public final G y0() {
        return this.f31550i;
    }

    @Nullable
    public final I z0() {
        return this.f31552k;
    }
}
