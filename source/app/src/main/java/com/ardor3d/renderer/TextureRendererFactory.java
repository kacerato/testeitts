package com.ardor3d.renderer;

import com.ardor3d.framework.DisplaySettings;

public enum TextureRendererFactory {
    INSTANCE;

    private TextureRendererProvider _provider = null;

    TextureRendererFactory() {
    }

    public TextureRenderer createTextureRenderer(int i10, int i11, Renderer renderer, ContextCapabilities contextCapabilities) {
        return this._provider.createTextureRenderer(i10, i11, renderer, contextCapabilities);
    }

    public void setProvider(TextureRendererProvider textureRendererProvider) {
        this._provider = textureRendererProvider;
    }

    public TextureRenderer createTextureRenderer(int i10, int i11, int i12, int i13, Renderer renderer, ContextCapabilities contextCapabilities) {
        return this._provider.createTextureRenderer(i10, i11, i12, i13, renderer, contextCapabilities);
    }

    public TextureRenderer createTextureRenderer(DisplaySettings displaySettings, boolean z10, Renderer renderer, ContextCapabilities contextCapabilities) {
        return this._provider.createTextureRenderer(displaySettings, z10, renderer, contextCapabilities);
    }
}
