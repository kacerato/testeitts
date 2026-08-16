package U;

import C.l;
import U.a;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.resource.bitmap.C11705e;
import com.bumptech.glide.load.resource.bitmap.J;
import com.bumptech.glide.load.resource.bitmap.m;
import com.bumptech.glide.load.resource.bitmap.n;
import com.bumptech.glide.load.resource.bitmap.o;
import com.bumptech.glide.load.resource.bitmap.p;
import com.bumptech.glide.load.resource.bitmap.q;
import com.bumptech.glide.load.resource.bitmap.s;
import com.bumptech.glide.load.resource.bitmap.u;
import java.util.Map;

public abstract class a<T extends a<T>> implements Cloneable {

    public static final int f25545B = -1;

    public static final int f25546C = 2;

    public static final int f25547D = 4;

    public static final int f25548E = 8;

    public static final int f25549F = 16;

    public static final int f25550G = 32;

    public static final int f25551H = 64;

    public static final int f25552I = 128;

    public static final int f25553J = 256;

    public static final int f25554K = 512;

    public static final int f25555L = 1024;

    public static final int f25556M = 2048;

    public static final int f25557N = 4096;

    public static final int f25558O = 8192;

    public static final int f25559P = 16384;

    public static final int f25560Q = 32768;

    public static final int f25561R = 65536;

    public static final int f25562S = 131072;

    public static final int f25563T = 262144;

    public static final int f25564U = 524288;

    public static final int f25565V = 1048576;

    public boolean f25566A;

    public int f25567b;

    @Nullable
    public Drawable f25571f;

    public int f25572g;

    @Nullable
    public Drawable f25573h;

    public int f25574i;

    public boolean f25579n;

    @Nullable
    public Drawable f25581p;

    public int f25582q;

    public boolean f25586u;

    @Nullable
    public Resources.Theme f25587v;

    public boolean f25588w;

    public boolean f25589x;

    public boolean f25590y;

    public float f25568c = 1.0f;

    @NonNull
    public com.bumptech.glide.load.engine.i f25569d = com.bumptech.glide.load.engine.i.f59189e;

    @NonNull
    public com.bumptech.glide.h f25570e = com.bumptech.glide.h.NORMAL;

    public boolean f25575j = true;

    public int f25576k = -1;

    public int f25577l = -1;

    @NonNull
    public C.e f25578m = X.c.a();

    public boolean f25580o = true;

    @NonNull
    public C.h f25583r = new C.h();

    @NonNull
    public Map<Class<?>, l<?>> f25584s = new Y.b();

    @NonNull
    public Class<?> f25585t = Object.class;

    public boolean f25591z = true;

    public static boolean d0(int i10, int i11) {
        return (i10 & i11) != 0;
    }

    @NonNull
    @CheckResult
    public T A(@IntRange(from = 0) long j10) {
        return C0(J.f59365g, Long.valueOf(j10));
    }

    public final T A0() {
        return this;
    }

    @NonNull
    public final com.bumptech.glide.load.engine.i B() {
        return this.f25569d;
    }

    @NonNull
    public final T B0() {
        if (this.f25586u) {
            throw new IllegalStateException("You cannot modify locked T, consider clone()");
        }
        return A0();
    }

    public final int C() {
        return this.f25572g;
    }

    @NonNull
    @CheckResult
    public <Y> T C0(@NonNull C.g<Y> gVar, @NonNull Y y10) {
        if (this.f25588w) {
            return (T) h().C0(gVar, y10);
        }
        Y.k.d(gVar);
        Y.k.d(y10);
        this.f25583r.c(gVar, y10);
        return B0();
    }

    @Nullable
    public final Drawable D() {
        return this.f25571f;
    }

    @NonNull
    @CheckResult
    public T D0(@NonNull C.e eVar) {
        if (this.f25588w) {
            return (T) h().D0(eVar);
        }
        this.f25578m = (C.e) Y.k.d(eVar);
        this.f25567b |= 1024;
        return B0();
    }

    @Nullable
    public final Drawable E() {
        return this.f25581p;
    }

    @NonNull
    @CheckResult
    public T E0(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        if (this.f25588w) {
            return (T) h().E0(f10);
        }
        if (f10 < 0.0f || f10 > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        }
        this.f25568c = f10;
        this.f25567b |= 2;
        return B0();
    }

    public final int F() {
        return this.f25582q;
    }

    @NonNull
    @CheckResult
    public T F0(boolean z10) {
        if (this.f25588w) {
            return (T) h().F0(true);
        }
        this.f25575j = !z10;
        this.f25567b |= 256;
        return B0();
    }

    public final boolean G() {
        return this.f25590y;
    }

    @NonNull
    @CheckResult
    public T G0(@Nullable Resources.Theme theme) {
        if (this.f25588w) {
            return (T) h().G0(theme);
        }
        this.f25587v = theme;
        this.f25567b |= 32768;
        return B0();
    }

    @NonNull
    public final C.h H() {
        return this.f25583r;
    }

    @NonNull
    @CheckResult
    public T H0(@IntRange(from = 0) int i10) {
        return C0(K.b.f10667b, Integer.valueOf(i10));
    }

    public final int I() {
        return this.f25576k;
    }

    @NonNull
    @CheckResult
    public T I0(@NonNull l<Bitmap> lVar) {
        return J0(lVar, true);
    }

    public final int J() {
        return this.f25577l;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public T J0(@NonNull l<Bitmap> lVar, boolean z10) {
        if (this.f25588w) {
            return (T) h().J0(lVar, z10);
        }
        s sVar = new s(lVar, z10);
        M0(Bitmap.class, lVar, z10);
        M0(Drawable.class, sVar, z10);
        M0(BitmapDrawable.class, sVar.a(), z10);
        M0(P.c.class, new P.f(lVar), z10);
        return B0();
    }

    @Nullable
    public final Drawable K() {
        return this.f25573h;
    }

    @NonNull
    @CheckResult
    public final T K0(@NonNull p pVar, @NonNull l<Bitmap> lVar) {
        if (this.f25588w) {
            return (T) h().K0(pVar, lVar);
        }
        r(pVar);
        return I0(lVar);
    }

    public final int L() {
        return this.f25574i;
    }

    @NonNull
    @CheckResult
    public <Y> T L0(@NonNull Class<Y> cls, @NonNull l<Y> lVar) {
        return M0(cls, lVar, true);
    }

    @NonNull
    public final com.bumptech.glide.h M() {
        return this.f25570e;
    }

    @NonNull
    public <Y> T M0(@NonNull Class<Y> cls, @NonNull l<Y> lVar, boolean z10) {
        if (this.f25588w) {
            return (T) h().M0(cls, lVar, z10);
        }
        Y.k.d(cls);
        Y.k.d(lVar);
        this.f25584s.put(cls, lVar);
        int i10 = this.f25567b;
        this.f25580o = true;
        this.f25567b = 67584 | i10;
        this.f25591z = false;
        if (z10) {
            this.f25567b = i10 | 198656;
            this.f25579n = true;
        }
        return B0();
    }

    @NonNull
    public final Class<?> N() {
        return this.f25585t;
    }

    @NonNull
    @CheckResult
    public T N0(@NonNull l<Bitmap>... lVarArr) {
        return lVarArr.length > 1 ? J0(new C.f(lVarArr), true) : lVarArr.length == 1 ? I0(lVarArr[0]) : B0();
    }

    @NonNull
    public final C.e O() {
        return this.f25578m;
    }

    @NonNull
    @CheckResult
    @Deprecated
    public T O0(@NonNull l<Bitmap>... lVarArr) {
        return J0(new C.f(lVarArr), true);
    }

    public final float P() {
        return this.f25568c;
    }

    @NonNull
    @CheckResult
    public T P0(boolean z10) {
        if (this.f25588w) {
            return (T) h().P0(z10);
        }
        this.f25566A = z10;
        this.f25567b |= 1048576;
        return B0();
    }

    @Nullable
    public final Resources.Theme Q() {
        return this.f25587v;
    }

    @NonNull
    @CheckResult
    public T Q0(boolean z10) {
        if (this.f25588w) {
            return (T) h().Q0(z10);
        }
        this.f25589x = z10;
        this.f25567b |= 262144;
        return B0();
    }

    @NonNull
    public final Map<Class<?>, l<?>> R() {
        return this.f25584s;
    }

    public final boolean S() {
        return this.f25566A;
    }

    public final boolean T() {
        return this.f25589x;
    }

    public boolean U() {
        return this.f25588w;
    }

    public final boolean V() {
        return c0(4);
    }

    public final boolean W() {
        return this.f25586u;
    }

    public final boolean X() {
        return this.f25575j;
    }

    public final boolean Y() {
        return c0(8);
    }

    public boolean Z() {
        return this.f25591z;
    }

    @NonNull
    @CheckResult
    public T a(@NonNull a<?> aVar) {
        if (this.f25588w) {
            return (T) h().a(aVar);
        }
        if (d0(aVar.f25567b, 2)) {
            this.f25568c = aVar.f25568c;
        }
        if (d0(aVar.f25567b, 262144)) {
            this.f25589x = aVar.f25589x;
        }
        if (d0(aVar.f25567b, 1048576)) {
            this.f25566A = aVar.f25566A;
        }
        if (d0(aVar.f25567b, 4)) {
            this.f25569d = aVar.f25569d;
        }
        if (d0(aVar.f25567b, 8)) {
            this.f25570e = aVar.f25570e;
        }
        if (d0(aVar.f25567b, 16)) {
            this.f25571f = aVar.f25571f;
            this.f25572g = 0;
            this.f25567b &= -33;
        }
        if (d0(aVar.f25567b, 32)) {
            this.f25572g = aVar.f25572g;
            this.f25571f = null;
            this.f25567b &= -17;
        }
        if (d0(aVar.f25567b, 64)) {
            this.f25573h = aVar.f25573h;
            this.f25574i = 0;
            this.f25567b &= -129;
        }
        if (d0(aVar.f25567b, 128)) {
            this.f25574i = aVar.f25574i;
            this.f25573h = null;
            this.f25567b &= -65;
        }
        if (d0(aVar.f25567b, 256)) {
            this.f25575j = aVar.f25575j;
        }
        if (d0(aVar.f25567b, 512)) {
            this.f25577l = aVar.f25577l;
            this.f25576k = aVar.f25576k;
        }
        if (d0(aVar.f25567b, 1024)) {
            this.f25578m = aVar.f25578m;
        }
        if (d0(aVar.f25567b, 4096)) {
            this.f25585t = aVar.f25585t;
        }
        if (d0(aVar.f25567b, 8192)) {
            this.f25581p = aVar.f25581p;
            this.f25582q = 0;
            this.f25567b &= -16385;
        }
        if (d0(aVar.f25567b, 16384)) {
            this.f25582q = aVar.f25582q;
            this.f25581p = null;
            this.f25567b &= -8193;
        }
        if (d0(aVar.f25567b, 32768)) {
            this.f25587v = aVar.f25587v;
        }
        if (d0(aVar.f25567b, 65536)) {
            this.f25580o = aVar.f25580o;
        }
        if (d0(aVar.f25567b, 131072)) {
            this.f25579n = aVar.f25579n;
        }
        if (d0(aVar.f25567b, 2048)) {
            this.f25584s.putAll(aVar.f25584s);
            this.f25591z = aVar.f25591z;
        }
        if (d0(aVar.f25567b, 524288)) {
            this.f25590y = aVar.f25590y;
        }
        if (!this.f25580o) {
            this.f25584s.clear();
            int i10 = this.f25567b;
            this.f25579n = false;
            this.f25567b = i10 & (-133121);
            this.f25591z = true;
        }
        this.f25567b |= aVar.f25567b;
        this.f25583r.b(aVar.f25583r);
        return B0();
    }

    @NonNull
    public T b() {
        if (this.f25586u && !this.f25588w) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        this.f25588w = true;
        return j0();
    }

    @NonNull
    @CheckResult
    public T c() {
        return K0(p.f59408e, new m());
    }

    public final boolean c0(int i10) {
        return d0(this.f25567b, i10);
    }

    public final boolean e0() {
        return c0(256);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Float.compare(aVar.f25568c, this.f25568c) == 0 && this.f25572g == aVar.f25572g && Y.m.d(this.f25571f, aVar.f25571f) && this.f25574i == aVar.f25574i && Y.m.d(this.f25573h, aVar.f25573h) && this.f25582q == aVar.f25582q && Y.m.d(this.f25581p, aVar.f25581p) && this.f25575j == aVar.f25575j && this.f25576k == aVar.f25576k && this.f25577l == aVar.f25577l && this.f25579n == aVar.f25579n && this.f25580o == aVar.f25580o && this.f25589x == aVar.f25589x && this.f25590y == aVar.f25590y && this.f25569d.equals(aVar.f25569d) && this.f25570e == aVar.f25570e && this.f25583r.equals(aVar.f25583r) && this.f25584s.equals(aVar.f25584s) && this.f25585t.equals(aVar.f25585t) && Y.m.d(this.f25578m, aVar.f25578m) && Y.m.d(this.f25587v, aVar.f25587v);
    }

    @NonNull
    @CheckResult
    public T f() {
        return y0(p.f59407d, new n());
    }

    public final boolean f0() {
        return this.f25580o;
    }

    @NonNull
    @CheckResult
    public T g() {
        return K0(p.f59407d, new o());
    }

    public final boolean g0() {
        return this.f25579n;
    }

    @Override
    @CheckResult
    public T h() {
        try {
            T t10 = (T) super.clone();
            C.h hVar = new C.h();
            t10.f25583r = hVar;
            hVar.b(this.f25583r);
            Y.b bVar = new Y.b();
            t10.f25584s = bVar;
            bVar.putAll(this.f25584s);
            t10.f25586u = false;
            t10.f25588w = false;
            return t10;
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public final boolean h0() {
        return c0(2048);
    }

    public int hashCode() {
        return Y.m.p(this.f25587v, Y.m.p(this.f25578m, Y.m.p(this.f25585t, Y.m.p(this.f25584s, Y.m.p(this.f25583r, Y.m.p(this.f25570e, Y.m.p(this.f25569d, Y.m.r(this.f25590y, Y.m.r(this.f25589x, Y.m.r(this.f25580o, Y.m.r(this.f25579n, Y.m.o(this.f25577l, Y.m.o(this.f25576k, Y.m.r(this.f25575j, Y.m.p(this.f25581p, Y.m.o(this.f25582q, Y.m.p(this.f25573h, Y.m.o(this.f25574i, Y.m.p(this.f25571f, Y.m.o(this.f25572g, Y.m.l(this.f25568c)))))))))))))))))))));
    }

    @NonNull
    @CheckResult
    public T i(@NonNull Class<?> cls) {
        if (this.f25588w) {
            return (T) h().i(cls);
        }
        this.f25585t = (Class) Y.k.d(cls);
        this.f25567b |= 4096;
        return B0();
    }

    public final boolean i0() {
        return Y.m.v(this.f25577l, this.f25576k);
    }

    @NonNull
    public T j0() {
        this.f25586u = true;
        return A0();
    }

    @NonNull
    @CheckResult
    public T k() {
        return C0(q.f59418k, Boolean.FALSE);
    }

    @NonNull
    @CheckResult
    public T k0(boolean z10) {
        if (this.f25588w) {
            return (T) h().k0(z10);
        }
        this.f25590y = z10;
        this.f25567b |= 524288;
        return B0();
    }

    @NonNull
    @CheckResult
    public T l0() {
        return r0(p.f59408e, new m());
    }

    @NonNull
    @CheckResult
    public T m(@NonNull com.bumptech.glide.load.engine.i iVar) {
        if (this.f25588w) {
            return (T) h().m(iVar);
        }
        this.f25569d = (com.bumptech.glide.load.engine.i) Y.k.d(iVar);
        this.f25567b |= 4;
        return B0();
    }

    @NonNull
    @CheckResult
    public T m0() {
        return p0(p.f59407d, new n());
    }

    @NonNull
    @CheckResult
    public T n0() {
        return r0(p.f59408e, new o());
    }

    @NonNull
    @CheckResult
    public T o0() {
        return p0(p.f59406c, new u());
    }

    @NonNull
    @CheckResult
    public T p() {
        return C0(P.i.f20614b, Boolean.TRUE);
    }

    @NonNull
    public final T p0(@NonNull p pVar, @NonNull l<Bitmap> lVar) {
        return z0(pVar, lVar, false);
    }

    @NonNull
    @CheckResult
    public T q() {
        if (this.f25588w) {
            return (T) h().q();
        }
        this.f25584s.clear();
        int i10 = this.f25567b;
        this.f25579n = false;
        this.f25580o = false;
        this.f25567b = (i10 & (-133121)) | 65536;
        this.f25591z = true;
        return B0();
    }

    @NonNull
    @CheckResult
    public T q0(@NonNull l<Bitmap> lVar) {
        return J0(lVar, false);
    }

    @NonNull
    @CheckResult
    public T r(@NonNull p pVar) {
        return C0(p.f59411h, Y.k.d(pVar));
    }

    @NonNull
    public final T r0(@NonNull p pVar, @NonNull l<Bitmap> lVar) {
        if (this.f25588w) {
            return (T) h().r0(pVar, lVar);
        }
        r(pVar);
        return J0(lVar, false);
    }

    @NonNull
    @CheckResult
    public T s(@NonNull Bitmap.CompressFormat compressFormat) {
        return C0(C11705e.f59388c, Y.k.d(compressFormat));
    }

    @NonNull
    @CheckResult
    public <Y> T s0(@NonNull Class<Y> cls, @NonNull l<Y> lVar) {
        return M0(cls, lVar, false);
    }

    @NonNull
    @CheckResult
    public T t(@IntRange(from = 0, to = 100) int i10) {
        return C0(C11705e.f59387b, Integer.valueOf(i10));
    }

    @NonNull
    @CheckResult
    public T t0(int i10) {
        return u0(i10, i10);
    }

    @NonNull
    @CheckResult
    public T u(@DrawableRes int i10) {
        if (this.f25588w) {
            return (T) h().u(i10);
        }
        this.f25572g = i10;
        int i11 = this.f25567b | 32;
        this.f25571f = null;
        this.f25567b = i11 & (-17);
        return B0();
    }

    @NonNull
    @CheckResult
    public T u0(int i10, int i11) {
        if (this.f25588w) {
            return (T) h().u0(i10, i11);
        }
        this.f25577l = i10;
        this.f25576k = i11;
        this.f25567b |= 512;
        return B0();
    }

    @NonNull
    @CheckResult
    public T v(@Nullable Drawable drawable) {
        if (this.f25588w) {
            return (T) h().v(drawable);
        }
        this.f25571f = drawable;
        int i10 = this.f25567b | 16;
        this.f25572g = 0;
        this.f25567b = i10 & (-33);
        return B0();
    }

    @NonNull
    @CheckResult
    public T v0(@DrawableRes int i10) {
        if (this.f25588w) {
            return (T) h().v0(i10);
        }
        this.f25574i = i10;
        int i11 = this.f25567b | 128;
        this.f25573h = null;
        this.f25567b = i11 & (-65);
        return B0();
    }

    @NonNull
    @CheckResult
    public T w(@DrawableRes int i10) {
        if (this.f25588w) {
            return (T) h().w(i10);
        }
        this.f25582q = i10;
        int i11 = this.f25567b | 16384;
        this.f25581p = null;
        this.f25567b = i11 & (-8193);
        return B0();
    }

    @NonNull
    @CheckResult
    public T w0(@Nullable Drawable drawable) {
        if (this.f25588w) {
            return (T) h().w0(drawable);
        }
        this.f25573h = drawable;
        int i10 = this.f25567b | 64;
        this.f25574i = 0;
        this.f25567b = i10 & (-129);
        return B0();
    }

    @NonNull
    @CheckResult
    public T x(@Nullable Drawable drawable) {
        if (this.f25588w) {
            return (T) h().x(drawable);
        }
        this.f25581p = drawable;
        int i10 = this.f25567b | 8192;
        this.f25582q = 0;
        this.f25567b = i10 & (-16385);
        return B0();
    }

    @NonNull
    @CheckResult
    public T x0(@NonNull com.bumptech.glide.h hVar) {
        if (this.f25588w) {
            return (T) h().x0(hVar);
        }
        this.f25570e = (com.bumptech.glide.h) Y.k.d(hVar);
        this.f25567b |= 8;
        return B0();
    }

    @NonNull
    @CheckResult
    public T y() {
        return y0(p.f59406c, new u());
    }

    @NonNull
    public final T y0(@NonNull p pVar, @NonNull l<Bitmap> lVar) {
        return z0(pVar, lVar, true);
    }

    @NonNull
    @CheckResult
    public T z(@NonNull C.b bVar) {
        Y.k.d(bVar);
        return (T) C0(q.f59414g, bVar).C0(P.i.f20613a, bVar);
    }

    @NonNull
    public final T z0(@NonNull p pVar, @NonNull l<Bitmap> lVar, boolean z10) {
        T K02 = z10 ? K0(pVar, lVar) : r0(pVar, lVar);
        K02.f25591z = true;
        return K02;
    }
}
