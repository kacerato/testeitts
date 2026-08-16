package com.ardor3d.renderer.queue;

import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.TextureState;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.util.TextureKey;
import java.util.Comparator;

public class OpaqueRenderBucket extends AbstractRenderBucket {

    public class OpaqueComparator implements Comparator<Spatial> {
        private OpaqueComparator() {
        }

        private int compareByStates(Mesh mesh, Mesh mesh2) {
            RenderState.StateType stateType = RenderState.StateType.Texture;
            TextureState textureState = (TextureState) mesh.getWorldRenderState(stateType);
            TextureState textureState2 = (TextureState) mesh2.getWorldRenderState(stateType);
            if (textureState == textureState2) {
                return 0;
            }
            if (textureState == null && textureState2 != null) {
                return -1;
            }
            if (textureState2 == null && textureState != null) {
                return 1;
            }
            int min = Math.min(textureState.getMaxTextureIndexUsed(), textureState2.getMaxTextureIndexUsed());
            for (int i10 = 0; i10 <= min; i10++) {
                TextureKey textureKey = textureState.getTextureKey(i10);
                TextureKey textureKey2 = textureState2.getTextureKey(i10);
                if (textureKey == null) {
                    if (textureKey2 != null) {
                        return -1;
                    }
                } else {
                    if (textureKey2 == null) {
                        return 1;
                    }
                    int hashCode = textureKey.hashCode();
                    int hashCode2 = textureKey2.hashCode();
                    if (hashCode != hashCode2) {
                        return hashCode < hashCode2 ? -1 : 1;
                    }
                }
            }
            if (textureState.getMaxTextureIndexUsed() != textureState2.getMaxTextureIndexUsed()) {
                return textureState2.getMaxTextureIndexUsed() - textureState.getMaxTextureIndexUsed();
            }
            return 0;
        }

        @Override
        public int compare(Spatial spatial, Spatial spatial2) {
            if ((spatial instanceof Mesh) && (spatial2 instanceof Mesh)) {
                return compareByStates((Mesh) spatial, (Mesh) spatial2);
            }
            double distanceToCam = OpaqueRenderBucket.this.distanceToCam(spatial);
            double distanceToCam2 = OpaqueRenderBucket.this.distanceToCam(spatial2);
            if (distanceToCam > distanceToCam2) {
                return 1;
            }
            return distanceToCam < distanceToCam2 ? -1 : 0;
        }
    }

    public OpaqueRenderBucket() {
        this._comparator = new OpaqueComparator();
    }
}
