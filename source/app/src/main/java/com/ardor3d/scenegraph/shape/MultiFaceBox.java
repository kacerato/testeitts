package com.ardor3d.scenegraph.shape;

import com.ardor3d.math.Vector3;
import java.nio.FloatBuffer;

public class MultiFaceBox extends Box {
    private static final long serialVersionUID = 1;

    public MultiFaceBox() {
        remap();
    }

    private void remap() {
        FloatBuffer buffer = this._meshData.getTextureCoords(0).getBuffer();
        buffer.rewind();
        int i10 = 0;
        while (i10 < 6) {
            float f10 = i10 / 8.0f;
            i10++;
            float f11 = i10 / 8.0f;
            buffer.put(new float[]{1.0f, f10, 0.0f, f10, 0.0f, f11, 1.0f, f11});
        }
    }

    public MultiFaceBox(String str) {
        super(str);
        remap();
    }

    public MultiFaceBox(String str, Vector3 vector3, Vector3 vector32) {
        super(str, vector3, vector32);
        remap();
    }

    public MultiFaceBox(String str, Vector3 vector3, float f10, float f11, float f12) {
        super(str, vector3, f10, f11, f12);
        remap();
    }
}
