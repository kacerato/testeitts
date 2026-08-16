package com.google.android.gms.common.api.internal;

import B0.C2320e;
import D0.C2472u0;
import D0.C2474v0;
import D0.InterfaceC2458n;
import D0.RunnableC2470t0;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.C11894a.b;
import com.google.android.gms.common.api.internal.f;
import v1.C15791l;

@C0.a
public class i<A extends C11894a.b, L> {

    @NonNull
    @C0.a
    public final h<A, L> f61157a;

    @NonNull
    public final k f61158b;

    @NonNull
    public final Runnable f61159c;

    @C0.a
    public static class a<A extends C11894a.b, L> {

        public InterfaceC2458n f61160a;

        public InterfaceC2458n f61161b;

        public f f61163d;

        public C2320e[] f61164e;

        public int f61166g;

        public Runnable f61162c = RunnableC2470t0.f4710b;

        public boolean f61165f = true;

        public a() {
        }

        @NonNull
        @C0.a
        public i<A, L> a() {
            G0.A.b(this.f61160a != null, "Must set register function");
            G0.A.b(this.f61161b != null, "Must set unregister function");
            G0.A.b(this.f61163d != null, "Must set holder");
            return new i<>(new y(this, this.f61163d, this.f61164e, this.f61165f, this.f61166g), new z(this, (f.a) G0.A.s(this.f61163d.b(), "Key must not be null")), this.f61162c, null);
        }

        @I2.a
        @NonNull
        @C0.a
        public a<A, L> b(@NonNull Runnable runnable) {
            this.f61162c = runnable;
            return this;
        }

        @I2.a
        @NonNull
        @C0.a
        public a<A, L> c(@NonNull InterfaceC2458n<A, C15791l<Void>> interfaceC2458n) {
            this.f61160a = interfaceC2458n;
            return this;
        }

        @I2.a
        @NonNull
        @C0.a
        public a<A, L> d(boolean z10) {
            this.f61165f = z10;
            return this;
        }

        @I2.a
        @NonNull
        @C0.a
        public a<A, L> e(@NonNull C2320e... c2320eArr) {
            this.f61164e = c2320eArr;
            return this;
        }

        @I2.a
        @NonNull
        @C0.a
        public a<A, L> f(int i10) {
            this.f61166g = i10;
            return this;
        }

        @I2.a
        @NonNull
        @C0.a
        public a<A, L> g(@NonNull InterfaceC2458n<A, C15791l<Boolean>> interfaceC2458n) {
            this.f61161b = interfaceC2458n;
            return this;
        }

        @I2.a
        @NonNull
        @C0.a
        public a<A, L> h(@NonNull f<L> fVar) {
            this.f61163d = fVar;
            return this;
        }

        public a(C2472u0 c2472u0) {
        }
    }

    public i(h hVar, k kVar, Runnable runnable, C2474v0 c2474v0) {
        this.f61157a = hVar;
        this.f61158b = kVar;
        this.f61159c = runnable;
    }

    @NonNull
    @C0.a
    public static <A extends C11894a.b, L> a<A, L> a() {
        return new a<>(null);
    }
}
