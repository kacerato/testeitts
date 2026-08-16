package V1;

import android.animation.Animator;
import androidx.annotation.NonNull;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;

public abstract class k<T extends Animator> {

    public l f26528a;

    public final float[] f26529b;

    public final int[] f26530c;

    public k(int i10) {
        this.f26529b = new float[i10 * 2];
        this.f26530c = new int[i10];
    }

    public abstract void a();

    public float b(int i10, int i11, int i12) {
        return (i10 - i11) / i12;
    }

    public abstract void c();

    public abstract void d(@NonNull Animatable2Compat.AnimationCallback animationCallback);

    public void e(@NonNull l lVar) {
        this.f26528a = lVar;
    }

    public abstract void f();

    public abstract void g();

    public abstract void h();
}
