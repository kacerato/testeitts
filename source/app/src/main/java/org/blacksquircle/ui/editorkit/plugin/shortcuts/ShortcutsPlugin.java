package org.blacksquircle.ui.editorkit.plugin.shortcuts;

import android.util.Log;
import android.view.KeyEvent;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.blacksquircle.ui.editorkit.plugin.base.EditorPlugin;
import org.blacksquircle.ui.editorkit.widget.TextProcessor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class ShortcutsPlugin extends EditorPlugin {
    private static final boolean ALT_DEFAULT = false;
    private static final boolean CTRL_DEFAULT = false;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String PLUGIN_ID = "shortcuts-1095";
    private static final boolean SHIFT_DEFAULT = false;

    @Nullable
    private OnShortcutListener onShortcutListener;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        private Companion() {
        }
    }

    public ShortcutsPlugin() {
        super(PLUGIN_ID);
    }

    @Nullable
    public final OnShortcutListener getOnShortcutListener() {
        return this.onShortcutListener;
    }

    @Override
    public void onAttached(@NotNull TextProcessor editText) {
        M.p(editText, "editText");
        super.onAttached(editText);
        Log.d(PLUGIN_ID, "Shortcuts plugin loaded successfully!");
    }

    @Override
    public void onDetached(@NotNull TextProcessor editText) {
        M.p(editText, "editText");
        super.onDetached(editText);
        this.onShortcutListener = null;
    }

    @Override
    public boolean onKeyDown(int i10, @Nullable KeyEvent keyEvent) {
        OnShortcutListener onShortcutListener = this.onShortcutListener;
        if (onShortcutListener != null) {
            Shortcut shortcut = new Shortcut(keyEvent != null ? keyEvent.isCtrlPressed() : false, keyEvent != null ? keyEvent.isShiftPressed() : false, keyEvent != null ? keyEvent.isAltPressed() : false, i10);
            if ((shortcut.getCtrl() || shortcut.getShift() || shortcut.getAlt()) && onShortcutListener.onShortcut(shortcut)) {
                return true;
            }
        }
        return super.onKeyDown(i10, keyEvent);
    }

    public final void setOnShortcutListener(@Nullable OnShortcutListener onShortcutListener) {
        this.onShortcutListener = onShortcutListener;
    }
}
