package com.google.android.gms.fido.fido2.api.common;

import G0.A;
import I0.c;
import a1.S;
import android.os.BatteryManager;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j1.C13789m;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

@c.g({1})
@c.a(creator = "TokenBindingCreator")
public class TokenBinding extends I0.a {

    @NonNull
    public static final Parcelable.Creator<TokenBinding> CREATOR = new S();

    @NonNull
    public static final TokenBinding f61464d = new TokenBinding(a.SUPPORTED.toString(), null);

    @NonNull
    public static final TokenBinding f61465e = new TokenBinding(a.NOT_SUPPORTED.toString(), null);

    @NonNull
    @c.InterfaceC0186c(getter = "getTokenBindingStatusAsString", id = 2, type = "java.lang.String")
    public final a f61466b;

    @Nullable
    @c.InterfaceC0186c(getter = "getTokenBindingId", id = 3)
    public final String f61467c;

    public static class UnsupportedTokenBindingStatusException extends Exception {
        public UnsupportedTokenBindingStatusException(@NonNull String str) {
            super(String.format("TokenBindingStatus %s not supported", str));
        }
    }

    public enum a implements Parcelable {
        PRESENT(BatteryManager.EXTRA_PRESENT),
        SUPPORTED("supported"),
        NOT_SUPPORTED("not-supported");


        @NonNull
        public static final Parcelable.Creator<a> CREATOR = new i();

        @NonNull
        private final String zzb;

        a(@NonNull String str) {
            this.zzb = str;
        }

        @NonNull
        public static a b(@NonNull String str) throws UnsupportedTokenBindingStatusException {
            for (a aVar : values()) {
                if (str.equals(aVar.zzb)) {
                    return aVar;
                }
            }
            throw new UnsupportedTokenBindingStatusException(str);
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        @NonNull
        public String toString() {
            return this.zzb;
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            parcel.writeString(this.zzb);
        }
    }

    public TokenBinding(@NonNull String str) {
        this(a.PRESENT.toString(), (String) A.r(str));
    }

    @NonNull
    public JSONObject b0() throws JSONException {
        try {
            return new JSONObject().put("status", this.f61466b).put("id", this.f61467c);
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    public boolean equals(@NonNull Object obj) {
        if (!(obj instanceof TokenBinding)) {
            return false;
        }
        TokenBinding tokenBinding = (TokenBinding) obj;
        return C13789m.a(this.f61466b, tokenBinding.f61466b) && C13789m.a(this.f61467c, tokenBinding.f61467c);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f61466b, this.f61467c});
    }

    @Nullable
    public String n() {
        return this.f61467c;
    }

    @NonNull
    public String t() {
        return this.f61466b.toString();
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 2, t(), false);
        I0.b.Y(parcel, 3, n(), false);
        I0.b.b(parcel, a10);
    }

    @c.b
    public TokenBinding(@NonNull @c.e(id = 2) String str, @Nullable @c.e(id = 3) String str2) {
        A.r(str);
        try {
            this.f61466b = a.b(str);
            this.f61467c = str2;
        } catch (UnsupportedTokenBindingStatusException e10) {
            throw new IllegalArgumentException(e10);
        }
    }
}
