package com.jme3.scene.debug;

import android.util.DisplayMetrics;
import com.jme3.bounding.BoundingSphere;
import com.jme3.math.FastMath;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

public class WireSphere extends Mesh {
    private static final int samples = 30;
    private static final int zSamples = 10;

    public WireSphere() {
        this(1.0f);
    }

    public static Geometry makeGeometry(BoundingSphere boundingSphere) {
        Geometry geometry = new Geometry("bounding sphere", new WireSphere(boundingSphere.getRadius()));
        geometry.setLocalTranslation(boundingSphere.getCenter());
        return geometry;
    }

    public void fromBoundingSphere(BoundingSphere boundingSphere) {
        updatePositions(boundingSphere.getRadius());
    }

    public void updatePositions(float f10) {
        FloatBuffer floatBuffer;
        VertexBuffer.Type type = VertexBuffer.Type.Position;
        VertexBuffer buffer = getBuffer(type);
        if (buffer == null) {
            VertexBuffer vertexBuffer = new VertexBuffer(type);
            floatBuffer = BufferUtils.createVector3Buffer(DisplayMetrics.DENSITY_360);
            vertexBuffer.setupData(VertexBuffer.Usage.Dynamic, 3, VertexBuffer.Format.Float, floatBuffer);
            setBuffer(vertexBuffer);
        } else {
            floatBuffer = (FloatBuffer) buffer.getData();
        }
        floatBuffer.rewind();
        float f11 = 0.0f;
        for (int i10 = 0; i10 < 30; i10++) {
            floatBuffer.put(FastMath.cos(f11) * f10).put(FastMath.sin(f11) * f10).put(0.0f);
            f11 += 0.20943952f;
        }
        float f12 = 0.0f;
        for (int i11 = 0; i11 < 30; i11++) {
            floatBuffer.put(0.0f).put(FastMath.cos(f12) * f10).put(FastMath.sin(f12) * f10);
            f12 += 0.20943952f;
        }
        float f13 = (f10 * 2.0f) / 10.0f;
        float f14 = (-f10) + (f13 / 2.0f);
        float f15 = 0.05f;
        for (int i12 = 0; i12 < 10; i12++) {
            float sqrt = FastMath.sqrt(f15 - (f15 * f15)) * 2.0f;
            float f16 = 0.0f;
            for (int i13 = 0; i13 < 30; i13++) {
                floatBuffer.put(FastMath.cos(f16) * f10 * sqrt).put(f14).put(FastMath.sin(f16) * f10 * sqrt);
                f16 += 0.20943952f;
            }
            f14 += f13;
            f15 += 0.1f;
        }
    }

    public WireSphere(float f10) {
        int i10;
        int i11;
        updatePositions(f10);
        ShortBuffer createShortBuffer = BufferUtils.createShortBuffer(720);
        setBuffer(VertexBuffer.Type.Index, 2, createShortBuffer);
        int i12 = 0;
        int i13 = 0;
        while (i12 < 12) {
            int i14 = i13;
            while (true) {
                i10 = i13 + 30;
                i11 = i13 + 29;
                if (i14 < i11) {
                    ShortBuffer put = createShortBuffer.put((short) i14);
                    i14++;
                    put.put((short) i14);
                }
            }
            createShortBuffer.put((short) i11).put((short) i13);
            i12++;
            i13 = i10;
        }
        setMode(Mesh.Mode.Lines);
        updateBound();
        updateCounts();
    }
}
