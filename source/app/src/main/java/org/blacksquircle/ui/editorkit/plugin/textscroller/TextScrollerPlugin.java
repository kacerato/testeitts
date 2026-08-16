package org.blacksquircle.ui.editorkit.plugin.textscroller;

import android.util.Log;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.blacksquircle.ui.editorkit.plugin.base.EditorPlugin;
import org.blacksquircle.ui.editorkit.widget.TextProcessor;
import org.blacksquircle.ui.editorkit.widget.TextScroller;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class TextScrollerPlugin extends EditorPlugin {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String PLUGIN_ID = "text-scroller-1821";

    @Nullable
    private TextScroller scroller;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        private Companion() {
        }
    }

    public TextScrollerPlugin() {
        super(PLUGIN_ID);
    }

    @Nullable
    public final TextScroller getScroller() {
        return this.scroller;
    }

    @Override
    public void onAttached(@NotNull TextProcessor editText) {
        M.p(editText, "editText");
        super.onAttached(editText);
        TextScroller textScroller = this.scroller;
        if (textScroller != null) {
            textScroller.attachTo(editText);
        }
        Log.d(PLUGIN_ID, "TextScroller plugin loaded successfully!");
    }

    @Override
    public void onDetached(@NotNull TextProcessor editText) {
        M.p(editText, "editText");
        super.onDetached(editText);
        TextScroller textScroller = this.scroller;
        if (textScroller != null) {
            textScroller.detach();
        }
        this.scroller = null;
    }

    public final void setScroller(@Nullable TextScroller textScroller) {
        this.scroller = textScroller;
    }
}
