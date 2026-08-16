package com.google.android.gms.common.api;

import B0.C2320e;
import D0.InterfaceC2438d;
import D0.InterfaceC2452k;
import G0.AbstractC2564f;
import G0.C2570i;
import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.C11894a.d;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;
import java.util.Set;

public final class C11894a<O extends d> {

    public final AbstractC0948a f61050a;

    public final g f61051b;

    public final String f61052c;

    @C0.a
    public static abstract class AbstractC0948a<T extends f, O> extends e<T, O> {
        @NonNull
        @C0.a
        public T c(@NonNull Context context, @NonNull Looper looper, @NonNull C2570i c2570i, @NonNull O o10, @NonNull InterfaceC2438d interfaceC2438d, @NonNull InterfaceC2452k interfaceC2452k) {
            throw new UnsupportedOperationException("buildClient must be implemented");
        }

        @NonNull
        @C0.a
        @Deprecated
        public T d(@NonNull Context context, @NonNull Looper looper, @NonNull C2570i c2570i, @NonNull O o10, @NonNull AbstractC11908l.b bVar, @NonNull AbstractC11908l.c cVar) {
            return c(context, looper, c2570i, o10, bVar, cVar);
        }
    }

    @C0.a
    public interface b {
    }

    @C0.a
    public static class c<C extends b> {
    }

    public interface d {

        @NonNull
        public static final C0950d f61053n4 = new C0950d(null);

        public interface InterfaceC0949a extends c, e {
            @NonNull
            Account h();
        }

        public interface b extends c {
            @Nullable
            GoogleSignInAccount m();
        }

        public interface c extends d {
        }

        public static final class C0950d implements e {
            public C0950d() {
            }

            public C0950d(A a10) {
            }
        }

        public interface e extends d {
        }

        public interface f extends c, e {
        }
    }

    @VisibleForTesting
    @C0.a
    public static abstract class e<T extends b, O> {

        @C0.a
        public static final int f61054a = 1;

        @C0.a
        public static final int f61055b = 2;

        @C0.a
        public static final int f61056c = Integer.MAX_VALUE;

        @NonNull
        @C0.a
        public List<Scope> a(@Nullable O o10) {
            return Collections.emptyList();
        }

        @C0.a
        public int b() {
            return Integer.MAX_VALUE;
        }
    }

    @C0.a
    public interface f extends b {
        @C0.a
        boolean a();

        @C0.a
        boolean b();

        @C0.a
        void e(@NonNull String str);

        @C0.a
        boolean f();

        @C0.a
        boolean g();

        @Nullable
        @C0.a
        IBinder h();

        @NonNull
        @C0.a
        Set<Scope> i();

        @C0.a
        boolean isConnected();

        @C0.a
        void j();

        @C0.a
        void k(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr);

        @C0.a
        int l();

        @NonNull
        @C0.a
        Intent m();

        @NonNull
        @C0.a
        String n();

        @NonNull
        @C0.a
        C2320e[] p();

        @C0.a
        boolean q();

        @C0.a
        void r(@NonNull AbstractC2564f.e eVar);

        @C0.a
        void s(@NonNull AbstractC2564f.c cVar);

        @C0.a
        void t(@Nullable G0.r rVar, @Nullable Set<Scope> set);

        @NonNull
        @C0.a
        C2320e[] v();

        @Nullable
        @C0.a
        String w();
    }

    @C0.a
    public static final class g<C extends f> extends c<C> {
    }

    @C0.a
    public <C extends f> C11894a(@NonNull String str, @NonNull AbstractC0948a<C, O> abstractC0948a, @NonNull g<C> gVar) {
        G0.A.s(abstractC0948a, "Cannot construct an Api with a null ClientBuilder");
        G0.A.s(gVar, "Cannot construct an Api with a null ClientKey");
        this.f61052c = str;
        this.f61050a = abstractC0948a;
        this.f61051b = gVar;
    }

    @NonNull
    public final AbstractC0948a a() {
        return this.f61050a;
    }

    @NonNull
    public final c b() {
        return this.f61051b;
    }

    @NonNull
    public final e c() {
        return this.f61050a;
    }

    @NonNull
    public final String d() {
        return this.f61052c;
    }
}
