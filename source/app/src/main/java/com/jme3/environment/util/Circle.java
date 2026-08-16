package com.jme3.environment.util;

import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.asset.AssetManager;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.material.Material;
import com.jme3.material.RenderState;
import com.jme3.math.ColorRGBA;
import com.jme3.math.FastMath;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

public class Circle extends Mesh {
    protected int radialSamples = 256;

    public Circle() {
        setGeometryData();
        setIndexData();
    }

    public static Geometry createShape(AssetManager assetManager, String str) {
        Geometry geometry = new Geometry(str, new Circle());
        geometry.setQueueBucket(RenderQueue.Bucket.Transparent);
        Material material = new Material(assetManager, "Common/MatDefs/Misc/Dashed.j3md");
        material.getAdditionalRenderState().setWireframe(true);
        material.getAdditionalRenderState().setBlendMode(RenderState.BlendMode.Alpha);
        material.getAdditionalRenderState().setDepthWrite(false);
        material.getAdditionalRenderState().setDepthTest(false);
        material.getAdditionalRenderState().setLineWidth(2.0f);
        material.setColor(SerializableShaderEntry.f81153g, ColorRGBA.Orange);
        material.setFloat("DashSize", 0.5f);
        geometry.setMaterial(material);
        return geometry;
    }

    private void setGeometryData() {
        int i10 = this.radialSamples + 1;
        FloatBuffer createVector3Buffer = BufferUtils.createVector3Buffer(i10);
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(i10 * 4);
        FloatBuffer createVector2Buffer = BufferUtils.createVector2Buffer(i10);
        float f10 = 6.2831855f / this.radialSamples;
        ColorRGBA colorRGBA = ColorRGBA.Orange;
        for (int i11 = 0; i11 < i10; i11++) {
            float f11 = i11;
            float f12 = f10 * f11;
            createVector3Buffer.put(FastMath.cos(f12)).put(FastMath.sin(f12)).put(0.0f);
            createFloatBuffer.put(colorRGBA.f81598r).put(colorRGBA.f81597g).put(colorRGBA.f81596b).put(colorRGBA.f81595a);
            float f13 = f11 % 2.0f;
            createVector2Buffer.put(f13).put(f13);
        }
        setBuffer(VertexBuffer.Type.Position, 3, createVector3Buffer);
        setBuffer(VertexBuffer.Type.Color, 4, createFloatBuffer);
        setBuffer(VertexBuffer.Type.TexCoord, 2, createVector2Buffer);
        setMode(Mesh.Mode.Lines);
        updateBound();
        setStatic();
    }

    private void setIndexData() {
        ShortBuffer createShortBuffer = BufferUtils.createShortBuffer(this.radialSamples * 2);
        setBuffer(VertexBuffer.Type.Index, 2, createShortBuffer);
        int i10 = 0;
        while (i10 < this.radialSamples) {
            createShortBuffer.put((short) i10);
            i10++;
            createShortBuffer.put((short) i10);
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        this.radialSamples = jmeImporter.getCapsule(this).readInt("radialSamples", 256);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.radialSamples, "radialSamples", 256);
    }
}
