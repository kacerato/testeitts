package org.blacksquircle.ui.editorkit.plugin.dirtytext;

import android.text.Editable;
import android.util.Log;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.blacksquircle.ui.editorkit.plugin.base.EditorPlugin;
import org.blacksquircle.ui.editorkit.widget.TextProcessor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class DirtyTextPlugin extends EditorPlugin {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String PLUGIN_ID = "dirty-text-9124";
    private boolean isDirty;

    @Nullable
    private OnChangeListener onChangeListener;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        private Companion() {
        }
    }

    public DirtyTextPlugin() {
        super(PLUGIN_ID);
    }

    @Override
    public void afterTextChanged(@Nullable Editable editable) {
        OnChangeListener onChangeListener;
        super.afterTextChanged(editable);
        if (this.isDirty || (onChangeListener = this.onChangeListener) == null) {
            return;
        }
        onChangeListener.onContentChanged();
    }

    @Nullable
    public final OnChangeListener getOnChangeListener() {
        return this.onChangeListener;
    }

    @Override
    public void onAttached(@NotNull TextProcessor editText) {
        M.p(editText, "editText");
        super.onAttached(editText);
        Log.d(PLUGIN_ID, "DirtyText plugin loaded successfully!");
    }

    @Override
    public void onDetached(@NotNull TextProcessor editText) {
        M.p(editText, "editText");
        super.onDetached(editText);
        this.onChangeListener = null;
    }

    public final void setOnChangeListener(@Nullable OnChangeListener onChangeListener) {
        this.onChangeListener = onChangeListener;
    }

    @Override
    public void setTextContent(@NotNull CharSequence text) {
        M.p(text, "text");
        super.setTextContent(text);
        this.isDirty = false;
    }
}
