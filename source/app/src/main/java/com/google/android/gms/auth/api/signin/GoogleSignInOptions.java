package com.google.android.gms.auth.api.signin;

import B0.C2333s;
import G0.A;
import I0.b;
import I0.c;
import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.ContactsContract;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import y0.InterfaceC16132c;
import y0.h;
import y0.j;
import z0.C16216a;
import z0.C16217b;

@c.a(creator = "GoogleSignInOptionsCreator")
@Deprecated
public class GoogleSignInOptions extends I0.a implements C11894a.d.f, ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;

    @NonNull
    public static final GoogleSignInOptions f60990m;

    @NonNull
    public static final GoogleSignInOptions f60991n;

    @NonNull
    @VisibleForTesting
    public static final Scope f60992o = new Scope("profile");

    @NonNull
    @VisibleForTesting
    public static final Scope f60993p = new Scope("email");

    @NonNull
    @VisibleForTesting
    public static final Scope f60994q = new Scope(C2333s.f1279c);

    @NonNull
    @VisibleForTesting
    public static final Scope f60995r;

    @NonNull
    @VisibleForTesting
    public static final Scope f60996s;

    public static final Comparator f60997t;

    @c.h(id = 1)
    public final int f60998b;

    @c.InterfaceC0186c(getter = "getScopes", id = 2)
    public final ArrayList f60999c;

    @Nullable
    @c.InterfaceC0186c(getter = "getAccount", id = 3)
    public Account f61000d;

    @c.InterfaceC0186c(getter = "isIdTokenRequested", id = 4)
    public boolean f61001e;

    @c.InterfaceC0186c(getter = "isServerAuthCodeRequested", id = 5)
    public final boolean f61002f;

    @c.InterfaceC0186c(getter = "isForceCodeForRefreshToken", id = 6)
    public final boolean f61003g;

    @Nullable
    @c.InterfaceC0186c(getter = "getServerClientId", id = 7)
    public String f61004h;

    @Nullable
    @c.InterfaceC0186c(getter = "getHostedDomain", id = 8)
    public String f61005i;

    @c.InterfaceC0186c(getter = "getExtensions", id = 9)
    public ArrayList f61006j;

    @Nullable
    @c.InterfaceC0186c(getter = "getLogSessionId", id = 10)
    public String f61007k;

    public Map f61008l;

    static {
        Scope scope = new Scope(C2333s.f1285i);
        f60995r = scope;
        f60996s = new Scope(C2333s.f1284h);
        a aVar = new a();
        aVar.d();
        aVar.f();
        f60990m = aVar.b();
        a aVar2 = new a();
        aVar2.g(scope, new Scope[0]);
        f60991n = aVar2.b();
        CREATOR = new j();
        f60997t = new h();
    }

    public static Map M0(@Nullable List list) {
        HashMap hashMap = new HashMap();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                C16216a c16216a = (C16216a) it.next();
                hashMap.put(Integer.valueOf(c16216a.n()), c16216a);
            }
        }
        return hashMap;
    }

    @Nullable
    public static GoogleSignInOptions z0(@Nullable String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            hashSet.add(new Scope(jSONArray.getString(i10)));
        }
        String optString = jSONObject.has(ContactsContract.Directory.ACCOUNT_NAME) ? jSONObject.optString(ContactsContract.Directory.ACCOUNT_NAME) : null;
        return new GoogleSignInOptions(3, new ArrayList(hashSet), !TextUtils.isEmpty(optString) ? new Account(optString, "com.google") : null, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.has("serverClientId") ? jSONObject.optString("serverClientId") : null, jSONObject.has("hostedDomain") ? jSONObject.optString("hostedDomain") : null, new HashMap(), (String) null);
    }

    @NonNull
    public final String D0() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.f60999c, f60997t);
            Iterator it = this.f60999c.iterator();
            while (it.hasNext()) {
                jSONArray.put(((Scope) it.next()).n());
            }
            jSONObject.put("scopes", jSONArray);
            Account account = this.f61000d;
            if (account != null) {
                jSONObject.put(ContactsContract.Directory.ACCOUNT_NAME, account.name);
            }
            jSONObject.put("idTokenRequested", this.f61001e);
            jSONObject.put("forceCodeForRefreshToken", this.f61003g);
            jSONObject.put("serverAuthRequested", this.f61002f);
            if (!TextUtils.isEmpty(this.f61004h)) {
                jSONObject.put("serverClientId", this.f61004h);
            }
            if (!TextUtils.isEmpty(this.f61005i)) {
                jSONObject.put("hostedDomain", this.f61005i);
            }
            return jSONObject.toString();
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    @NonNull
    public Scope[] b0() {
        return (Scope[]) this.f60999c.toArray(new Scope[this.f60999c.size()]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0048, code lost:
    
        if (r1.equals(r4.h()) != false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
            if (this.f61006j.isEmpty() && googleSignInOptions.f61006j.isEmpty() && this.f60999c.size() == googleSignInOptions.n0().size() && this.f60999c.containsAll(googleSignInOptions.n0())) {
                Account account = this.f61000d;
                if (account == null) {
                    if (googleSignInOptions.h() == null) {
                    }
                }
                if (TextUtils.isEmpty(this.f61004h)) {
                    if (TextUtils.isEmpty(googleSignInOptions.u0())) {
                    }
                } else if (!this.f61004h.equals(googleSignInOptions.u0())) {
                }
                if (this.f61003g == googleSignInOptions.v0() && this.f61001e == googleSignInOptions.w0() && this.f61002f == googleSignInOptions.x0()) {
                    if (TextUtils.equals(this.f61007k, googleSignInOptions.t())) {
                        return true;
                    }
                }
            }
        } catch (ClassCastException unused) {
        }
        return false;
    }

    @Nullable
    @C0.a
    public Account h() {
        return this.f61000d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.f60999c;
        int size = arrayList2.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(((Scope) arrayList2.get(i10)).n());
        }
        Collections.sort(arrayList);
        C16217b c16217b = new C16217b();
        c16217b.a(arrayList);
        c16217b.a(this.f61000d);
        c16217b.a(this.f61004h);
        c16217b.c(this.f61003g);
        c16217b.c(this.f61001e);
        c16217b.c(this.f61002f);
        c16217b.a(this.f61007k);
        return c16217b.b();
    }

    @NonNull
    @C0.a
    public ArrayList<C16216a> n() {
        return this.f61006j;
    }

    @NonNull
    @C0.a
    public ArrayList<Scope> n0() {
        return new ArrayList<>(this.f60999c);
    }

    @Nullable
    @C0.a
    public String t() {
        return this.f61007k;
    }

    @Nullable
    @C0.a
    public String u0() {
        return this.f61004h;
    }

    @C0.a
    public boolean v0() {
        return this.f61003g;
    }

    @C0.a
    public boolean w0() {
        return this.f61001e;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int i11 = this.f60998b;
        int a10 = b.a(parcel);
        b.F(parcel, 1, i11);
        b.d0(parcel, 2, n0(), false);
        b.S(parcel, 3, h(), i10, false);
        b.g(parcel, 4, w0());
        b.g(parcel, 5, x0());
        b.g(parcel, 6, v0());
        b.Y(parcel, 7, u0(), false);
        b.Y(parcel, 8, this.f61005i, false);
        b.d0(parcel, 9, n(), false);
        b.Y(parcel, 10, t(), false);
        b.b(parcel, a10);
    }

    @C0.a
    public boolean x0() {
        return this.f61002f;
    }

    public static final class a {

        public Set f61009a;

        public boolean f61010b;

        public boolean f61011c;

        public boolean f61012d;

        @Nullable
        public String f61013e;

        @Nullable
        public Account f61014f;

        @Nullable
        public String f61015g;

        public Map f61016h;

        @Nullable
        public String f61017i;

        public a() {
            this.f61009a = new HashSet();
            this.f61016h = new HashMap();
        }

        @I2.a
        @NonNull
        public a a(@NonNull InterfaceC16132c interfaceC16132c) {
            if (this.f61016h.containsKey(Integer.valueOf(interfaceC16132c.a()))) {
                throw new IllegalStateException("Only one extension per type may be added");
            }
            List<Scope> b10 = interfaceC16132c.b();
            if (b10 != null) {
                this.f61009a.addAll(b10);
            }
            this.f61016h.put(Integer.valueOf(interfaceC16132c.a()), new C16216a(interfaceC16132c));
            return this;
        }

        @NonNull
        public GoogleSignInOptions b() {
            if (this.f61009a.contains(GoogleSignInOptions.f60996s)) {
                Set set = this.f61009a;
                Scope scope = GoogleSignInOptions.f60995r;
                if (set.contains(scope)) {
                    this.f61009a.remove(scope);
                }
            }
            if (this.f61012d && (this.f61014f == null || !this.f61009a.isEmpty())) {
                d();
            }
            return new GoogleSignInOptions(new ArrayList(this.f61009a), this.f61014f, this.f61012d, this.f61010b, this.f61011c, this.f61013e, this.f61015g, this.f61016h, this.f61017i);
        }

        @I2.a
        @NonNull
        public a c() {
            this.f61009a.add(GoogleSignInOptions.f60993p);
            return this;
        }

        @I2.a
        @NonNull
        public a d() {
            this.f61009a.add(GoogleSignInOptions.f60994q);
            return this;
        }

        @I2.a
        @NonNull
        public a e(@NonNull String str) {
            this.f61012d = true;
            m(str);
            this.f61013e = str;
            return this;
        }

        @I2.a
        @NonNull
        public a f() {
            this.f61009a.add(GoogleSignInOptions.f60992o);
            return this;
        }

        @I2.a
        @NonNull
        public a g(@NonNull Scope scope, @NonNull Scope... scopeArr) {
            this.f61009a.add(scope);
            this.f61009a.addAll(Arrays.asList(scopeArr));
            return this;
        }

        @I2.a
        @NonNull
        public a h(@NonNull String str) {
            i(str, false);
            return this;
        }

        @I2.a
        @NonNull
        public a i(@NonNull String str, boolean z10) {
            this.f61010b = true;
            m(str);
            this.f61013e = str;
            this.f61011c = z10;
            return this;
        }

        @I2.a
        @NonNull
        public a j(@NonNull String str) {
            this.f61014f = new Account(A.l(str), "com.google");
            return this;
        }

        @I2.a
        @NonNull
        public a k(@NonNull String str) {
            this.f61015g = A.l(str);
            return this;
        }

        @I2.a
        @NonNull
        @C0.a
        public a l(@NonNull String str) {
            this.f61017i = str;
            return this;
        }

        public final String m(String str) {
            A.l(str);
            String str2 = this.f61013e;
            boolean z10 = true;
            if (str2 != null && !str2.equals(str)) {
                z10 = false;
            }
            A.b(z10, "two different server client ids provided");
            return str;
        }

        public a(@NonNull GoogleSignInOptions googleSignInOptions) {
            this.f61009a = new HashSet();
            this.f61016h = new HashMap();
            A.r(googleSignInOptions);
            this.f61009a = new HashSet(googleSignInOptions.f60999c);
            this.f61010b = googleSignInOptions.f61002f;
            this.f61011c = googleSignInOptions.f61003g;
            this.f61012d = googleSignInOptions.f61001e;
            this.f61013e = googleSignInOptions.f61004h;
            this.f61014f = googleSignInOptions.f61000d;
            this.f61015g = googleSignInOptions.f61005i;
            this.f61016h = GoogleSignInOptions.M0(googleSignInOptions.f61006j);
            this.f61017i = googleSignInOptions.f61007k;
        }
    }

    @c.b
    public GoogleSignInOptions(@c.e(id = 1) int i10, @c.e(id = 2) ArrayList arrayList, @Nullable @c.e(id = 3) Account account, @c.e(id = 4) boolean z10, @c.e(id = 5) boolean z11, @c.e(id = 6) boolean z12, @Nullable @c.e(id = 7) String str, @Nullable @c.e(id = 8) String str2, @c.e(id = 9) ArrayList arrayList2, @Nullable @c.e(id = 10) String str3) {
        this(i10, arrayList, account, z10, z11, z12, str, str2, M0(arrayList2), str3);
    }

    public GoogleSignInOptions(int i10, ArrayList arrayList, @Nullable Account account, boolean z10, boolean z11, boolean z12, @Nullable String str, @Nullable String str2, Map map, @Nullable String str3) {
        this.f60998b = i10;
        this.f60999c = arrayList;
        this.f61000d = account;
        this.f61001e = z10;
        this.f61002f = z11;
        this.f61003g = z12;
        this.f61004h = str;
        this.f61005i = str2;
        this.f61006j = new ArrayList(map.values());
        this.f61008l = map;
        this.f61007k = str3;
    }
}
