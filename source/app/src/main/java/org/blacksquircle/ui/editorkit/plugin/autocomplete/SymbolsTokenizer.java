package org.blacksquircle.ui.editorkit.plugin.autocomplete;

import ag.P;
import android.widget.MultiAutoCompleteTextView;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class SymbolsTokenizer implements MultiAutoCompleteTextView.Tokenizer {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final String TOKEN = "!@#$%^&*()_+-={}|[]:;'<>/<.? \r\n\t";

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        private Companion() {
        }
    }

    @Override
    public int findTokenEnd(@NotNull CharSequence text, int i10) {
        M.p(text, "text");
        while (i10 < text.length()) {
            if (P.o3(TOKEN, text.charAt(i10 - 1), false, 2, null)) {
                return i10;
            }
            i10++;
        }
        return text.length();
    }

    @Override
    public int findTokenStart(@NotNull CharSequence text, int i10) {
        M.p(text, "text");
        int i11 = i10;
        while (i11 > 0 && !P.o3(TOKEN, text.charAt(i11 - 1), false, 2, null)) {
            i11--;
        }
        while (i11 < i10 && text.charAt(i11) == ' ') {
            i11++;
        }
        return i11;
    }

    @Override
    @NotNull
    public CharSequence terminateToken(@NotNull CharSequence text) {
        M.p(text, "text");
        return text;
    }
}
