package org.blacksquircle.ui.editorkit.plugin.base;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface PluginContainer {
    @Nullable
    <T extends EditorPlugin> T findPlugin(@NotNull String str);

    boolean hasPlugin(@NotNull String str);

    <T extends EditorPlugin> void installPlugin(@NotNull T t10);

    void plugins(@NotNull PluginSupplier pluginSupplier);

    void uninstallPlugin(@NotNull String str);
}
