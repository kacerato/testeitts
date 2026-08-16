package com.jme3.scene.debug;

import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

public class Grid extends Mesh {
    public Grid() {
    }

    public Grid(int i10, int i11, float f10) {
        int i12 = (i10 - 2) + (i11 - 2) + 4;
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(i12 * 6);
        ShortBuffer createShortBuffer = BufferUtils.createShortBuffer(i12 * 2);
        float f11 = (i11 - 1) * f10;
        float f12 = (i10 - 1) * f10;
        int i13 = 0;
        for (int i14 = 0; i14 < i10; i14++) {
            float f13 = i14 * f10;
            createFloatBuffer.put(0.0f).put(0.0f).put(f13);
            createFloatBuffer.put(f11).put(0.0f).put(f13);
            int i15 = i13 + 1;
            createShortBuffer.put((short) i13);
            i13 += 2;
            createShortBuffer.put((short) i15);
        }
        for (int i16 = 0; i16 < i11; i16++) {
            float f14 = i16 * f10;
            createFloatBuffer.put(f14).put(0.0f).put(0.0f);
            createFloatBuffer.put(f14).put(0.0f).put(f12);
            int i17 = i13 + 1;
            createShortBuffer.put((short) i13);
            i13 += 2;
            createShortBuffer.put((short) i17);
        }
        createFloatBuffer.flip();
        createShortBuffer.flip();
        setBuffer(VertexBuffer.Type.Position, 3, createFloatBuffer);
        setBuffer(VertexBuffer.Type.Index, 2, createShortBuffer);
        setMode(Mesh.Mode.Lines);
        updateBound();
        updateCounts();
        setStatic();
    }
}
