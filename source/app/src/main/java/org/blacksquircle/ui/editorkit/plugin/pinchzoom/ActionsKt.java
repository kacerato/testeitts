package org.blacksquircle.ui.editorkit.plugin.pinchzoom;

import Mf.l;
import kotlin.jvm.internal.M;
import nf.P0;
import org.blacksquircle.ui.editorkit.plugin.base.PluginSupplier;
import org.blacksquircle.ui.editorkit.plugin.pinchzoom.ActionsKt;
import org.blacksquircle.ui.editorkit.plugin.pinchzoom.PinchZoomPlugin;
import org.jetbrains.annotations.NotNull;

public final class ActionsKt {
    public static final void pinchZoom(@NotNull PluginSupplier pluginSupplier, @NotNull l<? super PinchZoomPlugin, P0> block) {
        M.p(pluginSupplier, "<this>");
        M.p(block, "block");
        pluginSupplier.plugin(new PinchZoomPlugin(), block);
    }

    public static void pinchZoom$default(PluginSupplier pluginSupplier, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            lVar = new l() {
                @Override
                public final Object invoke(Object obj2) {
                    P0 pinchZoom$lambda$0;
                    pinchZoom$lambda$0 = ActionsKt.pinchZoom$lambda$0((PinchZoomPlugin) obj2);
                    return pinchZoom$lambda$0;
                }
            };
        }
        pinchZoom(pluginSupplier, lVar);
    }

    public static final P0 pinchZoom$lambda$0(PinchZoomPlugin pinchZoomPlugin) {
        M.p(pinchZoomPlugin, "<this>");
        return P0.f98194a;
    }
}
