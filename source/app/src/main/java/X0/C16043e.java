package x0;

import G0.F;
import I0.c;
import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@F
@C0.c
@c.a(creator = "ProxyResponseCreator")
public class C16043e extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C16043e> CREATOR = new C16045g();

    public static final int f127881h = -1;

    @c.InterfaceC0186c(id = 1)
    public final int f127882b;

    @NonNull
    @c.InterfaceC0186c(id = 2)
    public final PendingIntent f127883c;

    @c.InterfaceC0186c(id = 3)
    public final int f127884d;

    @NonNull
    @c.InterfaceC0186c(id = 5)
    public final byte[] f127885e;

    @c.h(id = 1000)
    public final int f127886f;

    @c.InterfaceC0186c(id = 4)
    public final Bundle f127887g;

    @c.b
    public C16043e(@c.e(id = 1000) int i10, @c.e(id = 1) int i11, @c.e(id = 2) PendingIntent pendingIntent, @c.e(id = 3) int i12, @c.e(id = 4) Bundle bundle, @c.e(id = 5) byte[] bArr) {
        this.f127886f = i10;
        this.f127882b = i11;
        this.f127884d = i12;
        this.f127887g = bundle;
        this.f127885e = bArr;
        this.f127883c = pendingIntent;
    }

    @NonNull
    public static C16043e b(int i10, @NonNull PendingIntent pendingIntent, int i11, @NonNull Map<String, String> map, @NonNull byte[] bArr) {
        return new C16043e(1, i10, pendingIntent, i11, n(map), bArr);
    }

    public static Bundle n(Map map) {
        Bundle bundle = new Bundle();
        if (map == null) {
            return bundle;
        }
        for (Map.Entry entry : map.entrySet()) {
            bundle.putString((String) entry.getKey(), (String) entry.getValue());
        }
        return bundle;
    }

    @NonNull
    public Map<String, String> getHeaders() {
        if (this.f127887g == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        for (String str : this.f127887g.keySet()) {
            hashMap.put(str, this.f127887g.getString(str));
        }
        return hashMap;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, this.f127882b);
        I0.b.S(parcel, 2, this.f127883c, i10, false);
        I0.b.F(parcel, 3, this.f127884d);
        I0.b.k(parcel, 4, this.f127887g, false);
        I0.b.m(parcel, 5, this.f127885e, false);
        I0.b.F(parcel, 1000, this.f127886f);
        I0.b.b(parcel, a10);
    }

    public C16043e(int i10, @NonNull PendingIntent pendingIntent, int i11, @NonNull Bundle bundle, @NonNull byte[] bArr) {
        this(1, i10, pendingIntent, i11, bundle, bArr);
    }

    public C16043e(int i10, @NonNull Map<String, String> map, @NonNull byte[] bArr) {
        this(1, 0, null, i10, n(map), bArr);
    }
}
