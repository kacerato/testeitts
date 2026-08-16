package H1;

import G1.d;
import G1.g;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class a extends E1.a implements g {

    @NonNull
    public final d f7957m;

    public a(Context context) {
        this(context, null);
    }

    @Override
    public void a() {
        this.f7957m.b();
    }

    @Override
    public void b(Canvas canvas) {
        super.draw(canvas);
    }

    @Override
    public boolean c() {
        return super.isOpaque();
    }

    @Override
    public void d() {
        this.f7957m.a();
    }

    @Override
    public void draw(Canvas canvas) {
        d dVar = this.f7957m;
        if (dVar != null) {
            dVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override
    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f7957m.g();
    }

    @Override
    public int getCircularRevealScrimColor() {
        return this.f7957m.h();
    }

    @Override
    @Nullable
    public g.e getRevealInfo() {
        return this.f7957m.j();
    }

    @Override
    public boolean isOpaque() {
        d dVar = this.f7957m;
        return dVar != null ? dVar.l() : super.isOpaque();
    }

    @Override
    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.f7957m.m(drawable);
    }

    @Override
    public void setCircularRevealScrimColor(@ColorInt int i10) {
        this.f7957m.n(i10);
    }

    @Override
    public void setRevealInfo(@Nullable g.e eVar) {
        this.f7957m.o(eVar);
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7957m = new d(this);
    }
}
