package org.blacksquircle.ui.editorkit.plugin.delimiters;

import android.text.style.BackgroundColorSpan;
import android.util.Log;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.blacksquircle.ui.editorkit.plugin.base.EditorPlugin;
import org.blacksquircle.ui.editorkit.widget.TextProcessor;
import org.blacksquircle.ui.language.base.model.ColorScheme;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;

public final class BracketsHighlightPlugin extends EditorPlugin {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String PLUGIN_ID = "brackets-highlight-1180";

    @NotNull
    private BackgroundColorSpan closedDelimiterSpan;

    @NotNull
    private final char[] delimiters;

    @NotNull
    private BackgroundColorSpan openDelimiterSpan;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        private Companion() {
        }
    }

    public BracketsHighlightPlugin() {
        super(PLUGIN_ID);
        this.delimiters = new char[]{JavaElement.JEM_COMPILATIONUNIT, '[', '(', '<', JavaElement.JEM_ANNOTATION, JavaElement.JEM_TYPE_PARAMETER, ')', '>'};
        this.openDelimiterSpan = new BackgroundColorSpan(-7829368);
        this.closedDelimiterSpan = new BackgroundColorSpan(-7829368);
    }

    private final void checkMatchingBracket(int i10) {
        if (getEditText().getLayout() == null) {
            return;
        }
        getEditText().getText().removeSpan(this.openDelimiterSpan);
        getEditText().getText().removeSpan(this.closedDelimiterSpan);
        if (i10 <= 0 || i10 > getEditText().getText().length()) {
            return;
        }
        int i11 = i10 - 1;
        char charAt = getEditText().getText().charAt(i11);
        int length = this.delimiters.length;
        int i12 = 0;
        while (i12 < length) {
            char[] cArr = this.delimiters;
            if (cArr[i12] == charAt) {
                int length2 = cArr.length / 2;
                int i13 = 1;
                boolean z10 = i12 <= length2 + (-1);
                char c10 = cArr[(length2 + i12) % cArr.length];
                if (z10) {
                    int i14 = i10;
                    while (true) {
                        if (i14 >= getEditText().getText().length()) {
                            break;
                        }
                        if (getEditText().getText().charAt(i14) == c10) {
                            i13--;
                        }
                        if (getEditText().getText().charAt(i14) == charAt) {
                            i13++;
                        }
                        if (i13 == 0) {
                            showBracket(i11, i14);
                            break;
                        }
                        i14++;
                    }
                } else {
                    int i15 = i10 - 2;
                    while (true) {
                        if (i15 < 0) {
                            break;
                        }
                        if (getEditText().getText().charAt(i15) == c10) {
                            i13--;
                        }
                        if (getEditText().getText().charAt(i15) == charAt) {
                            i13++;
                        }
                        if (i13 == 0) {
                            showBracket(i15, i11);
                            break;
                        }
                        i15--;
                    }
                }
            }
            i12++;
        }
    }

    private final void showBracket(int i10, int i11) {
        getEditText().getText().setSpan(this.openDelimiterSpan, i10, i10 + 1, 33);
        getEditText().getText().setSpan(this.closedDelimiterSpan, i11, i11 + 1, 33);
    }

    @Override
    public void onAttached(@NotNull TextProcessor editText) {
        M.p(editText, "editText");
        super.onAttached(editText);
        Log.d(PLUGIN_ID, "BracketsHighlight plugin loaded successfully!");
    }

    @Override
    public void onColorSchemeChanged(@NotNull ColorScheme colorScheme) {
        M.p(colorScheme, "colorScheme");
        super.onColorSchemeChanged(colorScheme);
        this.openDelimiterSpan = new BackgroundColorSpan(colorScheme.getDelimiterBackgroundColor());
        this.closedDelimiterSpan = new BackgroundColorSpan(colorScheme.getDelimiterBackgroundColor());
    }

    @Override
    public void onSelectionChanged(int i10, int i11) {
        super.onSelectionChanged(i10, i11);
        if (i10 == i11) {
            checkMatchingBracket(i10);
        }
    }
}
