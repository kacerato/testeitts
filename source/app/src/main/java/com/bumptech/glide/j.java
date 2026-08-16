package com.bumptech.glide;

import V.p;
import V.r;
import Y.m;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import java.io.File;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

public class j<TranscodeType> extends U.a<j<TranscodeType>> implements Cloneable, g<j<TranscodeType>> {

    public static final U.h f59041H1 = new U.h().m(com.bumptech.glide.load.engine.i.f59187c).x0(h.LOW).F0(true);

    @Nullable
    public Object f59042D0;

    public boolean f59043F1;

    public final Context f59044W;

    public final k f59045X;

    public final Class<TranscodeType> f59046Y;

    public final b f59047Z;

    @Nullable
    public List<U.g<TranscodeType>> f59048b1;

    @Nullable
    public j<TranscodeType> f59049i1;

    @Nullable
    public j<TranscodeType> f59050m1;

    public final d f59051q0;

    @Nullable
    public Float f59052q1;

    @NonNull
    public l<?, ? super TranscodeType> f59053v0;

    public boolean f59054v1;

    public boolean f59055y1;

    public static class a {

        public static final int[] f59056a;

        public static final int[] f59057b;

        static {
            int[] iArr = new int[h.values().length];
            f59057b = iArr;
            try {
                iArr[h.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f59057b[h.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f59057b[h.HIGH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f59057b[h.IMMEDIATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            f59056a = iArr2;
            try {
                iArr2[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f59056a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f59056a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f59056a[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f59056a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f59056a[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f59056a[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f59056a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    @SuppressLint({"CheckResult"})
    public j(@NonNull b bVar, k kVar, Class<TranscodeType> cls, Context context) {
        this.f59054v1 = true;
        this.f59047Z = bVar;
        this.f59045X = kVar;
        this.f59046Y = cls;
        this.f59044W = context;
        this.f59053v0 = kVar.C(cls);
        this.f59051q0 = bVar.j();
        c1(kVar.A());
        a(kVar.B());
    }

    @NonNull
    @CheckResult
    public j<TranscodeType> A1(@Nullable j<TranscodeType> jVar) {
        this.f59049i1 = jVar;
        return this;
    }

    @NonNull
    @CheckResult
    public j<TranscodeType> B1(@Nullable j<TranscodeType>... jVarArr) {
        j<TranscodeType> jVar = null;
        if (jVarArr == null || jVarArr.length == 0) {
            return A1(null);
        }
        for (int length = jVarArr.length - 1; length >= 0; length--) {
            j<TranscodeType> jVar2 = jVarArr[length];
            if (jVar2 != null) {
                jVar = jVar == null ? jVar2 : jVar2.A1(jVar);
            }
        }
        return A1(jVar);
    }

    @NonNull
    @CheckResult
    public j<TranscodeType> C1(@NonNull l<?, ? super TranscodeType> lVar) {
        this.f59053v0 = (l) Y.k.d(lVar);
        this.f59054v1 = false;
        return this;
    }

    @NonNull
    @CheckResult
    public j<TranscodeType> R0(@Nullable U.g<TranscodeType> gVar) {
        if (gVar != null) {
            if (this.f59048b1 == null) {
                this.f59048b1 = new ArrayList();
            }
            this.f59048b1.add(gVar);
        }
        return this;
    }

    @Override
    @NonNull
    @CheckResult
    public j<TranscodeType> a(@NonNull U.a<?> aVar) {
        Y.k.d(aVar);
        return (j) super.a(aVar);
    }

    public final U.d T0(p<TranscodeType> pVar, @Nullable U.g<TranscodeType> gVar, U.a<?> aVar, Executor executor) {
        return U0(new Object(), pVar, gVar, null, this.f59053v0, aVar.M(), aVar.J(), aVar.I(), aVar, executor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final U.d U0(Object obj, p<TranscodeType> pVar, @Nullable U.g<TranscodeType> gVar, @Nullable U.e eVar, l<?, ? super TranscodeType> lVar, h hVar, int i10, int i11, U.a<?> aVar, Executor executor) {
        U.e eVar2;
        U.e eVar3;
        if (this.f59050m1 != null) {
            eVar3 = new U.b(obj, eVar);
            eVar2 = eVar3;
        } else {
            eVar2 = null;
            eVar3 = eVar;
        }
        U.d V02 = V0(obj, pVar, gVar, eVar3, lVar, hVar, i10, i11, aVar, executor);
        if (eVar2 == null) {
            return V02;
        }
        int J10 = this.f59050m1.J();
        int I10 = this.f59050m1.I();
        if (m.v(i10, i11) && !this.f59050m1.i0()) {
            J10 = aVar.J();
            I10 = aVar.I();
        }
        j<TranscodeType> jVar = this.f59050m1;
        U.b bVar = eVar2;
        bVar.o(V02, jVar.U0(obj, pVar, gVar, bVar, jVar.f59053v0, jVar.M(), J10, I10, this.f59050m1, executor));
        return bVar;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [U.a] */
    public final U.d V0(Object obj, p<TranscodeType> pVar, U.g<TranscodeType> gVar, @Nullable U.e eVar, l<?, ? super TranscodeType> lVar, h hVar, int i10, int i11, U.a<?> aVar, Executor executor) {
        j<TranscodeType> jVar = this.f59049i1;
        if (jVar == null) {
            if (this.f59052q1 == null) {
                return u1(obj, pVar, gVar, aVar, eVar, lVar, hVar, i10, i11, executor);
            }
            U.k kVar = new U.k(obj, eVar);
            kVar.n(u1(obj, pVar, gVar, aVar, kVar, lVar, hVar, i10, i11, executor), u1(obj, pVar, gVar, aVar.h().E0(this.f59052q1.floatValue()), kVar, lVar, b1(hVar), i10, i11, executor));
            return kVar;
        }
        if (this.f59043F1) {
            throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
        }
        l<?, ? super TranscodeType> lVar2 = jVar.f59054v1 ? lVar : jVar.f59053v0;
        h M10 = jVar.Y() ? this.f59049i1.M() : b1(hVar);
        int J10 = this.f59049i1.J();
        int I10 = this.f59049i1.I();
        if (m.v(i10, i11) && !this.f59049i1.i0()) {
            J10 = aVar.J();
            I10 = aVar.I();
        }
        U.k kVar2 = new U.k(obj, eVar);
        U.d u12 = u1(obj, pVar, gVar, aVar, kVar2, lVar, hVar, i10, i11, executor);
        this.f59043F1 = true;
        j<TranscodeType> jVar2 = this.f59049i1;
        U.d U02 = jVar2.U0(obj, pVar, gVar, kVar2, lVar2, M10, J10, I10, jVar2, executor);
        this.f59043F1 = false;
        kVar2.n(u12, U02);
        return kVar2;
    }

    @Override
    @CheckResult
    public j<TranscodeType> h() {
        j<TranscodeType> jVar = (j) super.h();
        jVar.f59053v0 = (l<?, ? super TranscodeType>) jVar.f59053v0.clone();
        return jVar;
    }

    @CheckResult
    @Deprecated
    public U.c<File> X0(int i10, int i11) {
        return a1().y1(i10, i11);
    }

    @CheckResult
    @Deprecated
    public <Y extends p<File>> Y Y0(@NonNull Y y10) {
        return (Y) a1().e1(y10);
    }

    @NonNull
    public j<TranscodeType> Z0(@Nullable j<TranscodeType> jVar) {
        this.f59050m1 = jVar;
        return this;
    }

    @NonNull
    @CheckResult
    public j<File> a1() {
        return new j(File.class, this).a(f59041H1);
    }

    @NonNull
    public final h b1(@NonNull h hVar) {
        int i10 = a.f59057b[hVar.ordinal()];
        if (i10 == 1) {
            return h.NORMAL;
        }
        if (i10 == 2) {
            return h.HIGH;
        }
        if (i10 == 3 || i10 == 4) {
            return h.IMMEDIATE;
        }
        throw new IllegalArgumentException("unknown priority: " + ((Object) M()));
    }

    @SuppressLint({"CheckResult"})
    public final void c1(List<U.g<Object>> list) {
        Iterator<U.g<Object>> it = list.iterator();
        while (it.hasNext()) {
            R0((U.g) it.next());
        }
    }

    @Deprecated
    public U.c<TranscodeType> d1(int i10, int i11) {
        return y1(i10, i11);
    }

    @NonNull
    public <Y extends p<TranscodeType>> Y e1(@NonNull Y y10) {
        return (Y) g1(y10, null, Y.e.b());
    }

    public final <Y extends p<TranscodeType>> Y f1(@NonNull Y y10, @Nullable U.g<TranscodeType> gVar, U.a<?> aVar, Executor executor) {
        Y.k.d(y10);
        if (!this.f59055y1) {
            throw new IllegalArgumentException("You must call #load() before calling #into()");
        }
        U.d T02 = T0(y10, gVar, aVar, executor);
        U.d request = y10.getRequest();
        if (T02.h(request) && !i1(aVar, request)) {
            if (!((U.d) Y.k.d(request)).isRunning()) {
                request.j();
            }
            return y10;
        }
        this.f59045X.w(y10);
        y10.g(T02);
        this.f59045X.W(y10, T02);
        return y10;
    }

    @NonNull
    public <Y extends p<TranscodeType>> Y g1(@NonNull Y y10, @Nullable U.g<TranscodeType> gVar, Executor executor) {
        return (Y) f1(y10, gVar, this, executor);
    }

    @NonNull
    public r<ImageView, TranscodeType> h1(@NonNull ImageView imageView) {
        j<TranscodeType> jVar;
        m.b();
        Y.k.d(imageView);
        if (!h0() && f0() && imageView.getScaleType() != null) {
            switch (a.f59056a[imageView.getScaleType().ordinal()]) {
                case 1:
                    jVar = h().l0();
                    break;
                case 2:
                    jVar = h().m0();
                    break;
                case 3:
                case 4:
                case 5:
                    jVar = h().o0();
                    break;
                case 6:
                    jVar = h().m0();
                    break;
            }
            return (r) f1(this.f59051q0.a(imageView, this.f59046Y), null, jVar, Y.e.b());
        }
        jVar = this;
        return (r) f1(this.f59051q0.a(imageView, this.f59046Y), null, jVar, Y.e.b());
    }

    public final boolean i1(U.a<?> aVar, U.d dVar) {
        return !aVar.X() && dVar.f();
    }

    @NonNull
    @CheckResult
    public j<TranscodeType> j1(@Nullable U.g<TranscodeType> gVar) {
        this.f59048b1 = null;
        return R0(gVar);
    }

    @Override
    @NonNull
    @CheckResult
    public j<TranscodeType> l(@Nullable Bitmap bitmap) {
        return t1(bitmap).a(U.h.W0(com.bumptech.glide.load.engine.i.f59186b));
    }

    @Override
    @NonNull
    @CheckResult
    public j<TranscodeType> d(@Nullable Drawable drawable) {
        return t1(drawable).a(U.h.W0(com.bumptech.glide.load.engine.i.f59186b));
    }

    @Override
    @NonNull
    @CheckResult
    public j<TranscodeType> j(@Nullable Uri uri) {
        return t1(uri);
    }

    @Override
    @NonNull
    @CheckResult
    public j<TranscodeType> load(@Nullable File file) {
        return t1(file);
    }

    @Override
    @NonNull
    @CheckResult
    public j<TranscodeType> n(@Nullable @DrawableRes @RawRes Integer num) {
        return t1(num).a(U.h.n1(X.a.a(this.f59044W)));
    }

    @Override
    @NonNull
    @CheckResult
    public j<TranscodeType> e(@Nullable Object obj) {
        return t1(obj);
    }

    @Override
    @NonNull
    @CheckResult
    public j<TranscodeType> o(@Nullable String str) {
        return t1(str);
    }

    @Override
    @CheckResult
    @Deprecated
    public j<TranscodeType> load(@Nullable URL url) {
        return t1(url);
    }

    @Override
    @NonNull
    @CheckResult
    public j<TranscodeType> load(@Nullable byte[] bArr) {
        j<TranscodeType> t12 = t1(bArr);
        if (!t12.V()) {
            t12 = t12.a(U.h.W0(com.bumptech.glide.load.engine.i.f59186b));
        }
        return !t12.e0() ? t12.a(U.h.p1(true)) : t12;
    }

    @NonNull
    public final j<TranscodeType> t1(@Nullable Object obj) {
        this.f59042D0 = obj;
        this.f59055y1 = true;
        return this;
    }

    public final U.d u1(Object obj, p<TranscodeType> pVar, U.g<TranscodeType> gVar, U.a<?> aVar, U.e eVar, l<?, ? super TranscodeType> lVar, h hVar, int i10, int i11, Executor executor) {
        Context context = this.f59044W;
        d dVar = this.f59051q0;
        return U.j.x(context, dVar, obj, this.f59042D0, this.f59046Y, aVar, i10, i11, hVar, pVar, gVar, this.f59048b1, eVar, dVar.f(), lVar.c(), executor);
    }

    @NonNull
    public p<TranscodeType> v1() {
        return w1(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @NonNull
    public p<TranscodeType> w1(int i10, int i11) {
        return e1(V.m.e(this.f59045X, i10, i11));
    }

    @NonNull
    public U.c<TranscodeType> x1() {
        return y1(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @NonNull
    public U.c<TranscodeType> y1(int i10, int i11) {
        U.f fVar = new U.f(i10, i11);
        return (U.c) g1(fVar, fVar, Y.e.a());
    }

    @NonNull
    @CheckResult
    public j<TranscodeType> z1(float f10) {
        if (f10 < 0.0f || f10 > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        }
        this.f59052q1 = Float.valueOf(f10);
        return this;
    }

    @SuppressLint({"CheckResult"})
    public j(Class<TranscodeType> cls, j<?> jVar) {
        this(jVar.f59047Z, jVar.f59045X, cls, jVar.f59044W);
        this.f59042D0 = jVar.f59042D0;
        this.f59055y1 = jVar.f59055y1;
        a(jVar);
    }
}
