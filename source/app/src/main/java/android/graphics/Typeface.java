package android.graphics;

import android.content.res.AssetManager;
import android.graphics.fonts.FontVariationAxis;
import java.io.File;
import java.io.FileDescriptor;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/Typeface.class
 */
public class Typeface {
    public static final int BOLD = 1;
    public static final int BOLD_ITALIC = 3;
    public static final int ITALIC = 2;
    public static final int NORMAL = 0;
    public static final Typeface DEFAULT = null;
    public static final Typeface DEFAULT_BOLD = null;
    public static final Typeface MONOSPACE = null;
    public static final Typeface SANS_SERIF = null;
    public static final Typeface SERIF = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/Typeface$Builder.class
 */
    public static final class Builder {
        public Builder(File path) {
            throw new RuntimeException("Stub!");
        }

        public Builder(FileDescriptor fd2) {
            throw new RuntimeException("Stub!");
        }

        public Builder(String path) {
            throw new RuntimeException("Stub!");
        }

        public Builder(AssetManager assetManager, String path) {
            throw new RuntimeException("Stub!");
        }

        public Builder setWeight(int weight) {
            throw new RuntimeException("Stub!");
        }

        public Builder setItalic(boolean italic) {
            throw new RuntimeException("Stub!");
        }

        public Builder setTtcIndex(int ttcIndex) {
            throw new RuntimeException("Stub!");
        }

        public Builder setFontVariationSettings(String variationSettings) {
            throw new RuntimeException("Stub!");
        }

        public Builder setFontVariationSettings(FontVariationAxis[] axes) {
            throw new RuntimeException("Stub!");
        }

        public Builder setFallback(String familyName) {
            throw new RuntimeException("Stub!");
        }

        public Typeface build() {
            throw new RuntimeException("Stub!");
        }
    }

    Typeface() {
        throw new RuntimeException("Stub!");
    }

    public int getStyle() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isBold() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isItalic() {
        throw new RuntimeException("Stub!");
    }

    public static Typeface create(String familyName, int style) {
        throw new RuntimeException("Stub!");
    }

    public static Typeface create(Typeface family, int style) {
        throw new RuntimeException("Stub!");
    }

    public static Typeface defaultFromStyle(int style) {
        throw new RuntimeException("Stub!");
    }

    public static Typeface createFromAsset(AssetManager mgr, String path) {
        throw new RuntimeException("Stub!");
    }

    public static Typeface createFromFile(File path) {
        throw new RuntimeException("Stub!");
    }

    public static Typeface createFromFile(String path) {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }
}
