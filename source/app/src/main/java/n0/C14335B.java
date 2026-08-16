package n0;

import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nRay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ray.kt\ncom/google/android/filament/utils/RayKt\n+ 2 Vector.kt\ncom/google/android/filament/utils/Float3\n*L\n1#1,22:1\n306#2:23\n322#2:24\n*S KotlinDebug\n*F\n+ 1 Ray.kt\ncom/google/android/filament/utils/RayKt\n*L\n21#1:23\n21#1:24\n*E\n"})
public final class C14335B {
    @NotNull
    public static final C14341f a(@NotNull C14334A r10, float f10) {
        M.p(r10, "r");
        C14341f f11 = r10.f();
        C14341f e10 = r10.e();
        C14341f c14341f = new C14341f(e10.H() * f10, e10.K() * f10, e10.L() * f10);
        return new C14341f(f11.H() + c14341f.H(), f11.K() + c14341f.K(), f11.L() + c14341f.L());
    }
}
