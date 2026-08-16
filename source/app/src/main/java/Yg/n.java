package Yg;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import t3.b;

public abstract class n extends j {

    @NotNull
    public final Paint f30516S;

    @NotNull
    public final Rect f30517T;

    @NotNull
    public Bitmap f30518U;

    @NotNull
    public a f30519V;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final Cf.a $ENTRIES;
        private static final a[] $VALUES;
        public static final a HORIZONTAL = new a("HORIZONTAL", 0);
        public static final a VERTICAL = new a("VERTICAL", 1);

        static {
            a[] a10 = a();
            $VALUES = a10;
            $ENTRIES = Cf.c.c(a10);
        }

        public a(String str, int i10) {
        }

        public static final a[] a() {
            return new a[]{HORIZONTAL, VERTICAL};
        }

        @NotNull
        public static Cf.a<a> b() {
            return $ENTRIES;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public n(@NotNull Context context) {
        this(context, null, 0, 6, null);
        M.p(context, "context");
    }

    private final void C(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, b.s.Kq, 0, 0);
        M.o(obtainStyledAttributes, "obtainStyledAttributes(...)");
        int i10 = obtainStyledAttributes.getInt(0, -1);
        if (i10 != -1) {
            setOrientation(a.values()[i10]);
        }
        obtainStyledAttributes.recycle();
    }

    @Override
    public void d0() {
        h0();
    }

    @NotNull
    public final Canvas g0() {
        if (getWidthPa() == 0 || getHeightPa() == 0) {
            return new Canvas();
        }
        Bitmap createBitmap = Bitmap.createBitmap(getWidthPa(), getHeightPa(), Bitmap.Config.ARGB_8888);
        M.o(createBitmap, "createBitmap(...)");
        this.f30518U = createBitmap;
        return new Canvas(this.f30518U);
    }

    @NotNull
    public final a getOrientation() {
        return this.f30519V;
    }

    public abstract void h0();

    @Override
    public void onDraw(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        super.onDraw(canvas);
        if (this.f30519V == a.HORIZONTAL) {
            this.f30517T.set(0, 0, (int) (getWidthPa() * getOffsetSpeed()), getHeightPa());
        } else {
            this.f30517T.set(0, getHeightPa() - ((int) (getHeightPa() * getOffsetSpeed())), getWidthPa(), getHeightPa());
        }
        canvas.translate(getPadding(), getPadding());
        Bitmap bitmap = this.f30518U;
        Rect rect = this.f30517T;
        canvas.drawBitmap(bitmap, rect, rect, this.f30516S);
        canvas.translate(-getPadding(), -getPadding());
        y(canvas);
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        d0();
    }

    public final void setOrientation(@NotNull a orientation) {
        M.p(orientation, "orientation");
        this.f30519V = orientation;
        if (isAttachedToWindow()) {
            requestLayout();
            F();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public n(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        M.p(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public n(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.p(context, "context");
        this.f30516S = new Paint(1);
        this.f30517T = new Rect();
        Bitmap createBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        M.o(createBitmap, "createBitmap(...)");
        this.f30518U = createBitmap;
        this.f30519V = a.HORIZONTAL;
        C(context, attributeSet);
    }

    public n(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
