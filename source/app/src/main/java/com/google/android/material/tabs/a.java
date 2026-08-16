package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.internal.A;
import com.google.android.material.tabs.TabLayout;
import x1.C16046a;

public class a {

    @Dimension(unit = 0)
    public static final int f64994a = 24;

    public static RectF a(TabLayout tabLayout, @Nullable View view) {
        return view == null ? new RectF() : (tabLayout.C() || !(view instanceof TabLayout.n)) ? new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()) : b((TabLayout.n) view, 24);
    }

    public static RectF b(@NonNull TabLayout.n nVar, @Dimension(unit = 0) int i10) {
        int contentWidth = nVar.getContentWidth();
        int contentHeight = nVar.getContentHeight();
        int e10 = (int) A.e(nVar.getContext(), i10);
        if (contentWidth < e10) {
            contentWidth = e10;
        }
        int left = (nVar.getLeft() + nVar.getRight()) / 2;
        int top = (nVar.getTop() + nVar.getBottom()) / 2;
        int i11 = contentWidth / 2;
        return new RectF(left - i11, top - (contentHeight / 2), i11 + left, top + (left / 2));
    }

    public void c(TabLayout tabLayout, View view, View view2, @FloatRange(from = 0.0d, to = 1.0d) float f10, @NonNull Drawable drawable) {
        RectF a10 = a(tabLayout, view);
        RectF a11 = a(tabLayout, view2);
        drawable.setBounds(C16046a.c((int) a10.left, (int) a11.left, f10), drawable.getBounds().top, C16046a.c((int) a10.right, (int) a11.right, f10), drawable.getBounds().bottom);
    }

    public void d(TabLayout tabLayout, View view, @NonNull Drawable drawable) {
        RectF a10 = a(tabLayout, view);
        drawable.setBounds((int) a10.left, drawable.getBounds().top, (int) a10.right, drawable.getBounds().bottom);
    }
}
