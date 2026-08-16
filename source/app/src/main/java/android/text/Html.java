package android.text;

import android.graphics.drawable.Drawable;
import org.xml.sax.XMLReader;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/Html.class
 */
public class Html {
    public static final int FROM_HTML_MODE_COMPACT = 63;
    public static final int FROM_HTML_MODE_LEGACY = 0;
    public static final int FROM_HTML_OPTION_USE_CSS_COLORS = 256;
    public static final int FROM_HTML_SEPARATOR_LINE_BREAK_BLOCKQUOTE = 32;
    public static final int FROM_HTML_SEPARATOR_LINE_BREAK_DIV = 16;
    public static final int FROM_HTML_SEPARATOR_LINE_BREAK_HEADING = 2;
    public static final int FROM_HTML_SEPARATOR_LINE_BREAK_LIST = 8;
    public static final int FROM_HTML_SEPARATOR_LINE_BREAK_LIST_ITEM = 4;
    public static final int FROM_HTML_SEPARATOR_LINE_BREAK_PARAGRAPH = 1;
    public static final int TO_HTML_PARAGRAPH_LINES_CONSECUTIVE = 0;
    public static final int TO_HTML_PARAGRAPH_LINES_INDIVIDUAL = 1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/Html$ImageGetter.class
 */
    public interface ImageGetter {
        Drawable getDrawable(String str);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/Html$TagHandler.class
 */
    public interface TagHandler {
        void handleTag(boolean z10, String str, Editable editable, XMLReader xMLReader);
    }

    Html() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static Spanned fromHtml(String source) {
        throw new RuntimeException("Stub!");
    }

    public static Spanned fromHtml(String source, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static Spanned fromHtml(String source, ImageGetter imageGetter, TagHandler tagHandler) {
        throw new RuntimeException("Stub!");
    }

    public static Spanned fromHtml(String source, int flags, ImageGetter imageGetter, TagHandler tagHandler) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static String toHtml(Spanned text) {
        throw new RuntimeException("Stub!");
    }

    public static String toHtml(Spanned text, int option) {
        throw new RuntimeException("Stub!");
    }

    public static String escapeHtml(CharSequence text) {
        throw new RuntimeException("Stub!");
    }
}
