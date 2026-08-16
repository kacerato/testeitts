package ve;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.eclipse.jdt.internal.core.JavaElement;

public class C15835a extends Drawable {

    public final String f121555a;

    public final AbstractC15836b f121556b;

    public final h f121557c;

    public final i f121558d;

    public final Drawable f121559e;

    public Drawable f121560f;

    public Drawable.Callback f121561g;

    public int f121562h;

    public float f121563i;

    public boolean f121564j;

    public boolean f121565k = false;

    public class C2072a implements Drawable.Callback {

        public final Drawable.Callback f121566b;

        public C2072a(@NonNull Drawable.Callback callback) {
            this.f121566b = callback;
        }

        @Override
        public void invalidateDrawable(@NonNull Drawable drawable) {
            this.f121566b.invalidateDrawable(C15835a.this);
        }

        @Override
        public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j10) {
            this.f121566b.scheduleDrawable(C15835a.this, runnable, j10);
        }

        @Override
        public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
            this.f121566b.unscheduleDrawable(C15835a.this, runnable);
        }
    }

    public C15835a(@NonNull String str, @NonNull AbstractC15836b abstractC15836b, @NonNull i iVar, @Nullable h hVar) {
        this.f121555a = str;
        this.f121556b = abstractC15836b;
        this.f121558d = iVar;
        this.f121557c = hVar;
        Drawable d10 = abstractC15836b.d(this);
        this.f121559e = d10;
        if (d10 != null) {
            p(d10);
        }
    }

    @NonNull
    public static Rect m(@Nullable Drawable drawable) {
        if (drawable != null) {
            Rect bounds = drawable.getBounds();
            if (!bounds.isEmpty()) {
                return bounds;
            }
            Rect c10 = f.c(drawable);
            if (!c10.isEmpty()) {
                return c10;
            }
        }
        return new Rect(0, 0, 1, 1);
    }

    public void a() {
        Drawable drawable = this.f121560f;
        if (drawable != null) {
            drawable.setCallback(null);
            this.f121560f = null;
            setBounds(0, 0, 0, 0);
        }
    }

    @NonNull
    public String b() {
        return this.f121555a;
    }

    @Nullable
    public h c() {
        return this.f121557c;
    }

    @NonNull
    public i d() {
        return this.f121558d;
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        if (i()) {
            this.f121560f.draw(canvas);
        }
    }

    public float e() {
        return this.f121563i;
    }

    public int f() {
        return this.f121562h;
    }

    public Drawable g() {
        return this.f121560f;
    }

    @Override
    public int getIntrinsicHeight() {
        if (i()) {
            return this.f121560f.getIntrinsicHeight();
        }
        return 1;
    }

    @Override
    public int getIntrinsicWidth() {
        if (i()) {
            return this.f121560f.getIntrinsicWidth();
        }
        return 1;
    }

    @Override
    public int getOpacity() {
        if (i()) {
            return this.f121560f.getOpacity();
        }
        return -2;
    }

    public boolean h() {
        return this.f121562h > 0;
    }

    public boolean i() {
        return this.f121560f != null;
    }

    public final void j() {
        if (this.f121562h == 0) {
            this.f121564j = true;
            setBounds(m(this.f121560f));
            return;
        }
        this.f121564j = false;
        Rect n10 = n();
        this.f121560f.setBounds(n10);
        this.f121560f.setCallback(this.f121561g);
        setBounds(n10);
        invalidateSelf();
    }

    public void k(int i10, float f10) {
        this.f121562h = i10;
        this.f121563i = f10;
        if (this.f121564j) {
            j();
        }
    }

    public boolean l() {
        return getCallback() != null;
    }

    @NonNull
    public final Rect n() {
        return this.f121558d.a(this);
    }

    public void o(@Nullable Drawable.Callback callback) {
        this.f121561g = callback == null ? null : new C2072a(callback);
        super.setCallback(callback);
        if (this.f121561g == null) {
            Drawable drawable = this.f121560f;
            if (drawable != null) {
                drawable.setCallback(null);
                Object obj = this.f121560f;
                if (obj instanceof Animatable) {
                    Animatable animatable = (Animatable) obj;
                    boolean isRunning = animatable.isRunning();
                    this.f121565k = isRunning;
                    if (isRunning) {
                        animatable.stop();
                    }
                }
            }
            this.f121556b.a(this);
            return;
        }
        Drawable drawable2 = this.f121560f;
        if (drawable2 != null && drawable2.getCallback() == null) {
            this.f121560f.setCallback(this.f121561g);
        }
        Drawable drawable3 = this.f121560f;
        boolean z10 = drawable3 == null || drawable3 == this.f121559e;
        if (drawable3 != null) {
            drawable3.setCallback(this.f121561g);
            Object obj2 = this.f121560f;
            if ((obj2 instanceof Animatable) && this.f121565k) {
                ((Animatable) obj2).start();
            }
        }
        if (z10) {
            this.f121556b.b(this);
        }
    }

    public void p(@NonNull Drawable drawable) {
        Drawable drawable2 = this.f121560f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        Rect bounds = drawable.getBounds();
        if (!bounds.isEmpty()) {
            this.f121560f = drawable;
            drawable.setCallback(this.f121561g);
            setBounds(bounds);
            this.f121564j = false;
            return;
        }
        Rect c10 = f.c(drawable);
        if (c10.isEmpty()) {
            drawable.setBounds(0, 0, 1, 1);
        } else {
            drawable.setBounds(c10);
        }
        setBounds(drawable.getBounds());
        q(drawable);
    }

    public void q(@NonNull Drawable drawable) {
        this.f121565k = false;
        Drawable drawable2 = this.f121560f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f121560f = drawable;
        j();
    }

    @Override
    public void setAlpha(@IntRange(from = 0, to = 255) int i10) {
    }

    @Override
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
    }

    @NonNull
    public String toString() {
        return "AsyncDrawable{destination='" + this.f121555a + JavaElement.JEM_MODULAR_CLASSFILE + ", imageSize=" + ((Object) this.f121557c) + ", result=" + ((Object) this.f121560f) + ", canvasWidth=" + this.f121562h + ", textSize=" + this.f121563i + ", waitingForDimensions=" + this.f121564j + JavaElement.JEM_ANNOTATION;
    }
}
