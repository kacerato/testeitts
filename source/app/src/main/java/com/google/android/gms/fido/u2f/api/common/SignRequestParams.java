package com.google.android.gms.fido.u2f.api.common;

import G0.A;
import G0.C2601y;
import I0.c;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import c1.l;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@c.g({1})
@c.a(creator = "SignRequestParamsCreator")
@Deprecated
public class SignRequestParams extends RequestParams {

    @NonNull
    public static final Parcelable.Creator<SignRequestParams> CREATOR = new l();

    public static final int f61533j = 80;

    @c.InterfaceC0186c(getter = "getRequestId", id = 2)
    public final Integer f61534b;

    @Nullable
    @c.InterfaceC0186c(getter = "getTimeoutSeconds", id = 3)
    public final Double f61535c;

    @c.InterfaceC0186c(getter = "getAppId", id = 4)
    public final Uri f61536d;

    @c.InterfaceC0186c(getter = "getDefaultSignChallenge", id = 5)
    public final byte[] f61537e;

    @c.InterfaceC0186c(getter = "getRegisteredKeys", id = 6)
    public final List f61538f;

    @c.InterfaceC0186c(getter = "getChannelIdValue", id = 7)
    public final ChannelIdValue f61539g;

    @c.InterfaceC0186c(getter = "getDisplayHint", id = 8)
    public final String f61540h;

    public final Set f61541i;

    public static final class a {

        public Integer f61542a;

        @Nullable
        public Double f61543b;

        public Uri f61544c;

        public byte[] f61545d;

        public List f61546e;

        public ChannelIdValue f61547f;

        public String f61548g;

        @NonNull
        public SignRequestParams a() {
            return new SignRequestParams(this.f61542a, this.f61543b, this.f61544c, this.f61545d, this.f61546e, this.f61547f, this.f61548g);
        }

        @NonNull
        public a b(@NonNull Uri uri) {
            this.f61544c = uri;
            return this;
        }

        @NonNull
        public a c(@NonNull ChannelIdValue channelIdValue) {
            this.f61547f = channelIdValue;
            return this;
        }

        @NonNull
        public a d(@NonNull byte[] bArr) {
            this.f61545d = bArr;
            return this;
        }

        @NonNull
        public a e(@NonNull String str) {
            this.f61548g = str;
            return this;
        }

        @NonNull
        public a f(@NonNull List<c1.c> list) {
            this.f61546e = list;
            return this;
        }

        @NonNull
        public a g(@NonNull Integer num) {
            this.f61542a = num;
            return this;
        }

        @NonNull
        public a h(@Nullable Double d10) {
            this.f61543b = d10;
            return this;
        }
    }

    @c.b
    public SignRequestParams(@c.e(id = 2) Integer num, @Nullable @c.e(id = 3) Double d10, @c.e(id = 4) Uri uri, @c.e(id = 5) byte[] bArr, @c.e(id = 6) List list, @c.e(id = 7) ChannelIdValue channelIdValue, @c.e(id = 8) String str) {
        this.f61534b = num;
        this.f61535c = d10;
        this.f61536d = uri;
        this.f61537e = bArr;
        A.b((list == null || list.isEmpty()) ? false : true, "registeredKeys must not be null or empty");
        this.f61538f = list;
        this.f61539g = channelIdValue;
        HashSet hashSet = new HashSet();
        if (uri != null) {
            hashSet.add(uri);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            c1.c cVar = (c1.c) it.next();
            A.b((cVar.n() == null && uri == null) ? false : true, "registered key has null appId and no request appId is provided");
            cVar.t();
            A.b(true, "register request has null challenge and no default challenge isprovided");
            if (cVar.n() != null) {
                hashSet.add(Uri.parse(cVar.n()));
            }
        }
        this.f61541i = hashSet;
        A.b(str == null || str.length() <= 80, "Display Hint cannot be longer than 80 characters");
        this.f61540h = str;
    }

    @Override
    @NonNull
    public ChannelIdValue b0() {
        return this.f61539g;
    }

    public boolean equals(@NonNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SignRequestParams)) {
            return false;
        }
        SignRequestParams signRequestParams = (SignRequestParams) obj;
        return C2601y.b(this.f61534b, signRequestParams.f61534b) && C2601y.b(this.f61535c, signRequestParams.f61535c) && C2601y.b(this.f61536d, signRequestParams.f61536d) && Arrays.equals(this.f61537e, signRequestParams.f61537e) && this.f61538f.containsAll(signRequestParams.f61538f) && signRequestParams.f61538f.containsAll(this.f61538f) && C2601y.b(this.f61539g, signRequestParams.f61539g) && C2601y.b(this.f61540h, signRequestParams.f61540h);
    }

    public int hashCode() {
        return C2601y.c(this.f61534b, this.f61536d, this.f61535c, this.f61538f, this.f61539g, this.f61540h, Integer.valueOf(Arrays.hashCode(this.f61537e)));
    }

    @Override
    @NonNull
    public Set<Uri> n() {
        return this.f61541i;
    }

    @Override
    @NonNull
    public String n0() {
        return this.f61540h;
    }

    @Override
    @NonNull
    public Uri t() {
        return this.f61536d;
    }

    @Override
    @NonNull
    public List<c1.c> u0() {
        return this.f61538f;
    }

    @Override
    @NonNull
    public Integer v0() {
        return this.f61534b;
    }

    @Override
    @Nullable
    public Double w0() {
        return this.f61535c;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.I(parcel, 2, v0(), false);
        I0.b.u(parcel, 3, w0(), false);
        I0.b.S(parcel, 4, t(), i10, false);
        I0.b.m(parcel, 5, x0(), false);
        I0.b.d0(parcel, 6, u0(), false);
        I0.b.S(parcel, 7, b0(), i10, false);
        I0.b.Y(parcel, 8, n0(), false);
        I0.b.b(parcel, a10);
    }

    @NonNull
    public byte[] x0() {
        return this.f61537e;
    }
}
