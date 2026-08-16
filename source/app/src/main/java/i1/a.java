package I1;

import G1.d;
import G1.g;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

public class a extends CoordinatorLayout implements g {

    @NonNull
    public final d f8677b;

    public a(@NonNull Context context) {
        this(context, null);
    }

    @Override
    public void a() {
        this.f8677b.b();
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
        this.f8677b.a();
    }

    @Override
    public void draw(Canvas canvas) {
        d dVar = this.f8677b;
        if (dVar != null) {
            dVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override
    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f8677b.g();
    }

    @Override
    public int getCircularRevealScrimColor() {
        return this.f8677b.h();
    }

    @Override
    @Nullable
    public g.e getRevealInfo() {
        return this.f8677b.j();
    }

    @Override
    public boolean isOpaque() {
        d dVar = this.f8677b;
        return dVar != null ? dVar.l() : super.isOpaque();
    }

    @Override
    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.f8677b.m(drawable);
    }

    @Override
    public void setCircularRevealScrimColor(@ColorInt int i10) {
        this.f8677b.n(i10);
    }

    @Override
    public void setRevealInfo(@Nullable g.e eVar) {
        this.f8677b.o(eVar);
    }

    public a(@NonNull Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8677b = new d(this);
    }
}
