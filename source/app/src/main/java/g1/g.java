package G1;

import G1.d;
import android.animation.TypeEvaluator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.Property;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public interface g extends d.a {

    public static class b implements TypeEvaluator<e> {

        public static final TypeEvaluator<e> f7524b = new b();

        public final e f7525a = new e();

        @Override
        @NonNull
        public e evaluate(float f10, @NonNull e eVar, @NonNull e eVar2) {
            this.f7525a.b(R1.a.f(eVar.f7529a, eVar2.f7529a, f10), R1.a.f(eVar.f7530b, eVar2.f7530b, f10), R1.a.f(eVar.f7531c, eVar2.f7531c, f10));
            return this.f7525a;
        }
    }

    public static class c extends Property<g, e> {

        public static final Property<g, e> f7526a = new c("circularReveal");

        public c(String str) {
            super(e.class, str);
        }

        @Override
        @Nullable
        public e get(@NonNull g gVar) {
            return gVar.getRevealInfo();
        }

        @Override
        public void set(@NonNull g gVar, @Nullable e eVar) {
            gVar.setRevealInfo(eVar);
        }
    }

    public static class d extends Property<g, Integer> {

        public static final Property<g, Integer> f7527a = new d("circularRevealScrimColor");

        public d(String str) {
            super(Integer.class, str);
        }

        @Override
        @NonNull
        public Integer get(@NonNull g gVar) {
            return Integer.valueOf(gVar.getCircularRevealScrimColor());
        }

        @Override
        public void set(@NonNull g gVar, @NonNull Integer num) {
            gVar.setCircularRevealScrimColor(num.intValue());
        }
    }

    public static class e {

        public static final float f7528d = Float.MAX_VALUE;

        public float f7529a;

        public float f7530b;

        public float f7531c;

        public boolean a() {
            return this.f7531c == Float.MAX_VALUE;
        }

        public void b(float f10, float f11, float f12) {
            this.f7529a = f10;
            this.f7530b = f11;
            this.f7531c = f12;
        }

        public void c(@NonNull e eVar) {
            b(eVar.f7529a, eVar.f7530b, eVar.f7531c);
        }

        public e() {
        }

        public e(float f10, float f11, float f12) {
            this.f7529a = f10;
            this.f7530b = f11;
            this.f7531c = f12;
        }

        public e(@NonNull e eVar) {
            this(eVar.f7529a, eVar.f7530b, eVar.f7531c);
        }
    }

    void a();

    void d();

    void draw(Canvas canvas);

    @Nullable
    Drawable getCircularRevealOverlayDrawable();

    @ColorInt
    int getCircularRevealScrimColor();

    @Nullable
    e getRevealInfo();

    boolean isOpaque();

    void setCircularRevealOverlayDrawable(@Nullable Drawable drawable);

    void setCircularRevealScrimColor(@ColorInt int i10);

    void setRevealInfo(@Nullable e eVar);
}
