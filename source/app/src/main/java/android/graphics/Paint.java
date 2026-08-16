package android.graphics;

import android.os.LocaleList;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/Paint.class
 */
public class Paint {
    public static final int ANTI_ALIAS_FLAG = 1;
    public static final int DEV_KERN_TEXT_FLAG = 256;
    public static final int DITHER_FLAG = 4;
    public static final int EMBEDDED_BITMAP_TEXT_FLAG = 1024;
    public static final int FAKE_BOLD_TEXT_FLAG = 32;
    public static final int FILTER_BITMAP_FLAG = 2;
    public static final int HINTING_OFF = 0;
    public static final int HINTING_ON = 1;
    public static final int LINEAR_TEXT_FLAG = 64;
    public static final int STRIKE_THRU_TEXT_FLAG = 16;
    public static final int SUBPIXEL_TEXT_FLAG = 128;
    public static final int UNDERLINE_TEXT_FLAG = 8;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/Paint$Align.class
 */
    public enum Align {
        CENTER,
        LEFT,
        RIGHT
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/Paint$Cap.class
 */
    public enum Cap {
        BUTT,
        ROUND,
        SQUARE
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/Paint$Join.class
 */
    public enum Join {
        BEVEL,
        MITER,
        ROUND
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/Paint$Style.class
 */
    public enum Style {
        FILL,
        FILL_AND_STROKE,
        STROKE
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/Paint$FontMetrics.class
 */
    public static class FontMetrics {
        public float ascent;
        public float bottom;
        public float descent;
        public float leading;
        public float top;

        public FontMetrics() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/Paint$FontMetricsInt.class
 */
    public static class FontMetricsInt {
        public int ascent;
        public int bottom;
        public int descent;
        public int leading;
        public int top;

        public FontMetricsInt() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }

    public Paint() {
        throw new RuntimeException("Stub!");
    }

    public Paint(int flags) {
        throw new RuntimeException("Stub!");
    }

    public Paint(Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void reset() {
        throw new RuntimeException("Stub!");
    }

    public void set(Paint src) {
        throw new RuntimeException("Stub!");
    }

    public int getFlags() {
        throw new RuntimeException("Stub!");
    }

    public void setFlags(int flags) {
        throw new RuntimeException("Stub!");
    }

    public int getHinting() {
        throw new RuntimeException("Stub!");
    }

    public void setHinting(int mode) {
        throw new RuntimeException("Stub!");
    }

    public final boolean isAntiAlias() {
        throw new RuntimeException("Stub!");
    }

    public void setAntiAlias(boolean aa2) {
        throw new RuntimeException("Stub!");
    }

    public final boolean isDither() {
        throw new RuntimeException("Stub!");
    }

    public void setDither(boolean dither) {
        throw new RuntimeException("Stub!");
    }

    public final boolean isLinearText() {
        throw new RuntimeException("Stub!");
    }

    public void setLinearText(boolean linearText) {
        throw new RuntimeException("Stub!");
    }

    public final boolean isSubpixelText() {
        throw new RuntimeException("Stub!");
    }

    public void setSubpixelText(boolean subpixelText) {
        throw new RuntimeException("Stub!");
    }

    public final boolean isUnderlineText() {
        throw new RuntimeException("Stub!");
    }

    public void setUnderlineText(boolean underlineText) {
        throw new RuntimeException("Stub!");
    }

    public final boolean isStrikeThruText() {
        throw new RuntimeException("Stub!");
    }

    public void setStrikeThruText(boolean strikeThruText) {
        throw new RuntimeException("Stub!");
    }

    public final boolean isFakeBoldText() {
        throw new RuntimeException("Stub!");
    }

    public void setFakeBoldText(boolean fakeBoldText) {
        throw new RuntimeException("Stub!");
    }

    public final boolean isFilterBitmap() {
        throw new RuntimeException("Stub!");
    }

    public void setFilterBitmap(boolean filter) {
        throw new RuntimeException("Stub!");
    }

    public Style getStyle() {
        throw new RuntimeException("Stub!");
    }

    public void setStyle(Style style) {
        throw new RuntimeException("Stub!");
    }

    public int getColor() {
        throw new RuntimeException("Stub!");
    }

    public void setColor(int color) {
        throw new RuntimeException("Stub!");
    }

    public int getAlpha() {
        throw new RuntimeException("Stub!");
    }

    public void setAlpha(int a10) {
        throw new RuntimeException("Stub!");
    }

    public void setARGB(int a10, int r10, int g10, int b10) {
        throw new RuntimeException("Stub!");
    }

    public float getStrokeWidth() {
        throw new RuntimeException("Stub!");
    }

    public void setStrokeWidth(float width) {
        throw new RuntimeException("Stub!");
    }

    public float getStrokeMiter() {
        throw new RuntimeException("Stub!");
    }

    public void setStrokeMiter(float miter) {
        throw new RuntimeException("Stub!");
    }

    public Cap getStrokeCap() {
        throw new RuntimeException("Stub!");
    }

    public void setStrokeCap(Cap cap) {
        throw new RuntimeException("Stub!");
    }

    public Join getStrokeJoin() {
        throw new RuntimeException("Stub!");
    }

    public void setStrokeJoin(Join join) {
        throw new RuntimeException("Stub!");
    }

    public boolean getFillPath(Path src, Path dst) {
        throw new RuntimeException("Stub!");
    }

    public Shader getShader() {
        throw new RuntimeException("Stub!");
    }

    public Shader setShader(Shader shader) {
        throw new RuntimeException("Stub!");
    }

    public ColorFilter getColorFilter() {
        throw new RuntimeException("Stub!");
    }

    public ColorFilter setColorFilter(ColorFilter filter) {
        throw new RuntimeException("Stub!");
    }

    public Xfermode getXfermode() {
        throw new RuntimeException("Stub!");
    }

    public Xfermode setXfermode(Xfermode xfermode) {
        throw new RuntimeException("Stub!");
    }

    public PathEffect getPathEffect() {
        throw new RuntimeException("Stub!");
    }

    public PathEffect setPathEffect(PathEffect effect) {
        throw new RuntimeException("Stub!");
    }

    public MaskFilter getMaskFilter() {
        throw new RuntimeException("Stub!");
    }

    public MaskFilter setMaskFilter(MaskFilter maskfilter) {
        throw new RuntimeException("Stub!");
    }

    public Typeface getTypeface() {
        throw new RuntimeException("Stub!");
    }

    public Typeface setTypeface(Typeface typeface) {
        throw new RuntimeException("Stub!");
    }

    public void setShadowLayer(float radius, float dx, float dy, int shadowColor) {
        throw new RuntimeException("Stub!");
    }

    public void clearShadowLayer() {
        throw new RuntimeException("Stub!");
    }

    public Align getTextAlign() {
        throw new RuntimeException("Stub!");
    }

    public void setTextAlign(Align align) {
        throw new RuntimeException("Stub!");
    }

    public Locale getTextLocale() {
        throw new RuntimeException("Stub!");
    }

    public LocaleList getTextLocales() {
        throw new RuntimeException("Stub!");
    }

    public void setTextLocale(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public void setTextLocales(LocaleList locales) {
        throw new RuntimeException("Stub!");
    }

    public boolean isElegantTextHeight() {
        throw new RuntimeException("Stub!");
    }

    public void setElegantTextHeight(boolean elegant) {
        throw new RuntimeException("Stub!");
    }

    public float getTextSize() {
        throw new RuntimeException("Stub!");
    }

    public void setTextSize(float textSize) {
        throw new RuntimeException("Stub!");
    }

    public float getTextScaleX() {
        throw new RuntimeException("Stub!");
    }

    public void setTextScaleX(float scaleX) {
        throw new RuntimeException("Stub!");
    }

    public float getTextSkewX() {
        throw new RuntimeException("Stub!");
    }

    public void setTextSkewX(float skewX) {
        throw new RuntimeException("Stub!");
    }

    public float getLetterSpacing() {
        throw new RuntimeException("Stub!");
    }

    public void setLetterSpacing(float letterSpacing) {
        throw new RuntimeException("Stub!");
    }

    public String getFontFeatureSettings() {
        throw new RuntimeException("Stub!");
    }

    public void setFontFeatureSettings(String settings) {
        throw new RuntimeException("Stub!");
    }

    public String getFontVariationSettings() {
        throw new RuntimeException("Stub!");
    }

    public boolean setFontVariationSettings(String fontVariationSettings) {
        throw new RuntimeException("Stub!");
    }

    public float ascent() {
        throw new RuntimeException("Stub!");
    }

    public float descent() {
        throw new RuntimeException("Stub!");
    }

    public float getFontMetrics(FontMetrics metrics) {
        throw new RuntimeException("Stub!");
    }

    public FontMetrics getFontMetrics() {
        throw new RuntimeException("Stub!");
    }

    public int getFontMetricsInt(FontMetricsInt fmi) {
        throw new RuntimeException("Stub!");
    }

    public FontMetricsInt getFontMetricsInt() {
        throw new RuntimeException("Stub!");
    }

    public float getFontSpacing() {
        throw new RuntimeException("Stub!");
    }

    public float measureText(char[] text, int index, int count) {
        throw new RuntimeException("Stub!");
    }

    public float measureText(String text, int start, int end) {
        throw new RuntimeException("Stub!");
    }

    public float measureText(String text) {
        throw new RuntimeException("Stub!");
    }

    public float measureText(CharSequence text, int start, int end) {
        throw new RuntimeException("Stub!");
    }

    public int breakText(char[] text, int index, int count, float maxWidth, float[] measuredWidth) {
        throw new RuntimeException("Stub!");
    }

    public int breakText(CharSequence text, int start, int end, boolean measureForwards, float maxWidth, float[] measuredWidth) {
        throw new RuntimeException("Stub!");
    }

    public int breakText(String text, boolean measureForwards, float maxWidth, float[] measuredWidth) {
        throw new RuntimeException("Stub!");
    }

    public int getTextWidths(char[] text, int index, int count, float[] widths) {
        throw new RuntimeException("Stub!");
    }

    public int getTextWidths(CharSequence text, int start, int end, float[] widths) {
        throw new RuntimeException("Stub!");
    }

    public int getTextWidths(String text, int start, int end, float[] widths) {
        throw new RuntimeException("Stub!");
    }

    public int getTextWidths(String text, float[] widths) {
        throw new RuntimeException("Stub!");
    }

    public void getTextPath(char[] text, int index, int count, float x10, float y10, Path path) {
        throw new RuntimeException("Stub!");
    }

    public void getTextPath(String text, int start, int end, float x10, float y10, Path path) {
        throw new RuntimeException("Stub!");
    }

    public void getTextBounds(String text, int start, int end, Rect bounds) {
        throw new RuntimeException("Stub!");
    }

    public void getTextBounds(char[] text, int index, int count, Rect bounds) {
        throw new RuntimeException("Stub!");
    }

    public boolean hasGlyph(String string) {
        throw new RuntimeException("Stub!");
    }

    public float getRunAdvance(char[] text, int start, int end, int contextStart, int contextEnd, boolean isRtl, int offset) {
        throw new RuntimeException("Stub!");
    }

    public float getRunAdvance(CharSequence text, int start, int end, int contextStart, int contextEnd, boolean isRtl, int offset) {
        throw new RuntimeException("Stub!");
    }

    public int getOffsetForAdvance(char[] text, int start, int end, int contextStart, int contextEnd, boolean isRtl, float advance) {
        throw new RuntimeException("Stub!");
    }

    public int getOffsetForAdvance(CharSequence text, int start, int end, int contextStart, int contextEnd, boolean isRtl, float advance) {
        throw new RuntimeException("Stub!");
    }
}
