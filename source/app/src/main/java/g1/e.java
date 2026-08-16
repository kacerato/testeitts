package G1;

import G1.g;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class e extends LinearLayout implements g {

    @NonNull
    public final d f7522b;

    public e(Context context) {
        this(context, null);
    }

    @Override
    public void a() {
        this.f7522b.b();
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
        this.f7522b.a();
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        d dVar = this.f7522b;
        if (dVar != null) {
            dVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override
    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f7522b.g();
    }

    @Override
    public int getCircularRevealScrimColor() {
        return this.f7522b.h();
    }

    @Override
    @Nullable
    public g.e getRevealInfo() {
        return this.f7522b.j();
    }

    @Override
    public boolean isOpaque() {
        d dVar = this.f7522b;
        return dVar != null ? dVar.l() : super.isOpaque();
    }

    @Override
    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.f7522b.m(drawable);
    }

    @Override
    public void setCircularRevealScrimColor(@ColorInt int i10) {
        this.f7522b.n(i10);
    }

    @Override
    public void setRevealInfo(@Nullable g.e eVar) {
        this.f7522b.o(eVar);
    }

    public e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7522b = new d(this);
    }
}
