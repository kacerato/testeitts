package android.view.accessibility;

import android.graphics.Typeface;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/accessibility/CaptioningManager.class
 */
public class CaptioningManager {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/accessibility/CaptioningManager$CaptionStyle.class
 */
    public static final class CaptionStyle {
        public static final int EDGE_TYPE_DEPRESSED = 4;
        public static final int EDGE_TYPE_DROP_SHADOW = 2;
        public static final int EDGE_TYPE_NONE = 0;
        public static final int EDGE_TYPE_OUTLINE = 1;
        public static final int EDGE_TYPE_RAISED = 3;
        public static final int EDGE_TYPE_UNSPECIFIED = -1;
        public final int backgroundColor;
        public final int edgeColor;
        public final int edgeType;
        public final int foregroundColor;
        public final int windowColor;

        CaptionStyle() {
            throw new RuntimeException("Stub!");
        }

        public boolean hasBackgroundColor() {
            throw new RuntimeException("Stub!");
        }

        public boolean hasForegroundColor() {
            throw new RuntimeException("Stub!");
        }

        public boolean hasEdgeType() {
            throw new RuntimeException("Stub!");
        }

        public boolean hasEdgeColor() {
            throw new RuntimeException("Stub!");
        }

        public boolean hasWindowColor() {
            throw new RuntimeException("Stub!");
        }

        public Typeface getTypeface() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/accessibility/CaptioningManager$CaptioningChangeListener.class
 */
    public static abstract class CaptioningChangeListener {
        public CaptioningChangeListener() {
            throw new RuntimeException("Stub!");
        }

        public void onEnabledChanged(boolean enabled) {
            throw new RuntimeException("Stub!");
        }

        public void onUserStyleChanged(CaptionStyle userStyle) {
            throw new RuntimeException("Stub!");
        }

        public void onLocaleChanged(Locale locale) {
            throw new RuntimeException("Stub!");
        }

        public void onFontScaleChanged(float fontScale) {
            throw new RuntimeException("Stub!");
        }
    }

    CaptioningManager() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isEnabled() {
        throw new RuntimeException("Stub!");
    }

    public final Locale getLocale() {
        throw new RuntimeException("Stub!");
    }

    public final float getFontScale() {
        throw new RuntimeException("Stub!");
    }

    public CaptionStyle getUserStyle() {
        throw new RuntimeException("Stub!");
    }

    public void addCaptioningChangeListener(CaptioningChangeListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removeCaptioningChangeListener(CaptioningChangeListener listener) {
        throw new RuntimeException("Stub!");
    }
}
