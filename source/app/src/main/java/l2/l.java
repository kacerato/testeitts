package l2;

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
import android.transition.ArcMotion;
import android.transition.PathMotion;
import android.transition.Transition;
import android.transition.TransitionValues;
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
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.A;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import l2.v;
import w1.C15879a;
import x1.C16046a;

@RequiresApi(21)
public final class l extends Transition {

    public static final int f95954A = 0;

    public static final int f95955B = 1;

    public static final int f95956C = 2;

    public static final int f95957D = 0;

    public static final int f95958E = 1;

    public static final int f95959F = 2;

    public static final int f95960G = 3;

    public static final int f95961H = 0;

    public static final int f95962I = 1;

    public static final int f95963J = 2;

    public static final String f95964K = "l";

    public static final String f95965L = "materialContainerTransition:bounds";

    public static final String f95966M = "materialContainerTransition:shapeAppearance";

    public static final f f95969P;

    public static final f f95971R;

    public static final float f95972S = -1.0f;

    public boolean f95973b;

    public boolean f95974c;

    public boolean f95975d;

    public boolean f95976e;

    @IdRes
    public int f95977f;

    @IdRes
    public int f95978g;

    @IdRes
    public int f95979h;

    @ColorInt
    public int f95980i;

    @ColorInt
    public int f95981j;

    @ColorInt
    public int f95982k;

    @ColorInt
    public int f95983l;

    public int f95984m;

    public int f95985n;

    public int f95986o;

    @Nullable
    public View f95987p;

    @Nullable
    public View f95988q;

    @Nullable
    public C3572o f95989r;

    @Nullable
    public C3572o f95990s;

    @Nullable
    public e f95991t;

    @Nullable
    public e f95992u;

    @Nullable
    public e f95993v;

    @Nullable
    public e f95994w;

    public boolean f95995x;

    public float f95996y;

    public float f95997z;

    public static final String[] f95967N = {"materialContainerTransition:bounds", "materialContainerTransition:shapeAppearance"};

    public static final f f95968O = new f(new e(0.0f, 0.25f), new e(0.0f, 1.0f), new e(0.0f, 1.0f), new e(0.0f, 0.75f), null);

    public static final f f95970Q = new f(new e(0.1f, 0.4f), new e(0.1f, 1.0f), new e(0.1f, 1.0f), new e(0.1f, 0.9f), null);

    public class a implements ValueAnimator.AnimatorUpdateListener {

        public final h f95998a;

        public a(h hVar) {
            this.f95998a = hVar;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f95998a.o(valueAnimator.getAnimatedFraction());
        }
    }

    public class b extends u {

        public final View f96000a;

        public final h f96001b;

        public final View f96002c;

        public final View f96003d;

        public b(View view, h hVar, View view2, View view3) {
            this.f96000a = view;
            this.f96001b = hVar;
            this.f96002c = view2;
            this.f96003d = view3;
        }

        @Override
        public void onTransitionEnd(@NonNull Transition transition) {
            l.this.removeListener(this);
            if (l.this.f95974c) {
                return;
            }
            this.f96002c.setAlpha(1.0f);
            this.f96003d.setAlpha(1.0f);
            A.h(this.f96000a).remove(this.f96001b);
        }

        @Override
        public void onTransitionStart(@NonNull Transition transition) {
            A.h(this.f96000a).add(this.f96001b);
            this.f96002c.setAlpha(0.0f);
            this.f96003d.setAlpha(0.0f);
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
        public final float f96005a;

        @FloatRange(from = 0.0d, to = 1.0d)
        public final float f96006b;

        public e(@FloatRange(from = 0.0d, to = 1.0d) float f10, @FloatRange(from = 0.0d, to = 1.0d) float f11) {
            this.f96005a = f10;
            this.f96006b = f11;
        }

        @FloatRange(from = 0.0d, to = 1.0d)
        public float c() {
            return this.f96006b;
        }

        @FloatRange(from = 0.0d, to = 1.0d)
        public float d() {
            return this.f96005a;
        }
    }

    public static class f {

        @NonNull
        public final e f96007a;

        @NonNull
        public final e f96008b;

        @NonNull
        public final e f96009c;

        @NonNull
        public final e f96010d;

        public f(e eVar, e eVar2, e eVar3, e eVar4, a aVar) {
            this(eVar, eVar2, eVar3, eVar4);
        }

        public f(@NonNull e eVar, @NonNull e eVar2, @NonNull e eVar3, @NonNull e eVar4) {
            this.f96007a = eVar;
            this.f96008b = eVar2;
            this.f96009c = eVar3;
            this.f96010d = eVar4;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface g {
    }

    public static final class h extends Drawable {

        public static final int f96011M = 754974720;

        public static final int f96012N = -7829368;

        public static final float f96013O = 0.3f;

        public static final float f96014P = 1.5f;

        public final f f96015A;

        public final InterfaceC14043a f96016B;

        public final InterfaceC14048f f96017C;

        public final boolean f96018D;

        public final Paint f96019E;

        public final Path f96020F;

        public C14045c f96021G;

        public l2.h f96022H;

        public RectF f96023I;

        public float f96024J;

        public float f96025K;

        public float f96026L;

        public final View f96027a;

        public final RectF f96028b;

        public final C3572o f96029c;

        public final float f96030d;

        public final View f96031e;

        public final RectF f96032f;

        public final C3572o f96033g;

        public final float f96034h;

        public final Paint f96035i;

        public final Paint f96036j;

        public final Paint f96037k;

        public final Paint f96038l;

        public final Paint f96039m;

        public final j f96040n;

        public final PathMeasure f96041o;

        public final float f96042p;

        public final float[] f96043q;

        public final boolean f96044r;

        public final float f96045s;

        public final float f96046t;

        public final boolean f96047u;

        public final C3567j f96048v;

        public final RectF f96049w;

        public final RectF f96050x;

        public final RectF f96051y;

        public final RectF f96052z;

        public class a implements v.c {
            public a() {
            }

            @Override
            public void a(Canvas canvas) {
                h.this.f96027a.draw(canvas);
            }
        }

        public class b implements v.c {
            public b() {
            }

            @Override
            public void a(Canvas canvas) {
                h.this.f96031e.draw(canvas);
            }
        }

        public h(PathMotion pathMotion, View view, RectF rectF, C3572o c3572o, float f10, View view2, RectF rectF2, C3572o c3572o2, float f11, int i10, int i11, int i12, int i13, boolean z10, boolean z11, InterfaceC14043a interfaceC14043a, InterfaceC14048f interfaceC14048f, f fVar, boolean z12, a aVar) {
            this(pathMotion, view, rectF, c3572o, f10, view2, rectF2, c3572o2, f11, i10, i11, i12, i13, z10, z11, interfaceC14043a, interfaceC14048f, fVar, z12);
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
            if (this.f96039m.getAlpha() > 0) {
                canvas.drawRect(getBounds(), this.f96039m);
            }
            int save = this.f96018D ? canvas.save() : -1;
            if (this.f96047u && this.f96024J > 0.0f) {
                h(canvas);
            }
            this.f96040n.a(canvas);
            n(canvas, this.f96035i);
            if (this.f96021G.f95923c) {
                l(canvas);
                k(canvas);
            } else {
                k(canvas);
                l(canvas);
            }
            if (this.f96018D) {
                canvas.restoreToCount(save);
                f(canvas, this.f96049w, this.f96020F, -65281);
                g(canvas, this.f96050x, -256);
                g(canvas, this.f96049w, -16711936);
                g(canvas, this.f96052z, -16711681);
                g(canvas, this.f96051y, -16776961);
            }
        }

        public final void f(Canvas canvas, RectF rectF, Path path, @ColorInt int i10) {
            PointF m10 = m(rectF);
            if (this.f96026L == 0.0f) {
                path.reset();
                path.moveTo(m10.f32425x, m10.f32426y);
            } else {
                path.lineTo(m10.f32425x, m10.f32426y);
                this.f96019E.setColor(i10);
                canvas.drawPath(path, this.f96019E);
            }
        }

        public final void g(Canvas canvas, RectF rectF, @ColorInt int i10) {
            this.f96019E.setColor(i10);
            canvas.drawRect(rectF, this.f96019E);
        }

        @Override
        public int getOpacity() {
            return -3;
        }

        public final void h(Canvas canvas) {
            canvas.save();
            canvas.clipPath(this.f96040n.d(), Region.Op.DIFFERENCE);
            if (Build.VERSION.SDK_INT > 28) {
                j(canvas);
            } else {
                i(canvas);
            }
            canvas.restore();
        }

        public final void i(Canvas canvas) {
            C3567j c3567j = this.f96048v;
            RectF rectF = this.f96023I;
            c3567j.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            this.f96048v.m0(this.f96024J);
            this.f96048v.A0((int) this.f96025K);
            this.f96048v.setShapeAppearanceModel(this.f96040n.c());
            this.f96048v.draw(canvas);
        }

        public final void j(Canvas canvas) {
            C3572o c10 = this.f96040n.c();
            if (!c10.u(this.f96023I)) {
                canvas.drawPath(this.f96040n.d(), this.f96038l);
            } else {
                float a10 = c10.r().a(this.f96023I);
                canvas.drawRoundRect(this.f96023I, a10, a10, this.f96038l);
            }
        }

        public final void k(Canvas canvas) {
            n(canvas, this.f96037k);
            Rect bounds = getBounds();
            RectF rectF = this.f96051y;
            v.w(canvas, bounds, rectF.left, rectF.top, this.f96022H.f95944b, this.f96021G.f95922b, new b());
        }

        public final void l(Canvas canvas) {
            n(canvas, this.f96036j);
            Rect bounds = getBounds();
            RectF rectF = this.f96049w;
            v.w(canvas, bounds, rectF.left, rectF.top, this.f96022H.f95943a, this.f96021G.f95921a, new a());
        }

        public final void n(Canvas canvas, Paint paint) {
            if (paint.getColor() == 0 || paint.getAlpha() <= 0) {
                return;
            }
            canvas.drawRect(getBounds(), paint);
        }

        public final void o(float f10) {
            if (this.f96026L != f10) {
                p(f10);
            }
        }

        public final void p(float f10) {
            float f11;
            float f12;
            this.f96026L = f10;
            this.f96039m.setAlpha((int) (this.f96044r ? v.k(0.0f, 255.0f, f10) : v.k(255.0f, 0.0f, f10)));
            this.f96041o.getPosTan(this.f96042p * f10, this.f96043q, null);
            float[] fArr = this.f96043q;
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
                this.f96041o.getPosTan(this.f96042p * f11, fArr, null);
                float[] fArr2 = this.f96043q;
                f13 += (f13 - fArr2[0]) * f12;
                f14 += (f14 - fArr2[1]) * f12;
            }
            float f15 = f13;
            float f16 = f14;
            l2.h a10 = this.f96017C.a(f10, ((Float) Preconditions.checkNotNull(Float.valueOf(this.f96015A.f96008b.f96005a))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.f96015A.f96008b.f96006b))).floatValue(), this.f96028b.width(), this.f96028b.height(), this.f96032f.width(), this.f96032f.height());
            this.f96022H = a10;
            RectF rectF = this.f96049w;
            float f17 = a10.f95945c;
            rectF.set(f15 - (f17 / 2.0f), f16, (f17 / 2.0f) + f15, a10.f95946d + f16);
            RectF rectF2 = this.f96051y;
            l2.h hVar = this.f96022H;
            float f18 = hVar.f95947e;
            rectF2.set(f15 - (f18 / 2.0f), f16, f15 + (f18 / 2.0f), hVar.f95948f + f16);
            this.f96050x.set(this.f96049w);
            this.f96052z.set(this.f96051y);
            float floatValue = ((Float) Preconditions.checkNotNull(Float.valueOf(this.f96015A.f96009c.f96005a))).floatValue();
            float floatValue2 = ((Float) Preconditions.checkNotNull(Float.valueOf(this.f96015A.f96009c.f96006b))).floatValue();
            boolean c10 = this.f96017C.c(this.f96022H);
            RectF rectF3 = c10 ? this.f96050x : this.f96052z;
            float l10 = v.l(0.0f, 1.0f, floatValue, floatValue2, f10);
            if (!c10) {
                l10 = 1.0f - l10;
            }
            this.f96017C.b(rectF3, l10, this.f96022H);
            this.f96023I = new RectF(Math.min(this.f96050x.left, this.f96052z.left), Math.min(this.f96050x.top, this.f96052z.top), Math.max(this.f96050x.right, this.f96052z.right), Math.max(this.f96050x.bottom, this.f96052z.bottom));
            this.f96040n.b(f10, this.f96029c, this.f96033g, this.f96049w, this.f96050x, this.f96052z, this.f96015A.f96010d);
            this.f96024J = v.k(this.f96030d, this.f96034h, f10);
            float d10 = d(this.f96023I, this.f96045s);
            float e10 = e(this.f96023I, this.f96046t);
            float f19 = this.f96024J;
            float f20 = (int) (e10 * f19);
            this.f96025K = f20;
            this.f96038l.setShadowLayer(f19, (int) (d10 * f19), f20, 754974720);
            this.f96021G = this.f96016B.a(f10, ((Float) Preconditions.checkNotNull(Float.valueOf(this.f96015A.f96007a.f96005a))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.f96015A.f96007a.f96006b))).floatValue(), 0.35f);
            if (this.f96036j.getColor() != 0) {
                this.f96036j.setAlpha(this.f96021G.f95921a);
            }
            if (this.f96037k.getColor() != 0) {
                this.f96037k.setAlpha(this.f96021G.f95922b);
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

        public h(PathMotion pathMotion, View view, RectF rectF, C3572o c3572o, float f10, View view2, RectF rectF2, C3572o c3572o2, float f11, @ColorInt int i10, @ColorInt int i11, @ColorInt int i12, int i13, boolean z10, boolean z11, InterfaceC14043a interfaceC14043a, InterfaceC14048f interfaceC14048f, f fVar, boolean z12) {
            Paint paint = new Paint();
            this.f96035i = paint;
            Paint paint2 = new Paint();
            this.f96036j = paint2;
            Paint paint3 = new Paint();
            this.f96037k = paint3;
            this.f96038l = new Paint();
            Paint paint4 = new Paint();
            this.f96039m = paint4;
            this.f96040n = new j();
            this.f96043q = r7;
            C3567j c3567j = new C3567j();
            this.f96048v = c3567j;
            Paint paint5 = new Paint();
            this.f96019E = paint5;
            this.f96020F = new Path();
            this.f96027a = view;
            this.f96028b = rectF;
            this.f96029c = c3572o;
            this.f96030d = f10;
            this.f96031e = view2;
            this.f96032f = rectF2;
            this.f96033g = c3572o2;
            this.f96034h = f11;
            this.f96044r = z10;
            this.f96047u = z11;
            this.f96016B = interfaceC14043a;
            this.f96017C = interfaceC14048f;
            this.f96015A = fVar;
            this.f96018D = z12;
            WindowManager windowManager = (WindowManager) view.getContext().getSystemService(Context.WINDOW_SERVICE);
            windowManager.getDefaultDisplay().getMetrics(new DisplayMetrics());
            this.f96045s = r12.widthPixels;
            this.f96046t = r12.heightPixels;
            paint.setColor(i10);
            paint2.setColor(i11);
            paint3.setColor(i12);
            c3567j.n0(ColorStateList.valueOf(0));
            c3567j.w0(2);
            c3567j.t0(false);
            c3567j.u0(-7829368);
            RectF rectF3 = new RectF(rectF);
            this.f96049w = rectF3;
            this.f96050x = new RectF(rectF3);
            RectF rectF4 = new RectF(rectF3);
            this.f96051y = rectF4;
            this.f96052z = new RectF(rectF4);
            PointF m10 = m(rectF);
            PointF m11 = m(rectF2);
            PathMeasure pathMeasure = new PathMeasure(pathMotion.getPath(m10.f32425x, m10.f32426y, m11.f32425x, m11.f32426y), false);
            this.f96041o = pathMeasure;
            this.f96042p = pathMeasure.getLength();
            float[] fArr = {rectF.centerX(), rectF.top};
            paint4.setStyle(Paint.Style.FILL);
            paint4.setShader(v.c(i13));
            paint5.setStyle(Paint.Style.STROKE);
            paint5.setStrokeWidth(10.0f);
            p(0.0f);
        }
    }

    static {
        a aVar = null;
        f95969P = new f(new e(0.6f, 0.9f), new e(0.0f, 1.0f), new e(0.0f, 0.9f), new e(0.3f, 0.9f), aVar);
        f95971R = new f(new e(0.6f, 0.9f), new e(0.0f, 0.9f), new e(0.0f, 0.9f), new e(0.2f, 0.9f), aVar);
    }

    public l() {
        this.f95973b = false;
        this.f95974c = false;
        this.f95975d = false;
        this.f95976e = false;
        this.f95977f = 16908290;
        this.f95978g = -1;
        this.f95979h = -1;
        this.f95980i = 0;
        this.f95981j = 0;
        this.f95982k = 0;
        this.f95983l = 1375731712;
        this.f95984m = 0;
        this.f95985n = 0;
        this.f95986o = 0;
        this.f95995x = Build.VERSION.SDK_INT >= 28;
        this.f95996y = -1.0f;
        this.f95997z = -1.0f;
    }

    @StyleRes
    public static int C(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{C15879a.c.f122458jg});
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    public static RectF c(View view, @Nullable View view2, float f10, float f11) {
        if (view2 == null) {
            return new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        }
        RectF g10 = v.g(view2);
        g10.offset(f10, f11);
        return g10;
    }

    public static C3572o d(@NonNull View view, @NonNull RectF rectF, @Nullable C3572o c3572o) {
        return v.b(t(view, c3572o), rectF);
    }

    public static void e(@NonNull TransitionValues transitionValues, @Nullable View view, @IdRes int i10, @Nullable C3572o c3572o) {
        if (i10 != -1) {
            transitionValues.view = v.f(transitionValues.view, i10);
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
        RectF h10 = view4.getParent() == null ? v.h(view4) : v.g(view4);
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
        return new f((e) v.d(this.f95991t, fVar.f96007a), (e) v.d(this.f95992u, fVar.f96008b), (e) v.d(this.f95993v, fVar.f96009c), (e) v.d(this.f95994w, fVar.f96010d), null);
    }

    public int B() {
        return this.f95984m;
    }

    public boolean D() {
        return this.f95973b;
    }

    public boolean E() {
        return this.f95995x;
    }

    public final boolean F(@NonNull RectF rectF, @NonNull RectF rectF2) {
        int i10 = this.f95984m;
        if (i10 == 0) {
            return v.a(rectF2) > v.a(rectF);
        }
        if (i10 == 1) {
            return true;
        }
        if (i10 == 2) {
            return false;
        }
        throw new IllegalArgumentException("Invalid transition direction: " + this.f95984m);
    }

    public boolean G() {
        return this.f95974c;
    }

    public final void H(Context context, boolean z10) {
        v.r(this, context, C15879a.c.f122172Ta, C16046a.f127889b);
        v.q(this, context, z10 ? C15879a.c.f121996Ja : C15879a.c.f122050Ma);
        if (this.f95975d) {
            return;
        }
        v.s(this, context, C15879a.c.f122206Va);
    }

    public void I(@ColorInt int i10) {
        this.f95980i = i10;
        this.f95981j = i10;
        this.f95982k = i10;
    }

    public void J(@ColorInt int i10) {
        this.f95980i = i10;
    }

    public void K(boolean z10) {
        this.f95973b = z10;
    }

    public void L(@IdRes int i10) {
        this.f95977f = i10;
    }

    public void M(boolean z10) {
        this.f95995x = z10;
    }

    public void N(@ColorInt int i10) {
        this.f95982k = i10;
    }

    public void O(float f10) {
        this.f95997z = f10;
    }

    public void P(@Nullable C3572o c3572o) {
        this.f95990s = c3572o;
    }

    public void Q(@Nullable View view) {
        this.f95988q = view;
    }

    public void R(@IdRes int i10) {
        this.f95979h = i10;
    }

    public void S(int i10) {
        this.f95985n = i10;
    }

    public void T(@Nullable e eVar) {
        this.f95991t = eVar;
    }

    public void U(int i10) {
        this.f95986o = i10;
    }

    public void V(boolean z10) {
        this.f95974c = z10;
    }

    public void W(@Nullable e eVar) {
        this.f95993v = eVar;
    }

    public void X(@Nullable e eVar) {
        this.f95992u = eVar;
    }

    public void Y(@ColorInt int i10) {
        this.f95983l = i10;
    }

    public void Z(@Nullable e eVar) {
        this.f95994w = eVar;
    }

    public final f b(boolean z10) {
        PathMotion pathMotion = getPathMotion();
        return ((pathMotion instanceof ArcMotion) || (pathMotion instanceof k)) ? A(z10, f95970Q, f95971R) : A(z10, f95968O, f95969P);
    }

    public void c0(@ColorInt int i10) {
        this.f95981j = i10;
    }

    @Override
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        e(transitionValues, this.f95988q, this.f95979h, this.f95990s);
    }

    @Override
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        e(transitionValues, this.f95987p, this.f95978g, this.f95989r);
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
                    Log.w(f95964K, "Skipping due to null end bounds. Ensure end view is laid out and measured.");
                    return null;
                }
                View view2 = transitionValues.view;
                View view3 = transitionValues2.view;
                View view4 = view3.getParent() != null ? view3 : view2;
                if (this.f95977f == view4.getId()) {
                    e10 = (View) view4.getParent();
                    view = view4;
                } else {
                    e10 = v.e(view4, this.f95977f);
                    view = null;
                }
                RectF g10 = v.g(e10);
                float f10 = -g10.left;
                float f11 = -g10.top;
                RectF c10 = c(e10, view, f10, f11);
                rectF.offset(f10, f11);
                rectF2.offset(f10, f11);
                boolean F10 = F(rectF, rectF2);
                if (!this.f95976e) {
                    H(view4.getContext(), F10);
                }
                h hVar = new h(getPathMotion(), view2, rectF, c3572o, h(this.f95996y, view2), view3, rectF2, c3572o2, h(this.f95997z, view3), this.f95980i, this.f95981j, this.f95982k, this.f95983l, F10, this.f95995x, C14044b.a(this.f95985n, F10), C14049g.a(this.f95986o, F10, rectF, rectF2), b(F10), this.f95973b, null);
                hVar.setBounds(Math.round(c10.left), Math.round(c10.top), Math.round(c10.right), Math.round(c10.bottom));
                ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                ofFloat.addUpdateListener(new a(hVar));
                addListener(new b(e10, hVar, view2, view3));
                return ofFloat;
            }
            Log.w(f95964K, "Skipping due to null start bounds. Ensure start view is laid out and measured.");
        }
        return null;
    }

    public void d0(float f10) {
        this.f95996y = f10;
    }

    public void e0(@Nullable C3572o c3572o) {
        this.f95989r = c3572o;
    }

    @ColorInt
    public int f() {
        return this.f95980i;
    }

    public void f0(@Nullable View view) {
        this.f95987p = view;
    }

    @IdRes
    public int g() {
        return this.f95977f;
    }

    public void g0(@IdRes int i10) {
        this.f95978g = i10;
    }

    @Override
    @Nullable
    public String[] getTransitionProperties() {
        return f95967N;
    }

    public void h0(int i10) {
        this.f95984m = i10;
    }

    @ColorInt
    public int i() {
        return this.f95982k;
    }

    public float j() {
        return this.f95997z;
    }

    @Nullable
    public C3572o k() {
        return this.f95990s;
    }

    @Nullable
    public View l() {
        return this.f95988q;
    }

    @IdRes
    public int m() {
        return this.f95979h;
    }

    public int n() {
        return this.f95985n;
    }

    @Nullable
    public e o() {
        return this.f95991t;
    }

    public int p() {
        return this.f95986o;
    }

    @Nullable
    public e q() {
        return this.f95993v;
    }

    @Nullable
    public e r() {
        return this.f95992u;
    }

    @ColorInt
    public int s() {
        return this.f95983l;
    }

    @Override
    public void setPathMotion(@Nullable PathMotion pathMotion) {
        super.setPathMotion(pathMotion);
        this.f95975d = true;
    }

    @Nullable
    public e u() {
        return this.f95994w;
    }

    @ColorInt
    public int v() {
        return this.f95981j;
    }

    public float w() {
        return this.f95996y;
    }

    @Nullable
    public C3572o x() {
        return this.f95989r;
    }

    @Nullable
    public View y() {
        return this.f95987p;
    }

    @IdRes
    public int z() {
        return this.f95978g;
    }

    public l(@NonNull Context context, boolean z10) {
        this.f95973b = false;
        this.f95974c = false;
        this.f95975d = false;
        this.f95976e = false;
        this.f95977f = 16908290;
        this.f95978g = -1;
        this.f95979h = -1;
        this.f95980i = 0;
        this.f95981j = 0;
        this.f95982k = 0;
        this.f95983l = 1375731712;
        this.f95984m = 0;
        this.f95985n = 0;
        this.f95986o = 0;
        this.f95995x = Build.VERSION.SDK_INT >= 28;
        this.f95996y = -1.0f;
        this.f95997z = -1.0f;
        H(context, z10);
        this.f95976e = true;
    }
}
