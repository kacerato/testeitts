package com.google.android.gms.auth.api.identity;

import G0.C2601y;
import I0.c;
import android.accounts.Account;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.List;

@c.a(creator = "AuthorizationRequestCreator")
public class AuthorizationRequest extends I0.a implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<AuthorizationRequest> CREATOR = new q();

    @c.InterfaceC0186c(getter = "getRequestedScopes", id = 1)
    public final List f60842b;

    @Nullable
    @c.InterfaceC0186c(getter = "getServerClientId", id = 2)
    public final String f60843c;

    @c.InterfaceC0186c(getter = "isOfflineAccessRequested", id = 3)
    public final boolean f60844d;

    @c.InterfaceC0186c(getter = "isIdTokenRequested", id = 4)
    public final boolean f60845e;

    @Nullable
    @c.InterfaceC0186c(getter = "getAccount", id = 5)
    public final Account f60846f;

    @Nullable
    @c.InterfaceC0186c(getter = "getHostedDomain", id = 6)
    public final String f60847g;

    @Nullable
    @c.InterfaceC0186c(getter = "getSessionId", id = 7)
    public final String f60848h;

    @c.InterfaceC0186c(getter = "isForceCodeForRefreshToken", id = 8)
    public final boolean f60849i;

    @Nullable
    @c.InterfaceC0186c(getter = "getResourceParameters", id = 9)
    public final Bundle f60850j;

    @c.InterfaceC0186c(defaultValue = "false", getter = "getOptOutIncludingGrantedScopes", id = 10)
    public final boolean f60851k;

    public static final class a {

        public List f60852a;

        @Nullable
        public String f60853b;

        public boolean f60854c;

        public boolean f60855d;

        @Nullable
        public Account f60856e;

        @Nullable
        public String f60857f;

        @Nullable
        public String f60858g;

        public boolean f60859h;

        @Nullable
        public Bundle f60860i;

        public boolean f60861j;

        @NonNull
        public a a(@NonNull b bVar, @NonNull String str) {
            G0.A.s(bVar, "Resource parameter cannot be null");
            G0.A.s(str, "Resource parameter value cannot be null");
            if (this.f60860i == null) {
                this.f60860i = new Bundle();
            }
            this.f60860i.putString(bVar.zba, str);
            return this;
        }

        @NonNull
        public AuthorizationRequest b() {
            return new AuthorizationRequest(this.f60852a, this.f60853b, this.f60854c, this.f60855d, this.f60856e, this.f60857f, this.f60858g, this.f60859h, this.f60860i, this.f60861j);
        }

        @NonNull
        public a c(@NonNull String str) {
            this.f60857f = G0.A.l(str);
            return this;
        }

        @NonNull
        public a d(@NonNull String str) {
            e(str, false);
            return this;
        }

        @NonNull
        public a e(@NonNull String str, boolean z10) {
            k(str);
            this.f60853b = str;
            this.f60854c = true;
            this.f60859h = z10;
            return this;
        }

        @NonNull
        public a f(@NonNull Account account) {
            this.f60856e = (Account) G0.A.r(account);
            return this;
        }

        @NonNull
        public a g(boolean z10) {
            this.f60861j = z10;
            return this;
        }

        @NonNull
        public a h(@NonNull List<Scope> list) {
            boolean z10 = false;
            if (list != null && !list.isEmpty()) {
                z10 = true;
            }
            G0.A.b(z10, "requestedScopes cannot be null or empty");
            this.f60852a = list;
            return this;
        }

        @G0.F
        @NonNull
        public final a i(@NonNull String str) {
            k(str);
            this.f60853b = str;
            this.f60855d = true;
            return this;
        }

        @NonNull
        public final a j(@NonNull String str) {
            this.f60858g = str;
            return this;
        }

        public final String k(String str) {
            G0.A.r(str);
            String str2 = this.f60853b;
            boolean z10 = true;
            if (str2 != null && !str2.equals(str)) {
                z10 = false;
            }
            G0.A.b(z10, "two different server client ids provided");
            return str;
        }
    }

    public enum b {
        ACCOUNT_SELECTION_TOKEN("account_selection_token"),
        ACCOUNT_SELECTION_STATE("account_selection_state"),
        PICKER_ALLOW_MULTIPLE("allow_multiple"),
        PICKER_MIMETYPES("mimetypes"),
        PICKER_FILE_IDS("file_ids"),
        PICKER_OAUTH_TRIGGER("trigger_onepick");

        final String zba;

        b(String str) {
            this.zba = str;
        }
    }

    @c.b
    public AuthorizationRequest(@c.e(id = 1) List list, @Nullable @c.e(id = 2) String str, @c.e(id = 3) boolean z10, @c.e(id = 4) boolean z11, @Nullable @c.e(id = 5) Account account, @Nullable @c.e(id = 6) String str2, @Nullable @c.e(id = 7) String str3, @c.e(id = 8) boolean z12, @Nullable @c.e(id = 9) Bundle bundle, @c.e(id = 10) boolean z13) {
        boolean z14 = false;
        if (list != null && !list.isEmpty()) {
            z14 = true;
        }
        G0.A.b(z14, "requestedScopes cannot be null or empty");
        this.f60842b = list;
        this.f60843c = str;
        this.f60844d = z10;
        this.f60845e = z11;
        this.f60846f = account;
        this.f60847g = str2;
        this.f60848h = str3;
        this.f60849i = z12;
        this.f60850j = bundle;
        this.f60851k = z13;
    }

    @NonNull
    public static a n() {
        return new a();
    }

    @NonNull
    public static a z0(@NonNull AuthorizationRequest authorizationRequest) {
        b bVar;
        G0.A.r(authorizationRequest);
        a n10 = n();
        n10.h(authorizationRequest.n0());
        Bundle v02 = authorizationRequest.v0();
        if (v02 != null) {
            for (String str : v02.keySet()) {
                String string = v02.getString(str);
                b[] values = b.values();
                int length = values.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        bVar = null;
                        break;
                    }
                    bVar = values[i10];
                    if (bVar.zba.equals(str)) {
                        break;
                    }
                    i10++;
                }
                if (string != null && bVar != null) {
                    n10.a(bVar, string);
                }
            }
        }
        boolean x02 = authorizationRequest.x0();
        String str2 = authorizationRequest.f60848h;
        String t10 = authorizationRequest.t();
        Account h10 = authorizationRequest.h();
        String w02 = authorizationRequest.w0();
        if (str2 != null) {
            n10.j(str2);
        }
        if (t10 != null) {
            n10.c(t10);
        }
        if (h10 != null) {
            n10.f(h10);
        }
        if (authorizationRequest.f60845e && w02 != null) {
            n10.i(w02);
        }
        if (authorizationRequest.y0() && w02 != null) {
            n10.e(w02, x02);
        }
        n10.g(authorizationRequest.f60851k);
        return n10;
    }

    public boolean b0() {
        return this.f60851k;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof AuthorizationRequest)) {
            return false;
        }
        AuthorizationRequest authorizationRequest = (AuthorizationRequest) obj;
        List list = this.f60842b;
        int size = list.size();
        List list2 = authorizationRequest.f60842b;
        if (size == list2.size() && list.containsAll(list2)) {
            Bundle bundle = authorizationRequest.f60850j;
            Bundle bundle2 = this.f60850j;
            if (bundle2 == null) {
                if (bundle == null) {
                    bundle = null;
                }
                return false;
            }
            if (bundle2 == null || bundle != null) {
                if (bundle2 != null) {
                    if (bundle2.size() != bundle.size()) {
                        return false;
                    }
                    for (String str : bundle2.keySet()) {
                        if (!C2601y.b(bundle2.getString(str), bundle.getString(str))) {
                            return false;
                        }
                    }
                }
                if (this.f60844d == authorizationRequest.f60844d && this.f60849i == authorizationRequest.f60849i && this.f60845e == authorizationRequest.f60845e && this.f60851k == authorizationRequest.f60851k && C2601y.b(this.f60843c, authorizationRequest.f60843c) && C2601y.b(this.f60846f, authorizationRequest.f60846f) && C2601y.b(this.f60847g, authorizationRequest.f60847g) && C2601y.b(this.f60848h, authorizationRequest.f60848h)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Nullable
    public Account h() {
        return this.f60846f;
    }

    public int hashCode() {
        return C2601y.c(this.f60842b, this.f60843c, Boolean.valueOf(this.f60844d), Boolean.valueOf(this.f60849i), Boolean.valueOf(this.f60845e), this.f60846f, this.f60847g, this.f60848h, this.f60850j, Boolean.valueOf(this.f60851k));
    }

    @NonNull
    public List<Scope> n0() {
        return this.f60842b;
    }

    @Nullable
    public String t() {
        return this.f60847g;
    }

    @Nullable
    public String u0(@NonNull b bVar) {
        Bundle bundle = this.f60850j;
        if (bundle == null) {
            return null;
        }
        return bundle.getString(bVar.zba);
    }

    @Nullable
    public Bundle v0() {
        return this.f60850j;
    }

    @Nullable
    public String w0() {
        return this.f60843c;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.d0(parcel, 1, n0(), false);
        I0.b.Y(parcel, 2, w0(), false);
        I0.b.g(parcel, 3, y0());
        I0.b.g(parcel, 4, this.f60845e);
        I0.b.S(parcel, 5, h(), i10, false);
        I0.b.Y(parcel, 6, t(), false);
        I0.b.Y(parcel, 7, this.f60848h, false);
        I0.b.g(parcel, 8, x0());
        I0.b.k(parcel, 9, v0(), false);
        I0.b.g(parcel, 10, b0());
        I0.b.b(parcel, a10);
    }

    public boolean x0() {
        return this.f60849i;
    }

    public boolean y0() {
        return this.f60844d;
    }
}
