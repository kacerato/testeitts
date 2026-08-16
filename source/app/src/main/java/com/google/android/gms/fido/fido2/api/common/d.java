package com.google.android.gms.fido.fido2.api.common;

import G0.A;
import G0.C2601y;
import I0.c;
import a1.AbstractC3553v;
import a1.C3533a;
import a1.C3550s;
import a1.C3551t;
import a1.K;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.fido.fido2.api.common.AttestationConveyancePreference;
import java.util.Arrays;
import java.util.List;

@c.g({1})
@c.a(creator = "PublicKeyCredentialCreationOptionsCreator")
public class d extends AbstractC3553v {

    @NonNull
    public static final Parcelable.Creator<d> CREATOR = new K();

    @NonNull
    @c.InterfaceC0186c(getter = "getRp", id = 2)
    public final C3550s f61478b;

    @NonNull
    @c.InterfaceC0186c(getter = "getUser", id = 3)
    public final C3551t f61479c;

    @NonNull
    @c.InterfaceC0186c(getter = "getChallenge", id = 4)
    public final byte[] f61480d;

    @NonNull
    @c.InterfaceC0186c(getter = "getParameters", id = 5)
    public final List f61481e;

    @Nullable
    @c.InterfaceC0186c(getter = "getTimeoutSeconds", id = 6)
    public final Double f61482f;

    @Nullable
    @c.InterfaceC0186c(getter = "getExcludeList", id = 7)
    public final List f61483g;

    @Nullable
    @c.InterfaceC0186c(getter = "getAuthenticatorSelection", id = 8)
    public final c f61484h;

    @Nullable
    @c.InterfaceC0186c(getter = "getRequestId", id = 9)
    public final Integer f61485i;

    @Nullable
    @c.InterfaceC0186c(getter = "getTokenBinding", id = 10)
    public final TokenBinding f61486j;

    @Nullable
    @c.InterfaceC0186c(getter = "getAttestationConveyancePreferenceAsString", id = 11, type = "java.lang.String")
    public final AttestationConveyancePreference f61487k;

    @Nullable
    @c.InterfaceC0186c(getter = "getAuthenticationExtensions", id = 12)
    public final C3533a f61488l;

    public static final class a {

        public C3550s f61489a;

        public C3551t f61490b;

        public byte[] f61491c;

        public List f61492d;

        public Double f61493e;

        public List f61494f;

        public c f61495g;

        public Integer f61496h;

        public TokenBinding f61497i;

        public AttestationConveyancePreference f61498j;

        public C3533a f61499k;

        @NonNull
        public d a() {
            C3550s c3550s = this.f61489a;
            C3551t c3551t = this.f61490b;
            byte[] bArr = this.f61491c;
            List list = this.f61492d;
            Double d10 = this.f61493e;
            List list2 = this.f61494f;
            c cVar = this.f61495g;
            Integer num = this.f61496h;
            TokenBinding tokenBinding = this.f61497i;
            AttestationConveyancePreference attestationConveyancePreference = this.f61498j;
            return new d(c3550s, c3551t, bArr, list, d10, list2, cVar, num, tokenBinding, attestationConveyancePreference == null ? null : attestationConveyancePreference.toString(), this.f61499k);
        }

        @NonNull
        public a b(@Nullable AttestationConveyancePreference attestationConveyancePreference) {
            this.f61498j = attestationConveyancePreference;
            return this;
        }

        @NonNull
        public a c(@Nullable C3533a c3533a) {
            this.f61499k = c3533a;
            return this;
        }

        @NonNull
        public a d(@Nullable c cVar) {
            this.f61495g = cVar;
            return this;
        }

        @NonNull
        public a e(@NonNull byte[] bArr) {
            this.f61491c = (byte[]) A.r(bArr);
            return this;
        }

        @NonNull
        public a f(@Nullable List<PublicKeyCredentialDescriptor> list) {
            this.f61494f = list;
            return this;
        }

        @NonNull
        public a g(@NonNull List<e> list) {
            this.f61492d = (List) A.r(list);
            return this;
        }

        @NonNull
        public a h(@Nullable Integer num) {
            this.f61496h = num;
            return this;
        }

        @NonNull
        public a i(@NonNull C3550s c3550s) {
            this.f61489a = (C3550s) A.r(c3550s);
            return this;
        }

        @NonNull
        public a j(@Nullable Double d10) {
            this.f61493e = d10;
            return this;
        }

        @NonNull
        public a k(@Nullable TokenBinding tokenBinding) {
            this.f61497i = tokenBinding;
            return this;
        }

        @NonNull
        public a l(@NonNull C3551t c3551t) {
            this.f61490b = (C3551t) A.r(c3551t);
            return this;
        }
    }

    @c.b
    public d(@NonNull @c.e(id = 2) C3550s c3550s, @NonNull @c.e(id = 3) C3551t c3551t, @NonNull @c.e(id = 4) byte[] bArr, @NonNull @c.e(id = 5) List list, @Nullable @c.e(id = 6) Double d10, @Nullable @c.e(id = 7) List list2, @Nullable @c.e(id = 8) c cVar, @Nullable @c.e(id = 9) Integer num, @Nullable @c.e(id = 10) TokenBinding tokenBinding, @Nullable @c.e(id = 11) String str, @Nullable @c.e(id = 12) C3533a c3533a) {
        this.f61478b = (C3550s) A.r(c3550s);
        this.f61479c = (C3551t) A.r(c3551t);
        this.f61480d = (byte[]) A.r(bArr);
        this.f61481e = (List) A.r(list);
        this.f61482f = d10;
        this.f61483g = list2;
        this.f61484h = cVar;
        this.f61485i = num;
        this.f61486j = tokenBinding;
        if (str != null) {
            try {
                this.f61487k = AttestationConveyancePreference.b(str);
            } catch (AttestationConveyancePreference.UnsupportedAttestationConveyancePreferenceException e10) {
                throw new IllegalArgumentException(e10);
            }
        } else {
            this.f61487k = null;
        }
        this.f61488l = c3533a;
    }

    @NonNull
    public static d w0(@NonNull byte[] bArr) {
        return (d) I0.d.a(bArr, CREATOR);
    }

    @Nullable
    public List<PublicKeyCredentialDescriptor> A0() {
        return this.f61483g;
    }

    @NonNull
    public List<e> B0() {
        return this.f61481e;
    }

    @NonNull
    public C3550s C0() {
        return this.f61478b;
    }

    @NonNull
    public C3551t D0() {
        return this.f61479c;
    }

    @Override
    @Nullable
    public Integer b0() {
        return this.f61485i;
    }

    public boolean equals(@NonNull Object obj) {
        List list;
        List list2;
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return C2601y.b(this.f61478b, dVar.f61478b) && C2601y.b(this.f61479c, dVar.f61479c) && Arrays.equals(this.f61480d, dVar.f61480d) && C2601y.b(this.f61482f, dVar.f61482f) && this.f61481e.containsAll(dVar.f61481e) && dVar.f61481e.containsAll(this.f61481e) && (((list = this.f61483g) == null && dVar.f61483g == null) || (list != null && (list2 = dVar.f61483g) != null && list.containsAll(list2) && dVar.f61483g.containsAll(this.f61483g))) && C2601y.b(this.f61484h, dVar.f61484h) && C2601y.b(this.f61485i, dVar.f61485i) && C2601y.b(this.f61486j, dVar.f61486j) && C2601y.b(this.f61487k, dVar.f61487k) && C2601y.b(this.f61488l, dVar.f61488l);
    }

    public int hashCode() {
        return C2601y.c(this.f61478b, this.f61479c, Integer.valueOf(Arrays.hashCode(this.f61480d)), this.f61481e, this.f61482f, this.f61483g, this.f61484h, this.f61485i, this.f61486j, this.f61487k, this.f61488l);
    }

    @Override
    @Nullable
    public C3533a n() {
        return this.f61488l;
    }

    @Override
    @Nullable
    public Double n0() {
        return this.f61482f;
    }

    @Override
    @NonNull
    public byte[] t() {
        return this.f61480d;
    }

    @Override
    @Nullable
    public TokenBinding u0() {
        return this.f61486j;
    }

    @Override
    @NonNull
    public byte[] v0() {
        return I0.d.n(this);
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.S(parcel, 2, C0(), i10, false);
        I0.b.S(parcel, 3, D0(), i10, false);
        I0.b.m(parcel, 4, t(), false);
        I0.b.d0(parcel, 5, B0(), false);
        I0.b.u(parcel, 6, n0(), false);
        I0.b.d0(parcel, 7, A0(), false);
        I0.b.S(parcel, 8, z0(), i10, false);
        I0.b.I(parcel, 9, b0(), false);
        I0.b.S(parcel, 10, u0(), i10, false);
        I0.b.Y(parcel, 11, y0(), false);
        I0.b.S(parcel, 12, n(), i10, false);
        I0.b.b(parcel, a10);
    }

    @Nullable
    public AttestationConveyancePreference x0() {
        return this.f61487k;
    }

    @Nullable
    public String y0() {
        AttestationConveyancePreference attestationConveyancePreference = this.f61487k;
        if (attestationConveyancePreference == null) {
            return null;
        }
        return attestationConveyancePreference.toString();
    }

    @Nullable
    public c z0() {
        return this.f61484h;
    }
}
