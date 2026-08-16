package U;

import C.l;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.resource.bitmap.p;

public class h extends a<h> {

    @Nullable
    public static h f25609D0;

    @Nullable
    public static h f25610W;

    @Nullable
    public static h f25611X;

    @Nullable
    public static h f25612Y;

    @Nullable
    public static h f25613Z;

    @Nullable
    public static h f25614b1;

    @Nullable
    public static h f25615q0;

    @Nullable
    public static h f25616v0;

    @NonNull
    @CheckResult
    public static h R0(@NonNull l<Bitmap> lVar) {
        return new h().I0(lVar);
    }

    @NonNull
    @CheckResult
    public static h S0() {
        if (f25615q0 == null) {
            f25615q0 = new h().c().b();
        }
        return f25615q0;
    }

    @NonNull
    @CheckResult
    public static h T0() {
        if (f25613Z == null) {
            f25613Z = new h().f().b();
        }
        return f25613Z;
    }

    @NonNull
    @CheckResult
    public static h U0() {
        if (f25616v0 == null) {
            f25616v0 = new h().g().b();
        }
        return f25616v0;
    }

    @NonNull
    @CheckResult
    public static h V0(@NonNull Class<?> cls) {
        return new h().i(cls);
    }

    @NonNull
    @CheckResult
    public static h W0(@NonNull com.bumptech.glide.load.engine.i iVar) {
        return new h().m(iVar);
    }

    @NonNull
    @CheckResult
    public static h X0(@NonNull p pVar) {
        return new h().r(pVar);
    }

    @NonNull
    @CheckResult
    public static h Y0(@NonNull Bitmap.CompressFormat compressFormat) {
        return new h().s(compressFormat);
    }

    @NonNull
    @CheckResult
    public static h Z0(@IntRange(from = 0, to = 100) int i10) {
        return new h().t(i10);
    }

    @NonNull
    @CheckResult
    public static h a1(@DrawableRes int i10) {
        return new h().u(i10);
    }

    @NonNull
    @CheckResult
    public static h b1(@Nullable Drawable drawable) {
        return new h().v(drawable);
    }

    @NonNull
    @CheckResult
    public static h c1() {
        if (f25612Y == null) {
            f25612Y = new h().y().b();
        }
        return f25612Y;
    }

    @NonNull
    @CheckResult
    public static h d1(@NonNull C.b bVar) {
        return new h().z(bVar);
    }

    @NonNull
    @CheckResult
    public static h e1(@IntRange(from = 0) long j10) {
        return new h().A(j10);
    }

    @NonNull
    @CheckResult
    public static h f1() {
        if (f25614b1 == null) {
            f25614b1 = new h().p().b();
        }
        return f25614b1;
    }

    @NonNull
    @CheckResult
    public static h g1() {
        if (f25609D0 == null) {
            f25609D0 = new h().q().b();
        }
        return f25609D0;
    }

    @NonNull
    @CheckResult
    public static <T> h h1(@NonNull C.g<T> gVar, @NonNull T t10) {
        return new h().C0(gVar, t10);
    }

    @NonNull
    @CheckResult
    public static h i1(int i10) {
        return j1(i10, i10);
    }

    @NonNull
    @CheckResult
    public static h j1(int i10, int i11) {
        return new h().u0(i10, i11);
    }

    @NonNull
    @CheckResult
    public static h k1(@DrawableRes int i10) {
        return new h().v0(i10);
    }

    @NonNull
    @CheckResult
    public static h l1(@Nullable Drawable drawable) {
        return new h().w0(drawable);
    }

    @NonNull
    @CheckResult
    public static h m1(@NonNull com.bumptech.glide.h hVar) {
        return new h().x0(hVar);
    }

    @NonNull
    @CheckResult
    public static h n1(@NonNull C.e eVar) {
        return new h().D0(eVar);
    }

    @NonNull
    @CheckResult
    public static h o1(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        return new h().E0(f10);
    }

    @NonNull
    @CheckResult
    public static h p1(boolean z10) {
        if (z10) {
            if (f25610W == null) {
                f25610W = new h().F0(true).b();
            }
            return f25610W;
        }
        if (f25611X == null) {
            f25611X = new h().F0(false).b();
        }
        return f25611X;
    }

    @NonNull
    @CheckResult
    public static h q1(@IntRange(from = 0) int i10) {
        return new h().H0(i10);
    }
}
