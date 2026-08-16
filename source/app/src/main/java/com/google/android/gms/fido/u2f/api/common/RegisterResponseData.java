package com.google.android.gms.fido.u2f.api.common;

import G0.A;
import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import c1.j;
import com.google.android.gms.fido.u2f.api.common.ProtocolVersion;
import j1.C13787k;
import j1.C13788l;
import j1.H;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

@c.g({1})
@c.a(creator = "RegisterResponseDataCreator")
@Deprecated
public class RegisterResponseData extends ResponseData {

    @NonNull
    public static final Parcelable.Creator<RegisterResponseData> CREATOR = new j();

    @c.InterfaceC0186c(getter = "getRegisterData", id = 2)
    public final byte[] f61530b;

    @c.InterfaceC0186c(getter = "getProtocolVersionAsString", id = 3, type = "java.lang.String")
    public final ProtocolVersion f61531c;

    @Nullable
    @c.InterfaceC0186c(getter = "getClientDataString", id = 4)
    public final String f61532d;

    public RegisterResponseData(@NonNull byte[] bArr) {
        this.f61530b = (byte[]) A.r(bArr);
        this.f61531c = ProtocolVersion.V1;
        this.f61532d = null;
    }

    @NonNull
    public ProtocolVersion b0() {
        return this.f61531c;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof RegisterResponseData)) {
            return false;
        }
        RegisterResponseData registerResponseData = (RegisterResponseData) obj;
        return C2601y.b(this.f61531c, registerResponseData.f61531c) && Arrays.equals(this.f61530b, registerResponseData.f61530b) && C2601y.b(this.f61532d, registerResponseData.f61532d);
    }

    public int hashCode() {
        return C2601y.c(this.f61531c, Integer.valueOf(Arrays.hashCode(this.f61530b)), this.f61532d);
    }

    @Override
    @NonNull
    public JSONObject n() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("registrationData", Base64.encodeToString(this.f61530b, 11));
            jSONObject.put("version", this.f61531c.toString());
            String str = this.f61532d;
            if (str != null) {
                jSONObject.put(SignResponseData.f61549f, Base64.encodeToString(str.getBytes(), 11));
            }
            return jSONObject;
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    @NonNull
    public byte[] n0() {
        return this.f61530b;
    }

    @NonNull
    public String t() {
        return this.f61532d;
    }

    @NonNull
    public String toString() {
        C13787k a10 = C13788l.a(this);
        a10.b("protocolVersion", this.f61531c);
        H c10 = H.c();
        byte[] bArr = this.f61530b;
        a10.b("registerData", c10.d(bArr, 0, bArr.length));
        String str = this.f61532d;
        if (str != null) {
            a10.b("clientDataString", str);
        }
        return a10.toString();
    }

    public int u0() {
        ProtocolVersion protocolVersion = ProtocolVersion.UNKNOWN;
        int ordinal = this.f61531c.ordinal();
        int i10 = 1;
        if (ordinal != 1) {
            i10 = 2;
            if (ordinal != 2) {
                return -1;
            }
        }
        return i10;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.m(parcel, 2, n0(), false);
        I0.b.Y(parcel, 3, this.f61531c.toString(), false);
        I0.b.Y(parcel, 4, t(), false);
        I0.b.b(parcel, a10);
    }

    public RegisterResponseData(@NonNull byte[] bArr, @NonNull ProtocolVersion protocolVersion, @Nullable String str) {
        this.f61530b = (byte[]) A.r(bArr);
        this.f61531c = (ProtocolVersion) A.r(protocolVersion);
        A.a(protocolVersion != ProtocolVersion.UNKNOWN);
        if (protocolVersion == ProtocolVersion.V1) {
            A.a(str == null);
            this.f61532d = null;
        } else {
            this.f61532d = (String) A.r(str);
        }
    }

    @c.b
    public RegisterResponseData(@c.e(id = 2) byte[] bArr, @c.e(id = 3) String str, @Nullable @c.e(id = 4) String str2) {
        this.f61530b = bArr;
        try {
            this.f61531c = ProtocolVersion.c(str);
            this.f61532d = str2;
        } catch (ProtocolVersion.UnsupportedProtocolException e10) {
            throw new IllegalArgumentException(e10);
        }
    }
}
