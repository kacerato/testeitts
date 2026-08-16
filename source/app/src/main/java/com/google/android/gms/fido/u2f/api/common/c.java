package com.google.android.gms.fido.u2f.api.common;

import G0.A;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import androidx.annotation.NonNull;
import c1.h;
import com.google.android.gms.fido.u2f.api.common.ProtocolVersion;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

@c.a(creator = "RegisterRequestCreator")
@Deprecated
public class c extends I0.a {

    @NonNull
    public static final Parcelable.Creator<c> CREATOR = new h();

    public static final int f61574f = 65;

    @c.h(getter = "getVersionCode", id = 1)
    public final int f61575b;

    @c.InterfaceC0186c(getter = "getProtocolVersionAsString", id = 2, type = "java.lang.String")
    public final ProtocolVersion f61576c;

    @c.InterfaceC0186c(getter = "getChallengeValue", id = 3)
    public final byte[] f61577d;

    @c.InterfaceC0186c(getter = "getAppId", id = 4)
    public final String f61578e;

    @c.b
    public c(@c.e(id = 1) int i10, @c.e(id = 2) String str, @c.e(id = 3) byte[] bArr, @c.e(id = 4) String str2) {
        this.f61575b = i10;
        try {
            this.f61576c = ProtocolVersion.c(str);
            this.f61577d = bArr;
            this.f61578e = str2;
        } catch (ProtocolVersion.UnsupportedProtocolException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    @NonNull
    public static c u0(@NonNull JSONObject jSONObject) throws JSONException {
        try {
            try {
                try {
                    return new c(ProtocolVersion.c(jSONObject.has("version") ? jSONObject.getString("version") : null), Base64.decode(jSONObject.getString(a.f61557f), 8), jSONObject.has("appId") ? jSONObject.getString("appId") : null);
                } catch (IllegalArgumentException e10) {
                    throw new JSONException(e10.getMessage());
                }
            } catch (IllegalArgumentException e11) {
                throw new JSONException(e11.toString());
            }
        } catch (ProtocolVersion.UnsupportedProtocolException e12) {
            throw new JSONException(e12.toString());
        }
    }

    @NonNull
    public ProtocolVersion b0() {
        return this.f61576c;
    }

    public boolean equals(@NonNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (!Arrays.equals(this.f61577d, cVar.f61577d) || this.f61576c != cVar.f61576c) {
            return false;
        }
        String str = this.f61578e;
        if (str == null) {
            if (cVar.f61578e != null) {
                return false;
            }
        } else if (!str.equals(cVar.f61578e)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int hashCode = ((Arrays.hashCode(this.f61577d) + 31) * 31) + this.f61576c.hashCode();
        String str = this.f61578e;
        return (hashCode * 31) + (str == null ? 0 : str.hashCode());
    }

    @NonNull
    public String n() {
        return this.f61578e;
    }

    public int n0() {
        return this.f61575b;
    }

    @NonNull
    public byte[] t() {
        return this.f61577d;
    }

    @NonNull
    public JSONObject v0() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version", this.f61576c.toString());
            jSONObject.put(a.f61557f, Base64.encodeToString(this.f61577d, 11));
            String str = this.f61578e;
            if (str != null) {
                jSONObject.put("appId", str);
            }
            return jSONObject;
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, n0());
        I0.b.Y(parcel, 2, this.f61576c.toString(), false);
        I0.b.m(parcel, 3, t(), false);
        I0.b.Y(parcel, 4, n(), false);
        I0.b.b(parcel, a10);
    }

    public c(@NonNull ProtocolVersion protocolVersion, @NonNull byte[] bArr, @NonNull String str) {
        this.f61575b = 1;
        this.f61576c = (ProtocolVersion) A.r(protocolVersion);
        this.f61577d = (byte[]) A.r(bArr);
        if (protocolVersion == ProtocolVersion.V1) {
            A.b(bArr.length == 65, "invalid challengeValue length for V1");
        }
        this.f61578e = str;
    }
}
