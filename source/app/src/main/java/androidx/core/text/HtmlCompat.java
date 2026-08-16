package androidx.core.text;

import android.text.Html;
import android.text.Spanned;

public final class HtmlCompat {
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

    public static class Api24Impl {
        private Api24Impl() {
        }

        public static Spanned fromHtml(String str, int i10) {
            return Html.fromHtml(str, i10);
        }

        public static String toHtml(Spanned spanned, int i10) {
            return Html.toHtml(spanned, i10);
        }

        public static Spanned fromHtml(String str, int i10, Html.ImageGetter imageGetter, Html.TagHandler tagHandler) {
            return Html.fromHtml(str, i10, imageGetter, tagHandler);
        }
    }

    private HtmlCompat() {
    }

    public static Spanned fromHtml(String str, int i10) {
        return Api24Impl.fromHtml(str, i10);
    }

    public static String toHtml(Spanned spanned, int i10) {
        return Api24Impl.toHtml(spanned, i10);
    }

    public static Spanned fromHtml(String str, int i10, Html.ImageGetter imageGetter, Html.TagHandler tagHandler) {
        return Api24Impl.fromHtml(str, i10, imageGetter, tagHandler);
    }
}
