package G0;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.collection.ArraySet;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.Scope;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;
import s1.C15227a;

@C0.a
public final class C2570i {

    @Nullable
    public final Account f7410a;

    public final Set f7411b;

    public final Set f7412c;

    public final Map f7413d;

    public final int f7414e;

    @Nullable
    public final View f7415f;

    public final String f7416g;

    public final String f7417h;

    public final C15227a f7418i;

    public Integer f7419j;

    @C0.a
    public static final class a {

        @Nullable
        public Account f7420a;

        public ArraySet f7421b;

        public String f7422c;

        public String f7423d;

        public final C15227a f7424e = C15227a.f109164k;

        @NonNull
        @C0.a
        public C2570i a() {
            return new C2570i(this.f7420a, this.f7421b, null, 0, null, this.f7422c, this.f7423d, this.f7424e, false);
        }

        @I2.a
        @NonNull
        @C0.a
        public a b(@NonNull String str) {
            this.f7422c = str;
            return this;
        }

        @I2.a
        @NonNull
        public final a c(@NonNull Collection collection) {
            if (this.f7421b == null) {
                this.f7421b = new ArraySet();
            }
            this.f7421b.addAll(collection);
            return this;
        }

        @I2.a
        @NonNull
        public final a d(@Nullable Account account) {
            this.f7420a = account;
            return this;
        }

        @I2.a
        @NonNull
        public final a e(@NonNull String str) {
            this.f7423d = str;
            return this;
        }
    }

    @C0.a
    public C2570i(@NonNull Account account, @NonNull Set<Scope> set, @NonNull Map<C11894a<?>, S> map, int i10, @Nullable View view, @NonNull String str, @NonNull String str2, @Nullable C15227a c15227a) {
        this(account, set, map, i10, view, str, str2, c15227a, false);
    }

    @NonNull
    @C0.a
    public static C2570i a(@NonNull Context context) {
        return new AbstractC11908l.a(context).p();
    }

    @androidx.annotation.Nullable
    @C0.a
    public Account b() {
        return this.f7410a;
    }

    @androidx.annotation.Nullable
    @C0.a
    @Deprecated
    public String c() {
        Account account = this.f7410a;
        if (account != null) {
            return account.name;
        }
        return null;
    }

    @NonNull
    @C0.a
    public Account d() {
        Account account = this.f7410a;
        return account != null ? account : new Account("<<default account>>", "com.google");
    }

    @NonNull
    @C0.a
    public Set<Scope> e() {
        return this.f7412c;
    }

    @NonNull
    @C0.a
    public Set<Scope> f(@NonNull C11894a<?> c11894a) {
        S s10 = (S) this.f7413d.get(c11894a);
        if (s10 == null || s10.f7315a.isEmpty()) {
            return this.f7411b;
        }
        HashSet hashSet = new HashSet(this.f7411b);
        hashSet.addAll(s10.f7315a);
        return hashSet;
    }

    @C0.a
    public int g() {
        return this.f7414e;
    }

    @NonNull
    @C0.a
    public String h() {
        return this.f7416g;
    }

    @NonNull
    @C0.a
    public Set<Scope> i() {
        return this.f7411b;
    }

    @androidx.annotation.Nullable
    @C0.a
    public View j() {
        return this.f7415f;
    }

    @NonNull
    public final C15227a k() {
        return this.f7418i;
    }

    @androidx.annotation.Nullable
    public final Integer l() {
        return this.f7419j;
    }

    @androidx.annotation.Nullable
    public final String m() {
        return this.f7417h;
    }

    @NonNull
    public final Map n() {
        return this.f7413d;
    }

    public final void o(@NonNull Integer num) {
        this.f7419j = num;
    }

    public C2570i(@Nullable Account account, @NonNull Set set, @NonNull Map map, int i10, @Nullable View view, @NonNull String str, @NonNull String str2, @Nullable C15227a c15227a, boolean z10) {
        this.f7410a = account;
        Set emptySet = set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
        this.f7411b = emptySet;
        map = map == null ? Collections.emptyMap() : map;
        this.f7413d = map;
        this.f7415f = view;
        this.f7414e = i10;
        this.f7416g = str;
        this.f7417h = str2;
        this.f7418i = c15227a == null ? C15227a.f109164k : c15227a;
        HashSet hashSet = new HashSet(emptySet);
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            hashSet.addAll(((S) it.next()).f7315a);
        }
        this.f7412c = Collections.unmodifiableSet(hashSet);
    }
}
