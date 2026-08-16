package com.google.android.gms.fido.u2f.api.common;

import G0.A;
import G0.C2601y;
import I0.c;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import c1.i;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@c.g({1})
@c.a(creator = "RegisterRequestParamsCreator")
@Deprecated
public class RegisterRequestParams extends RequestParams {

    @NonNull
    public static final Parcelable.Creator<RegisterRequestParams> CREATOR = new i();

    public static final int f61514j = 80;

    @c.InterfaceC0186c(getter = "getRequestId", id = 2)
    public final Integer f61515b;

    @c.InterfaceC0186c(getter = "getTimeoutSeconds", id = 3)
    public final Double f61516c;

    @c.InterfaceC0186c(getter = "getAppId", id = 4)
    public final Uri f61517d;

    @c.InterfaceC0186c(getter = "getRegisterRequests", id = 5)
    public final List f61518e;

    @c.InterfaceC0186c(getter = "getRegisteredKeys", id = 6)
    public final List f61519f;

    @c.InterfaceC0186c(getter = "getChannelIdValue", id = 7)
    public final ChannelIdValue f61520g;

    @c.InterfaceC0186c(getter = "getDisplayHint", id = 8)
    public final String f61521h;

    public Set f61522i;

    public static final class a {

        public Integer f61523a;

        public Double f61524b;

        public Uri f61525c;

        public List f61526d;

        public List f61527e;

        public ChannelIdValue f61528f;

        public String f61529g;

        @NonNull
        public RegisterRequestParams a() {
            return new RegisterRequestParams(this.f61523a, this.f61524b, this.f61525c, this.f61526d, this.f61527e, this.f61528f, this.f61529g);
        }

        @NonNull
        public a b(@NonNull Uri uri) {
            this.f61525c = uri;
            return this;
        }

        @NonNull
        public a c(@NonNull ChannelIdValue channelIdValue) {
            this.f61528f = channelIdValue;
            return this;
        }

        @NonNull
        public a d(@NonNull String str) {
            this.f61529g = str;
            return this;
        }

        @NonNull
        public a e(@NonNull List<c> list) {
            this.f61526d = list;
            return this;
        }

        @NonNull
        public a f(@NonNull List<c1.c> list) {
            this.f61527e = list;
            return this;
        }

        @NonNull
        public a g(@NonNull Integer num) {
            this.f61523a = num;
            return this;
        }

        @NonNull
        public a h(@NonNull Double d10) {
            this.f61524b = d10;
            return this;
        }
    }

    @c.b
    public RegisterRequestParams(@c.e(id = 2) Integer num, @c.e(id = 3) Double d10, @c.e(id = 4) Uri uri, @c.e(id = 5) List list, @c.e(id = 6) List list2, @c.e(id = 7) ChannelIdValue channelIdValue, @c.e(id = 8) String str) {
        this.f61515b = num;
        this.f61516c = d10;
        this.f61517d = uri;
        A.b((list == null || list.isEmpty()) ? false : true, "empty list of register requests is provided");
        this.f61518e = list;
        this.f61519f = list2;
        this.f61520g = channelIdValue;
        HashSet hashSet = new HashSet();
        if (uri != null) {
            hashSet.add(uri);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            A.b((uri == null && cVar.n() == null) ? false : true, "register request has null appId and no request appId is provided");
            if (cVar.n() != null) {
                hashSet.add(Uri.parse(cVar.n()));
            }
        }
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            c1.c cVar2 = (c1.c) it2.next();
            A.b((uri == null && cVar2.n() == null) ? false : true, "registered key has null appId and no request appId is provided");
            if (cVar2.n() != null) {
                hashSet.add(Uri.parse(cVar2.n()));
            }
        }
        this.f61522i = hashSet;
        A.b(str == null || str.length() <= 80, "Display Hint cannot be longer than 80 characters");
        this.f61521h = str;
    }

    @Override
    @NonNull
    public ChannelIdValue b0() {
        return this.f61520g;
    }

    public boolean equals(@NonNull Object obj) {
        List list;
        List list2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegisterRequestParams)) {
            return false;
        }
        RegisterRequestParams registerRequestParams = (RegisterRequestParams) obj;
        return C2601y.b(this.f61515b, registerRequestParams.f61515b) && C2601y.b(this.f61516c, registerRequestParams.f61516c) && C2601y.b(this.f61517d, registerRequestParams.f61517d) && C2601y.b(this.f61518e, registerRequestParams.f61518e) && (((list = this.f61519f) == null && registerRequestParams.f61519f == null) || (list != null && (list2 = registerRequestParams.f61519f) != null && list.containsAll(list2) && registerRequestParams.f61519f.containsAll(this.f61519f))) && C2601y.b(this.f61520g, registerRequestParams.f61520g) && C2601y.b(this.f61521h, registerRequestParams.f61521h);
    }

    public int hashCode() {
        return C2601y.c(this.f61515b, this.f61517d, this.f61516c, this.f61518e, this.f61519f, this.f61520g, this.f61521h);
    }

    @Override
    @NonNull
    public Set<Uri> n() {
        return this.f61522i;
    }

    @Override
    @NonNull
    public String n0() {
        return this.f61521h;
    }

    @Override
    @NonNull
    public Uri t() {
        return this.f61517d;
    }

    @Override
    @NonNull
    public List<c1.c> u0() {
        return this.f61519f;
    }

    @Override
    @NonNull
    public Integer v0() {
        return this.f61515b;
    }

    @Override
    @NonNull
    public Double w0() {
        return this.f61516c;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.I(parcel, 2, v0(), false);
        I0.b.u(parcel, 3, w0(), false);
        I0.b.S(parcel, 4, t(), i10, false);
        I0.b.d0(parcel, 5, x0(), false);
        I0.b.d0(parcel, 6, u0(), false);
        I0.b.S(parcel, 7, b0(), i10, false);
        I0.b.Y(parcel, 8, n0(), false);
        I0.b.b(parcel, a10);
    }

    @NonNull
    public List<c> x0() {
        return this.f61518e;
    }
}
