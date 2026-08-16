package androidx.transition;

import android.animation.LayoutTransition;
import android.util.Log;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class ViewGroupUtilsApi14 {
    private static final int LAYOUT_TRANSITION_CHANGING = 4;
    private static final String TAG = "ViewGroupUtilsApi14";
    private static Method sCancelMethod;
    private static boolean sCancelMethodFetched;
    private static LayoutTransition sEmptyLayoutTransition;
    private static Field sLayoutSuppressedField;
    private static boolean sLayoutSuppressedFieldFetched;

    private ViewGroupUtilsApi14() {
    }

    private static void cancelLayoutTransition(LayoutTransition layoutTransition) {
        if (!sCancelMethodFetched) {
            try {
                Method declaredMethod = LayoutTransition.class.getDeclaredMethod("cancel", null);
                sCancelMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
                Log.i(TAG, "Failed to access cancel method by reflection");
            }
            sCancelMethodFetched = true;
        }
        Method method = sCancelMethod;
        if (method != null) {
            try {
                method.invoke(layoutTransition, null);
            } catch (IllegalAccessException unused2) {
                Log.i(TAG, "Failed to access cancel method by reflection");
            } catch (InvocationTargetException unused3) {
                Log.i(TAG, "Failed to invoke cancel method by reflection");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void suppressLayout(ViewGroup viewGroup, boolean z10) {
        LayoutTransition layoutTransition;
        boolean z11 = false;
        if (sEmptyLayoutTransition == null) {
            LayoutTransition layoutTransition2 = new LayoutTransition() {
                @Override
                public boolean isChangingLayout() {
                    return true;
                }
            };
            sEmptyLayoutTransition = layoutTransition2;
            layoutTransition2.setAnimator(2, null);
            sEmptyLayoutTransition.setAnimator(0, null);
            sEmptyLayoutTransition.setAnimator(1, null);
            sEmptyLayoutTransition.setAnimator(3, null);
            sEmptyLayoutTransition.setAnimator(4, null);
        }
        if (z10) {
            LayoutTransition layoutTransition3 = viewGroup.getLayoutTransition();
            if (layoutTransition3 != null) {
                if (layoutTransition3.isRunning()) {
                    cancelLayoutTransition(layoutTransition3);
                }
                if (layoutTransition3 != sEmptyLayoutTransition) {
                    viewGroup.setTag(R.id.transition_layout_save, layoutTransition3);
                }
            }
            viewGroup.setLayoutTransition(sEmptyLayoutTransition);
            return;
        }
        viewGroup.setLayoutTransition(null);
        if (!sLayoutSuppressedFieldFetched) {
            try {
                Field declaredField = ViewGroup.class.getDeclaredField("mLayoutSuppressed");
                sLayoutSuppressedField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                Log.i(TAG, "Failed to access mLayoutSuppressed field by reflection");
            }
            sLayoutSuppressedFieldFetched = true;
        }
        Field field = sLayoutSuppressedField;
        if (field != null) {
            try {
                boolean z12 = field.getBoolean(viewGroup);
                if (z12) {
                    try {
                        sLayoutSuppressedField.setBoolean(viewGroup, false);
                    } catch (IllegalAccessException unused2) {
                        z11 = z12;
                        Log.i(TAG, "Failed to get mLayoutSuppressed field by reflection");
                        if (z11) {
                        }
                        int i10 = R.id.transition_layout_save;
                        layoutTransition = (LayoutTransition) viewGroup.getTag(i10);
                        if (layoutTransition == null) {
                        }
                    }
                }
                z11 = z12;
            } catch (IllegalAccessException unused3) {
            }
        }
        if (z11) {
            viewGroup.requestLayout();
        }
        int i102 = R.id.transition_layout_save;
        layoutTransition = (LayoutTransition) viewGroup.getTag(i102);
        if (layoutTransition == null) {
            viewGroup.setTag(i102, null);
            viewGroup.setLayoutTransition(layoutTransition);
        }
    }
}
