package com.ardor3d.renderer.queue;

import com.ardor3d.renderer.Renderer;
import com.ardor3d.scenegraph.Spatial;
import java.util.Comparator;

public class OrthoRenderBucket extends AbstractRenderBucket {

    public static class OrthoComparator implements Comparator<Spatial> {
        private OrthoComparator() {
        }

        @Override
        public int compare(Spatial spatial, Spatial spatial2) {
            if (spatial2.getSceneHints().getOrthoOrder() == spatial.getSceneHints().getOrthoOrder()) {
                return 0;
            }
            return spatial2.getSceneHints().getOrthoOrder() < spatial.getSceneHints().getOrthoOrder() ? -1 : 1;
        }
    }

    public OrthoRenderBucket() {
        this._comparator = new OrthoComparator();
    }

    @Override
    public void render(Renderer renderer) {
        if (this._currentListSize > 0) {
            renderer.setOrtho();
            for (int i10 = 0; i10 < this._currentListSize; i10++) {
                this._currentList[i10].draw(renderer);
            }
            renderer.unsetOrtho();
        }
    }
}
