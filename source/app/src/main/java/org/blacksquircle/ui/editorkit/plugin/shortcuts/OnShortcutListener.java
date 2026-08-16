package org.blacksquircle.ui.editorkit.plugin.shortcuts;

import org.jetbrains.annotations.NotNull;

public interface OnShortcutListener {
    boolean onShortcut(@NotNull Shortcut shortcut);
}
