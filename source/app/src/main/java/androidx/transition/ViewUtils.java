package androidx.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.core.view.ViewCompat;

public class ViewUtils {
    static final Property<View, Rect> CLIP_BOUNDS;
    private static final ViewUtilsBase IMPL;
    private static final String TAG = "ViewUtils";
    static final Property<View, Float> TRANSITION_ALPHA;

    static {
        if (Build.VERSION.SDK_INT >= 29) {
            IMPL = new ViewUtilsApi29();
        } else {
            IMPL = new ViewUtilsApi23();
        }
        TRANSITION_ALPHA = new Property<View, Float>(Float.class, "translationAlpha") {
            @Override
            public Float get(View view) {
                return Float.valueOf(ViewUtils.getTransitionAlpha(view));
            }

            @Override
            public void set(View view, Float f10) {
                ViewUtils.setTransitionAlpha(view, f10.floatValue());
            }
        };
        CLIP_BOUNDS = new Property<View, Rect>(Rect.class, "clipBounds") {
            @Override
            public Rect get(View view) {
                return ViewCompat.getClipBounds(view);
            }

            @Override
            public void set(View view, Rect rect) {
                ViewCompat.setClipBounds(view, rect);
            }
        };
    }

    private ViewUtils() {
    }

    public static void clearNonTransitionAlpha(View view) {
        IMPL.clearNonTransitionAlpha(view);
    }

    public static ViewOverlayImpl getOverlay(View view) {
        return new ViewOverlayApi18(view);
    }

    public static float getTransitionAlpha(View view) {
        return IMPL.getTransitionAlpha(view);
    }

    public static WindowIdImpl getWindowId(View view) {
        return new WindowIdApi18(view);
    }

    public static void saveNonTransitionAlpha(View view) {
        IMPL.saveNonTransitionAlpha(view);
    }

    public static void setAnimationMatrix(View view, Matrix matrix) {
        IMPL.setAnimationMatrix(view, matrix);
    }

    public static void setLeftTopRightBottom(View view, int i10, int i11, int i12, int i13) {
        IMPL.setLeftTopRightBottom(view, i10, i11, i12, i13);
    }

    public static void setTransitionAlpha(View view, float f10) {
        IMPL.setTransitionAlpha(view, f10);
    }

    public static void setTransitionVisibility(View view, int i10) {
        IMPL.setTransitionVisibility(view, i10);
    }

    public static void transformMatrixToGlobal(View view, Matrix matrix) {
        IMPL.transformMatrixToGlobal(view, matrix);
    }

    public static void transformMatrixToLocal(View view, Matrix matrix) {
        IMPL.transformMatrixToLocal(view, matrix);
    }
}
