package x0;

import G0.A;
import G0.F;
import I0.c;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Patterns;
import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

@F
@C0.c
@c.a(creator = "ProxyRequestCreator")
public class C16042d extends I0.a {

    public static final int f127860h = 2;

    @NonNull
    @c.InterfaceC0186c(id = 1)
    public final String f127870b;

    @c.InterfaceC0186c(id = 2)
    public final int f127871c;

    @c.InterfaceC0186c(id = 3)
    public final long f127872d;

    @NonNull
    @c.InterfaceC0186c(id = 4)
    public final byte[] f127873e;

    @c.h(id = 1000)
    public final int f127874f;

    @c.InterfaceC0186c(id = 5)
    public final Bundle f127875g;

    @NonNull
    public static final Parcelable.Creator<C16042d> CREATOR = new C16044f();

    public static final int f127861i = 0;

    public static final int f127862j = 1;

    public static final int f127863k = 2;

    public static final int f127864l = 3;

    public static final int f127865m = 4;

    public static final int f127866n = 5;

    public static final int f127867o = 6;

    public static final int f127868p = 7;

    public static final int f127869q = 7;

    @F
    @C0.c
    public static class a {

        public final String f127876a;

        public int f127877b = C16042d.f127861i;

        public long f127878c = Ld.a.f11703k;

        public byte[] f127879d = new byte[0];

        public final Bundle f127880e = new Bundle();

        public a(@NonNull String str) {
            A.l(str);
            if (Patterns.WEB_URL.matcher(str).matches()) {
                this.f127876a = str;
                return;
            }
            throw new IllegalArgumentException("The supplied url [ " + str + "] is not match Patterns.WEB_URL!");
        }

        @NonNull
        public C16042d a() {
            if (this.f127879d == null) {
                this.f127879d = new byte[0];
            }
            return new C16042d(2, this.f127876a, this.f127877b, this.f127878c, this.f127879d, this.f127880e);
        }

        @NonNull
        public a b(@NonNull String str, @NonNull String str2) {
            A.m(str, "Header name cannot be null or empty!");
            Bundle bundle = this.f127880e;
            if (str2 == null) {
                str2 = "";
            }
            bundle.putString(str, str2);
            return this;
        }

        @NonNull
        public a c(@NonNull byte[] bArr) {
            this.f127879d = bArr;
            return this;
        }

        @NonNull
        public a d(int i10) {
            boolean z10 = false;
            if (i10 >= 0 && i10 <= C16042d.f127869q) {
                z10 = true;
            }
            A.b(z10, "Unrecognized http method code.");
            this.f127877b = i10;
            return this;
        }

        @NonNull
        public a e(long j10) {
            A.b(j10 >= 0, "The specified timeout must be non-negative.");
            this.f127878c = j10;
            return this;
        }
    }

    @c.b
    public C16042d(@c.e(id = 1000) int i10, @c.e(id = 1) String str, @c.e(id = 2) int i11, @c.e(id = 3) long j10, @c.e(id = 4) byte[] bArr, @c.e(id = 5) Bundle bundle) {
        this.f127874f = i10;
        this.f127870b = str;
        this.f127871c = i11;
        this.f127872d = j10;
        this.f127873e = bArr;
        this.f127875g = bundle;
    }

    @NonNull
    public Map<String, String> n() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.f127875g.size());
        for (String str : this.f127875g.keySet()) {
            String string = this.f127875g.getString(str);
            if (string == null) {
                string = "";
            }
            linkedHashMap.put(str, string);
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    @NonNull
    public String toString() {
        return "ProxyRequest[ url: " + this.f127870b + ", method: " + this.f127871c + " ]";
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 1, this.f127870b, false);
        I0.b.F(parcel, 2, this.f127871c);
        I0.b.K(parcel, 3, this.f127872d);
        I0.b.m(parcel, 4, this.f127873e, false);
        I0.b.k(parcel, 5, this.f127875g, false);
        I0.b.F(parcel, 1000, this.f127874f);
        I0.b.b(parcel, a10);
    }
}
