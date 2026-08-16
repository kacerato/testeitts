package zd;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;

public abstract class AbstractC16302c {

    public static final AbstractC16302c f131215a = new b();

    public static final AbstractC16302c f131216b = new a();

    public static final int f131217c = 0;

    public static final int f131218d = 1;

    public static class a extends AbstractC16302c {
        @Override
        public float a(float f10) {
            return f10;
        }

        @Override
        public float b(float f10) {
            return f10;
        }
    }

    public static class b extends AbstractC16302c {

        public static final float f131219g = 3.0f;

        public final Interpolator f131220e;

        public final Interpolator f131221f;

        public b() {
            this(3.0f);
        }

        @Override
        public float a(float f10) {
            return this.f131220e.getInterpolation(f10);
        }

        @Override
        public float b(float f10) {
            return this.f131221f.getInterpolation(f10);
        }

        @Override
        public float c(float f10) {
            return 1.0f / ((1.0f - a(f10)) + b(f10));
        }

        public b(float f10) {
            this.f131220e = new AccelerateInterpolator(f10);
            this.f131221f = new DecelerateInterpolator(f10);
        }
    }

    public static AbstractC16302c d(int i10) {
        if (i10 == 0) {
            return f131215a;
        }
        if (i10 == 1) {
            return f131216b;
        }
        throw new IllegalArgumentException("Unknown id: " + i10);
    }

    public abstract float a(float f10);

    public abstract float b(float f10);

    public float c(float f10) {
        return 1.0f;
    }
}
