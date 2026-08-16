package org.blacksquircle.ui.editorkit.utils;

import android.widget.TextView;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class ExtensionsKt {
    public static final int getBottomVisibleLine(@NotNull TextView textView) {
        int lineForVertical;
        M.p(textView, "<this>");
        if (textView.getLayout() == null || textView.getLineHeight() == 0 || (lineForVertical = textView.getLayout().getLineForVertical(textView.getScrollY() + textView.getHeight())) < 0) {
            return 0;
        }
        return lineForVertical >= textView.getLineCount() ? textView.getLineCount() - 1 : lineForVertical;
    }

    public static final int getTopVisibleLine(@NotNull TextView textView) {
        int lineForVertical;
        M.p(textView, "<this>");
        if (textView.getLayout() == null || textView.getLineHeight() == 0 || (lineForVertical = textView.getLayout().getLineForVertical(textView.getScrollY())) < 0) {
            return 0;
        }
        return lineForVertical >= textView.getLineCount() ? textView.getLineCount() - 1 : lineForVertical;
    }
}
