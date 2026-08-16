package com.google.android.gms.auth.api.identity;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

@c.a(creator = "BeginSignInRequestCreator")
@Deprecated
public final class C11882c extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C11882c> CREATOR = new v();

    @c.InterfaceC0186c(getter = "getPasswordRequestOptions", id = 1)
    public final e f60887b;

    @c.InterfaceC0186c(getter = "getGoogleIdTokenRequestOptions", id = 2)
    public final b f60888c;

    @Nullable
    @c.InterfaceC0186c(getter = "getSessionId", id = 3)
    public final String f60889d;

    @c.InterfaceC0186c(getter = "isAutoSelectEnabled", id = 4)
    public final boolean f60890e;

    @c.InterfaceC0186c(getter = "getTheme", id = 5)
    public final int f60891f;

    @c.InterfaceC0186c(getter = "getPasskeysRequestOptions", id = 6)
    public final d f60892g;

    @c.InterfaceC0186c(getter = "getPasskeyJsonRequestOptions", id = 7)
    public final C0947c f60893h;

    @c.InterfaceC0186c(defaultValue = "false", getter = "getPreferImmediatelyAvailableCredentials", id = 8)
    public final boolean f60894i;

    @Deprecated
    public static final class a {

        public e f60895a;

        public b f60896b;

        public d f60897c;

        public C0947c f60898d;

        @Nullable
        public String f60899e;

        public boolean f60900f;

        public int f60901g;

        public boolean f60902h;

        public a() {
            e.a n10 = e.n();
            n10.b(false);
            this.f60895a = n10.a();
            b.a n11 = b.n();
            n11.h(false);
            this.f60896b = n11.b();
            d.a n12 = d.n();
            n12.d(false);
            this.f60897c = n12.a();
            C0947c.a n13 = C0947c.n();
            n13.c(false);
            this.f60898d = n13.a();
        }

        @NonNull
        public C11882c a() {
            return new C11882c(this.f60895a, this.f60896b, this.f60899e, this.f60900f, this.f60901g, this.f60897c, this.f60898d, this.f60902h);
        }

        @NonNull
        public a b(boolean z10) {
            this.f60900f = z10;
            return this;
        }

        @NonNull
        public a c(@NonNull b bVar) {
            this.f60896b = (b) G0.A.r(bVar);
            return this;
        }

        @NonNull
        public a d(@NonNull C0947c c0947c) {
            this.f60898d = (C0947c) G0.A.r(c0947c);
            return this;
        }

        @NonNull
        @Deprecated
        public a e(@NonNull d dVar) {
            this.f60897c = (d) G0.A.r(dVar);
            return this;
        }

        @NonNull
        public a f(@NonNull e eVar) {
            this.f60895a = (e) G0.A.r(eVar);
            return this;
        }

        @NonNull
        public a g(boolean z10) {
            this.f60902h = z10;
            return this;
        }

        @NonNull
        public final a h(@NonNull String str) {
            this.f60899e = str;
            return this;
        }

        @NonNull
        public final a i(int i10) {
            this.f60901g = i10;
            return this;
        }
    }

    @c.a(creator = "GoogleIdTokenRequestOptionsCreator")
    @Deprecated
    public static final class b extends I0.a {

        @NonNull
        public static final Parcelable.Creator<b> CREATOR = new C();

        @c.InterfaceC0186c(getter = "isSupported", id = 1)
        public final boolean f60903b;

        @Nullable
        @c.InterfaceC0186c(getter = "getServerClientId", id = 2)
        public final String f60904c;

        @Nullable
        @c.InterfaceC0186c(getter = "getNonce", id = 3)
        public final String f60905d;

        @c.InterfaceC0186c(getter = "filterByAuthorizedAccounts", id = 4)
        public final boolean f60906e;

        @Nullable
        @c.InterfaceC0186c(getter = "getLinkedServiceId", id = 5)
        public final String f60907f;

        @Nullable
        @c.InterfaceC0186c(getter = "getIdTokenDepositionScopes", id = 6)
        public final List f60908g;

        @c.InterfaceC0186c(getter = "requestVerifiedPhoneNumber", id = 7)
        public final boolean f60909h;

        @Nullable
        @c.InterfaceC0186c(getter = "getClaims", id = 8)
        public final List f60910i;

        public static final class a {

            public boolean f60911a = false;

            @Nullable
            public String f60912b = null;

            @Nullable
            public String f60913c = null;

            public boolean f60914d = true;

            @Nullable
            public String f60915e = null;

            @Nullable
            public List f60916f = null;

            public boolean f60917g = false;

            @Nullable
            public List f60918h = null;

            @NonNull
            public a a(@NonNull String str, @Nullable List<String> list) {
                this.f60915e = (String) G0.A.s(str, "linkedServiceId must be provided if you want to associate linked accounts.");
                this.f60916f = list;
                return this;
            }

            @NonNull
            public b b() {
                return new b(this.f60911a, this.f60912b, this.f60913c, this.f60914d, this.f60915e, this.f60916f, this.f60917g, this.f60918h);
            }

            @NonNull
            public a c(@Nullable List<C11884e> list) {
                this.f60918h = list;
                return this;
            }

            @NonNull
            public a d(boolean z10) {
                this.f60914d = z10;
                return this;
            }

            @NonNull
            public a e(@Nullable String str) {
                this.f60913c = str;
                return this;
            }

            @NonNull
            @Deprecated
            public a f(boolean z10) {
                this.f60917g = z10;
                return this;
            }

            @NonNull
            public a g(@NonNull String str) {
                this.f60912b = G0.A.l(str);
                return this;
            }

            @NonNull
            public a h(boolean z10) {
                this.f60911a = z10;
                return this;
            }
        }

        @c.b
        public b(@c.e(id = 1) boolean z10, @Nullable @c.e(id = 2) String str, @Nullable @c.e(id = 3) String str2, @c.e(id = 4) boolean z11, @Nullable @c.e(id = 5) String str3, @Nullable @c.e(id = 6) List list, @c.e(id = 7) boolean z12, @Nullable @c.e(id = 8) List list2) {
            boolean z13 = true;
            if (z11 && z12) {
                z13 = false;
            }
            G0.A.b(z13, "filterByAuthorizedAccounts and requestVerifiedPhoneNumber must not both be true; the Verified Phone Number feature only works in sign-ups.");
            this.f60903b = z10;
            if (z10) {
                G0.A.s(str, "serverClientId must be provided if Google ID tokens are requested");
            }
            this.f60904c = str;
            this.f60905d = str2;
            this.f60906e = z11;
            Parcelable.Creator<C11882c> creator = C11882c.CREATOR;
            ArrayList arrayList = null;
            if (list != null && !list.isEmpty()) {
                arrayList = new ArrayList(list);
                Collections.sort(arrayList);
            }
            this.f60908g = arrayList;
            this.f60907f = str3;
            this.f60909h = z12;
            this.f60910i = list2;
        }

        @NonNull
        public static a n() {
            return new a();
        }

        @Nullable
        public List<C11884e> b0() {
            return this.f60910i;
        }

        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f60903b == bVar.f60903b && C2601y.b(this.f60904c, bVar.f60904c) && C2601y.b(this.f60905d, bVar.f60905d) && this.f60906e == bVar.f60906e && C2601y.b(this.f60907f, bVar.f60907f) && C2601y.b(this.f60908g, bVar.f60908g) && this.f60909h == bVar.f60909h && C2601y.b(this.f60910i, bVar.f60910i);
        }

        public int hashCode() {
            return C2601y.c(Boolean.valueOf(this.f60903b), this.f60904c, this.f60905d, Boolean.valueOf(this.f60906e), this.f60907f, this.f60908g, Boolean.valueOf(this.f60909h), this.f60910i);
        }

        @Nullable
        public List<String> n0() {
            return this.f60908g;
        }

        public boolean t() {
            return this.f60906e;
        }

        @Nullable
        public String u0() {
            return this.f60907f;
        }

        @Nullable
        public String v0() {
            return this.f60905d;
        }

        @Nullable
        public String w0() {
            return this.f60904c;
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            int a10 = I0.b.a(parcel);
            I0.b.g(parcel, 1, x0());
            I0.b.Y(parcel, 2, w0(), false);
            I0.b.Y(parcel, 3, v0(), false);
            I0.b.g(parcel, 4, t());
            I0.b.Y(parcel, 5, u0(), false);
            I0.b.a0(parcel, 6, n0(), false);
            I0.b.g(parcel, 7, y0());
            I0.b.d0(parcel, 8, b0(), false);
            I0.b.b(parcel, a10);
        }

        public boolean x0() {
            return this.f60903b;
        }

        @Deprecated
        public boolean y0() {
            return this.f60909h;
        }
    }

    @c.a(creator = "PasskeyJsonRequestOptionsCreator")
    @Deprecated
    public static final class C0947c extends I0.a {

        @NonNull
        public static final Parcelable.Creator<C0947c> CREATOR = new D();

        @c.InterfaceC0186c(getter = "isSupported", id = 1)
        public final boolean f60919b;

        @c.InterfaceC0186c(getter = "getRequestJson", id = 2)
        public final String f60920c;

        public static final class a {

            public boolean f60921a = false;

            public String f60922b;

            @NonNull
            public C0947c a() {
                return new C0947c(this.f60921a, this.f60922b);
            }

            @NonNull
            public a b(@NonNull String str) {
                this.f60922b = str;
                return this;
            }

            @NonNull
            public a c(boolean z10) {
                this.f60921a = z10;
                return this;
            }
        }

        @c.b
        public C0947c(@c.e(id = 1) boolean z10, @c.e(id = 2) String str) {
            if (z10) {
                G0.A.r(str);
            }
            this.f60919b = z10;
            this.f60920c = str;
        }

        @NonNull
        public static a n() {
            return new a();
        }

        public boolean b0() {
            return this.f60919b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0947c)) {
                return false;
            }
            C0947c c0947c = (C0947c) obj;
            return this.f60919b == c0947c.f60919b && C2601y.b(this.f60920c, c0947c.f60920c);
        }

        public int hashCode() {
            return C2601y.c(Boolean.valueOf(this.f60919b), this.f60920c);
        }

        @NonNull
        public String t() {
            return this.f60920c;
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            int a10 = I0.b.a(parcel);
            I0.b.g(parcel, 1, b0());
            I0.b.Y(parcel, 2, t(), false);
            I0.b.b(parcel, a10);
        }
    }

    @c.a(creator = "PasskeysRequestOptionsCreator")
    @Deprecated
    public static final class d extends I0.a {

        @NonNull
        public static final Parcelable.Creator<d> CREATOR = new E();

        @c.InterfaceC0186c(getter = "isSupported", id = 1)
        public final boolean f60923b;

        @c.InterfaceC0186c(getter = "getChallenge", id = 2)
        public final byte[] f60924c;

        @c.InterfaceC0186c(getter = "getRpId", id = 3)
        public final String f60925d;

        public static final class a {

            public boolean f60926a = false;

            public byte[] f60927b;

            public String f60928c;

            @NonNull
            public d a() {
                return new d(this.f60926a, this.f60927b, this.f60928c);
            }

            @NonNull
            public a b(@NonNull byte[] bArr) {
                this.f60927b = bArr;
                return this;
            }

            @NonNull
            public a c(@NonNull String str) {
                this.f60928c = str;
                return this;
            }

            @NonNull
            public a d(boolean z10) {
                this.f60926a = z10;
                return this;
            }
        }

        @c.b
        public d(@c.e(id = 1) boolean z10, @c.e(id = 2) byte[] bArr, @c.e(id = 3) String str) {
            if (z10) {
                G0.A.r(bArr);
                G0.A.r(str);
            }
            this.f60923b = z10;
            this.f60924c = bArr;
            this.f60925d = str;
        }

        @NonNull
        public static a n() {
            return new a();
        }

        @NonNull
        public String b0() {
            return this.f60925d;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.f60923b == dVar.f60923b && Arrays.equals(this.f60924c, dVar.f60924c) && Objects.equals(this.f60925d, dVar.f60925d);
        }

        public int hashCode() {
            return (Objects.hash(Boolean.valueOf(this.f60923b), this.f60925d) * 31) + Arrays.hashCode(this.f60924c);
        }

        public boolean n0() {
            return this.f60923b;
        }

        @NonNull
        public byte[] t() {
            return this.f60924c;
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            int a10 = I0.b.a(parcel);
            I0.b.g(parcel, 1, n0());
            I0.b.m(parcel, 2, t(), false);
            I0.b.Y(parcel, 3, b0(), false);
            I0.b.b(parcel, a10);
        }
    }

    @c.a(creator = "PasswordRequestOptionsCreator")
    @Deprecated
    public static final class e extends I0.a {

        @NonNull
        public static final Parcelable.Creator<e> CREATOR = new F();

        @c.InterfaceC0186c(getter = "isSupported", id = 1)
        public final boolean f60929b;

        public static final class a {

            public boolean f60930a = false;

            @NonNull
            public e a() {
                return new e(this.f60930a);
            }

            @NonNull
            public a b(boolean z10) {
                this.f60930a = z10;
                return this;
            }
        }

        @c.b
        public e(@c.e(id = 1) boolean z10) {
            this.f60929b = z10;
        }

        @NonNull
        public static a n() {
            return new a();
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof e) && this.f60929b == ((e) obj).f60929b;
        }

        public int hashCode() {
            return C2601y.c(Boolean.valueOf(this.f60929b));
        }

        public boolean t() {
            return this.f60929b;
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            int a10 = I0.b.a(parcel);
            I0.b.g(parcel, 1, t());
            I0.b.b(parcel, a10);
        }
    }

    @c.b
    public C11882c(@c.e(id = 1) e eVar, @c.e(id = 2) b bVar, @Nullable @c.e(id = 3) String str, @c.e(id = 4) boolean z10, @c.e(id = 5) int i10, @Nullable @c.e(id = 6) d dVar, @Nullable @c.e(id = 7) C0947c c0947c, @c.e(id = 8) boolean z11) {
        this.f60887b = (e) G0.A.r(eVar);
        this.f60888c = (b) G0.A.r(bVar);
        this.f60889d = str;
        this.f60890e = z10;
        this.f60891f = i10;
        if (dVar == null) {
            d.a n10 = d.n();
            n10.d(false);
            dVar = n10.a();
        }
        this.f60892g = dVar;
        if (c0947c == null) {
            C0947c.a n11 = C0947c.n();
            n11.c(false);
            c0947c = n11.a();
        }
        this.f60893h = c0947c;
        this.f60894i = z11;
    }

    @NonNull
    public static a n() {
        return new a();
    }

    @NonNull
    public static a x0(@NonNull C11882c c11882c) {
        G0.A.r(c11882c);
        a n10 = n();
        n10.c(c11882c.t());
        n10.f(c11882c.u0());
        n10.e(c11882c.n0());
        n10.d(c11882c.b0());
        n10.b(c11882c.f60890e);
        n10.i(c11882c.f60891f);
        n10.g(c11882c.f60894i);
        String str = c11882c.f60889d;
        if (str != null) {
            n10.h(str);
        }
        return n10;
    }

    @NonNull
    public C0947c b0() {
        return this.f60893h;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C11882c)) {
            return false;
        }
        C11882c c11882c = (C11882c) obj;
        return C2601y.b(this.f60887b, c11882c.f60887b) && C2601y.b(this.f60888c, c11882c.f60888c) && C2601y.b(this.f60892g, c11882c.f60892g) && C2601y.b(this.f60893h, c11882c.f60893h) && C2601y.b(this.f60889d, c11882c.f60889d) && this.f60890e == c11882c.f60890e && this.f60891f == c11882c.f60891f && this.f60894i == c11882c.f60894i;
    }

    public int hashCode() {
        return C2601y.c(this.f60887b, this.f60888c, this.f60892g, this.f60893h, this.f60889d, Boolean.valueOf(this.f60890e), Integer.valueOf(this.f60891f), Boolean.valueOf(this.f60894i));
    }

    @NonNull
    public d n0() {
        return this.f60892g;
    }

    @NonNull
    public b t() {
        return this.f60888c;
    }

    @NonNull
    public e u0() {
        return this.f60887b;
    }

    public boolean v0() {
        return this.f60894i;
    }

    public boolean w0() {
        return this.f60890e;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.S(parcel, 1, u0(), i10, false);
        I0.b.S(parcel, 2, t(), i10, false);
        I0.b.Y(parcel, 3, this.f60889d, false);
        I0.b.g(parcel, 4, w0());
        I0.b.F(parcel, 5, this.f60891f);
        I0.b.S(parcel, 6, n0(), i10, false);
        I0.b.S(parcel, 7, b0(), i10, false);
        I0.b.g(parcel, 8, v0());
        I0.b.b(parcel, a10);
    }
}
