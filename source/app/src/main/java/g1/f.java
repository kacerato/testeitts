package G1;

import G1.g;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class f extends RelativeLayout implements g {

    @NonNull
    public final d f7523b;

    public f(Context context) {
        this(context, null);
    }

    @Override
    public void a() {
        this.f7523b.b();
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
        this.f7523b.a();
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        d dVar = this.f7523b;
        if (dVar != null) {
            dVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override
    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f7523b.g();
    }

    @Override
    public int getCircularRevealScrimColor() {
        return this.f7523b.h();
    }

    @Override
    @Nullable
    public g.e getRevealInfo() {
        return this.f7523b.j();
    }

    @Override
    public boolean isOpaque() {
        d dVar = this.f7523b;
        return dVar != null ? dVar.l() : super.isOpaque();
    }

    @Override
    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.f7523b.m(drawable);
    }

    @Override
    public void setCircularRevealScrimColor(@ColorInt int i10) {
        this.f7523b.n(i10);
    }

    @Override
    public void setRevealInfo(@Nullable g.e eVar) {
        this.f7523b.o(eVar);
    }

    public f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7523b = new d(this);
    }
}
