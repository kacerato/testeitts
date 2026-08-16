package com.itsmagic.engine.Activities.Share.FileExplorer.Utils;

import android.content.Context;
import android.util.TypedValue;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.concurrent.atomic.AtomicBoolean;

public class GridAutofitLayoutManager extends GridLayoutManager {

    public volatile int f72446b;

    public final AtomicBoolean f72447c;

    public int f72448d;

    public int f72449e;

    public GridAutofitLayoutManager(@NonNull final Context context, final int columnWidth) {
        super(context, 1);
        this.f72447c = new AtomicBoolean();
        l(k(context, columnWidth));
    }

    private int k(@NonNull final Context context, int columnWidth) {
        return columnWidth <= 0 ? (int) TypedValue.applyDimension(1, 48.0f, context.getResources().getDisplayMetrics()) : columnWidth;
    }

    public void l(final int newColumnWidth) {
        if (newColumnWidth <= 0 || newColumnWidth == this.f72446b) {
            return;
        }
        this.f72446b = newColumnWidth;
        this.f72447c.set(true);
    }

    @Override
    public void onLayoutChildren(@NonNull final RecyclerView.Recycler recycler, @NonNull final RecyclerView.State state) {
        int paddingTop;
        int paddingBottom;
        int width = getWidth();
        int height = getHeight();
        if (this.f72446b > 0 && width > 0 && height > 0 && (this.f72447c.get() || this.f72448d != width || this.f72449e != height)) {
            if (getOrientation() == 1) {
                paddingTop = width - getPaddingRight();
                paddingBottom = getPaddingLeft();
            } else {
                paddingTop = height - getPaddingTop();
                paddingBottom = getPaddingBottom();
            }
            int max = Math.max(1, (paddingTop - paddingBottom) / this.f72446b);
            if (max > 0) {
                setSpanCount(max);
                this.f72447c.set(false);
            }
        }
        this.f72448d = width;
        this.f72449e = height;
        super.onLayoutChildren(recycler, state);
    }

    public GridAutofitLayoutManager(@NonNull final Context context, final int columnWidth, final int orientation, final boolean reverseLayout) {
        super(context, 1, orientation, reverseLayout);
        this.f72447c = new AtomicBoolean();
        l(k(context, columnWidth));
    }
}
