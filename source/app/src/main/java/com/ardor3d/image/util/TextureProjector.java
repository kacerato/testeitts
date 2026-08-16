package com.ardor3d.image.util;

import com.ardor3d.image.Texture;
import com.ardor3d.math.Matrix4;
import com.ardor3d.math.type.ReadOnlyMatrix4;
import com.ardor3d.renderer.Camera;

public class TextureProjector extends Camera {
    private static final ReadOnlyMatrix4 BIAS = new Matrix4(0.5d, 0.0d, 0.0d, 0.0d, 0.0d, 0.5d, 0.0d, 0.0d, 0.0d, 0.0d, 0.5d, 0.0d, 0.5d, 0.5d, 0.5d, 1.0d);

    public TextureProjector() {
        super(1, 1);
    }

    public void updateTextureMatrix(Texture texture) {
        Matrix4 fetchTempInstance = Matrix4.fetchTempInstance();
        updateTextureMatrix(fetchTempInstance);
        texture.setTextureMatrix(fetchTempInstance);
        Matrix4.releaseTempInstance(fetchTempInstance);
    }

    public void updateTextureMatrix(Matrix4 matrix4) {
        update();
        ReadOnlyMatrix4 modelViewMatrix = getModelViewMatrix();
        matrix4.set(modelViewMatrix).multiplyLocal(getProjectionMatrix()).multiplyLocal(BIAS);
    }
}
