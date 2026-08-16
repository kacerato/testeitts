package com.ardor3d.util;

import com.ardor3d.renderer.Renderer;
import com.ardor3d.scenegraph.AbstractBufferData;
import com.ardor3d.util.scenegraph.DisplayListDelegate;

public class ContextGarbageCollector {
    private ContextGarbageCollector() {
    }

    public static void doFinalCleanup(Renderer renderer) {
        TextureManager.cleanAllTextures(renderer, null);
        AbstractBufferData.cleanAllVBOs(renderer);
        DisplayListDelegate.cleanAllDisplayLists(renderer);
    }

    public static void doRuntimeCleanup(Renderer renderer) {
        TextureManager.cleanExpiredTextures(renderer, null);
        AbstractBufferData.cleanExpiredVBOs(renderer);
        DisplayListDelegate.cleanExpiredDisplayLists(renderer);
    }
}
