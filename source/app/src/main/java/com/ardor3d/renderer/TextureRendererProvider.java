package com.ardor3d.renderer;

import com.ardor3d.framework.DisplaySettings;

public interface TextureRendererProvider {
    TextureRenderer createTextureRenderer(int i10, int i11, int i12, int i13, Renderer renderer, ContextCapabilities contextCapabilities);

    TextureRenderer createTextureRenderer(int i10, int i11, Renderer renderer, ContextCapabilities contextCapabilities);

    TextureRenderer createTextureRenderer(DisplaySettings displaySettings, boolean z10, Renderer renderer, ContextCapabilities contextCapabilities);
}
