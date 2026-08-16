package o0;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexboxLayoutManager;
import java.util.List;

public class i extends RecyclerView.ItemDecoration {

    public static final int f98443c = 1;

    public static final int f98444d = 2;

    public static final int f98445e = 3;

    public static final int[] f98446f = {R.attr.listDivider};

    public Drawable f98447a;

    public int f98448b;

    public i(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f98446f);
        this.f98447a = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        setOrientation(3);
    }

    public final void a(Canvas canvas, RecyclerView parent) {
        int top;
        int intrinsicHeight;
        int left;
        int right;
        int i10;
        int i11;
        int i12;
        if (d()) {
            FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) parent.getLayoutManager();
            int flexDirection = flexboxLayoutManager.getFlexDirection();
            int left2 = parent.getLeft() - parent.getPaddingLeft();
            int right2 = parent.getRight() + parent.getPaddingRight();
            int childCount = parent.getChildCount();
            for (int i13 = 0; i13 < childCount; i13++) {
                View childAt = parent.getChildAt(i13);
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
                if (flexDirection == 3) {
                    intrinsicHeight = childAt.getBottom() + layoutParams.bottomMargin;
                    top = this.f98447a.getIntrinsicHeight() + intrinsicHeight;
                } else {
                    top = childAt.getTop() - layoutParams.topMargin;
                    intrinsicHeight = top - this.f98447a.getIntrinsicHeight();
                }
                if (!flexboxLayoutManager.j()) {
                    left = childAt.getLeft() - layoutParams.leftMargin;
                    right = childAt.getRight();
                    i10 = layoutParams.rightMargin;
                } else if (flexboxLayoutManager.J()) {
                    i11 = Math.min(childAt.getRight() + layoutParams.rightMargin + this.f98447a.getIntrinsicWidth(), right2);
                    i12 = childAt.getLeft() - layoutParams.leftMargin;
                    this.f98447a.setBounds(i12, intrinsicHeight, i11, top);
                    this.f98447a.draw(canvas);
                } else {
                    left = Math.max((childAt.getLeft() - layoutParams.leftMargin) - this.f98447a.getIntrinsicWidth(), left2);
                    right = childAt.getRight();
                    i10 = layoutParams.rightMargin;
                }
                int i14 = left;
                i11 = right + i10;
                i12 = i14;
                this.f98447a.setBounds(i12, intrinsicHeight, i11, top);
                this.f98447a.draw(canvas);
            }
        }
    }

    public final void b(Canvas canvas, RecyclerView parent) {
        int left;
        int intrinsicWidth;
        int max;
        int bottom;
        int i10;
        int i11;
        if (e()) {
            FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) parent.getLayoutManager();
            int top = parent.getTop() - parent.getPaddingTop();
            int bottom2 = parent.getBottom() + parent.getPaddingBottom();
            int childCount = parent.getChildCount();
            int flexDirection = flexboxLayoutManager.getFlexDirection();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = parent.getChildAt(i12);
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
                if (flexboxLayoutManager.J()) {
                    intrinsicWidth = childAt.getRight() + layoutParams.rightMargin;
                    left = this.f98447a.getIntrinsicWidth() + intrinsicWidth;
                } else {
                    left = childAt.getLeft() - layoutParams.leftMargin;
                    intrinsicWidth = left - this.f98447a.getIntrinsicWidth();
                }
                if (flexboxLayoutManager.j()) {
                    max = childAt.getTop() - layoutParams.topMargin;
                    bottom = childAt.getBottom();
                    i10 = layoutParams.bottomMargin;
                } else if (flexDirection == 3) {
                    int min = Math.min(childAt.getBottom() + layoutParams.bottomMargin + this.f98447a.getIntrinsicHeight(), bottom2);
                    max = childAt.getTop() - layoutParams.topMargin;
                    i11 = min;
                    this.f98447a.setBounds(intrinsicWidth, max, left, i11);
                    this.f98447a.draw(canvas);
                } else {
                    max = Math.max((childAt.getTop() - layoutParams.topMargin) - this.f98447a.getIntrinsicHeight(), top);
                    bottom = childAt.getBottom();
                    i10 = layoutParams.bottomMargin;
                }
                i11 = bottom + i10;
                this.f98447a.setBounds(intrinsicWidth, max, left, i11);
                this.f98447a.draw(canvas);
            }
        }
    }

    public final boolean c(int position, List<g> flexLines, FlexboxLayoutManager layoutManager) {
        int G10 = layoutManager.G(position);
        if ((G10 == -1 || G10 >= layoutManager.getFlexLinesInternal().size() || layoutManager.getFlexLinesInternal().get(G10).f98436o != position) && position != 0) {
            return flexLines.size() != 0 && flexLines.get(flexLines.size() - 1).f98437p == position - 1;
        }
        return true;
    }

    public final boolean d() {
        return (this.f98448b & 1) > 0;
    }

    public final boolean e() {
        return (this.f98448b & 2) > 0;
    }

    public final void f(Rect outRect, int position, FlexboxLayoutManager layoutManager, List<g> flexLines) {
        if (flexLines.size() == 0 || layoutManager.G(position) == 0) {
            return;
        }
        if (layoutManager.j()) {
            if (d()) {
                outRect.top = this.f98447a.getIntrinsicHeight();
                outRect.bottom = 0;
                return;
            } else {
                outRect.top = 0;
                outRect.bottom = 0;
                return;
            }
        }
        if (e()) {
            if (layoutManager.J()) {
                outRect.right = this.f98447a.getIntrinsicWidth();
                outRect.left = 0;
            } else {
                outRect.left = this.f98447a.getIntrinsicWidth();
                outRect.right = 0;
            }
        }
    }

    public final void g(Rect outRect, int position, FlexboxLayoutManager layoutManager, List<g> flexLines, int flexDirection) {
        if (c(position, flexLines, layoutManager)) {
            return;
        }
        if (layoutManager.j()) {
            if (!e()) {
                outRect.left = 0;
                outRect.right = 0;
                return;
            } else if (layoutManager.J()) {
                outRect.right = this.f98447a.getIntrinsicWidth();
                outRect.left = 0;
                return;
            } else {
                outRect.left = this.f98447a.getIntrinsicWidth();
                outRect.right = 0;
                return;
            }
        }
        if (!d()) {
            outRect.top = 0;
            outRect.bottom = 0;
        } else if (flexDirection == 3) {
            outRect.bottom = this.f98447a.getIntrinsicHeight();
            outRect.top = 0;
        } else {
            outRect.top = this.f98447a.getIntrinsicHeight();
            outRect.bottom = 0;
        }
    }

    @Override
    public void getItemOffsets(@NonNull Rect outRect, @NonNull View view, RecyclerView parent, @NonNull RecyclerView.State state) {
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        if (childAdapterPosition == 0) {
            return;
        }
        if (!d() && !e()) {
            outRect.set(0, 0, 0, 0);
            return;
        }
        FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) parent.getLayoutManager();
        List<g> flexLines = flexboxLayoutManager.getFlexLines();
        g(outRect, childAdapterPosition, flexboxLayoutManager, flexLines, flexboxLayoutManager.getFlexDirection());
        f(outRect, childAdapterPosition, flexboxLayoutManager, flexLines);
    }

    @Override
    public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView parent, @NonNull RecyclerView.State state) {
        a(canvas, parent);
        b(canvas, parent);
    }

    public void setDrawable(Drawable drawable) {
        if (drawable == null) {
            throw new IllegalArgumentException("Drawable cannot be null.");
        }
        this.f98447a = drawable;
    }

    public void setOrientation(int orientation) {
        this.f98448b = orientation;
    }
}
