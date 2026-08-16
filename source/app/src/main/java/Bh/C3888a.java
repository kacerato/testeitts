package bh;

import Lf.k;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nImageNote.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageNote.kt\norg/anastr/speedviewlib/components/note/ImageNote\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1#2:52\n*E\n"})
public final class C3888a extends b<C3888a> {

    @NotNull
    public final Bitmap f33188s;

    public final int f33189t;

    public final int f33190u;

    @NotNull
    public final RectF f33191v;

    @NotNull
    public final Paint f33192w;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @k
    public C3888a(@NotNull Context context, @NotNull Bitmap image) {
        this(context, image, 0, 0, 12, null);
        M.p(context, "context");
        M.p(image, "image");
    }

    @Override
    public void e(int i10) {
        m(this.f33189t, this.f33190u);
    }

    @Override
    public void h(@NotNull Canvas canvas, float f10, float f11) {
        M.p(canvas, "canvas");
        this.f33191v.set(f10, f11, this.f33189t + f10, this.f33190u + f11);
        canvas.drawBitmap(this.f33188s, (Rect) null, this.f33191v, this.f33192w);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @k
    public C3888a(@NotNull Context context, @NotNull Bitmap image, int i10) {
        this(context, image, i10, 0, 8, null);
        M.p(context, "context");
        M.p(image, "image");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @k
    public C3888a(@NotNull Context context, @NotNull Bitmap image, int i10, int i11) {
        super(context);
        M.p(context, "context");
        M.p(image, "image");
        this.f33188s = image;
        this.f33189t = i10;
        this.f33190u = i11;
        this.f33191v = new RectF();
        this.f33192w = new Paint(1);
        if (i10 <= 0) {
            throw new IllegalArgumentException("width must be bigger than 0");
        }
        if (i11 <= 0) {
            throw new IllegalArgumentException("height must be bigger than 0");
        }
    }

    public C3888a(Context context, Bitmap bitmap, int i10, int i11, int i12, C14026x c14026x) {
        this(context, bitmap, (i12 & 4) != 0 ? bitmap.getWidth() : i10, (i12 & 8) != 0 ? bitmap.getHeight() : i11);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C3888a(@NotNull Context context, int i10) {
        this(context, r3, 0, 0, 12, null);
        M.p(context, "context");
        Bitmap decodeResource = BitmapFactory.decodeResource(context.getResources(), i10);
        M.o(decodeResource, "decodeResource(...)");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C3888a(@NotNull Context context, int i10, int i11, int i12) {
        this(context, r3, i11, i12);
        M.p(context, "context");
        Bitmap decodeResource = BitmapFactory.decodeResource(context.getResources(), i10);
        M.o(decodeResource, "decodeResource(...)");
    }
}
