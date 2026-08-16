package androidx.core.text;

import android.text.Html;
import android.text.Spanned;
import kotlin.jvm.internal.M;

public final class HtmlKt {
    public static final Spanned parseAsHtml(String str, int i10, Html.ImageGetter imageGetter, Html.TagHandler tagHandler) {
        M.p(str, "<this>");
        Spanned fromHtml = HtmlCompat.fromHtml(str, i10, imageGetter, tagHandler);
        M.o(fromHtml, "fromHtml(this, flags, imageGetter, tagHandler)");
        return fromHtml;
    }

    public static Spanned parseAsHtml$default(String str, int i10, Html.ImageGetter imageGetter, Html.TagHandler tagHandler, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        if ((i11 & 2) != 0) {
            imageGetter = null;
        }
        if ((i11 & 4) != 0) {
            tagHandler = null;
        }
        M.p(str, "<this>");
        Spanned fromHtml = HtmlCompat.fromHtml(str, i10, imageGetter, tagHandler);
        M.o(fromHtml, "fromHtml(this, flags, imageGetter, tagHandler)");
        return fromHtml;
    }

    public static final String toHtml(Spanned spanned, int i10) {
        M.p(spanned, "<this>");
        String html = HtmlCompat.toHtml(spanned, i10);
        M.o(html, "toHtml(this, option)");
        return html;
    }

    public static String toHtml$default(Spanned spanned, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        M.p(spanned, "<this>");
        String html = HtmlCompat.toHtml(spanned, i10);
        M.o(html, "toHtml(this, option)");
        return html;
    }
}
