package com.google.android.gms.common.api;

import B0.C2318c;
import B0.C2323h;
import D0.C2444g;
import D0.InterfaceC2438d;
import D0.InterfaceC2452k;
import D0.InterfaceC2460o;
import D0.J0;
import D0.P0;
import D0.Y0;
import G0.C2570i;
import G0.S;
import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.load.engine.GlideException;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.internal.C11904b;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import s1.C15227a;

@Deprecated
public abstract class AbstractC11908l {

    @NonNull
    @C0.a
    public static final String f61279a = "<<default account>>";

    public static final int f61280b = 1;

    public static final int f61281c = 2;

    @J2.a("allClients")
    public static final Set f61282d = Collections.newSetFromMap(new WeakHashMap());

    @Deprecated
    public interface b extends InterfaceC2438d {

        public static final int f61301c = 1;

        public static final int f61302d = 2;
    }

    @Deprecated
    public interface c extends InterfaceC2452k {
    }

    public static void k(@NonNull String str, @NonNull FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @NonNull String[] strArr) {
        Set<AbstractC11908l> set = f61282d;
        synchronized (set) {
            try {
                String str2 = str + GlideException.a.f59088e;
                int i10 = 0;
                for (AbstractC11908l abstractC11908l : set) {
                    printWriter.append((CharSequence) str).append("GoogleApiClient#").println(i10);
                    abstractC11908l.j(str2, fileDescriptor, printWriter, strArr);
                    i10++;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @NonNull
    @C0.a
    public static Set<AbstractC11908l> n() {
        Set<AbstractC11908l> set = f61282d;
        synchronized (set) {
        }
        return set;
    }

    public abstract void A();

    public abstract void B(@NonNull b bVar);

    public abstract void C(@NonNull c cVar);

    @NonNull
    @C0.a
    public <L> com.google.android.gms.common.api.internal.f<L> D(@NonNull L l10) {
        throw new UnsupportedOperationException();
    }

    public abstract void E(@NonNull FragmentActivity fragmentActivity);

    public abstract void F(@NonNull b bVar);

    public abstract void G(@NonNull c cVar);

    public void H(J0 j02) {
        throw new UnsupportedOperationException();
    }

    public void I(J0 j02) {
        throw new UnsupportedOperationException();
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    public abstract C2318c d();

    @NonNull
    @ResultIgnorabilityUnspecified
    public abstract C2318c e(long j10, @NonNull TimeUnit timeUnit);

    @NonNull
    public abstract p<Status> f();

    public abstract void g();

    public void h(int i10) {
        throw new UnsupportedOperationException();
    }

    public abstract void i();

    public abstract void j(@NonNull String str, @NonNull FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @NonNull String[] strArr);

    @NonNull
    @ResultIgnorabilityUnspecified
    @C0.a
    public <A extends C11894a.b, R extends u, T extends C11904b.a<R, A>> T l(@NonNull T t10) {
        throw new UnsupportedOperationException();
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @C0.a
    public <A extends C11894a.b, T extends C11904b.a<? extends u, A>> T m(@NonNull T t10) {
        throw new UnsupportedOperationException();
    }

    @NonNull
    @C0.a
    public <C extends C11894a.f> C o(@NonNull C11894a.c<C> cVar) {
        throw new UnsupportedOperationException();
    }

    @NonNull
    public abstract C2318c p(@NonNull C11894a<?> c11894a);

    @NonNull
    @C0.a
    public Context q() {
        throw new UnsupportedOperationException();
    }

    @NonNull
    @C0.a
    public Looper r() {
        throw new UnsupportedOperationException();
    }

    @C0.a
    public boolean s(@NonNull C11894a<?> c11894a) {
        throw new UnsupportedOperationException();
    }

    public abstract boolean t(@NonNull C11894a<?> c11894a);

    public abstract boolean u();

    public abstract boolean v();

    public abstract boolean w(@NonNull b bVar);

    public abstract boolean x(@NonNull c cVar);

    @C0.a
    public boolean y(@NonNull InterfaceC2460o interfaceC2460o) {
        throw new UnsupportedOperationException();
    }

    @C0.a
    public void z() {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static final class a {

        @Nullable
        public Account f61283a;

        public final Set f61284b;

        public final Set f61285c;

        public int f61286d;

        public View f61287e;

        public String f61288f;

        public String f61289g;

        public final Map f61290h;

        public final Context f61291i;

        public final Map f61292j;

        public C2444g f61293k;

        public int f61294l;

        @Nullable
        public c f61295m;

        public Looper f61296n;

        public C2323h f61297o;

        public C11894a.AbstractC0948a f61298p;

        public final ArrayList f61299q;

        public final ArrayList f61300r;

        public a(@NonNull Context context) {
            this.f61284b = new HashSet();
            this.f61285c = new HashSet();
            this.f61290h = new ArrayMap();
            this.f61292j = new ArrayMap();
            this.f61294l = -1;
            this.f61297o = C2323h.x();
            this.f61298p = s1.e.f109176c;
            this.f61299q = new ArrayList();
            this.f61300r = new ArrayList();
            this.f61291i = context;
            this.f61296n = context.getMainLooper();
            this.f61288f = context.getPackageName();
            this.f61289g = context.getClass().getName();
        }

        @I2.a
        @NonNull
        public a a(@NonNull C11894a<? extends C11894a.d.e> c11894a) {
            G0.A.s(c11894a, "Api must not be null");
            this.f61292j.put(c11894a, null);
            List<Scope> a10 = ((C11894a.e) G0.A.s(c11894a.c(), "Base client builder must not be null")).a(null);
            this.f61285c.addAll(a10);
            this.f61284b.addAll(a10);
            return this;
        }

        @I2.a
        @NonNull
        public <O extends C11894a.d.c> a b(@NonNull C11894a<O> c11894a, @NonNull O o10) {
            G0.A.s(c11894a, "Api must not be null");
            G0.A.s(o10, "Null options are not permitted for this Api");
            this.f61292j.put(c11894a, o10);
            List<Scope> a10 = ((C11894a.e) G0.A.s(c11894a.c(), "Base client builder must not be null")).a(o10);
            this.f61285c.addAll(a10);
            this.f61284b.addAll(a10);
            return this;
        }

        @I2.a
        @NonNull
        public <O extends C11894a.d.c> a c(@NonNull C11894a<O> c11894a, @NonNull O o10, @NonNull Scope... scopeArr) {
            G0.A.s(c11894a, "Api must not be null");
            G0.A.s(o10, "Null options are not permitted for this Api");
            this.f61292j.put(c11894a, o10);
            q(c11894a, o10, scopeArr);
            return this;
        }

        @I2.a
        @NonNull
        public <T extends C11894a.d.e> a d(@NonNull C11894a<? extends C11894a.d.e> c11894a, @NonNull Scope... scopeArr) {
            G0.A.s(c11894a, "Api must not be null");
            this.f61292j.put(c11894a, null);
            q(c11894a, null, scopeArr);
            return this;
        }

        @I2.a
        @NonNull
        public a e(@NonNull b bVar) {
            G0.A.s(bVar, "Listener must not be null");
            this.f61299q.add(bVar);
            return this;
        }

        @I2.a
        @NonNull
        public a f(@NonNull c cVar) {
            G0.A.s(cVar, "Listener must not be null");
            this.f61300r.add(cVar);
            return this;
        }

        @I2.a
        @NonNull
        public a g(@NonNull Scope scope) {
            G0.A.s(scope, "Scope must not be null");
            this.f61284b.add(scope);
            return this;
        }

        @NonNull
        @ResultIgnorabilityUnspecified
        public AbstractC11908l h() {
            G0.A.b(!this.f61292j.isEmpty(), "must call addApi() to add at least one API");
            C2570i p10 = p();
            Map n10 = p10.n();
            ArrayMap arrayMap = new ArrayMap();
            ArrayMap arrayMap2 = new ArrayMap();
            ArrayList arrayList = new ArrayList();
            C11894a c11894a = null;
            boolean z10 = false;
            for (C11894a c11894a2 : this.f61292j.o()) {
                Object obj = this.f61292j.get(c11894a2);
                boolean z11 = n10.get(c11894a2) != null;
                arrayMap.put(c11894a2, Boolean.valueOf(z11));
                Y0 y02 = new Y0(c11894a2, z11);
                arrayList.add(y02);
                C11894a.AbstractC0948a abstractC0948a = (C11894a.AbstractC0948a) G0.A.r(c11894a2.a());
                C11894a.f d10 = abstractC0948a.d(this.f61291i, this.f61296n, p10, obj, y02, y02);
                arrayMap2.put(c11894a2.b(), d10);
                if (abstractC0948a.b() == 1) {
                    z10 = obj != null;
                }
                if (d10.b()) {
                    if (c11894a != null) {
                        throw new IllegalStateException(c11894a2.d() + " cannot be used with " + c11894a.d());
                    }
                    c11894a = c11894a2;
                }
            }
            if (c11894a != null) {
                if (z10) {
                    throw new IllegalStateException("With using " + c11894a.d() + ", GamesOptions can only be specified within GoogleSignInOptions.Builder");
                }
                G0.A.z(this.f61283a == null, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", c11894a.d());
                G0.A.z(this.f61284b.equals(this.f61285c), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", c11894a.d());
            }
            com.google.android.gms.common.api.internal.q qVar = new com.google.android.gms.common.api.internal.q(this.f61291i, new ReentrantLock(), this.f61296n, p10, this.f61297o, this.f61298p, arrayMap, this.f61299q, this.f61300r, arrayMap2, this.f61294l, com.google.android.gms.common.api.internal.q.K(arrayMap2.values(), true), arrayList);
            synchronized (AbstractC11908l.f61282d) {
                AbstractC11908l.f61282d.add(qVar);
            }
            if (this.f61294l >= 0) {
                P0.u(this.f61293k).v(this.f61294l, qVar, this.f61295m);
            }
            return qVar;
        }

        @I2.a
        @NonNull
        public a i(@NonNull FragmentActivity fragmentActivity, int i10, @Nullable c cVar) {
            C2444g c2444g = new C2444g((Activity) fragmentActivity);
            G0.A.b(i10 >= 0, "clientId must be non-negative");
            this.f61294l = i10;
            this.f61295m = cVar;
            this.f61293k = c2444g;
            return this;
        }

        @I2.a
        @NonNull
        public a j(@NonNull FragmentActivity fragmentActivity, @Nullable c cVar) {
            i(fragmentActivity, 0, cVar);
            return this;
        }

        @I2.a
        @NonNull
        public a k(@NonNull String str) {
            this.f61283a = str == null ? null : new Account(str, "com.google");
            return this;
        }

        @I2.a
        @NonNull
        public a l(int i10) {
            this.f61286d = i10;
            return this;
        }

        @I2.a
        @NonNull
        public a m(@NonNull Handler handler) {
            G0.A.s(handler, "Handler must not be null");
            this.f61296n = handler.getLooper();
            return this;
        }

        @I2.a
        @NonNull
        public a n(@NonNull View view) {
            G0.A.s(view, "View must not be null");
            this.f61287e = view;
            return this;
        }

        @I2.a
        @NonNull
        public a o() {
            k("<<default account>>");
            return this;
        }

        @NonNull
        public final C2570i p() {
            C15227a c15227a = C15227a.f109164k;
            Map map = this.f61292j;
            C11894a c11894a = s1.e.f109180g;
            if (map.containsKey(c11894a)) {
                c15227a = (C15227a) this.f61292j.get(c11894a);
            }
            return new C2570i(this.f61283a, this.f61284b, this.f61290h, this.f61286d, this.f61287e, this.f61288f, this.f61289g, c15227a, false);
        }

        public final void q(C11894a c11894a, @Nullable C11894a.d dVar, Scope... scopeArr) {
            HashSet hashSet = new HashSet(((C11894a.e) G0.A.s(c11894a.c(), "Base client builder must not be null")).a(dVar));
            for (Scope scope : scopeArr) {
                hashSet.add(scope);
            }
            this.f61290h.put(c11894a, new S(hashSet));
        }

        public a(@NonNull Context context, @NonNull b bVar, @NonNull c cVar) {
            this(context);
            G0.A.s(bVar, "Must provide a connected listener");
            this.f61299q.add(bVar);
            G0.A.s(cVar, "Must provide a connection failed listener");
            this.f61300r.add(cVar);
        }
    }
}
