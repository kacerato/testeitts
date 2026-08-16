package com.ardor3d.scenegraph.shape;

import com.ardor3d.math.MathUtils;
import com.ardor3d.math.Vector2;
import com.ardor3d.math.Vector3;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.geom.BufferUtils;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import java.io.IOException;

public class Disk extends Mesh {
    private static final long serialVersionUID = 1;
    private int _radialSamples;
    private double _radius;
    private int _shellSamples;

    public Disk() {
    }

    private void setGeometryData(int i10) {
        this._meshData.getVertexBuffer().put(0.0f).put(0.0f).put(0.0f);
        boolean z10 = false;
        for (int i11 = 0; i11 < this._meshData.getVertexCount(); i11++) {
            this._meshData.getNormalBuffer().put(0.0f).put(0.0f).put(1.0f);
        }
        this._meshData.getTextureCoords(0).getBuffer().put(0.5f).put(0.5f);
        double d10 = 1.0d;
        double d11 = 1.0d / i10;
        double d12 = 1.0d / this._radialSamples;
        Vector3 vector3 = new Vector3();
        Vector2 vector2 = new Vector2();
        int i12 = 0;
        while (i12 < this._radialSamples) {
            double d13 = 6.283185307179586d * d12 * i12;
            Vector3 vector32 = new Vector3(MathUtils.cos(d13), MathUtils.sin(d13), 0.0d);
            int i13 = 1;
            while (i13 < this._shellSamples) {
                vector3.set(vector32).multiplyLocal(i13 * d11);
                int i14 = (i10 * i12) + i13;
                vector2.setX((vector3.getX() + d10) * 0.5d);
                vector2.setY((vector3.getY() + d10) * 0.5d);
                BufferUtils.setInBuffer(vector2, this._meshData.getTextureCoords(0).getBuffer(), i14);
                vector3.multiplyLocal(this._radius);
                BufferUtils.setInBuffer(vector3, this._meshData.getVertexBuffer(), i14);
                i13++;
                z10 = false;
                d10 = 1.0d;
            }
            i12++;
            d10 = 1.0d;
        }
    }

    private void setIndexData(int i10, int i11) {
        int i12 = i10;
        for (int i13 = 0; i13 < this._radialSamples; i13++) {
            this._meshData.getIndices().put2(0);
            int i14 = i12 * i11;
            this._meshData.getIndices().put2(i14 + 1);
            int i15 = i11 * i13;
            this._meshData.getIndices().put2(i15 + 1);
            for (int i16 = 1; i16 < i11; i16++) {
                int i17 = i16 + i14;
                int i18 = i16 + i15;
                int i19 = i18 + 1;
                this._meshData.getIndices().put2(i17);
                this._meshData.getIndices().put2(i17 + 1);
                this._meshData.getIndices().put2(i19);
                this._meshData.getIndices().put2(i17);
                this._meshData.getIndices().put2(i19);
                this._meshData.getIndices().put2(i18);
            }
            i12 = i13;
        }
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._shellSamples = inputCapsule.readInt("shellSamples", 0);
        this._radialSamples = inputCapsule.readInt("radialSamples", 0);
        this._radius = inputCapsule.readDouble(TestVFXEffect.f77524P, 0.0d);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._shellSamples, "shellSamples", 0);
        outputCapsule.write(this._radialSamples, "radialSamples", 0);
        outputCapsule.write(this._radius, TestVFXEffect.f77524P, 0.0d);
    }

    public Disk(String str, int i10, int i11, double d10) {
        super(str);
        this._shellSamples = i10;
        this._radialSamples = i11;
        this._radius = d10;
        int i12 = i10 - 1;
        int i13 = i11 * i12;
        int i14 = i13 + 1;
        this._meshData.setVertexBuffer(BufferUtils.createVector3Buffer(i14));
        this._meshData.setNormalBuffer(BufferUtils.createVector3Buffer(i14));
        this._meshData.setTextureBuffer(BufferUtils.createVector2Buffer(i14), 0);
        this._meshData.setIndices(BufferUtils.createIndexBufferData(i11 * ((i12 * 2) - 1) * 3, i13));
        setGeometryData(i12);
        setIndexData(i11 - 1, i12);
    }
}
