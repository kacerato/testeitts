package g1;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import androidx.annotation.Nullable;

public final class k extends Drawable implements Drawable.Callback {

    public int f88011b;

    public long f88012c;

    public int f88013d;

    public int f88014e;

    public int f88015f;

    public int f88016g;

    public boolean f88017h;

    public boolean f88018i;

    public j f88019j;

    public Drawable f88020k;

    public Drawable f88021l;

    public boolean f88022m;

    public boolean f88023n;

    public boolean f88024o;

    public int f88025p;

    public k(@Nullable Drawable drawable, @Nullable Drawable drawable2) {
        this(null);
        drawable = drawable == null ? i.f88007a : drawable;
        this.f88020k = drawable;
        drawable.setCallback(this);
        j jVar = this.f88019j;
        jVar.f88010b = drawable.getChangingConfigurations() | jVar.f88010b;
        drawable2 = drawable2 == null ? i.f88007a : drawable2;
        this.f88021l = drawable2;
        drawable2.setCallback(this);
        j jVar2 = this.f88019j;
        jVar2.f88010b = drawable2.getChangingConfigurations() | jVar2.f88010b;
    }

    public final Drawable a() {
        return this.f88021l;
    }

    public final void b(int i10) {
        this.f88013d = this.f88014e;
        this.f88016g = 0;
        this.f88015f = 250;
        this.f88011b = 1;
        invalidateSelf();
    }

    public final boolean c() {
        if (!this.f88022m) {
            boolean z10 = false;
            if (this.f88020k.getConstantState() != null && this.f88021l.getConstantState() != null) {
                z10 = true;
            }
            this.f88023n = z10;
            this.f88022m = true;
        }
        return this.f88023n;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x004f, code lost:
    
        if (r0 == 0) goto L22;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void draw(Canvas canvas) {
        boolean z10;
        int i10 = this.f88011b;
        int i11 = 0;
        if (i10 == 1) {
            this.f88012c = SystemClock.uptimeMillis();
            this.f88011b = 2;
            z10 = false;
        } else if (i10 == 2 && this.f88012c >= 0) {
            float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.f88012c)) / this.f88015f;
            z10 = uptimeMillis >= 1.0f;
            if (z10) {
                this.f88011b = 0;
            }
            this.f88016g = (int) ((this.f88013d * Math.min(uptimeMillis, 1.0f)) + 0.0f);
        } else {
            z10 = true;
        }
        int i12 = this.f88016g;
        boolean z11 = this.f88017h;
        Drawable drawable = this.f88020k;
        Drawable drawable2 = this.f88021l;
        if (z10) {
            if (!z11) {
                i11 = i12;
            }
            drawable.draw(canvas);
            i12 = i11;
            int i13 = this.f88014e;
            if (i12 == i13) {
                drawable2.setAlpha(i13);
                drawable2.draw(canvas);
                return;
            }
            return;
        }
        if (z11) {
            drawable.setAlpha(this.f88014e - i12);
            i11 = 1;
        }
        drawable.draw(canvas);
        if (i11 != 0) {
            drawable.setAlpha(this.f88014e);
        }
        if (i12 > 0) {
            drawable2.setAlpha(i12);
            drawable2.draw(canvas);
            drawable2.setAlpha(this.f88014e);
        }
        invalidateSelf();
    }

    @Override
    public final int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        j jVar = this.f88019j;
        return changingConfigurations | jVar.f88009a | jVar.f88010b;
    }

    @Override
    @Nullable
    public final Drawable.ConstantState getConstantState() {
        if (!c()) {
            return null;
        }
        this.f88019j.f88009a = getChangingConfigurations();
        return this.f88019j;
    }

    @Override
    public final int getIntrinsicHeight() {
        return Math.max(this.f88020k.getIntrinsicHeight(), this.f88021l.getIntrinsicHeight());
    }

    @Override
    public final int getIntrinsicWidth() {
        return Math.max(this.f88020k.getIntrinsicWidth(), this.f88021l.getIntrinsicWidth());
    }

    @Override
    public final int getOpacity() {
        if (!this.f88024o) {
            this.f88025p = Drawable.resolveOpacity(this.f88020k.getOpacity(), this.f88021l.getOpacity());
            this.f88024o = true;
        }
        return this.f88025p;
    }

    @Override
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override
    @I2.a
    public final Drawable mutate() {
        if (!this.f88018i && super.mutate() == this) {
            if (!c()) {
                throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            }
            this.f88020k.mutate();
            this.f88021l.mutate();
            this.f88018i = true;
        }
        return this;
    }

    @Override
    public final void onBoundsChange(Rect rect) {
        this.f88020k.setBounds(rect);
        this.f88021l.setBounds(rect);
    }

    @Override
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j10);
        }
    }

    @Override
    public final void setAlpha(int i10) {
        if (this.f88016g == this.f88014e) {
            this.f88016g = i10;
        }
        this.f88014e = i10;
        invalidateSelf();
    }

    @Override
    public final void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f88020k.setColorFilter(colorFilter);
        this.f88021l.setColorFilter(colorFilter);
    }

    @Override
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public k(@Nullable j jVar) {
        this.f88011b = 0;
        this.f88014e = 255;
        this.f88016g = 0;
        this.f88017h = true;
        this.f88019j = new j(jVar);
    }
}
