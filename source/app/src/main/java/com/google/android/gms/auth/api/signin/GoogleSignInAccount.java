package com.google.android.gms.auth.api.signin;

import G0.A;
import G0.F;
import I0.b;
import I0.c;
import T0.C3041k;
import T0.InterfaceC3037g;
import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.ContactsContract;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArraySet;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import y0.g;

@c.a(creator = "GoogleSignInAccountCreator")
@Deprecated
public class GoogleSignInAccount extends I0.a implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new g();

    @NonNull
    @VisibleForTesting
    public static final InterfaceC3037g f60976o = C3041k.e();

    @c.h(id = 1)
    public final int f60977b;

    @Nullable
    @c.InterfaceC0186c(getter = "getId", id = 2)
    public final String f60978c;

    @Nullable
    @c.InterfaceC0186c(getter = "getIdToken", id = 3)
    public final String f60979d;

    @Nullable
    @c.InterfaceC0186c(getter = "getEmail", id = 4)
    public final String f60980e;

    @Nullable
    @c.InterfaceC0186c(getter = "getDisplayName", id = 5)
    public final String f60981f;

    @Nullable
    @c.InterfaceC0186c(getter = "getPhotoUrl", id = 6)
    public final Uri f60982g;

    @Nullable
    @c.InterfaceC0186c(getter = "getServerAuthCode", id = 7)
    public String f60983h;

    @c.InterfaceC0186c(getter = "getExpirationTimeSecs", id = 8)
    public final long f60984i;

    @c.InterfaceC0186c(getter = "getObfuscatedIdentifier", id = 9)
    public final String f60985j;

    @c.InterfaceC0186c(id = 10)
    public final List f60986k;

    @Nullable
    @c.InterfaceC0186c(getter = "getGivenName", id = 11)
    public final String f60987l;

    @Nullable
    @c.InterfaceC0186c(getter = "getFamilyName", id = 12)
    public final String f60988m;

    public final Set f60989n = new HashSet();

    @c.b
    public GoogleSignInAccount(@c.e(id = 1) int i10, @Nullable @c.e(id = 2) String str, @Nullable @c.e(id = 3) String str2, @Nullable @c.e(id = 4) String str3, @Nullable @c.e(id = 5) String str4, @Nullable @c.e(id = 6) Uri uri, @Nullable @c.e(id = 7) String str5, @c.e(id = 8) long j10, @c.e(id = 9) String str6, @c.e(id = 10) List list, @Nullable @c.e(id = 11) String str7, @Nullable @c.e(id = 12) String str8) {
        this.f60977b = i10;
        this.f60978c = str;
        this.f60979d = str2;
        this.f60980e = str3;
        this.f60981f = str4;
        this.f60982g = uri;
        this.f60983h = str5;
        this.f60984i = j10;
        this.f60985j = str6;
        this.f60986k = list;
        this.f60987l = str7;
        this.f60988m = str8;
    }

    @NonNull
    public static GoogleSignInAccount E0(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Uri uri, @Nullable Long l10, @NonNull String str7, @NonNull Set set) {
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, l10.longValue(), A.l(str7), new ArrayList((Collection) A.r(set)), str5, str6);
    }

    @Nullable
    public static GoogleSignInAccount F0(@Nullable String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("photoUrl");
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            hashSet.add(new Scope(jSONArray.getString(i10)));
        }
        GoogleSignInAccount E02 = E0(jSONObject.optString("id"), jSONObject.has("tokenId") ? jSONObject.optString("tokenId") : null, jSONObject.has("email") ? jSONObject.optString("email") : null, jSONObject.has(ContactsContract.Directory.DISPLAY_NAME) ? jSONObject.optString(ContactsContract.Directory.DISPLAY_NAME) : null, jSONObject.has("givenName") ? jSONObject.optString("givenName") : null, jSONObject.has("familyName") ? jSONObject.optString("familyName") : null, parse, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet);
        E02.f60983h = jSONObject.has("serverAuthCode") ? jSONObject.optString("serverAuthCode") : null;
        return E02;
    }

    public static GoogleSignInAccount I0(Account account, Set set) {
        return E0(null, null, account.name, null, null, null, null, 0L, account.name, set);
    }

    @NonNull
    @C0.a
    public static GoogleSignInAccount n() {
        return I0(new Account("<<default account>>", "com.google"), new HashSet());
    }

    @NonNull
    @C0.a
    public static GoogleSignInAccount p(@NonNull Account account) {
        return I0(account, new ArraySet());
    }

    @F
    @NonNull
    @C0.a
    public static GoogleSignInAccount t(@NonNull Account account, @NonNull Scope scope, @NonNull Scope... scopeArr) {
        A.r(account);
        A.r(scope);
        HashSet hashSet = new HashSet();
        hashSet.add(scope);
        hashSet.addAll(Arrays.asList(scopeArr));
        return I0(account, hashSet);
    }

    @NonNull
    @C0.a
    public Set<Scope> A0() {
        HashSet hashSet = new HashSet(this.f60986k);
        hashSet.addAll(this.f60989n);
        return hashSet;
    }

    @Nullable
    public String B0() {
        return this.f60983h;
    }

    @C0.a
    public boolean C0() {
        return f60976o.a() / 1000 >= this.f60984i + (-300);
    }

    @I2.a
    @NonNull
    @C0.a
    public GoogleSignInAccount D0(@NonNull Scope... scopeArr) {
        if (scopeArr != null) {
            Collections.addAll(this.f60989n, scopeArr);
        }
        return this;
    }

    @NonNull
    public final String G0() {
        return this.f60985j;
    }

    @NonNull
    public final String H0() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (x0() != null) {
                jSONObject.put("id", x0());
            }
            if (y0() != null) {
                jSONObject.put("tokenId", y0());
            }
            if (n0() != null) {
                jSONObject.put("email", n0());
            }
            if (b0() != null) {
                jSONObject.put(ContactsContract.Directory.DISPLAY_NAME, b0());
            }
            if (v0() != null) {
                jSONObject.put("givenName", v0());
            }
            if (u0() != null) {
                jSONObject.put("familyName", u0());
            }
            Uri z02 = z0();
            if (z02 != null) {
                jSONObject.put("photoUrl", z02.toString());
            }
            if (B0() != null) {
                jSONObject.put("serverAuthCode", B0());
            }
            jSONObject.put("expirationTime", this.f60984i);
            jSONObject.put("obfuscatedIdentifier", this.f60985j);
            JSONArray jSONArray = new JSONArray();
            List list = this.f60986k;
            Scope[] scopeArr = (Scope[]) list.toArray(new Scope[list.size()]);
            Arrays.sort(scopeArr, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    Parcelable.Creator<GoogleSignInAccount> creator = GoogleSignInAccount.CREATOR;
                    return ((Scope) obj).n().compareTo(((Scope) obj2).n());
                }
            });
            for (Scope scope : scopeArr) {
                jSONArray.put(scope.n());
            }
            jSONObject.put("grantedScopes", jSONArray);
            jSONObject.remove("serverAuthCode");
            return jSONObject.toString();
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Nullable
    public String b0() {
        return this.f60981f;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.f60985j.equals(this.f60985j) && googleSignInAccount.A0().equals(A0());
    }

    @Nullable
    public Account h() {
        String str = this.f60980e;
        if (str == null) {
            return null;
        }
        return new Account(str, "com.google");
    }

    public int hashCode() {
        return ((this.f60985j.hashCode() + 527) * 31) + A0().hashCode();
    }

    @Nullable
    public String n0() {
        return this.f60980e;
    }

    @Nullable
    public String u0() {
        return this.f60988m;
    }

    @Nullable
    public String v0() {
        return this.f60987l;
    }

    @NonNull
    public Set<Scope> w0() {
        return new HashSet(this.f60986k);
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = b.a(parcel);
        b.F(parcel, 1, this.f60977b);
        b.Y(parcel, 2, x0(), false);
        b.Y(parcel, 3, y0(), false);
        b.Y(parcel, 4, n0(), false);
        b.Y(parcel, 5, b0(), false);
        b.S(parcel, 6, z0(), i10, false);
        b.Y(parcel, 7, B0(), false);
        b.K(parcel, 8, this.f60984i);
        b.Y(parcel, 9, this.f60985j, false);
        b.d0(parcel, 10, this.f60986k, false);
        b.Y(parcel, 11, v0(), false);
        b.Y(parcel, 12, u0(), false);
        b.b(parcel, a10);
    }

    @Nullable
    public String x0() {
        return this.f60978c;
    }

    @Nullable
    public String y0() {
        return this.f60979d;
    }

    @Nullable
    public Uri z0() {
        return this.f60982g;
    }
}
