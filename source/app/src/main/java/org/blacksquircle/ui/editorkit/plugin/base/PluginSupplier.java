package org.blacksquircle.ui.editorkit.plugin.base;

import Mf.l;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.P0;
import org.blacksquircle.ui.editorkit.plugin.base.EditorPlugin;
import org.blacksquircle.ui.editorkit.plugin.base.PluginSupplier;
import org.jetbrains.annotations.NotNull;

public final class PluginSupplier {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final List<EditorPlugin> plugins;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @NotNull
        public final PluginSupplier create(@NotNull l<? super PluginSupplier, P0> block) {
            M.p(block, "block");
            PluginSupplier pluginSupplier = new PluginSupplier(null);
            block.invoke(pluginSupplier);
            return pluginSupplier;
        }

        private Companion() {
        }
    }

    public PluginSupplier(C14026x c14026x) {
        this();
    }

    public static void plugin$default(PluginSupplier pluginSupplier, EditorPlugin editorPlugin, l lVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            lVar = new l() {
                @Override
                public final Object invoke(Object obj2) {
                    P0 plugin$lambda$0;
                    plugin$lambda$0 = PluginSupplier.plugin$lambda$0((EditorPlugin) obj2);
                    return plugin$lambda$0;
                }
            };
        }
        pluginSupplier.plugin(editorPlugin, lVar);
    }

    public static final P0 plugin$lambda$0(EditorPlugin editorPlugin) {
        M.p(editorPlugin, "<this>");
        return P0.f98194a;
    }

    public final <T extends EditorPlugin> void plugin(@NotNull T plugin, @NotNull l<? super T, P0> block) {
        M.p(plugin, "plugin");
        M.p(block, "block");
        List<EditorPlugin> list = this.plugins;
        block.invoke(plugin);
        list.add(plugin);
    }

    @NotNull
    public final List<EditorPlugin> supply() {
        return this.plugins;
    }

    private PluginSupplier() {
        this.plugins = new ArrayList();
    }
}
