package Y1;

import a2.C3567j;
import a2.C3572o;
import a2.InterfaceC3576s;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.TintAwareDrawable;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class a extends Drawable implements InterfaceC3576s, TintAwareDrawable {

    public b f29718b;

    @Override
    @NonNull
    public a mutate() {
        this.f29718b = new b(this.f29718b);
        return this;
    }

    @Override
    public void draw(Canvas canvas) {
        b bVar = this.f29718b;
        if (bVar.f29720b) {
            bVar.f29719a.draw(canvas);
        }
    }

    @Override
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f29718b;
    }

    @Override
    public int getOpacity() {
        return this.f29718b.f29719a.getOpacity();
    }

    @Override
    @NonNull
    public C3572o getShapeAppearanceModel() {
        return this.f29718b.f29719a.getShapeAppearanceModel();
    }

    @Override
    public boolean isStateful() {
        return true;
    }

    @Override
    public void onBoundsChange(@NonNull Rect rect) {
        super.onBoundsChange(rect);
        this.f29718b.f29719a.setBounds(rect);
    }

    @Override
    public boolean onStateChange(@NonNull int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        if (this.f29718b.f29719a.setState(iArr)) {
            onStateChange = true;
        }
        boolean e10 = Y1.b.e(iArr);
        b bVar = this.f29718b;
        if (bVar.f29720b == e10) {
            return onStateChange;
        }
        bVar.f29720b = e10;
        return true;
    }

    @Override
    public void setAlpha(int i10) {
        this.f29718b.f29719a.setAlpha(i10);
    }

    @Override
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f29718b.f29719a.setColorFilter(colorFilter);
    }

    @Override
    public void setShapeAppearanceModel(@NonNull C3572o c3572o) {
        this.f29718b.f29719a.setShapeAppearanceModel(c3572o);
    }

    @Override
    public void setTint(@ColorInt int i10) {
        this.f29718b.f29719a.setTint(i10);
    }

    @Override
    public void setTintList(@Nullable ColorStateList colorStateList) {
        this.f29718b.f29719a.setTintList(colorStateList);
    }

    @Override
    public void setTintMode(@Nullable PorterDuff.Mode mode) {
        this.f29718b.f29719a.setTintMode(mode);
    }

    public a(C3572o c3572o) {
        this(new b(new C3567j(c3572o)));
    }

    public static final class b extends Drawable.ConstantState {

        @NonNull
        public C3567j f29719a;

        public boolean f29720b;

        public b(C3567j c3567j) {
            this.f29719a = c3567j;
            this.f29720b = false;
        }

        @Override
        @NonNull
        public a newDrawable() {
            return new a(new b(this));
        }

        @Override
        public int getChangingConfigurations() {
            return 0;
        }

        public b(@NonNull b bVar) {
            this.f29719a = (C3567j) bVar.f29719a.getConstantState().newDrawable();
            this.f29720b = bVar.f29720b;
        }
    }

    public a(b bVar) {
        this.f29718b = bVar;
    }
}
