package G1;

import G1.g;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class b extends FrameLayout implements g {

    @NonNull
    public final d f7505b;

    public b(@NonNull Context context) {
        this(context, null);
    }

    @Override
    public void a() {
        this.f7505b.b();
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
        this.f7505b.a();
    }

    @Override
    @SuppressLint({"MissingSuperCall"})
    public void draw(@NonNull Canvas canvas) {
        d dVar = this.f7505b;
        if (dVar != null) {
            dVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override
    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f7505b.g();
    }

    @Override
    public int getCircularRevealScrimColor() {
        return this.f7505b.h();
    }

    @Override
    @Nullable
    public g.e getRevealInfo() {
        return this.f7505b.j();
    }

    @Override
    public boolean isOpaque() {
        d dVar = this.f7505b;
        return dVar != null ? dVar.l() : super.isOpaque();
    }

    @Override
    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.f7505b.m(drawable);
    }

    @Override
    public void setCircularRevealScrimColor(@ColorInt int i10) {
        this.f7505b.n(i10);
    }

    @Override
    public void setRevealInfo(@Nullable g.e eVar) {
        this.f7505b.o(eVar);
    }

    public b(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7505b = new d(this);
    }
}
