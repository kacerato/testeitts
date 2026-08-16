package com.google.android.gms.fido.u2f.api.common;

import G0.A;
import androidx.annotation.NonNull;
import com.google.android.gms.fido.u2f.api.common.ChannelIdValue;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
public class a {

    @NonNull
    public static final String f61556e = "typ";

    @NonNull
    public static final String f61557f = "challenge";

    @NonNull
    public static final String f61558g = "origin";

    @NonNull
    public static final String f61559h = "cid_pubkey";

    @NonNull
    public static final String f61560i = "navigator.id.finishEnrollment";

    @NonNull
    public static final String f61561j = "navigator.id.getAssertion";

    public final String f61562a;

    public final String f61563b;

    public final String f61564c;

    public final ChannelIdValue f61565d;

    public static class C0956a implements Cloneable {

        public String f61566b;

        public String f61567c;

        public String f61568d;

        public ChannelIdValue f61569e;

        public C0956a(String str, String str2, String str3, ChannelIdValue channelIdValue) {
            this.f61566b = str;
            this.f61567c = str2;
            this.f61568d = str3;
            this.f61569e = channelIdValue;
        }

        @NonNull
        public static C0956a c() {
            return new C0956a();
        }

        @NonNull
        public a a() {
            return new a(this.f61566b, this.f61567c, this.f61568d, this.f61569e);
        }

        @NonNull
        public C0956a clone() {
            return new C0956a(this.f61566b, this.f61567c, this.f61568d, this.f61569e);
        }

        @NonNull
        public C0956a d(@NonNull String str) {
            this.f61567c = str;
            return this;
        }

        @NonNull
        public C0956a e(@NonNull ChannelIdValue channelIdValue) {
            this.f61569e = channelIdValue;
            return this;
        }

        @NonNull
        public C0956a f(@NonNull String str) {
            this.f61568d = str;
            return this;
        }

        @NonNull
        public C0956a g(@NonNull String str) {
            this.f61566b = str;
            return this;
        }

        public C0956a() {
            this.f61569e = ChannelIdValue.f61502e;
        }
    }

    public a(String str, String str2, String str3, ChannelIdValue channelIdValue) {
        this.f61562a = (String) A.r(str);
        this.f61563b = (String) A.r(str2);
        this.f61564c = (String) A.r(str3);
        this.f61565d = (ChannelIdValue) A.r(channelIdValue);
    }

    @NonNull
    public String a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(f61556e, this.f61562a);
            jSONObject.put(f61557f, this.f61563b);
            jSONObject.put("origin", this.f61564c);
            ChannelIdValue.a aVar = ChannelIdValue.a.ABSENT;
            int ordinal = this.f61565d.n0().ordinal();
            if (ordinal == 1) {
                jSONObject.put(f61559h, this.f61565d.b0());
            } else if (ordinal == 2) {
                jSONObject.put(f61559h, this.f61565d.n());
            }
            return jSONObject.toString();
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    public boolean equals(@NonNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f61562a.equals(aVar.f61562a) && this.f61563b.equals(aVar.f61563b) && this.f61564c.equals(aVar.f61564c) && this.f61565d.equals(aVar.f61565d);
    }

    public int hashCode() {
        return ((((((this.f61562a.hashCode() + 31) * 31) + this.f61563b.hashCode()) * 31) + this.f61564c.hashCode()) * 31) + this.f61565d.hashCode();
    }
}
