package com.ardor3d.renderer.pass;

import com.ardor3d.image.Texture;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.renderer.TextureRenderer;
import java.util.ArrayList;
import java.util.List;

public class BasicPassManager {
    protected List<Pass> _passes = new ArrayList();

    public void add(Pass pass) {
        if (pass != null) {
            this._passes.add(pass);
        }
    }

    public void cleanUp() {
        int size = this._passes.size();
        for (int i10 = 0; i10 < size; i10++) {
            this._passes.get(i10).cleanUp();
        }
    }

    public void clearAll() {
        cleanUp();
        this._passes.clear();
    }

    public boolean contains(Pass pass) {
        return this._passes.contains(pass);
    }

    public Pass get(int i10) {
        return this._passes.get(i10);
    }

    public void insert(Pass pass, int i10) {
        this._passes.add(i10, pass);
    }

    public int passes() {
        return this._passes.size();
    }

    public boolean remove(Pass pass) {
        return this._passes.remove(pass);
    }

    public void renderPasses(Renderer renderer) {
        int size = this._passes.size();
        for (int i10 = 0; i10 < size; i10++) {
            this._passes.get(i10).renderPass(renderer);
        }
    }

    public void updatePasses(double d10) {
        int size = this._passes.size();
        for (int i10 = 0; i10 < size; i10++) {
            this._passes.get(i10).updatePass(d10);
        }
    }

    public void renderPasses(TextureRenderer textureRenderer, int i10, List<Texture> list) {
        int size = this._passes.size();
        for (int i11 = 0; i11 < size; i11++) {
            this._passes.get(i11).renderPass(textureRenderer, i10, list);
        }
    }
}
