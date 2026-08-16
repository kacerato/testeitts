package k2;

import a2.C3567j;
import a2.C3572o;
import a2.InterfaceC3576s;
import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import androidx.transition.ArcMotion;
import androidx.transition.PathMotion;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import com.google.android.material.internal.A;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import k2.u;
import w1.C15879a;
import x1.C16046a;

public final class C13926l extends Transition {

    public static final int f94681A = 0;

    public static final int f94682B = 1;

    public static final int f94683C = 2;

    public static final int f94684D = 0;

    public static final int f94685E = 1;

    public static final int f94686F = 2;

    public static final int f94687G = 3;

    public static final int f94688H = 0;

    public static final int f94689I = 1;

    public static final int f94690J = 2;

    public static final String f94691K = "l";

    public static final String f94692L = "materialContainerTransition:bounds";

    public static final String f94693M = "materialContainerTransition:shapeAppearance";

    public static final f f94696P;

    public static final f f94698R;

    public static final float f94699S = -1.0f;

    public boolean f94700b;

    public boolean f94701c;

    public boolean f94702d;

    public boolean f94703e;

    @IdRes
    public int f94704f;

    @IdRes
    public int f94705g;

    @IdRes
    public int f94706h;

    @ColorInt
    public int f94707i;

    @ColorInt
    public int f94708j;

    @ColorInt
    public int f94709k;

    @ColorInt
    public int f94710l;

    public int f94711m;

    public int f94712n;

    public int f94713o;

    @Nullable
    public View f94714p;

    @Nullable
    public View f94715q;

    @Nullable
    public C3572o f94716r;

    @Nullable
    public C3572o f94717s;

    @Nullable
    public e f94718t;

    @Nullable
    public e f94719u;

    @Nullable
    public e f94720v;

    @Nullable
    public e f94721w;

    public boolean f94722x;

    public float f94723y;

    public float f94724z;

    public static final String[] f94694N = {"materialContainerTransition:bounds", "materialContainerTransition:shapeAppearance"};

    public static final f f94695O = new f(new e(0.0f, 0.25f), new e(0.0f, 1.0f), new e(0.0f, 1.0f), new e(0.0f, 0.75f), null);

    public static final f f94697Q = new f(new e(0.1f, 0.4f), new e(0.1f, 1.0f), new e(0.1f, 1.0f), new e(0.1f, 0.9f), null);

    public class a implements ValueAnimator.AnimatorUpdateListener {

        public final h f94725a;

        public a(h hVar) {
            this.f94725a = hVar;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f94725a.o(valueAnimator.getAnimatedFraction());
        }
    }

    public class b extends t {

        public final View f94727a;

        public final h f94728b;

        public final View f94729c;

        public final View f94730d;

        public b(View view, h hVar, View view2, View view3) {
            this.f94727a = view;
            this.f94728b = hVar;
            this.f94729c = view2;
            this.f94730d = view3;
        }

        @Override
        public void onTransitionEnd(@NonNull Transition transition) {
            C13926l.this.removeListener(this);
            if (C13926l.this.f94701c) {
                return;
            }
            this.f94729c.setAlpha(1.0f);
            this.f94730d.setAlpha(1.0f);
            A.h(this.f94727a).remove(this.f94728b);
        }

        @Override
        public void onTransitionStart(@NonNull Transition transition) {
            A.h(this.f94727a).add(this.f94728b);
            this.f94729c.setAlpha(0.0f);
            this.f94730d.setAlpha(0.0f);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface c {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface d {
    }

    public static class e {

        @FloatRange(from = 0.0d, to = 1.0d)
        public final float f94732a;

        @FloatRange(from = 0.0d, to = 1.0d)
        public final float f94733b;

        public e(@FloatRange(from = 0.0d, to = 1.0d) float f10, @FloatRange(from = 0.0d, to = 1.0d) float f11) {
            this.f94732a = f10;
            this.f94733b = f11;
        }

        @FloatRange(from = 0.0d, to = 1.0d)
        public float c() {
            return this.f94733b;
        }

        @FloatRange(from = 0.0d, to = 1.0d)
        public float d() {
            return this.f94732a;
        }
    }

    public static class f {

        @NonNull
        public final e f94734a;

        @NonNull
        public final e f94735b;

        @NonNull
        public final e f94736c;

        @NonNull
        public final e f94737d;

        public f(e eVar, e eVar2, e eVar3, e eVar4, a aVar) {
            this(eVar, eVar2, eVar3, eVar4);
        }

        public f(@NonNull e eVar, @NonNull e eVar2, @NonNull e eVar3, @NonNull e eVar4) {
            this.f94734a = eVar;
            this.f94735b = eVar2;
            this.f94736c = eVar3;
            this.f94737d = eVar4;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface g {
    }

    public static final class h extends Drawable {

        public static final int f94738M = 754974720;

        public static final int f94739N = -7829368;

        public static final float f94740O = 0.3f;

        public static final float f94741P = 1.5f;

        public final f f94742A;

        public final InterfaceC13915a f94743B;

        public final InterfaceC13920f f94744C;

        public final boolean f94745D;

        public final Paint f94746E;

        public final Path f94747F;

        public C13917c f94748G;

        public C13922h f94749H;

        public RectF f94750I;

        public float f94751J;

        public float f94752K;

        public float f94753L;

        public final View f94754a;

        public final RectF f94755b;

        public final C3572o f94756c;

        public final float f94757d;

        public final View f94758e;

        public final RectF f94759f;

        public final C3572o f94760g;

        public final float f94761h;

        public final Paint f94762i;

        public final Paint f94763j;

        public final Paint f94764k;

        public final Paint f94765l;

        public final Paint f94766m;

        public final C13924j f94767n;

        public final PathMeasure f94768o;

        public final float f94769p;

        public final float[] f94770q;

        public final boolean f94771r;

        public final float f94772s;

        public final float f94773t;

        public final boolean f94774u;

        public final C3567j f94775v;

        public final RectF f94776w;

        public final RectF f94777x;

        public final RectF f94778y;

        public final RectF f94779z;

        public class a implements u.c {
            public a() {
            }

            @Override
            public void a(Canvas canvas) {
                h.this.f94754a.draw(canvas);
            }
        }

        public class b implements u.c {
            public b() {
            }

            @Override
            public void a(Canvas canvas) {
                h.this.f94758e.draw(canvas);
            }
        }

        public h(PathMotion pathMotion, View view, RectF rectF, C3572o c3572o, float f10, View view2, RectF rectF2, C3572o c3572o2, float f11, int i10, int i11, int i12, int i13, boolean z10, boolean z11, InterfaceC13915a interfaceC13915a, InterfaceC13920f interfaceC13920f, f fVar, boolean z12, a aVar) {
            this(pathMotion, view, rectF, c3572o, f10, view2, rectF2, c3572o2, f11, i10, i11, i12, i13, z10, z11, interfaceC13915a, interfaceC13920f, fVar, z12);
        }

        public static float d(RectF rectF, float f10) {
            return ((rectF.centerX() / (f10 / 2.0f)) - 1.0f) * 0.3f;
        }

        public static float e(RectF rectF, float f10) {
            return (rectF.centerY() / f10) * 1.5f;
        }

        public static PointF m(RectF rectF) {
            return new PointF(rectF.centerX(), rectF.top);
        }

        @Override
        public void draw(@NonNull Canvas canvas) {
            if (this.f94766m.getAlpha() > 0) {
                canvas.drawRect(getBounds(), this.f94766m);
            }
            int save = this.f94745D ? canvas.save() : -1;
            if (this.f94774u && this.f94751J > 0.0f) {
                h(canvas);
            }
            this.f94767n.a(canvas);
            n(canvas, this.f94762i);
            if (this.f94748G.f94650c) {
                l(canvas);
                k(canvas);
            } else {
                k(canvas);
                l(canvas);
            }
            if (this.f94745D) {
                canvas.restoreToCount(save);
                f(canvas, this.f94776w, this.f94747F, -65281);
                g(canvas, this.f94777x, -256);
                g(canvas, this.f94776w, -16711936);
                g(canvas, this.f94779z, -16711681);
                g(canvas, this.f94778y, -16776961);
            }
        }

        public final void f(Canvas canvas, RectF rectF, Path path, @ColorInt int i10) {
            PointF m10 = m(rectF);
            if (this.f94753L == 0.0f) {
                path.reset();
                path.moveTo(m10.f32425x, m10.f32426y);
            } else {
                path.lineTo(m10.f32425x, m10.f32426y);
                this.f94746E.setColor(i10);
                canvas.drawPath(path, this.f94746E);
            }
        }

        public final void g(Canvas canvas, RectF rectF, @ColorInt int i10) {
            this.f94746E.setColor(i10);
            canvas.drawRect(rectF, this.f94746E);
        }

        @Override
        public int getOpacity() {
            return -3;
        }

        public final void h(Canvas canvas) {
            canvas.save();
            canvas.clipPath(this.f94767n.d(), Region.Op.DIFFERENCE);
            if (Build.VERSION.SDK_INT > 28) {
                j(canvas);
            } else {
                i(canvas);
            }
            canvas.restore();
        }

        public final void i(Canvas canvas) {
            C3567j c3567j = this.f94775v;
            RectF rectF = this.f94750I;
            c3567j.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            this.f94775v.m0(this.f94751J);
            this.f94775v.A0((int) this.f94752K);
            this.f94775v.setShapeAppearanceModel(this.f94767n.c());
            this.f94775v.draw(canvas);
        }

        public final void j(Canvas canvas) {
            C3572o c10 = this.f94767n.c();
            if (!c10.u(this.f94750I)) {
                canvas.drawPath(this.f94767n.d(), this.f94765l);
            } else {
                float a10 = c10.r().a(this.f94750I);
                canvas.drawRoundRect(this.f94750I, a10, a10, this.f94765l);
            }
        }

        public final void k(Canvas canvas) {
            n(canvas, this.f94764k);
            Rect bounds = getBounds();
            RectF rectF = this.f94778y;
            u.w(canvas, bounds, rectF.left, rectF.top, this.f94749H.f94671b, this.f94748G.f94649b, new b());
        }

        public final void l(Canvas canvas) {
            n(canvas, this.f94763j);
            Rect bounds = getBounds();
            RectF rectF = this.f94776w;
            u.w(canvas, bounds, rectF.left, rectF.top, this.f94749H.f94670a, this.f94748G.f94648a, new a());
        }

        public final void n(Canvas canvas, Paint paint) {
            if (paint.getColor() == 0 || paint.getAlpha() <= 0) {
                return;
            }
            canvas.drawRect(getBounds(), paint);
        }

        public final void o(float f10) {
            if (this.f94753L != f10) {
                p(f10);
            }
        }

        public final void p(float f10) {
            float f11;
            float f12;
            this.f94753L = f10;
            this.f94766m.setAlpha((int) (this.f94771r ? u.k(0.0f, 255.0f, f10) : u.k(255.0f, 0.0f, f10)));
            this.f94768o.getPosTan(this.f94769p * f10, this.f94770q, null);
            float[] fArr = this.f94770q;
            float f13 = fArr[0];
            float f14 = fArr[1];
            if (f10 > 1.0f || f10 < 0.0f) {
                if (f10 > 1.0f) {
                    f12 = (f10 - 1.0f) / 0.00999999f;
                    f11 = 0.99f;
                } else {
                    f11 = 0.01f;
                    f12 = (f10 / 0.01f) * (-1.0f);
                }
                this.f94768o.getPosTan(this.f94769p * f11, fArr, null);
                float[] fArr2 = this.f94770q;
                f13 += (f13 - fArr2[0]) * f12;
                f14 += (f14 - fArr2[1]) * f12;
            }
            float f15 = f13;
            float f16 = f14;
            C13922h a10 = this.f94744C.a(f10, ((Float) Preconditions.checkNotNull(Float.valueOf(this.f94742A.f94735b.f94732a))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.f94742A.f94735b.f94733b))).floatValue(), this.f94755b.width(), this.f94755b.height(), this.f94759f.width(), this.f94759f.height());
            this.f94749H = a10;
            RectF rectF = this.f94776w;
            float f17 = a10.f94672c;
            rectF.set(f15 - (f17 / 2.0f), f16, (f17 / 2.0f) + f15, a10.f94673d + f16);
            RectF rectF2 = this.f94778y;
            C13922h c13922h = this.f94749H;
            float f18 = c13922h.f94674e;
            rectF2.set(f15 - (f18 / 2.0f), f16, f15 + (f18 / 2.0f), c13922h.f94675f + f16);
            this.f94777x.set(this.f94776w);
            this.f94779z.set(this.f94778y);
            float floatValue = ((Float) Preconditions.checkNotNull(Float.valueOf(this.f94742A.f94736c.f94732a))).floatValue();
            float floatValue2 = ((Float) Preconditions.checkNotNull(Float.valueOf(this.f94742A.f94736c.f94733b))).floatValue();
            boolean b10 = this.f94744C.b(this.f94749H);
            RectF rectF3 = b10 ? this.f94777x : this.f94779z;
            float l10 = u.l(0.0f, 1.0f, floatValue, floatValue2, f10);
            if (!b10) {
                l10 = 1.0f - l10;
            }
            this.f94744C.c(rectF3, l10, this.f94749H);
            this.f94750I = new RectF(Math.min(this.f94777x.left, this.f94779z.left), Math.min(this.f94777x.top, this.f94779z.top), Math.max(this.f94777x.right, this.f94779z.right), Math.max(this.f94777x.bottom, this.f94779z.bottom));
            this.f94767n.b(f10, this.f94756c, this.f94760g, this.f94776w, this.f94777x, this.f94779z, this.f94742A.f94737d);
            this.f94751J = u.k(this.f94757d, this.f94761h, f10);
            float d10 = d(this.f94750I, this.f94772s);
            float e10 = e(this.f94750I, this.f94773t);
            float f19 = this.f94751J;
            float f20 = (int) (e10 * f19);
            this.f94752K = f20;
            this.f94765l.setShadowLayer(f19, (int) (d10 * f19), f20, 754974720);
            this.f94748G = this.f94743B.a(f10, ((Float) Preconditions.checkNotNull(Float.valueOf(this.f94742A.f94734a.f94732a))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.f94742A.f94734a.f94733b))).floatValue(), 0.35f);
            if (this.f94763j.getColor() != 0) {
                this.f94763j.setAlpha(this.f94748G.f94648a);
            }
            if (this.f94764k.getColor() != 0) {
                this.f94764k.setAlpha(this.f94748G.f94649b);
            }
            invalidateSelf();
        }

        @Override
        public void setAlpha(int i10) {
            throw new UnsupportedOperationException("Setting alpha on is not supported");
        }

        @Override
        public void setColorFilter(@Nullable ColorFilter colorFilter) {
            throw new UnsupportedOperationException("Setting a color filter is not supported");
        }

        public h(PathMotion pathMotion, View view, RectF rectF, C3572o c3572o, float f10, View view2, RectF rectF2, C3572o c3572o2, float f11, @ColorInt int i10, @ColorInt int i11, @ColorInt int i12, int i13, boolean z10, boolean z11, InterfaceC13915a interfaceC13915a, InterfaceC13920f interfaceC13920f, f fVar, boolean z12) {
            Paint paint = new Paint();
            this.f94762i = paint;
            Paint paint2 = new Paint();
            this.f94763j = paint2;
            Paint paint3 = new Paint();
            this.f94764k = paint3;
            this.f94765l = new Paint();
            Paint paint4 = new Paint();
            this.f94766m = paint4;
            this.f94767n = new C13924j();
            this.f94770q = r7;
            C3567j c3567j = new C3567j();
            this.f94775v = c3567j;
            Paint paint5 = new Paint();
            this.f94746E = paint5;
            this.f94747F = new Path();
            this.f94754a = view;
            this.f94755b = rectF;
            this.f94756c = c3572o;
            this.f94757d = f10;
            this.f94758e = view2;
            this.f94759f = rectF2;
            this.f94760g = c3572o2;
            this.f94761h = f11;
            this.f94771r = z10;
            this.f94774u = z11;
            this.f94743B = interfaceC13915a;
            this.f94744C = interfaceC13920f;
            this.f94742A = fVar;
            this.f94745D = z12;
            WindowManager windowManager = (WindowManager) view.getContext().getSystemService(Context.WINDOW_SERVICE);
            windowManager.getDefaultDisplay().getMetrics(new DisplayMetrics());
            this.f94772s = r12.widthPixels;
            this.f94773t = r12.heightPixels;
            paint.setColor(i10);
            paint2.setColor(i11);
            paint3.setColor(i12);
            c3567j.n0(ColorStateList.valueOf(0));
            c3567j.w0(2);
            c3567j.t0(false);
            c3567j.u0(-7829368);
            RectF rectF3 = new RectF(rectF);
            this.f94776w = rectF3;
            this.f94777x = new RectF(rectF3);
            RectF rectF4 = new RectF(rectF3);
            this.f94778y = rectF4;
            this.f94779z = new RectF(rectF4);
            PointF m10 = m(rectF);
            PointF m11 = m(rectF2);
            PathMeasure pathMeasure = new PathMeasure(pathMotion.getPath(m10.f32425x, m10.f32426y, m11.f32425x, m11.f32426y), false);
            this.f94768o = pathMeasure;
            this.f94769p = pathMeasure.getLength();
            float[] fArr = {rectF.centerX(), rectF.top};
            paint4.setStyle(Paint.Style.FILL);
            paint4.setShader(u.c(i13));
            paint5.setStyle(Paint.Style.STROKE);
            paint5.setStrokeWidth(10.0f);
            p(0.0f);
        }
    }

    static {
        a aVar = null;
        f94696P = new f(new e(0.6f, 0.9f), new e(0.0f, 1.0f), new e(0.0f, 0.9f), new e(0.3f, 0.9f), aVar);
        f94698R = new f(new e(0.6f, 0.9f), new e(0.0f, 0.9f), new e(0.0f, 0.9f), new e(0.2f, 0.9f), aVar);
    }

    public C13926l() {
        this.f94700b = false;
        this.f94701c = false;
        this.f94702d = false;
        this.f94703e = false;
        this.f94704f = 16908290;
        this.f94705g = -1;
        this.f94706h = -1;
        this.f94707i = 0;
        this.f94708j = 0;
        this.f94709k = 0;
        this.f94710l = 1375731712;
        this.f94711m = 0;
        this.f94712n = 0;
        this.f94713o = 0;
        this.f94722x = Build.VERSION.SDK_INT >= 28;
        this.f94723y = -1.0f;
        this.f94724z = -1.0f;
    }

    @StyleRes
    public static int C(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{C15879a.c.f122458jg});
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    private void H(Context context, boolean z10) {
        u.r(this, context, C15879a.c.f122172Ta, C16046a.f127889b);
        u.q(this, context, z10 ? C15879a.c.f121996Ja : C15879a.c.f122050Ma);
        if (this.f94702d) {
            return;
        }
        u.s(this, context, C15879a.c.f122206Va);
    }

    public static RectF c(View view, @Nullable View view2, float f10, float f11) {
        if (view2 == null) {
            return new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        }
        RectF g10 = u.g(view2);
        g10.offset(f10, f11);
        return g10;
    }

    public static C3572o d(@NonNull View view, @NonNull RectF rectF, @Nullable C3572o c3572o) {
        return u.b(t(view, c3572o), rectF);
    }

    public static void e(@NonNull TransitionValues transitionValues, @Nullable View view, @IdRes int i10, @Nullable C3572o c3572o) {
        if (i10 != -1) {
            transitionValues.view = u.f(transitionValues.view, i10);
        } else if (view != null) {
            transitionValues.view = view;
        } else {
            View view2 = transitionValues.view;
            int i11 = C15879a.h.f123726e3;
            if (view2.getTag(i11) instanceof View) {
                View view3 = (View) transitionValues.view.getTag(i11);
                transitionValues.view.setTag(i11, null);
                transitionValues.view = view3;
            }
        }
        View view4 = transitionValues.view;
        if (!ViewCompat.isLaidOut(view4) && view4.getWidth() == 0 && view4.getHeight() == 0) {
            return;
        }
        RectF h10 = view4.getParent() == null ? u.h(view4) : u.g(view4);
        transitionValues.values.put("materialContainerTransition:bounds", h10);
        transitionValues.values.put("materialContainerTransition:shapeAppearance", d(view4, h10, c3572o));
    }

    public static float h(float f10, View view) {
        return f10 != -1.0f ? f10 : ViewCompat.getElevation(view);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static C3572o t(@NonNull View view, @Nullable C3572o c3572o) {
        if (c3572o != null) {
            return c3572o;
        }
        int i10 = C15879a.h.f123726e3;
        if (view.getTag(i10) instanceof C3572o) {
            return (C3572o) view.getTag(i10);
        }
        Context context = view.getContext();
        int C10 = C(context);
        return C10 != -1 ? C3572o.b(context, C10, 0).m() : view instanceof InterfaceC3576s ? ((InterfaceC3576s) view).getShapeAppearanceModel() : C3572o.a().m();
    }

    public final f A(boolean z10, f fVar, f fVar2) {
        if (!z10) {
            fVar = fVar2;
        }
        return new f((e) u.d(this.f94718t, fVar.f94734a), (e) u.d(this.f94719u, fVar.f94735b), (e) u.d(this.f94720v, fVar.f94736c), (e) u.d(this.f94721w, fVar.f94737d), null);
    }

    public int B() {
        return this.f94711m;
    }

    public boolean D() {
        return this.f94700b;
    }

    public boolean E() {
        return this.f94722x;
    }

    public final boolean F(@NonNull RectF rectF, @NonNull RectF rectF2) {
        int i10 = this.f94711m;
        if (i10 == 0) {
            return u.a(rectF2) > u.a(rectF);
        }
        if (i10 == 1) {
            return true;
        }
        if (i10 == 2) {
            return false;
        }
        throw new IllegalArgumentException("Invalid transition direction: " + this.f94711m);
    }

    public boolean G() {
        return this.f94701c;
    }

    public void I(@ColorInt int i10) {
        this.f94707i = i10;
        this.f94708j = i10;
        this.f94709k = i10;
    }

    public void J(@ColorInt int i10) {
        this.f94707i = i10;
    }

    public void K(boolean z10) {
        this.f94700b = z10;
    }

    public void L(@IdRes int i10) {
        this.f94704f = i10;
    }

    public void M(boolean z10) {
        this.f94722x = z10;
    }

    public void N(@ColorInt int i10) {
        this.f94709k = i10;
    }

    public void O(float f10) {
        this.f94724z = f10;
    }

    public void P(@Nullable C3572o c3572o) {
        this.f94717s = c3572o;
    }

    public void Q(@Nullable View view) {
        this.f94715q = view;
    }

    public void R(@IdRes int i10) {
        this.f94706h = i10;
    }

    public void S(int i10) {
        this.f94712n = i10;
    }

    public void T(@Nullable e eVar) {
        this.f94718t = eVar;
    }

    public void U(int i10) {
        this.f94713o = i10;
    }

    public void V(boolean z10) {
        this.f94701c = z10;
    }

    public void W(@Nullable e eVar) {
        this.f94720v = eVar;
    }

    public void X(@Nullable e eVar) {
        this.f94719u = eVar;
    }

    public void Y(@ColorInt int i10) {
        this.f94710l = i10;
    }

    public void Z(@Nullable e eVar) {
        this.f94721w = eVar;
    }

    public final f b(boolean z10) {
        PathMotion pathMotion = getPathMotion();
        return ((pathMotion instanceof ArcMotion) || (pathMotion instanceof C13925k)) ? A(z10, f94697Q, f94698R) : A(z10, f94695O, f94696P);
    }

    public void c0(@ColorInt int i10) {
        this.f94708j = i10;
    }

    @Override
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        e(transitionValues, this.f94715q, this.f94706h, this.f94717s);
    }

    @Override
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        e(transitionValues, this.f94714p, this.f94705g, this.f94716r);
    }

    @Override
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        View e10;
        View view;
        if (transitionValues != null && transitionValues2 != null) {
            RectF rectF = (RectF) transitionValues.values.get("materialContainerTransition:bounds");
            C3572o c3572o = (C3572o) transitionValues.values.get("materialContainerTransition:shapeAppearance");
            if (rectF != null && c3572o != null) {
                RectF rectF2 = (RectF) transitionValues2.values.get("materialContainerTransition:bounds");
                C3572o c3572o2 = (C3572o) transitionValues2.values.get("materialContainerTransition:shapeAppearance");
                if (rectF2 == null || c3572o2 == null) {
                    Log.w(f94691K, "Skipping due to null end bounds. Ensure end view is laid out and measured.");
                    return null;
                }
                View view2 = transitionValues.view;
                View view3 = transitionValues2.view;
                View view4 = view3.getParent() != null ? view3 : view2;
                if (this.f94704f == view4.getId()) {
                    e10 = (View) view4.getParent();
                    view = view4;
                } else {
                    e10 = u.e(view4, this.f94704f);
                    view = null;
                }
                RectF g10 = u.g(e10);
                float f10 = -g10.left;
                float f11 = -g10.top;
                RectF c10 = c(e10, view, f10, f11);
                rectF.offset(f10, f11);
                rectF2.offset(f10, f11);
                boolean F10 = F(rectF, rectF2);
                if (!this.f94703e) {
                    H(view4.getContext(), F10);
                }
                h hVar = new h(getPathMotion(), view2, rectF, c3572o, h(this.f94723y, view2), view3, rectF2, c3572o2, h(this.f94724z, view3), this.f94707i, this.f94708j, this.f94709k, this.f94710l, F10, this.f94722x, C13916b.a(this.f94712n, F10), C13921g.a(this.f94713o, F10, rectF, rectF2), b(F10), this.f94700b, null);
                hVar.setBounds(Math.round(c10.left), Math.round(c10.top), Math.round(c10.right), Math.round(c10.bottom));
                ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                ofFloat.addUpdateListener(new a(hVar));
                addListener(new b(e10, hVar, view2, view3));
                return ofFloat;
            }
            Log.w(f94691K, "Skipping due to null start bounds. Ensure start view is laid out and measured.");
        }
        return null;
    }

    public void d0(float f10) {
        this.f94723y = f10;
    }

    public void e0(@Nullable C3572o c3572o) {
        this.f94716r = c3572o;
    }

    @ColorInt
    public int f() {
        return this.f94707i;
    }

    public void f0(@Nullable View view) {
        this.f94714p = view;
    }

    @IdRes
    public int g() {
        return this.f94704f;
    }

    public void g0(@IdRes int i10) {
        this.f94705g = i10;
    }

    @Override
    @Nullable
    public String[] getTransitionProperties() {
        return f94694N;
    }

    public void h0(int i10) {
        this.f94711m = i10;
    }

    @ColorInt
    public int i() {
        return this.f94709k;
    }

    public float j() {
        return this.f94724z;
    }

    @Nullable
    public C3572o k() {
        return this.f94717s;
    }

    @Nullable
    public View l() {
        return this.f94715q;
    }

    @IdRes
    public int m() {
        return this.f94706h;
    }

    public int n() {
        return this.f94712n;
    }

    @Nullable
    public e o() {
        return this.f94718t;
    }

    public int p() {
        return this.f94713o;
    }

    @Nullable
    public e q() {
        return this.f94720v;
    }

    @Nullable
    public e r() {
        return this.f94719u;
    }

    @ColorInt
    public int s() {
        return this.f94710l;
    }

    @Override
    public void setPathMotion(@Nullable PathMotion pathMotion) {
        super.setPathMotion(pathMotion);
        this.f94702d = true;
    }

    @Nullable
    public e u() {
        return this.f94721w;
    }

    @ColorInt
    public int v() {
        return this.f94708j;
    }

    public float w() {
        return this.f94723y;
    }

    @Nullable
    public C3572o x() {
        return this.f94716r;
    }

    @Nullable
    public View y() {
        return this.f94714p;
    }

    @IdRes
    public int z() {
        return this.f94705g;
    }

    public C13926l(@NonNull Context context, boolean z10) {
        this.f94700b = false;
        this.f94701c = false;
        this.f94702d = false;
        this.f94703e = false;
        this.f94704f = 16908290;
        this.f94705g = -1;
        this.f94706h = -1;
        this.f94707i = 0;
        this.f94708j = 0;
        this.f94709k = 0;
        this.f94710l = 1375731712;
        this.f94711m = 0;
        this.f94712n = 0;
        this.f94713o = 0;
        this.f94722x = Build.VERSION.SDK_INT >= 28;
        this.f94723y = -1.0f;
        this.f94724z = -1.0f;
        H(context, z10);
        this.f94703e = true;
    }
}
