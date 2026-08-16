package com.jme3.environment.util;

import com.jme3.asset.AssetManager;
import com.jme3.material.Material;
import com.jme3.math.ColorRGBA;
import com.jme3.math.FastMath;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

public class BoundingSphereDebug extends Mesh {
    protected boolean interior;
    protected int radialSamples = 32;
    protected int triCount;
    protected boolean useEvenSlices;
    protected int vertCount;

    public BoundingSphereDebug() {
        setGeometryData();
        setIndexData();
    }

    public static Geometry createDebugSphere(AssetManager assetManager) {
        Geometry geometry = new Geometry("BoundingDebug", new BoundingSphereDebug());
        Material material = new Material(assetManager, "Common/MatDefs/Misc/Unshaded.j3md");
        material.setBoolean("VertexColor", true);
        material.getAdditionalRenderState().setWireframe(true);
        geometry.setMaterial(material);
        return geometry;
    }

    private void setGeometryData() {
        int i10;
        setMode(Mesh.Mode.Lines);
        FloatBuffer createVector3Buffer = BufferUtils.createVector3Buffer((this.radialSamples + 1) * 3);
        FloatBuffer createVector3Buffer2 = BufferUtils.createVector3Buffer((this.radialSamples + 1) * 4);
        setBuffer(VertexBuffer.Type.Position, 3, createVector3Buffer);
        setBuffer(VertexBuffer.Type.Color, 4, createVector3Buffer2);
        int i11 = this.radialSamples;
        float f10 = 1.0f / i11;
        float[] fArr = new float[i11 + 1];
        float[] fArr2 = new float[i11 + 1];
        int i12 = 0;
        while (true) {
            i10 = this.radialSamples;
            if (i12 >= i10) {
                break;
            }
            float f11 = 6.2831855f * f10 * i12;
            fArr2[i12] = FastMath.cos(f11);
            fArr[i12] = FastMath.sin(f11);
            i12++;
        }
        fArr[i10] = fArr[0];
        fArr2[i10] = fArr2[0];
        for (int i13 = 0; i13 <= this.radialSamples; i13++) {
            createVector3Buffer.put(fArr2[i13]).put(fArr[i13]).put(0.0f);
            ColorRGBA colorRGBA = ColorRGBA.Blue;
            createVector3Buffer2.put(colorRGBA.f81598r).put(colorRGBA.f81597g).put(colorRGBA.f81596b).put(colorRGBA.f81595a);
        }
        for (int i14 = 0; i14 <= this.radialSamples; i14++) {
            createVector3Buffer.put(fArr2[i14]).put(0.0f).put(fArr[i14]);
            ColorRGBA colorRGBA2 = ColorRGBA.Green;
            createVector3Buffer2.put(colorRGBA2.f81598r).put(colorRGBA2.f81597g).put(colorRGBA2.f81596b).put(colorRGBA2.f81595a);
        }
        for (int i15 = 0; i15 <= this.radialSamples; i15++) {
            createVector3Buffer.put(0.0f).put(fArr2[i15]).put(fArr[i15]);
            ColorRGBA colorRGBA3 = ColorRGBA.Yellow;
            createVector3Buffer2.put(colorRGBA3.f81598r).put(colorRGBA3.f81597g).put(colorRGBA3.f81596b).put(colorRGBA3.f81595a);
        }
        updateBound();
        setStatic();
    }

    private void setIndexData() {
        int i10 = this.radialSamples;
        int i11 = i10 * 3;
        ShortBuffer createShortBuffer = BufferUtils.createShortBuffer(i10 * 6);
        setBuffer(VertexBuffer.Type.Index, 2, createShortBuffer);
        int i12 = 0;
        int i13 = 0;
        while (i12 < i11) {
            createShortBuffer.put((short) i13);
            int i14 = i13 + 1;
            createShortBuffer.put((short) i14);
            i12++;
            int i15 = this.radialSamples;
            i13 = (i12 == i15 || i12 == i15 * 2) ? i13 + 2 : i14;
        }
    }
}
