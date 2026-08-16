package V;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

public class i extends Drawable {

    public final Matrix f26386a;

    public final RectF f26387b;

    public final RectF f26388c;

    public Drawable f26389d;

    public a f26390e;

    public boolean f26391f;

    public static final class a extends Drawable.ConstantState {

        public final Drawable.ConstantState f26392a;

        public final int f26393b;

        public final int f26394c;

        public a(a aVar) {
            this(aVar.f26392a, aVar.f26393b, aVar.f26394c);
        }

        @Override
        public int getChangingConfigurations() {
            return 0;
        }

        @Override
        @NonNull
        public Drawable newDrawable() {
            return new i(this, this.f26392a.newDrawable());
        }

        public a(Drawable.ConstantState constantState, int i10, int i11) {
            this.f26392a = constantState;
            this.f26393b = i10;
            this.f26394c = i11;
        }

        @Override
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new i(this, this.f26392a.newDrawable(resources));
        }
    }

    public i(Drawable drawable, int i10, int i11) {
        this(new a(drawable.getConstantState(), i10, i11), drawable);
    }

    public final void a() {
        this.f26386a.setRectToRect(this.f26387b, this.f26388c, Matrix.ScaleToFit.CENTER);
    }

    @Override
    public void clearColorFilter() {
        this.f26389d.clearColorFilter();
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        canvas.save();
        canvas.concat(this.f26386a);
        this.f26389d.draw(canvas);
        canvas.restore();
    }

    @Override
    @RequiresApi(19)
    public int getAlpha() {
        return this.f26389d.getAlpha();
    }

    @Override
    public Drawable.Callback getCallback() {
        return this.f26389d.getCallback();
    }

    @Override
    public int getChangingConfigurations() {
        return this.f26389d.getChangingConfigurations();
    }

    @Override
    public Drawable.ConstantState getConstantState() {
        return this.f26390e;
    }

    @Override
    @NonNull
    public Drawable getCurrent() {
        return this.f26389d.getCurrent();
    }

    @Override
    public int getIntrinsicHeight() {
        return this.f26390e.f26394c;
    }

    @Override
    public int getIntrinsicWidth() {
        return this.f26390e.f26393b;
    }

    @Override
    public int getMinimumHeight() {
        return this.f26389d.getMinimumHeight();
    }

    @Override
    public int getMinimumWidth() {
        return this.f26389d.getMinimumWidth();
    }

    @Override
    public int getOpacity() {
        return this.f26389d.getOpacity();
    }

    @Override
    public boolean getPadding(@NonNull Rect rect) {
        return this.f26389d.getPadding(rect);
    }

    @Override
    public void invalidateSelf() {
        super.invalidateSelf();
        this.f26389d.invalidateSelf();
    }

    @Override
    @NonNull
    public Drawable mutate() {
        if (!this.f26391f && super.mutate() == this) {
            this.f26389d = this.f26389d.mutate();
            this.f26390e = new a(this.f26390e);
            this.f26391f = true;
        }
        return this;
    }

    @Override
    public void scheduleSelf(@NonNull Runnable runnable, long j10) {
        super.scheduleSelf(runnable, j10);
        this.f26389d.scheduleSelf(runnable, j10);
    }

    @Override
    public void setAlpha(int i10) {
        this.f26389d.setAlpha(i10);
    }

    @Override
    public void setBounds(int i10, int i11, int i12, int i13) {
        super.setBounds(i10, i11, i12, i13);
        this.f26388c.set(i10, i11, i12, i13);
        a();
    }

    @Override
    public void setChangingConfigurations(int i10) {
        this.f26389d.setChangingConfigurations(i10);
    }

    @Override
    public void setColorFilter(int i10, @NonNull PorterDuff.Mode mode) {
        this.f26389d.setColorFilter(i10, mode);
    }

    @Override
    @Deprecated
    public void setDither(boolean z10) {
        this.f26389d.setDither(z10);
    }

    @Override
    public void setFilterBitmap(boolean z10) {
        this.f26389d.setFilterBitmap(z10);
    }

    @Override
    public boolean setVisible(boolean z10, boolean z11) {
        return this.f26389d.setVisible(z10, z11);
    }

    @Override
    public void unscheduleSelf(@NonNull Runnable runnable) {
        super.unscheduleSelf(runnable);
        this.f26389d.unscheduleSelf(runnable);
    }

    public i(a aVar, Drawable drawable) {
        this.f26390e = (a) Y.k.d(aVar);
        this.f26389d = (Drawable) Y.k.d(drawable);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        this.f26386a = new Matrix();
        this.f26387b = new RectF(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        this.f26388c = new RectF();
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.f26389d.setColorFilter(colorFilter);
    }

    @Override
    public void setBounds(@NonNull Rect rect) {
        super.setBounds(rect);
        this.f26388c.set(rect);
        a();
    }
}
