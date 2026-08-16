package androidx.core.view;

import android.os.Build;
import android.view.View;
import android.view.Window;

public final class WindowCompat {
    public static final int FEATURE_ACTION_BAR = 8;
    public static final int FEATURE_ACTION_BAR_OVERLAY = 9;
    public static final int FEATURE_ACTION_MODE_OVERLAY = 10;

    public static class Api16Impl {
        private Api16Impl() {
        }

        public static void setDecorFitsSystemWindows(Window window, boolean z10) {
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(z10 ? systemUiVisibility & (-1793) : systemUiVisibility | 1792);
        }
    }

    public static class Api28Impl {
        private Api28Impl() {
        }

        public static <T> T requireViewById(Window window, int i10) {
            return (T) window.requireViewById(i10);
        }
    }

    public static class Api30Impl {
        private Api30Impl() {
        }

        public static void setDecorFitsSystemWindows(Window window, boolean z10) {
            window.setDecorFitsSystemWindows(z10);
        }
    }

    private WindowCompat() {
    }

    public static WindowInsetsControllerCompat getInsetsController(Window window, View view) {
        return new WindowInsetsControllerCompat(window, view);
    }

    public static <T extends View> T requireViewById(Window window, int i10) {
        if (Build.VERSION.SDK_INT >= 28) {
            return (T) Api28Impl.requireViewById(window, i10);
        }
        T t10 = (T) window.findViewById(i10);
        if (t10 != null) {
            return t10;
        }
        throw new IllegalArgumentException("ID does not reference a View inside this Window");
    }

    public static void setDecorFitsSystemWindows(Window window, boolean z10) {
        if (Build.VERSION.SDK_INT >= 30) {
            Api30Impl.setDecorFitsSystemWindows(window, z10);
        } else {
            Api16Impl.setDecorFitsSystemWindows(window, z10);
        }
    }
}
