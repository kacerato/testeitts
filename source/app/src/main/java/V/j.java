package V;

import W.f;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public abstract class j<Z> extends r<ImageView, Z> implements f.a {

    @Nullable
    public Animatable f26395k;

    public j(ImageView imageView) {
        super(imageView);
    }

    @Override
    public void c() {
        Animatable animatable = this.f26395k;
        if (animatable != null) {
            animatable.stop();
        }
    }

    @Override
    @Nullable
    public Drawable e() {
        return ((ImageView) this.f26411c).getDrawable();
    }

    @Override
    public void f(@Nullable Drawable drawable) {
        super.f(drawable);
        Animatable animatable = this.f26395k;
        if (animatable != null) {
            animatable.stop();
        }
        x(null);
        j(drawable);
    }

    @Override
    public void h(@NonNull Z z10, @Nullable W.f<? super Z> fVar) {
        if (fVar == null || !fVar.a(z10, this)) {
            x(z10);
        } else {
            v(z10);
        }
    }

    @Override
    public void j(Drawable drawable) {
        ((ImageView) this.f26411c).setImageDrawable(drawable);
    }

    @Override
    public void k(@Nullable Drawable drawable) {
        super.k(drawable);
        x(null);
        j(drawable);
    }

    @Override
    public void m(@Nullable Drawable drawable) {
        super.m(drawable);
        x(null);
        j(drawable);
    }

    @Override
    public void onStart() {
        Animatable animatable = this.f26395k;
        if (animatable != null) {
            animatable.start();
        }
    }

    public final void v(@Nullable Z z10) {
        if (!(z10 instanceof Animatable)) {
            this.f26395k = null;
            return;
        }
        Animatable animatable = (Animatable) z10;
        this.f26395k = animatable;
        animatable.start();
    }

    public abstract void w(@Nullable Z z10);

    public final void x(@Nullable Z z10) {
        w(z10);
        v(z10);
    }

    @Deprecated
    public j(ImageView imageView, boolean z10) {
        super(imageView, z10);
    }
}
