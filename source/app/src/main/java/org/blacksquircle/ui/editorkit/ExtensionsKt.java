package org.blacksquircle.ui.editorkit;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.text.Editable;
import androidx.core.content.ContextCompat;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.blacksquircle.ui.editorkit.exception.LineException;
import org.blacksquircle.ui.editorkit.widget.TextProcessor;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Extensions.kt\norg/blacksquircle/ui/editorkit/ExtensionsKt\n+ 2 Context.kt\nandroidx/core/content/ContextKt\n*L\n1#1,152:1\n31#2:153\n31#2:154\n31#2:155\n31#2:156\n*S KotlinDebug\n*F\n+ 1 Extensions.kt\norg/blacksquircle/ui/editorkit/ExtensionsKt\n*L\n36#1:153\n43#1:154\n49#1:155\n150#1:156\n*E\n"})
public final class ExtensionsKt {

    @NotNull
    private static final String LABEL_COPY = "COPY";

    @NotNull
    private static final String LABEL_CUT = "CUT";

    public static final void copy(@NotNull TextProcessor textProcessor) {
        M.p(textProcessor, "<this>");
        Context context = textProcessor.getContext();
        M.o(context, "getContext(...)");
        ClipboardManager clipboardManager = (ClipboardManager) ContextCompat.getSystemService(context, ClipboardManager.class);
        ClipData newPlainText = ClipData.newPlainText(LABEL_COPY, getSelectedText(textProcessor));
        if (clipboardManager != null) {
            clipboardManager.setPrimaryClip(newPlainText);
        }
    }

    public static final void cut(@NotNull TextProcessor textProcessor) {
        M.p(textProcessor, "<this>");
        Context context = textProcessor.getContext();
        M.o(context, "getContext(...)");
        ClipboardManager clipboardManager = (ClipboardManager) ContextCompat.getSystemService(context, ClipboardManager.class);
        ClipData newPlainText = ClipData.newPlainText(LABEL_CUT, getSelectedText(textProcessor));
        if (clipboardManager != null) {
            clipboardManager.setPrimaryClip(newPlainText);
        }
        textProcessor.getText().replace(textProcessor.getSelectionStart(), textProcessor.getSelectionEnd(), "");
    }

    public static final void deleteLine(@NotNull TextProcessor textProcessor) {
        M.p(textProcessor, "<this>");
        int lineForIndex = textProcessor.getLines().getLineForIndex(textProcessor.getSelectionStart());
        textProcessor.getText().delete(textProcessor.getLines().getIndexForStartOfLine(lineForIndex), textProcessor.getLines().getIndexForEndOfLine(lineForIndex));
    }

    public static final void duplicateLine(@NotNull TextProcessor textProcessor) {
        M.p(textProcessor, "<this>");
        int lineForIndex = textProcessor.getLines().getLineForIndex(textProcessor.getSelectionStart());
        int indexForStartOfLine = textProcessor.getLines().getIndexForStartOfLine(lineForIndex);
        int indexForEndOfLine = textProcessor.getLines().getIndexForEndOfLine(lineForIndex);
        CharSequence subSequence = textProcessor.getText().subSequence(indexForStartOfLine, indexForEndOfLine);
        Editable text = textProcessor.getText();
        StringBuilder sb2 = new StringBuilder();
        sb2.append('\n');
        sb2.append((Object) subSequence);
        text.insert(indexForEndOfLine, sb2.toString());
    }

    @NotNull
    public static final CharSequence getSelectedText(@NotNull TextProcessor textProcessor) {
        M.p(textProcessor, "<this>");
        return textProcessor.getText().subSequence(textProcessor.getSelectionStart(), textProcessor.getSelectionEnd());
    }

    public static final void gotoLine(@NotNull TextProcessor textProcessor, int i10) {
        M.p(textProcessor, "<this>");
        int i11 = i10 - 1;
        if (i11 < 0 || i11 >= textProcessor.getLines().getLineCount() - 1) {
            throw new LineException(i10);
        }
        textProcessor.setSelection(textProcessor.getLines().getIndexForLine(i11));
    }

    public static final boolean hasPrimaryClip(@NotNull TextProcessor textProcessor) {
        M.p(textProcessor, "<this>");
        Context context = textProcessor.getContext();
        M.o(context, "getContext(...)");
        ClipboardManager clipboardManager = (ClipboardManager) ContextCompat.getSystemService(context, ClipboardManager.class);
        if (clipboardManager != null) {
            return clipboardManager.hasPrimaryClip();
        }
        return false;
    }

    public static final void insert(@NotNull TextProcessor textProcessor, @NotNull CharSequence delta) {
        M.p(textProcessor, "<this>");
        M.p(delta, "delta");
        textProcessor.getText().replace(textProcessor.getSelectionStart(), textProcessor.getSelectionEnd(), delta);
    }

    public static final boolean moveCaretToEndOfLine(@NotNull TextProcessor textProcessor) {
        M.p(textProcessor, "<this>");
        textProcessor.setSelection(textProcessor.getLines().getIndexForEndOfLine(textProcessor.getLines().getLineForIndex(textProcessor.getSelectionEnd())));
        return true;
    }

    public static final boolean moveCaretToNextWord(@NotNull TextProcessor textProcessor) {
        M.p(textProcessor, "<this>");
        if (textProcessor.getSelectionStart() >= textProcessor.getText().length()) {
            return true;
        }
        char charAt = textProcessor.getText().charAt(textProcessor.getSelectionStart());
        if (Character.isLetterOrDigit(charAt) || charAt == '_') {
            int length = textProcessor.getText().length();
            for (int selectionStart = textProcessor.getSelectionStart(); selectionStart < length; selectionStart++) {
                char charAt2 = textProcessor.getText().charAt(selectionStart);
                if (!Character.isLetterOrDigit(charAt2) && charAt2 != '_') {
                    textProcessor.setSelection(selectionStart);
                    return true;
                }
            }
            return true;
        }
        int length2 = textProcessor.getText().length();
        for (int selectionStart2 = textProcessor.getSelectionStart(); selectionStart2 < length2; selectionStart2++) {
            char charAt3 = textProcessor.getText().charAt(selectionStart2);
            if (Character.isLetterOrDigit(charAt3) || charAt3 == '_') {
                textProcessor.setSelection(selectionStart2);
                return true;
            }
        }
        return true;
    }

    public static final boolean moveCaretToPrevWord(@NotNull TextProcessor textProcessor) {
        M.p(textProcessor, "<this>");
        if (textProcessor.getSelectionStart() > 0) {
            char charAt = textProcessor.getText().charAt(textProcessor.getSelectionStart() - 1);
            if (Character.isLetterOrDigit(charAt) || charAt == '_') {
                int selectionStart = textProcessor.getSelectionStart();
                while (true) {
                    if (-1 >= selectionStart) {
                        break;
                    }
                    char charAt2 = textProcessor.getText().charAt(selectionStart - 1);
                    if (!Character.isLetterOrDigit(charAt2) && charAt2 != '_') {
                        textProcessor.setSelection(selectionStart);
                        break;
                    }
                    selectionStart--;
                }
            } else {
                for (int selectionStart2 = textProcessor.getSelectionStart(); -1 < selectionStart2; selectionStart2--) {
                    char charAt3 = textProcessor.getText().charAt(selectionStart2 - 1);
                    if (Character.isLetterOrDigit(charAt3) || charAt3 == '_') {
                        textProcessor.setSelection(selectionStart2);
                        break;
                    }
                }
            }
        }
        return true;
    }

    public static final boolean moveCaretToStartOfLine(@NotNull TextProcessor textProcessor) {
        M.p(textProcessor, "<this>");
        textProcessor.setSelection(textProcessor.getLines().getIndexForStartOfLine(textProcessor.getLines().getLineForIndex(textProcessor.getSelectionStart())));
        return true;
    }

    public static final void paste(@NotNull TextProcessor textProcessor) {
        ClipData primaryClip;
        M.p(textProcessor, "<this>");
        Context context = textProcessor.getContext();
        M.o(context, "getContext(...)");
        ClipboardManager clipboardManager = (ClipboardManager) ContextCompat.getSystemService(context, ClipboardManager.class);
        ClipData.Item itemAt = (clipboardManager == null || (primaryClip = clipboardManager.getPrimaryClip()) == null) ? null : primaryClip.getItemAt(0);
        textProcessor.getText().replace(textProcessor.getSelectionStart(), textProcessor.getSelectionEnd(), itemAt != null ? itemAt.coerceToText(textProcessor.getContext()) : null);
    }

    public static final void selectLine(@NotNull TextProcessor textProcessor) {
        M.p(textProcessor, "<this>");
        int lineForIndex = textProcessor.getLines().getLineForIndex(textProcessor.getSelectionStart());
        textProcessor.setSelection(textProcessor.getLines().getIndexForStartOfLine(lineForIndex), textProcessor.getLines().getIndexForEndOfLine(lineForIndex));
    }
}
