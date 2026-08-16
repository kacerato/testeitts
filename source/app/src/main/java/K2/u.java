package k2;

import a2.C3558a;
import a2.C3570m;
import a2.C3572o;
import a2.InterfaceC3561d;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.PathParser;
import androidx.transition.PathMotion;
import androidx.transition.PatternPathMotion;
import androidx.transition.Transition;
import androidx.transition.TransitionSet;

public class u {

    public static final int f94818a = -1;

    @AttrRes
    public static final int f94819b = 0;

    public static final int f94820c = 0;

    public static final int f94821d = 1;

    public static final RectF f94822e = new RectF();

    public static class a implements C3572o.c {

        public final RectF f94823a;

        public a(RectF rectF) {
            this.f94823a = rectF;
        }

        @Override
        @NonNull
        public InterfaceC3561d a(@NonNull InterfaceC3561d interfaceC3561d) {
            return interfaceC3561d instanceof C3570m ? interfaceC3561d : new C3570m(interfaceC3561d.a(this.f94823a) / this.f94823a.height());
        }
    }

    public static class b implements d {

        public final RectF f94824a;

        public final RectF f94825b;

        public final float f94826c;

        public final float f94827d;

        public final float f94828e;

        public b(RectF rectF, RectF rectF2, float f10, float f11, float f12) {
            this.f94824a = rectF;
            this.f94825b = rectF2;
            this.f94826c = f10;
            this.f94827d = f11;
            this.f94828e = f12;
        }

        @Override
        @NonNull
        public InterfaceC3561d a(@NonNull InterfaceC3561d interfaceC3561d, @NonNull InterfaceC3561d interfaceC3561d2) {
            return new C3558a(u.l(interfaceC3561d.a(this.f94824a), interfaceC3561d2.a(this.f94825b), this.f94826c, this.f94827d, this.f94828e));
        }
    }

    public interface c {
        void a(Canvas canvas);
    }

    public interface d {
        @NonNull
        InterfaceC3561d a(@NonNull InterfaceC3561d interfaceC3561d, @NonNull InterfaceC3561d interfaceC3561d2);
    }

    public static float a(@NonNull RectF rectF) {
        return rectF.width() * rectF.height();
    }

    public static C3572o b(C3572o c3572o, RectF rectF) {
        return c3572o.y(new a(rectF));
    }

    public static Shader c(@ColorInt int i10) {
        return new LinearGradient(0.0f, 0.0f, 0.0f, 0.0f, i10, i10, Shader.TileMode.CLAMP);
    }

    @NonNull
    public static <T> T d(@Nullable T t10, @NonNull T t11) {
        return t10 != null ? t10 : t11;
    }

    public static View e(View view, @IdRes int i10) {
        String resourceName = view.getResources().getResourceName(i10);
        while (view != null) {
            if (view.getId() != i10) {
                Object parent = view.getParent();
                if (!(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } else {
                return view;
            }
        }
        throw new IllegalArgumentException(resourceName + " is not a valid ancestor");
    }

    public static View f(View view, @IdRes int i10) {
        View findViewById = view.findViewById(i10);
        return findViewById != null ? findViewById : e(view, i10);
    }

    public static RectF g(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new RectF(iArr[0], iArr[1], view.getWidth() + r1, view.getHeight() + r0);
    }

    public static RectF h(View view) {
        return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    public static Rect i(View view) {
        return new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    public static boolean j(C3572o c3572o, RectF rectF) {
        return (c3572o.r().a(rectF) == 0.0f && c3572o.t().a(rectF) == 0.0f && c3572o.l().a(rectF) == 0.0f && c3572o.j().a(rectF) == 0.0f) ? false : true;
    }

    public static float k(float f10, float f11, float f12) {
        return f10 + (f12 * (f11 - f10));
    }

    public static float l(float f10, float f11, @FloatRange(from = 0.0d, to = 1.0d) float f12, @FloatRange(from = 0.0d, to = 1.0d) float f13, @FloatRange(from = 0.0d, to = 1.0d) float f14) {
        return m(f10, f11, f12, f13, f14, false);
    }

    public static float m(float f10, float f11, @FloatRange(from = 0.0d, to = 1.0d) float f12, @FloatRange(from = 0.0d, to = 1.0d) float f13, @FloatRange(from = 0.0d) float f14, boolean z10) {
        return (!z10 || (f14 >= 0.0f && f14 <= 1.0f)) ? f14 < f12 ? f10 : f14 > f13 ? f11 : k(f10, f11, (f14 - f12) / (f13 - f12)) : k(f10, f11, f14);
    }

    public static int n(int i10, int i11, @FloatRange(from = 0.0d, to = 1.0d) float f10, @FloatRange(from = 0.0d, to = 1.0d) float f11, @FloatRange(from = 0.0d, to = 1.0d) float f12) {
        return f12 < f10 ? i10 : f12 > f11 ? i11 : (int) k(i10, i11, (f12 - f10) / (f11 - f10));
    }

    public static C3572o o(C3572o c3572o, C3572o c3572o2, RectF rectF, RectF rectF2, @FloatRange(from = 0.0d, to = 1.0d) float f10, @FloatRange(from = 0.0d, to = 1.0d) float f11, @FloatRange(from = 0.0d, to = 1.0d) float f12) {
        return f12 < f10 ? c3572o : f12 > f11 ? c3572o2 : x(c3572o, c3572o2, rectF, new b(rectF, rectF2, f10, f11, f12));
    }

    public static void p(TransitionSet transitionSet, @Nullable Transition transition) {
        if (transition != null) {
            transitionSet.addTransition(transition);
        }
    }

    public static boolean q(Transition transition, Context context, @AttrRes int i10) {
        int d10;
        if (i10 == 0 || transition.getDuration() != -1 || (d10 = S1.a.d(context, i10, -1)) == -1) {
            return false;
        }
        transition.setDuration(d10);
        return true;
    }

    public static boolean r(Transition transition, Context context, @AttrRes int i10, TimeInterpolator timeInterpolator) {
        if (i10 == 0 || transition.getInterpolator() != null) {
            return false;
        }
        transition.setInterpolator(S1.a.e(context, i10, timeInterpolator));
        return true;
    }

    public static boolean s(Transition transition, Context context, @AttrRes int i10) {
        PathMotion u10;
        if (i10 == 0 || (u10 = u(context, i10)) == null) {
            return false;
        }
        transition.setPathMotion(u10);
        return true;
    }

    public static void t(TransitionSet transitionSet, @Nullable Transition transition) {
        if (transition != null) {
            transitionSet.removeTransition(transition);
        }
    }

    @Nullable
    public static PathMotion u(Context context, @AttrRes int i10) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i10, typedValue, true)) {
            return null;
        }
        int i11 = typedValue.type;
        if (i11 != 16) {
            if (i11 == 3) {
                return new PatternPathMotion(PathParser.createPathFromPathData(String.valueOf(typedValue.string)));
            }
            throw new IllegalArgumentException("Motion path theme attribute must either be an enum value or path data string");
        }
        int i12 = typedValue.data;
        if (i12 == 0) {
            return null;
        }
        if (i12 == 1) {
            return new C13925k();
        }
        throw new IllegalArgumentException("Invalid motion path type: " + i12);
    }

    public static int v(Canvas canvas, Rect rect, int i10) {
        RectF rectF = f94822e;
        rectF.set(rect);
        return canvas.saveLayerAlpha(rectF, i10);
    }

    public static void w(Canvas canvas, Rect rect, float f10, float f11, float f12, int i10, c cVar) {
        if (i10 <= 0) {
            return;
        }
        int save = canvas.save();
        canvas.translate(f10, f11);
        canvas.scale(f12, f12);
        if (i10 < 255) {
            v(canvas, rect, i10);
        }
        cVar.a(canvas);
        canvas.restoreToCount(save);
    }

    public static C3572o x(C3572o c3572o, C3572o c3572o2, RectF rectF, d dVar) {
        return (j(c3572o, rectF) ? c3572o : c3572o2).v().L(dVar.a(c3572o.r(), c3572o2.r())).Q(dVar.a(c3572o.t(), c3572o2.t())).y(dVar.a(c3572o.j(), c3572o2.j())).D(dVar.a(c3572o.l(), c3572o2.l())).m();
    }
}
