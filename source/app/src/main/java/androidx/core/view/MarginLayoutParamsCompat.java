package androidx.core.view;

import android.view.ViewGroup;

public final class MarginLayoutParamsCompat {

    public static class Api17Impl {
        private Api17Impl() {
        }

        public static int getLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.getLayoutDirection();
        }

        public static int getMarginEnd(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.getMarginEnd();
        }

        public static int getMarginStart(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.getMarginStart();
        }

        public static boolean isMarginRelative(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.isMarginRelative();
        }

        public static void resolveLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
            marginLayoutParams.resolveLayoutDirection(i10);
        }

        public static void setLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
            marginLayoutParams.setLayoutDirection(i10);
        }

        public static void setMarginEnd(ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
            marginLayoutParams.setMarginEnd(i10);
        }

        public static void setMarginStart(ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
            marginLayoutParams.setMarginStart(i10);
        }
    }

    private MarginLayoutParamsCompat() {
    }

    public static int getLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams) {
        int layoutDirection = Api17Impl.getLayoutDirection(marginLayoutParams);
        if (layoutDirection == 0 || layoutDirection == 1) {
            return layoutDirection;
        }
        return 0;
    }

    public static int getMarginEnd(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return Api17Impl.getMarginEnd(marginLayoutParams);
    }

    public static int getMarginStart(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return Api17Impl.getMarginStart(marginLayoutParams);
    }

    public static boolean isMarginRelative(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return Api17Impl.isMarginRelative(marginLayoutParams);
    }

    public static void resolveLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
        Api17Impl.resolveLayoutDirection(marginLayoutParams, i10);
    }

    public static void setLayoutDirection(ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
        Api17Impl.setLayoutDirection(marginLayoutParams, i10);
    }

    public static void setMarginEnd(ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
        Api17Impl.setMarginEnd(marginLayoutParams, i10);
    }

    public static void setMarginStart(ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
        Api17Impl.setMarginStart(marginLayoutParams, i10);
    }
}
