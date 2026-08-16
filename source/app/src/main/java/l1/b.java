package L1;

import X1.c;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.internal.s;
import w1.C15879a;

public class b extends RecyclerView.ItemDecoration {

    public static final int f11538h = 0;

    public static final int f11539i = 1;

    public static final int f11540j = C15879a.n.f124539cc;

    @NonNull
    public Drawable f11541a;

    public int f11542b;

    @ColorInt
    public int f11543c;

    public int f11544d;

    public int f11545e;

    public int f11546f;

    public final Rect f11547g;

    public b(@NonNull Context context, int i10) {
        this(context, null, i10);
    }

    public final void a(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        int height;
        int i10;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i10 = recyclerView.getPaddingTop();
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), i10, recyclerView.getWidth() - recyclerView.getPaddingRight(), height);
        } else {
            height = recyclerView.getHeight();
            i10 = 0;
        }
        int i11 = i10 + this.f11545e;
        int i12 = height - this.f11546f;
        int childCount = recyclerView.getChildCount();
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = recyclerView.getChildAt(i13);
            recyclerView.getLayoutManager().getDecoratedBoundsWithMargins(childAt, this.f11547g);
            int round = this.f11547g.right + Math.round(childAt.getTranslationX());
            this.f11541a.setBounds((round - this.f11541a.getIntrinsicWidth()) - this.f11542b, i11, round, i12);
            this.f11541a.draw(canvas);
        }
        canvas.restore();
    }

    public final void b(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        int width;
        int i10;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i10 = recyclerView.getPaddingLeft();
            width = recyclerView.getWidth() - recyclerView.getPaddingRight();
            canvas.clipRect(i10, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
        } else {
            width = recyclerView.getWidth();
            i10 = 0;
        }
        boolean z10 = ViewCompat.getLayoutDirection(recyclerView) == 1;
        int i11 = i10 + (z10 ? this.f11546f : this.f11545e);
        int i12 = width - (z10 ? this.f11545e : this.f11546f);
        int childCount = recyclerView.getChildCount();
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = recyclerView.getChildAt(i13);
            recyclerView.getDecoratedBoundsWithMargins(childAt, this.f11547g);
            int round = this.f11547g.bottom + Math.round(childAt.getTranslationY());
            this.f11541a.setBounds(i11, (round - this.f11541a.getIntrinsicHeight()) - this.f11542b, i12, round);
            this.f11541a.draw(canvas);
        }
        canvas.restore();
    }

    @ColorInt
    public int c() {
        return this.f11543c;
    }

    @Px
    public int d() {
        return this.f11546f;
    }

    @Px
    public int e() {
        return this.f11545e;
    }

    @Px
    public int f() {
        return this.f11542b;
    }

    public int g() {
        return this.f11544d;
    }

    @Override
    public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        rect.set(0, 0, 0, 0);
        if (this.f11544d == 1) {
            rect.bottom = this.f11541a.getIntrinsicHeight() + this.f11542b;
        } else {
            rect.right = this.f11541a.getIntrinsicWidth() + this.f11542b;
        }
    }

    public void h(@ColorInt int i10) {
        this.f11543c = i10;
        Drawable wrap = DrawableCompat.wrap(this.f11541a);
        this.f11541a = wrap;
        DrawableCompat.setTint(wrap, i10);
    }

    public void i(@NonNull Context context, @ColorRes int i10) {
        h(ContextCompat.getColor(context, i10));
    }

    public void j(@Px int i10) {
        this.f11546f = i10;
    }

    public void k(@NonNull Context context, @DimenRes int i10) {
        j(context.getResources().getDimensionPixelOffset(i10));
    }

    public void l(@Px int i10) {
        this.f11545e = i10;
    }

    public void m(@NonNull Context context, @DimenRes int i10) {
        l(context.getResources().getDimensionPixelOffset(i10));
    }

    public void n(@Px int i10) {
        this.f11542b = i10;
    }

    public void o(@NonNull Context context, @DimenRes int i10) {
        n(context.getResources().getDimensionPixelSize(i10));
    }

    @Override
    public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        if (recyclerView.getLayoutManager() == null) {
            return;
        }
        if (this.f11544d == 1) {
            b(canvas, recyclerView);
        } else {
            a(canvas, recyclerView);
        }
    }

    public void setOrientation(int i10) {
        if (i10 == 0 || i10 == 1) {
            this.f11544d = i10;
            return;
        }
        throw new IllegalArgumentException("Invalid orientation: " + i10 + ". It should be either HORIZONTAL or VERTICAL");
    }

    public b(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, C15879a.c.f122417ha, i10);
    }

    public b(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        this.f11547g = new Rect();
        TypedArray j10 = s.j(context, attributeSet, C15879a.o.f125292Rl, i10, f11540j, new int[0]);
        this.f11543c = c.a(context, j10, C15879a.o.f125316Sl).getDefaultColor();
        this.f11542b = j10.getDimensionPixelSize(C15879a.o.f125388Vl, context.getResources().getDimensionPixelSize(C15879a.f.f123271m2));
        this.f11545e = j10.getDimensionPixelOffset(C15879a.o.f125364Ul, 0);
        this.f11546f = j10.getDimensionPixelOffset(C15879a.o.f125340Tl, 0);
        j10.recycle();
        this.f11541a = new ShapeDrawable();
        h(this.f11543c);
        setOrientation(i11);
    }
}
