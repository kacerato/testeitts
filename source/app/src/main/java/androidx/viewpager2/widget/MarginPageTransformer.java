package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewParent;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;

public final class MarginPageTransformer implements ViewPager2.PageTransformer {
    private final int mMarginPx;

    public MarginPageTransformer(int i10) {
        Preconditions.checkArgumentNonnegative(i10, "Margin must be non-negative");
        this.mMarginPx = i10;
    }

    private ViewPager2 requireViewPager(View view) {
        ViewParent parent = view.getParent();
        ViewParent parent2 = parent.getParent();
        if ((parent instanceof RecyclerView) && (parent2 instanceof ViewPager2)) {
            return (ViewPager2) parent2;
        }
        throw new IllegalStateException("Expected the page view to be managed by a ViewPager2 instance.");
    }

    @Override
    public void transformPage(View view, float f10) {
        ViewPager2 requireViewPager = requireViewPager(view);
        float f11 = this.mMarginPx * f10;
        if (requireViewPager.getOrientation() != 0) {
            view.setTranslationY(f11);
            return;
        }
        if (requireViewPager.isRtl()) {
            f11 = -f11;
        }
        view.setTranslationX(f11);
    }
}
