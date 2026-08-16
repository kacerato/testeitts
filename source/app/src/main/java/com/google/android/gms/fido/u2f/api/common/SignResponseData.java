package com.google.android.gms.fido.u2f.api.common;

import F2.i;
import G0.A;
import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import c1.m;
import com.google.android.gms.common.util.VisibleForTesting;
import j1.C13787k;
import j1.C13788l;
import j1.H;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

@c.g({1})
@c.a(creator = "SignResponseDataCreator")
@Deprecated
public class SignResponseData extends ResponseData {

    @NonNull
    public static final Parcelable.Creator<SignResponseData> CREATOR = new m();

    @NonNull
    @VisibleForTesting
    public static final String f61549f = "clientData";

    @NonNull
    @VisibleForTesting
    public static final String f61550g = "keyHandle";

    @NonNull
    @VisibleForTesting
    public static final String f61551h = "signatureData";

    @c.InterfaceC0186c(getter = "getKeyHandle", id = 2)
    public final byte[] f61552b;

    @c.InterfaceC0186c(getter = "getClientDataString", id = 3)
    public final String f61553c;

    @c.InterfaceC0186c(getter = "getSignatureData", id = 4)
    public final byte[] f61554d;

    @c.InterfaceC0186c(getter = "getApplication", id = 5)
    public final byte[] f61555e;

    @Deprecated
    public SignResponseData(@NonNull byte[] bArr, @NonNull String str, @NonNull byte[] bArr2) {
        this(bArr, str, bArr2, new byte[0]);
    }

    @NonNull
    public byte[] b0() {
        return this.f61552b;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof SignResponseData)) {
            return false;
        }
        SignResponseData signResponseData = (SignResponseData) obj;
        return Arrays.equals(this.f61552b, signResponseData.f61552b) && C2601y.b(this.f61553c, signResponseData.f61553c) && Arrays.equals(this.f61554d, signResponseData.f61554d) && Arrays.equals(this.f61555e, signResponseData.f61555e);
    }

    public int hashCode() {
        return C2601y.c(Integer.valueOf(Arrays.hashCode(this.f61552b)), this.f61553c, Integer.valueOf(Arrays.hashCode(this.f61554d)), Integer.valueOf(Arrays.hashCode(this.f61555e)));
    }

    @Override
    @NonNull
    public JSONObject n() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(f61550g, Base64.encodeToString(this.f61552b, 11));
            jSONObject.put(f61549f, Base64.encodeToString(this.f61553c.getBytes(), 11));
            jSONObject.put(f61551h, Base64.encodeToString(this.f61554d, 11));
            return jSONObject;
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    @NonNull
    public byte[] n0() {
        return this.f61554d;
    }

    @NonNull
    public String t() {
        return this.f61553c;
    }

    @NonNull
    public String toString() {
        C13787k a10 = C13788l.a(this);
        H c10 = H.c();
        byte[] bArr = this.f61552b;
        a10.b(f61550g, c10.d(bArr, 0, bArr.length));
        a10.b("clientDataString", this.f61553c);
        H c11 = H.c();
        byte[] bArr2 = this.f61554d;
        a10.b(f61551h, c11.d(bArr2, 0, bArr2.length));
        H c12 = H.c();
        byte[] bArr3 = this.f61555e;
        a10.b(i.f6413l, c12.d(bArr3, 0, bArr3.length));
        return a10.toString();
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.m(parcel, 2, b0(), false);
        I0.b.Y(parcel, 3, t(), false);
        I0.b.m(parcel, 4, n0(), false);
        I0.b.m(parcel, 5, this.f61555e, false);
        I0.b.b(parcel, a10);
    }

    @c.b
    public SignResponseData(@NonNull @c.e(id = 2) byte[] bArr, @NonNull @c.e(id = 3) String str, @NonNull @c.e(id = 4) byte[] bArr2, @NonNull @c.e(id = 5) byte[] bArr3) {
        this.f61552b = (byte[]) A.r(bArr);
        this.f61553c = (String) A.r(str);
        this.f61554d = (byte[]) A.r(bArr2);
        this.f61555e = (byte[]) A.r(bArr3);
    }
}
