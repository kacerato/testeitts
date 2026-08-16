package org.blacksquircle.ui.editorkit.plugin.base;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import kotlin.jvm.internal.M;
import org.blacksquircle.ui.editorkit.model.LinesCollection;
import org.blacksquircle.ui.editorkit.model.UndoStack;
import org.blacksquircle.ui.editorkit.widget.TextProcessor;
import org.blacksquircle.ui.language.base.Language;
import org.blacksquircle.ui.language.base.model.ColorScheme;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public abstract class EditorPlugin {

    @Nullable
    private TextProcessor _editText;

    @NotNull
    private final String pluginId;

    public EditorPlugin(@NotNull String pluginId) {
        M.p(pluginId, "pluginId");
        this.pluginId = pluginId;
    }

    public void addLine(int i10, int i11, int i12) {
    }

    public void afterDraw(@Nullable Canvas canvas) {
    }

    public void afterTextChanged(@Nullable Editable editable) {
    }

    public void beforeDraw(@Nullable Canvas canvas) {
    }

    public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
    }

    public void clearLines() {
    }

    @NotNull
    public final ColorScheme getColorScheme() {
        return getEditText().getColorScheme();
    }

    @NotNull
    public final TextProcessor getEditText() {
        TextProcessor textProcessor = this._editText;
        M.m(textProcessor);
        return textProcessor;
    }

    @Nullable
    public final Language getLanguage() {
        return getEditText().getLanguage();
    }

    @NotNull
    public final LinesCollection getLines() {
        return getEditText().getLines();
    }

    @NotNull
    public final String getPluginId() {
        return this.pluginId;
    }

    @NotNull
    public final UndoStack getRedoStack() {
        return getEditText().getRedoStack();
    }

    @NotNull
    public final UndoStack getUndoStack() {
        return getEditText().getUndoStack();
    }

    public final boolean isAttached() {
        return this._editText != null;
    }

    public void onAttached(@NotNull TextProcessor editText) {
        M.p(editText, "editText");
        this._editText = editText;
        onColorSchemeChanged(getColorScheme());
        onLanguageChanged(getLanguage());
    }

    public void onColorSchemeChanged(@NotNull ColorScheme colorScheme) {
        M.p(colorScheme, "colorScheme");
    }

    public void onDetached(@NotNull TextProcessor editText) {
        M.p(editText, "editText");
        this._editText = null;
    }

    public boolean onKeyDown(int i10, @Nullable KeyEvent keyEvent) {
        return false;
    }

    public boolean onKeyUp(int i10, @Nullable KeyEvent keyEvent) {
        return false;
    }

    public void onLanguageChanged(@Nullable Language language) {
    }

    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
    }

    public void onMeasure(int i10, int i11) {
    }

    public void onScrollChanged(int i10, int i11, int i12, int i13) {
    }

    public void onSelectionChanged(int i10, int i11) {
    }

    public void onSizeChanged(int i10, int i11, int i12, int i13) {
    }

    public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
    }

    public void onTextReplaced(int i10, int i11, @NotNull CharSequence newText) {
        M.p(newText, "newText");
    }

    public boolean onTouchEvent(@NotNull MotionEvent event) {
        M.p(event, "event");
        return false;
    }

    public void removeLine(int i10) {
    }

    @NotNull
    public final Context requireContext() {
        Context context;
        TextProcessor textProcessor = this._editText;
        if (textProcessor != null && (context = textProcessor.getContext()) != null) {
            return context;
        }
        throw new IllegalStateException("EditorPlugin " + ((Object) this) + " not attached to a context.");
    }

    public void setEmptyText() {
    }

    public void setTextContent(@NotNull CharSequence text) {
        M.p(text, "text");
    }

    public void setTextSize(float f10) {
    }

    public void setTypeface(@Nullable Typeface typeface) {
    }

    public void showDropDown() {
    }
}
