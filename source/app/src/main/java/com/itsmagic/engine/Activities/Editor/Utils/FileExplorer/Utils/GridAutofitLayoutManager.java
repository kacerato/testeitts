package com.itsmagic.engine.Activities.Editor.Utils.FileExplorer.Utils;

import android.content.Context;
import android.util.TypedValue;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.concurrent.atomic.AtomicBoolean;

public class GridAutofitLayoutManager extends GridLayoutManager {

    public volatile int f72006b;

    public final AtomicBoolean f72007c;

    public int f72008d;

    public int f72009e;

    public GridAutofitLayoutManager(@NonNull final Context context, final int columnWidth) {
        super(context, 1);
        this.f72007c = new AtomicBoolean();
        l(k(context, columnWidth));
    }

    public final int k(@NonNull final Context context, int columnWidth) {
        return columnWidth <= 0 ? (int) TypedValue.applyDimension(1, 48.0f, context.getResources().getDisplayMetrics()) : columnWidth;
    }

    public void l(final int newColumnWidth) {
        if (newColumnWidth <= 0 || newColumnWidth == this.f72006b) {
            return;
        }
        this.f72006b = newColumnWidth;
        this.f72007c.set(true);
    }

    @Override
    public void onLayoutChildren(@NonNull final RecyclerView.Recycler recycler, @NonNull final RecyclerView.State state) {
        int paddingTop;
        int paddingBottom;
        int width = getWidth();
        int height = getHeight();
        if (this.f72006b > 0 && width > 0 && height > 0 && (this.f72007c.get() || this.f72008d != width || this.f72009e != height)) {
            if (getOrientation() == 1) {
                paddingTop = width - getPaddingRight();
                paddingBottom = getPaddingLeft();
            } else {
                paddingTop = height - getPaddingTop();
                paddingBottom = getPaddingBottom();
            }
            int max = Math.max(1, (paddingTop - paddingBottom) / this.f72006b);
            if (max > 0) {
                setSpanCount(max);
                this.f72007c.set(false);
            }
        }
        this.f72008d = width;
        this.f72009e = height;
        super.onLayoutChildren(recycler, state);
    }

    public GridAutofitLayoutManager(@NonNull final Context context, final int columnWidth, final int orientation, final boolean reverseLayout) {
        super(context, 1, orientation, reverseLayout);
        this.f72007c = new AtomicBoolean();
        l(k(context, columnWidth));
    }
}
