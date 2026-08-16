package c1;

import G0.A;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import androidx.annotation.NonNull;
import com.google.android.gms.fido.u2f.api.common.ProtocolVersion;
import com.google.android.gms.fido.u2f.api.common.SignResponseData;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

@c.g({1})
@c.a(creator = "RegisteredKeyCreator")
@Deprecated
public class c extends I0.a {

    @NonNull
    public static final Parcelable.Creator<c> CREATOR = new k();

    @c.InterfaceC0186c(getter = "getKeyHandle", id = 2)
    public final com.google.android.gms.fido.u2f.api.common.b f34381b;

    @c.InterfaceC0186c(getter = "getAppId", id = 4)
    public final String f34382c;

    @c.InterfaceC0186c(getter = "getChallengeValue", id = 3)
    public String f34383d;

    public c(@NonNull com.google.android.gms.fido.u2f.api.common.b bVar) {
        this(bVar, null, null);
    }

    @NonNull
    public static c n0(@NonNull JSONObject jSONObject) throws JSONException {
        return new c(com.google.android.gms.fido.u2f.api.common.b.u0(jSONObject), jSONObject.has(com.google.android.gms.fido.u2f.api.common.a.f61557f) ? jSONObject.getString(com.google.android.gms.fido.u2f.api.common.a.f61557f) : null, jSONObject.has("appId") ? jSONObject.getString("appId") : null);
    }

    @NonNull
    public com.google.android.gms.fido.u2f.api.common.b b0() {
        return this.f34381b;
    }

    public boolean equals(@NonNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        String str = this.f34383d;
        if (str == null) {
            if (cVar.f34383d != null) {
                return false;
            }
        } else if (!str.equals(cVar.f34383d)) {
            return false;
        }
        if (!this.f34381b.equals(cVar.f34381b)) {
            return false;
        }
        String str2 = this.f34382c;
        if (str2 == null) {
            if (cVar.f34382c != null) {
                return false;
            }
        } else if (!str2.equals(cVar.f34382c)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f34383d;
        int hashCode = (((str == null ? 0 : str.hashCode()) + 31) * 31) + this.f34381b.hashCode();
        String str2 = this.f34382c;
        return (hashCode * 31) + (str2 != null ? str2.hashCode() : 0);
    }

    @NonNull
    public String n() {
        return this.f34382c;
    }

    @NonNull
    public String t() {
        return this.f34383d;
    }

    @NonNull
    public String toString() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(SignResponseData.f61550g, Base64.encodeToString(this.f34381b.n(), 11));
            if (this.f34381b.t() != ProtocolVersion.UNKNOWN) {
                jSONObject.put("version", this.f34381b.t().toString());
            }
            if (this.f34381b.b0() != null) {
                jSONObject.put("transports", this.f34381b.b0().toString());
            }
            String str = this.f34383d;
            if (str != null) {
                jSONObject.put(com.google.android.gms.fido.u2f.api.common.a.f61557f, str);
            }
            String str2 = this.f34382c;
            if (str2 != null) {
                jSONObject.put("appId", str2);
            }
            return jSONObject.toString();
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    @NonNull
    public JSONObject u0() {
        JSONObject jSONObject = new JSONObject();
        try {
            String str = this.f34383d;
            if (str != null) {
                jSONObject.put(com.google.android.gms.fido.u2f.api.common.a.f61557f, str);
            }
            JSONObject w02 = this.f34381b.w0();
            Iterator<String> keys = w02.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                jSONObject.put(next, w02.get(next));
            }
            String str2 = this.f34382c;
            if (str2 != null) {
                jSONObject.put("appId", str2);
            }
            return jSONObject;
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.S(parcel, 2, b0(), i10, false);
        I0.b.Y(parcel, 3, t(), false);
        I0.b.Y(parcel, 4, n(), false);
        I0.b.b(parcel, a10);
    }

    @c.b
    public c(@NonNull @c.e(id = 2) com.google.android.gms.fido.u2f.api.common.b bVar, @NonNull @c.e(id = 3) String str, @NonNull @c.e(id = 4) String str2) {
        this.f34381b = (com.google.android.gms.fido.u2f.api.common.b) A.r(bVar);
        this.f34383d = str;
        this.f34382c = str2;
    }
}
