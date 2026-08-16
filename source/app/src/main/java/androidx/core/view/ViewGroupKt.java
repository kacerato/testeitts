package androidx.core.view;

import Xf.C3316q;
import Xf.InterfaceC3312m;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
import nf.P0;

public final class ViewGroupKt {
    public static final boolean contains(ViewGroup viewGroup, View view) {
        kotlin.jvm.internal.M.p(viewGroup, "<this>");
        kotlin.jvm.internal.M.p(view, "view");
        return viewGroup.indexOfChild(view) != -1;
    }

    public static final void forEach(ViewGroup viewGroup, Mf.l<? super View, P0> action) {
        kotlin.jvm.internal.M.p(viewGroup, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            kotlin.jvm.internal.M.o(childAt, "getChildAt(index)");
            action.invoke(childAt);
        }
    }

    public static final void forEachIndexed(ViewGroup viewGroup, Mf.p<? super Integer, ? super View, P0> action) {
        kotlin.jvm.internal.M.p(viewGroup, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            Integer valueOf = Integer.valueOf(i10);
            View childAt = viewGroup.getChildAt(i10);
            kotlin.jvm.internal.M.o(childAt, "getChildAt(index)");
            action.invoke(valueOf, childAt);
        }
    }

    public static final View get(ViewGroup viewGroup, int i10) {
        kotlin.jvm.internal.M.p(viewGroup, "<this>");
        View childAt = viewGroup.getChildAt(i10);
        if (childAt != null) {
            return childAt;
        }
        throw new IndexOutOfBoundsException("Index: " + i10 + ", Size: " + viewGroup.getChildCount());
    }

    public static final InterfaceC3312m<View> getChildren(final ViewGroup viewGroup) {
        kotlin.jvm.internal.M.p(viewGroup, "<this>");
        return new InterfaceC3312m<View>() {
            @Override
            public Iterator<View> iterator() {
                return ViewGroupKt.iterator(ViewGroup.this);
            }
        };
    }

    public static final InterfaceC3312m<View> getDescendants(ViewGroup viewGroup) {
        kotlin.jvm.internal.M.p(viewGroup, "<this>");
        return C3316q.b(new ViewGroupKt$descendants$1(viewGroup, null));
    }

    public static final Vf.l getIndices(ViewGroup viewGroup) {
        kotlin.jvm.internal.M.p(viewGroup, "<this>");
        return Vf.u.Y1(0, viewGroup.getChildCount());
    }

    public static final int getSize(ViewGroup viewGroup) {
        kotlin.jvm.internal.M.p(viewGroup, "<this>");
        return viewGroup.getChildCount();
    }

    public static final boolean isEmpty(ViewGroup viewGroup) {
        kotlin.jvm.internal.M.p(viewGroup, "<this>");
        return viewGroup.getChildCount() == 0;
    }

    public static final boolean isNotEmpty(ViewGroup viewGroup) {
        kotlin.jvm.internal.M.p(viewGroup, "<this>");
        return viewGroup.getChildCount() != 0;
    }

    public static final Iterator<View> iterator(ViewGroup viewGroup) {
        kotlin.jvm.internal.M.p(viewGroup, "<this>");
        return new ViewGroupKt$iterator$1(viewGroup);
    }

    public static final void minusAssign(ViewGroup viewGroup, View view) {
        kotlin.jvm.internal.M.p(viewGroup, "<this>");
        kotlin.jvm.internal.M.p(view, "view");
        viewGroup.removeView(view);
    }

    public static final void plusAssign(ViewGroup viewGroup, View view) {
        kotlin.jvm.internal.M.p(viewGroup, "<this>");
        kotlin.jvm.internal.M.p(view, "view");
        viewGroup.addView(view);
    }

    public static final void setMargins(ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
        kotlin.jvm.internal.M.p(marginLayoutParams, "<this>");
        marginLayoutParams.setMargins(i10, i10, i10, i10);
    }

    public static final void updateMargins(ViewGroup.MarginLayoutParams marginLayoutParams, int i10, int i11, int i12, int i13) {
        kotlin.jvm.internal.M.p(marginLayoutParams, "<this>");
        marginLayoutParams.setMargins(i10, i11, i12, i13);
    }

    public static void updateMargins$default(ViewGroup.MarginLayoutParams marginLayoutParams, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = marginLayoutParams.leftMargin;
        }
        if ((i14 & 2) != 0) {
            i11 = marginLayoutParams.topMargin;
        }
        if ((i14 & 4) != 0) {
            i12 = marginLayoutParams.rightMargin;
        }
        if ((i14 & 8) != 0) {
            i13 = marginLayoutParams.bottomMargin;
        }
        kotlin.jvm.internal.M.p(marginLayoutParams, "<this>");
        marginLayoutParams.setMargins(i10, i11, i12, i13);
    }

    public static final void updateMarginsRelative(ViewGroup.MarginLayoutParams marginLayoutParams, int i10, int i11, int i12, int i13) {
        kotlin.jvm.internal.M.p(marginLayoutParams, "<this>");
        marginLayoutParams.setMarginStart(i10);
        marginLayoutParams.topMargin = i11;
        marginLayoutParams.setMarginEnd(i12);
        marginLayoutParams.bottomMargin = i13;
    }

    public static void updateMarginsRelative$default(ViewGroup.MarginLayoutParams marginLayoutParams, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = marginLayoutParams.getMarginStart();
        }
        if ((i14 & 2) != 0) {
            i11 = marginLayoutParams.topMargin;
        }
        if ((i14 & 4) != 0) {
            i12 = marginLayoutParams.getMarginEnd();
        }
        if ((i14 & 8) != 0) {
            i13 = marginLayoutParams.bottomMargin;
        }
        kotlin.jvm.internal.M.p(marginLayoutParams, "<this>");
        marginLayoutParams.setMarginStart(i10);
        marginLayoutParams.topMargin = i11;
        marginLayoutParams.setMarginEnd(i12);
        marginLayoutParams.bottomMargin = i13;
    }
}
