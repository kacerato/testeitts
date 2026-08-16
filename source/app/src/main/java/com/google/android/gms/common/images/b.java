package com.google.android.gms.common.images;

import G0.C2601y;
import I0.c;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

@c.a(creator = "WebImageCreator")
public final class b extends I0.a {

    @NonNull
    public static final Parcelable.Creator<b> CREATOR = new j();

    @c.h(id = 1)
    public final int f61343b;

    @c.InterfaceC0186c(getter = "getUrl", id = 2)
    public final Uri f61344c;

    @c.InterfaceC0186c(getter = "getWidth", id = 3)
    public final int f61345d;

    @c.InterfaceC0186c(getter = "getHeight", id = 4)
    public final int f61346e;

    @c.b
    public b(@c.e(id = 1) int i10, @c.e(id = 2) Uri uri, @c.e(id = 3) int i11, @c.e(id = 4) int i12) {
        this.f61343b = i10;
        this.f61344c = uri;
        this.f61345d = i11;
        this.f61346e = i12;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof b)) {
            b bVar = (b) obj;
            if (C2601y.b(this.f61344c, bVar.f61344c) && this.f61345d == bVar.f61345d && this.f61346e == bVar.f61346e) {
                return true;
            }
        }
        return false;
    }

    public int getHeight() {
        return this.f61346e;
    }

    public int getWidth() {
        return this.f61345d;
    }

    public int hashCode() {
        return C2601y.c(this.f61344c, Integer.valueOf(this.f61345d), Integer.valueOf(this.f61346e));
    }

    @NonNull
    public Uri n() {
        return this.f61344c;
    }

    @NonNull
    @C0.a
    public JSONObject t() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("url", this.f61344c.toString());
            jSONObject.put("width", this.f61345d);
            jSONObject.put("height", this.f61346e);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @NonNull
    public String toString() {
        return String.format(Locale.US, "Image %dx%d %s", Integer.valueOf(this.f61345d), Integer.valueOf(this.f61346e), this.f61344c.toString());
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int i11 = this.f61343b;
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, i11);
        I0.b.S(parcel, 2, n(), i10, false);
        I0.b.F(parcel, 3, getWidth());
        I0.b.F(parcel, 4, getHeight());
        I0.b.b(parcel, a10);
    }

    public b(@NonNull Uri uri) throws IllegalArgumentException {
        this(uri, 0, 0);
    }

    public b(@NonNull Uri uri, int i10, int i11) throws IllegalArgumentException {
        this(1, uri, i10, i11);
        if (uri == null) {
            throw new IllegalArgumentException("url cannot be null");
        }
        if (i10 < 0 || i11 < 0) {
            throw new IllegalArgumentException("width and height must not be negative");
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @C0.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public b(@NonNull JSONObject jSONObject) throws IllegalArgumentException {
        this(r0, jSONObject.optInt("width", 0), jSONObject.optInt("height", 0));
        Uri uri = Uri.EMPTY;
        if (jSONObject.has("url")) {
            try {
                uri = Uri.parse(jSONObject.getString("url"));
            } catch (JSONException unused) {
            }
        }
    }
}
