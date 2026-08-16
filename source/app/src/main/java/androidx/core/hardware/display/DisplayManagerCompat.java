package androidx.core.hardware.display;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;
import java.util.WeakHashMap;

public final class DisplayManagerCompat {
    public static final String DISPLAY_CATEGORY_PRESENTATION = "android.hardware.display.category.PRESENTATION";
    private static final WeakHashMap<Context, DisplayManagerCompat> sInstances = new WeakHashMap<>();
    private final Context mContext;

    public static class Api17Impl {
        private Api17Impl() {
        }

        public static Display getDisplay(DisplayManager displayManager, int i10) {
            return displayManager.getDisplay(i10);
        }

        public static Display[] getDisplays(DisplayManager displayManager) {
            return displayManager.getDisplays();
        }
    }

    private DisplayManagerCompat(Context context) {
        this.mContext = context;
    }

    public static DisplayManagerCompat getInstance(Context context) {
        DisplayManagerCompat displayManagerCompat;
        WeakHashMap<Context, DisplayManagerCompat> weakHashMap = sInstances;
        synchronized (weakHashMap) {
            try {
                displayManagerCompat = weakHashMap.get(context);
                if (displayManagerCompat == null) {
                    displayManagerCompat = new DisplayManagerCompat(context);
                    weakHashMap.put(context, displayManagerCompat);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return displayManagerCompat;
    }

    public Display getDisplay(int i10) {
        return Api17Impl.getDisplay((DisplayManager) this.mContext.getSystemService(Context.DISPLAY_SERVICE), i10);
    }

    public Display[] getDisplays() {
        return Api17Impl.getDisplays((DisplayManager) this.mContext.getSystemService(Context.DISPLAY_SERVICE));
    }

    public Display[] getDisplays(String str) {
        return Api17Impl.getDisplays((DisplayManager) this.mContext.getSystemService(Context.DISPLAY_SERVICE));
    }
}
