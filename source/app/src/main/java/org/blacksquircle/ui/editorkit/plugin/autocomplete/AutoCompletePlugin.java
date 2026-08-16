package org.blacksquircle.ui.editorkit.plugin.autocomplete;

import F6.c;
import android.graphics.Rect;
import android.text.Editable;
import android.text.Layout;
import android.util.Log;
import com.itsmagic.engine2.R;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.blacksquircle.ui.editorkit.plugin.base.EditorPlugin;
import org.blacksquircle.ui.editorkit.widget.TextProcessor;
import org.blacksquircle.ui.language.base.Language;
import org.blacksquircle.ui.language.base.provider.SuggestionProvider;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class AutoCompletePlugin extends EditorPlugin {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String PLUGIN_ID = "autocomplete-6743";

    @Nullable
    private SuggestionAdapter suggestionAdapter;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        private Companion() {
        }
    }

    public AutoCompletePlugin() {
        super(PLUGIN_ID);
    }

    private final int getVisibleHeight() {
        Rect rect = new Rect();
        getEditText().getWindowVisibleDisplayFrame(rect);
        return rect.bottom - rect.top;
    }

    @c
    private final void onDropDownSizeChange(int i10, int i11) {
        if (getEditText() != null) {
            try {
                getEditText().setDropDownWidth(i10 / 2);
                if (N7.c.t() != null) {
                    getEditText().setDropDownHeight((int) N7.c.t().getResources().getDimension(R.dimen.codeview_line_suggestion_dropdown_height));
                }
            } catch (Error e10) {
                e10.printStackTrace();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        onPopupChangePosition();
    }

    @c
    private final void onPopupChangePosition() {
        Layout layout = getEditText().getLayout();
        if (layout == null) {
            return;
        }
        int lineForOffset = layout.getLineForOffset(getEditText().getSelectionStart());
        float primaryHorizontal = layout.getPrimaryHorizontal(getEditText().getSelectionStart());
        int lineBaseline = layout.getLineBaseline(lineForOffset);
        getEditText().setDropDownHorizontalOffset((int) (primaryHorizontal + getEditText().getPaddingStart()));
        int scrollY = lineBaseline - getEditText().getScrollY();
        getEditText().setDropDownVerticalOffset((((int) getEditText().getTextSize()) + scrollY) + getEditText().getDropDownHeight() > getVisibleHeight() ? scrollY - ((int) getEditText().getTextSize()) : scrollY + ((int) getEditText().getTextSize()) + getEditText().getDropDownHeight());
    }

    private final void updateAdapter() {
        SuggestionAdapter suggestionAdapter;
        SuggestionProvider provider;
        if (!isAttached() || (suggestionAdapter = this.suggestionAdapter) == null) {
            return;
        }
        Language language = getLanguage();
        if (language != null && (provider = language.getProvider()) != null) {
            suggestionAdapter.setSuggestionProvider(provider);
        }
        getEditText().setAdapter(suggestionAdapter);
    }

    @Override
    public void addLine(int i10, int i11, int i12) {
        SuggestionProvider provider;
        super.addLine(i10, i11, i12);
        try {
            Language language = getLanguage();
            if (language == null || (provider = language.getProvider()) == null) {
                return;
            }
            Editable text = getEditText().getText();
            M.o(text, "getText(...)");
            provider.processLine(i10, text.subSequence(i11, i12 + i11).toString());
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    @Override
    public void clearLines() {
        SuggestionProvider provider;
        super.clearLines();
        Language language = getLanguage();
        if (language == null || (provider = language.getProvider()) == null) {
            return;
        }
        provider.clearLines();
    }

    @Nullable
    public final SuggestionAdapter getSuggestionAdapter() {
        return this.suggestionAdapter;
    }

    @Override
    public void onAttached(@NotNull TextProcessor editText) {
        M.p(editText, "editText");
        super.onAttached(editText);
        editText.setTokenizer(new SymbolsTokenizer());
        editText.setAdapter(this.suggestionAdapter);
        Log.d(PLUGIN_ID, "AutoComplete plugin loaded successfully!");
    }

    @Override
    public void onDetached(@NotNull TextProcessor editText) {
        M.p(editText, "editText");
        editText.setTokenizer(null);
        editText.setAdapter(null);
        super.onDetached(editText);
    }

    @Override
    public void onLanguageChanged(@Nullable Language language) {
        SuggestionProvider provider;
        SuggestionAdapter suggestionAdapter;
        super.onLanguageChanged(language);
        if (language == null || (provider = language.getProvider()) == null || (suggestionAdapter = this.suggestionAdapter) == null) {
            return;
        }
        suggestionAdapter.setSuggestionProvider(provider);
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        onDropDownSizeChange(i10, i11);
    }

    @Override
    public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        onPopupChangePosition();
    }

    @Override
    public void onTextReplaced(int i10, int i11, @NotNull CharSequence newText) {
        SuggestionProvider provider;
        M.p(newText, "newText");
        super.onTextReplaced(i10, i11, newText);
        int lineForIndex = getLines().getLineForIndex(i10);
        int lineForIndex2 = getLines().getLineForIndex(newText.length() + i10);
        if (lineForIndex > lineForIndex2) {
            return;
        }
        while (true) {
            int indexForStartOfLine = getLines().getIndexForStartOfLine(lineForIndex);
            int indexForEndOfLine = getLines().getIndexForEndOfLine(lineForIndex);
            if (indexForStartOfLine <= indexForEndOfLine && indexForEndOfLine <= getEditText().getText().length()) {
                try {
                    Language language = getLanguage();
                    if (language != null && (provider = language.getProvider()) != null) {
                        Editable text = getEditText().getText();
                        M.o(text, "getText(...)");
                        provider.processLine(lineForIndex, text.subSequence(indexForStartOfLine, indexForEndOfLine).toString());
                    }
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
            if (lineForIndex == lineForIndex2) {
                return;
            } else {
                lineForIndex++;
            }
        }
    }

    @Override
    public void removeLine(int i10) {
        SuggestionProvider provider;
        super.removeLine(i10);
        Language language = getLanguage();
        if (language == null || (provider = language.getProvider()) == null) {
            return;
        }
        provider.deleteLine(getLines().getIndexForLine(i10));
    }

    public final void setSuggestionAdapter(@Nullable SuggestionAdapter suggestionAdapter) {
        this.suggestionAdapter = suggestionAdapter;
        updateAdapter();
    }

    @Override
    public void showDropDown() {
        if (getEditText().isPopupShowing() || !getEditText().hasFocus()) {
            return;
        }
        super.showDropDown();
    }
}
