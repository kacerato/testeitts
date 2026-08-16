package com.google.android.gms.fido.u2f.api.common;

import G0.A;
import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import c1.f;
import com.google.android.gms.common.util.VisibleForTesting;
import j1.C13787k;
import j1.C13788l;
import org.json.JSONException;
import org.json.JSONObject;

@c.g({1})
@c.a(creator = "ErrorResponseDataCreator")
@Deprecated
public class ErrorResponseData extends ResponseData {

    @NonNull
    public static final Parcelable.Creator<ErrorResponseData> CREATOR = new f();

    @NonNull
    @VisibleForTesting
    public static final String f61508d = "errorCode";

    @NonNull
    @VisibleForTesting
    public static final String f61509e = "errorMessage";

    @c.InterfaceC0186c(getter = "getErrorCodeAsInt", id = 2, type = "int")
    public final c1.b f61510b;

    @c.InterfaceC0186c(getter = "getErrorMessage", id = 3)
    public final String f61511c;

    @c.b
    public ErrorResponseData(@c.e(id = 2) int i10, @c.e(id = 3) String str) {
        this.f61510b = c1.b.e(i10);
        this.f61511c = str;
    }

    public int b0() {
        return this.f61510b.b();
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof ErrorResponseData)) {
            return false;
        }
        ErrorResponseData errorResponseData = (ErrorResponseData) obj;
        return C2601y.b(this.f61510b, errorResponseData.f61510b) && C2601y.b(this.f61511c, errorResponseData.f61511c);
    }

    public int hashCode() {
        return C2601y.c(this.f61510b, this.f61511c);
    }

    @Override
    @NonNull
    public final JSONObject n() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("errorCode", this.f61510b.b());
            String str = this.f61511c;
            if (str != null) {
                jSONObject.put("errorMessage", str);
            }
            return jSONObject;
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    @NonNull
    public String n0() {
        return this.f61511c;
    }

    @NonNull
    public c1.b t() {
        return this.f61510b;
    }

    @NonNull
    public String toString() {
        C13787k a10 = C13788l.a(this);
        a10.a("errorCode", this.f61510b.b());
        String str = this.f61511c;
        if (str != null) {
            a10.b("errorMessage", str);
        }
        return a10.toString();
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 2, b0());
        I0.b.Y(parcel, 3, n0(), false);
        I0.b.b(parcel, a10);
    }

    public ErrorResponseData(@NonNull c1.b bVar) {
        this.f61510b = (c1.b) A.r(bVar);
        this.f61511c = null;
    }

    public ErrorResponseData(@NonNull c1.b bVar, @NonNull String str) {
        this.f61510b = (c1.b) A.r(bVar);
        this.f61511c = str;
    }
}
