package com.google.android.gms.auth.api.identity;

import G0.C2601y;
import I0.c;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.ArrayList;
import java.util.List;

@c.a(creator = "SaveAccountLinkingTokenRequestCreator")
public class SaveAccountLinkingTokenRequest extends I0.a implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<SaveAccountLinkingTokenRequest> CREATOR = new H();

    @NonNull
    public static final String f60867h = "auth_code";

    @NonNull
    public static final String f60868i = "extra_token";

    @c.InterfaceC0186c(getter = "getConsentPendingIntent", id = 1)
    public final PendingIntent f60869b;

    @c.InterfaceC0186c(getter = "getTokenType", id = 2)
    public final String f60870c;

    @c.InterfaceC0186c(getter = "getServiceId", id = 3)
    public final String f60871d;

    @c.InterfaceC0186c(getter = "getScopes", id = 4)
    public final List f60872e;

    @Nullable
    @c.InterfaceC0186c(getter = "getSessionId", id = 5)
    public final String f60873f;

    @c.InterfaceC0186c(getter = "getTheme", id = 6)
    public final int f60874g;

    public static final class a {

        public PendingIntent f60875a;

        public String f60876b;

        public String f60877c;

        public List f60878d = new ArrayList();

        public String f60879e;

        public int f60880f;

        @NonNull
        public SaveAccountLinkingTokenRequest a() {
            G0.A.b(this.f60875a != null, "Consent PendingIntent cannot be null");
            G0.A.b(SaveAccountLinkingTokenRequest.f60867h.equals(this.f60876b), "Invalid tokenType");
            G0.A.b(!TextUtils.isEmpty(this.f60877c), "serviceId cannot be null or empty");
            G0.A.b(this.f60878d != null, "scopes cannot be null");
            return new SaveAccountLinkingTokenRequest(this.f60875a, this.f60876b, this.f60877c, this.f60878d, this.f60879e, this.f60880f);
        }

        @NonNull
        public a b(@NonNull PendingIntent pendingIntent) {
            this.f60875a = pendingIntent;
            return this;
        }

        @NonNull
        public a c(@NonNull List<String> list) {
            this.f60878d = list;
            return this;
        }

        @NonNull
        public a d(@NonNull String str) {
            this.f60877c = str;
            return this;
        }

        @NonNull
        public a e(@NonNull String str) {
            this.f60876b = str;
            return this;
        }

        @NonNull
        public final a f(@NonNull String str) {
            this.f60879e = str;
            return this;
        }

        @NonNull
        public final a g(int i10) {
            this.f60880f = i10;
            return this;
        }
    }

    @c.b
    public SaveAccountLinkingTokenRequest(@c.e(id = 1) PendingIntent pendingIntent, @c.e(id = 2) String str, @c.e(id = 3) String str2, @c.e(id = 4) List list, @Nullable @c.e(id = 5) String str3, @c.e(id = 6) int i10) {
        this.f60869b = pendingIntent;
        this.f60870c = str;
        this.f60871d = str2;
        this.f60872e = list;
        this.f60873f = str3;
        this.f60874g = i10;
    }

    @NonNull
    public static a n() {
        return new a();
    }

    @NonNull
    public static a v0(@NonNull SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest) {
        G0.A.r(saveAccountLinkingTokenRequest);
        a n10 = n();
        n10.c(saveAccountLinkingTokenRequest.b0());
        n10.d(saveAccountLinkingTokenRequest.n0());
        n10.b(saveAccountLinkingTokenRequest.t());
        n10.e(saveAccountLinkingTokenRequest.u0());
        n10.g(saveAccountLinkingTokenRequest.f60874g);
        String str = saveAccountLinkingTokenRequest.f60873f;
        if (!TextUtils.isEmpty(str)) {
            n10.f(str);
        }
        return n10;
    }

    @NonNull
    public List<String> b0() {
        return this.f60872e;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof SaveAccountLinkingTokenRequest)) {
            return false;
        }
        SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest = (SaveAccountLinkingTokenRequest) obj;
        List list = this.f60872e;
        int size = list.size();
        List list2 = saveAccountLinkingTokenRequest.f60872e;
        return size == list2.size() && list.containsAll(list2) && C2601y.b(this.f60869b, saveAccountLinkingTokenRequest.f60869b) && C2601y.b(this.f60870c, saveAccountLinkingTokenRequest.f60870c) && C2601y.b(this.f60871d, saveAccountLinkingTokenRequest.f60871d) && C2601y.b(this.f60873f, saveAccountLinkingTokenRequest.f60873f) && this.f60874g == saveAccountLinkingTokenRequest.f60874g;
    }

    public int hashCode() {
        return C2601y.c(this.f60869b, this.f60870c, this.f60871d, this.f60872e, this.f60873f);
    }

    @NonNull
    public String n0() {
        return this.f60871d;
    }

    @NonNull
    public PendingIntent t() {
        return this.f60869b;
    }

    @NonNull
    public String u0() {
        return this.f60870c;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.S(parcel, 1, t(), i10, false);
        I0.b.Y(parcel, 2, u0(), false);
        I0.b.Y(parcel, 3, n0(), false);
        I0.b.a0(parcel, 4, b0(), false);
        I0.b.Y(parcel, 5, this.f60873f, false);
        I0.b.F(parcel, 6, this.f60874g);
        I0.b.b(parcel, a10);
    }
}
