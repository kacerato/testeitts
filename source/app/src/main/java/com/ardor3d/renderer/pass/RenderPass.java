package com.ardor3d.renderer.pass;

import com.ardor3d.image.Texture;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.renderer.TextureRenderer;
import java.util.List;

public class RenderPass extends Pass {
    private static final long serialVersionUID = 1;

    @Override
    public void doRender(Renderer renderer) {
        int size = this._spatials.size();
        for (int i10 = 0; i10 < size; i10++) {
            renderer.draw(this._spatials.get(i10));
        }
        renderer.renderBuckets();
    }

    @Override
    public void doRender(TextureRenderer textureRenderer, int i10, List<Texture> list) {
        textureRenderer.render(this._spatials, list, i10);
    }
}
