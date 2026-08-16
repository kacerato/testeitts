package D0;

import B0.C2320e;
import T0.InterfaceC3034d;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.C11894a.b;
import v1.C15791l;

@C0.a
public abstract class r<A extends C11894a.b, ResultT> {

    @Nullable
    public final C2320e[] f4696a;

    public final boolean f4697b;

    public final int f4698c;

    @C0.a
    public static class a<A extends C11894a.b, ResultT> {

        public InterfaceC2458n f4699a;

        public C2320e[] f4701c;

        public boolean f4700b = true;

        public int f4702d = 0;

        public a() {
        }

        @NonNull
        @C0.a
        public r<A, ResultT> a() {
            G0.A.b(this.f4699a != null, "execute parameter required");
            return new D0(this, this.f4701c, this.f4700b, this.f4702d);
        }

        @I2.a
        @NonNull
        @Deprecated
        @C0.a
        public a<A, ResultT> b(@NonNull final InterfaceC3034d<A, C15791l<ResultT>> interfaceC3034d) {
            this.f4699a = new InterfaceC2458n() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    InterfaceC3034d.this.accept((C11894a.b) obj, (C15791l) obj2);
                }
            };
            return this;
        }

        @I2.a
        @NonNull
        @C0.a
        public a<A, ResultT> c(@NonNull InterfaceC2458n<A, C15791l<ResultT>> interfaceC2458n) {
            this.f4699a = interfaceC2458n;
            return this;
        }

        @I2.a
        @NonNull
        @C0.a
        public a<A, ResultT> d(boolean z10) {
            this.f4700b = z10;
            return this;
        }

        @I2.a
        @NonNull
        @C0.a
        public a<A, ResultT> e(@NonNull C2320e... c2320eArr) {
            this.f4701c = c2320eArr;
            return this;
        }

        @I2.a
        @NonNull
        @C0.a
        public a<A, ResultT> f(int i10) {
            this.f4702d = i10;
            return this;
        }

        public a(E0 e02) {
        }
    }

    @C0.a
    @Deprecated
    public r() {
        this.f4696a = null;
        this.f4697b = false;
        this.f4698c = 0;
    }

    @NonNull
    @C0.a
    public static <A extends C11894a.b, ResultT> a<A, ResultT> a() {
        return new a<>(null);
    }

    @C0.a
    public abstract void b(@NonNull A a10, @NonNull C15791l<ResultT> c15791l) throws RemoteException;

    @C0.a
    public boolean c() {
        return this.f4697b;
    }

    public final int d() {
        return this.f4698c;
    }

    @Nullable
    public final C2320e[] e() {
        return this.f4696a;
    }

    @C0.a
    public r(@Nullable C2320e[] c2320eArr, boolean z10, int i10) {
        this.f4696a = c2320eArr;
        boolean z11 = false;
        if (c2320eArr != null && z10) {
            z11 = true;
        }
        this.f4697b = z11;
        this.f4698c = i10;
    }
}
