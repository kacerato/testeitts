package com.google.android.gms.fido.u2f.api.common;

import G0.C2601y;
import I0.c;
import T0.C3033c;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import c1.g;
import com.google.android.gms.fido.common.Transport;
import com.google.android.gms.fido.u2f.api.common.ProtocolVersion;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@c.a(creator = "KeyHandleCreator")
@Deprecated
public class b extends I0.a {

    @NonNull
    public static final Parcelable.Creator<b> CREATOR = new g();

    @c.h(getter = "getVersionCode", id = 1)
    public final int f61570b;

    @c.InterfaceC0186c(getter = "getBytes", id = 2)
    public final byte[] f61571c;

    @c.InterfaceC0186c(getter = "getProtocolVersionAsString", id = 3, type = "java.lang.String")
    public final ProtocolVersion f61572d;

    @Nullable
    @c.InterfaceC0186c(getter = "getTransports", id = 4)
    public final List f61573e;

    @c.b
    public b(@c.e(id = 1) int i10, @c.e(id = 2) byte[] bArr, @c.e(id = 3) String str, @Nullable @c.e(id = 4) List list) {
        this.f61570b = i10;
        this.f61571c = bArr;
        try {
            this.f61572d = ProtocolVersion.c(str);
            this.f61573e = list;
        } catch (ProtocolVersion.UnsupportedProtocolException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    @NonNull
    public static b u0(@NonNull JSONObject jSONObject) throws JSONException {
        try {
            try {
                return new b(Base64.decode(jSONObject.getString(SignResponseData.f61550g), 8), ProtocolVersion.c(jSONObject.has("version") ? jSONObject.getString("version") : null), jSONObject.has("transports") ? Transport.c(jSONObject.getJSONArray("transports")) : null);
            } catch (IllegalArgumentException e10) {
                throw new JSONException(e10.toString());
            }
        } catch (ProtocolVersion.UnsupportedProtocolException e11) {
            throw new JSONException(e11.toString());
        }
    }

    @NonNull
    public List<Transport> b0() {
        return this.f61573e;
    }

    public boolean equals(@NonNull Object obj) {
        List list;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (!Arrays.equals(this.f61571c, bVar.f61571c) || !this.f61572d.equals(bVar.f61572d)) {
            return false;
        }
        List list2 = this.f61573e;
        if (list2 == null && bVar.f61573e == null) {
            return true;
        }
        return list2 != null && (list = bVar.f61573e) != null && list2.containsAll(list) && bVar.f61573e.containsAll(this.f61573e);
    }

    public int hashCode() {
        return C2601y.c(Integer.valueOf(Arrays.hashCode(this.f61571c)), this.f61572d, this.f61573e);
    }

    @NonNull
    public byte[] n() {
        return this.f61571c;
    }

    public int n0() {
        return this.f61570b;
    }

    @NonNull
    public ProtocolVersion t() {
        return this.f61572d;
    }

    @NonNull
    public String toString() {
        List list = this.f61573e;
        return String.format("{keyHandle: %s, version: %s, transports: %s}", C3033c.d(this.f61571c), this.f61572d, list == null ? "null" : list.toString());
    }

    @NonNull
    public JSONObject v0() {
        return w0();
    }

    @NonNull
    public final JSONObject w0() {
        JSONObject jSONObject = new JSONObject();
        try {
            byte[] bArr = this.f61571c;
            if (bArr != null) {
                jSONObject.put(SignResponseData.f61550g, Base64.encodeToString(bArr, 11));
            }
            ProtocolVersion protocolVersion = this.f61572d;
            if (protocolVersion != null) {
                jSONObject.put("version", protocolVersion.toString());
            }
            if (this.f61573e != null) {
                JSONArray jSONArray = new JSONArray();
                Iterator it = this.f61573e.iterator();
                while (it.hasNext()) {
                    jSONArray.put(((Transport) it.next()).toString());
                }
                jSONObject.put("transports", jSONArray);
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
        I0.b.m(parcel, 2, n(), false);
        I0.b.Y(parcel, 3, this.f61572d.toString(), false);
        I0.b.d0(parcel, 4, b0(), false);
        I0.b.b(parcel, a10);
    }

    public b(@NonNull byte[] bArr, @NonNull ProtocolVersion protocolVersion, @Nullable List<Transport> list) {
        this.f61570b = 1;
        this.f61571c = bArr;
        this.f61572d = protocolVersion;
        this.f61573e = list;
    }
}
