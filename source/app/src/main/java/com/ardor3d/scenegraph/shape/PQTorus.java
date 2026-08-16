package com.ardor3d.scenegraph.shape;

import com.ardor3d.math.MathUtils;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.scenegraph.IndexBufferData;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.geom.BufferUtils;
import com.itsmagic.engine.Engines.Engine.Animation.a;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import java.io.IOException;

public class PQTorus extends Mesh {
    private static final long serialVersionUID = 1;
    private double _p;
    private double _q;
    private int _radialSamples;
    private double _radius;
    private int _steps;
    private double _width;

    public PQTorus() {
    }

    private void setGeometryData() {
        PQTorus pQTorus = this;
        int i10 = pQTorus._steps;
        double d10 = 6.283185307179586d / i10;
        int i11 = pQTorus._radialSamples;
        double d11 = 6.283185307179586d / i11;
        ReadOnlyVector3[] readOnlyVector3Arr = new Vector3[i10];
        int i12 = i11 * i10;
        pQTorus._meshData.setVertexBuffer(BufferUtils.createVector3Buffer(i12));
        pQTorus._meshData.setNormalBuffer(BufferUtils.createVector3Buffer(i12));
        pQTorus._meshData.setTextureBuffer(BufferUtils.createVector2Buffer(i12), 0);
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance2 = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance3 = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance4 = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance5 = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance6 = Vector3.fetchTempInstance();
        int i13 = 0;
        double d12 = 0.0d;
        ReadOnlyVector3 readOnlyVector3 = fetchTempInstance;
        while (true) {
            int i14 = pQTorus._steps;
            if (i13 >= i14) {
                Vector3.releaseTempInstance(fetchTempInstance5);
                Vector3.releaseTempInstance(fetchTempInstance6);
                Vector3.releaseTempInstance(fetchTempInstance2);
                Vector3.releaseTempInstance(fetchTempInstance3);
                Vector3.releaseTempInstance(fetchTempInstance4);
                Vector3.releaseTempInstance(readOnlyVector3);
                return;
            }
            d12 += d10;
            double d13 = d10;
            double d14 = i13 / i14;
            Vector3 vector3 = fetchTempInstance5;
            double sin = (MathUtils.sin(pQTorus._q * d12) + 2.0d) * 0.5d * pQTorus._radius;
            Vector3 vector32 = fetchTempInstance6;
            Vector3 vector33 = fetchTempInstance3;
            readOnlyVector3Arr[i13] = new Vector3(MathUtils.cos(pQTorus._p * d12) * sin * pQTorus._radius, MathUtils.sin(pQTorus._p * d12) * sin * pQTorus._radius, sin * MathUtils.cos(pQTorus._q * d12) * pQTorus._radius);
            double d15 = d12 + 0.01d;
            double sin2 = (MathUtils.sin(pQTorus._q * d15) + 2.0d) * 0.5d * pQTorus._radius;
            double cos = pQTorus._radius * MathUtils.cos(pQTorus._p * d15) * sin2;
            double d16 = d11;
            double sin3 = pQTorus._radius * MathUtils.sin(pQTorus._p * d15) * sin2;
            double cos2 = sin2 * MathUtils.cos(pQTorus._q * d15) * pQTorus._radius;
            int i15 = i13;
            Vector3 vector34 = fetchTempInstance4;
            readOnlyVector3.set(cos, sin3, cos2);
            readOnlyVector3.subtract(readOnlyVector3Arr[i15], fetchTempInstance2);
            readOnlyVector3Arr[i15].add(readOnlyVector3, vector33);
            fetchTempInstance2.cross(vector33, vector34);
            vector34.cross(fetchTempInstance2, vector33);
            vector33.normalizeLocal();
            vector34.normalizeLocal();
            double d17 = 0.0d;
            int i16 = 0;
            Vector3 vector35 = readOnlyVector3;
            while (i16 < pQTorus._radialSamples) {
                double d18 = d17 + d16;
                double cos3 = MathUtils.cos(d18) * pQTorus._width;
                double sin4 = MathUtils.sin(d18) * pQTorus._width;
                double d19 = i16 / pQTorus._radialSamples;
                vector3.setX((vector33.getX() * cos3) + (vector34.getX() * sin4));
                vector3.setY((vector33.getY() * cos3) + (vector34.getY() * sin4));
                vector3.setZ((cos3 * vector33.getZ()) + (sin4 * vector34.getZ()));
                vector3.normalize(vector32);
                vector3.addLocal(readOnlyVector3Arr[i15]);
                pQTorus = this;
                pQTorus._meshData.getVertexBuffer().put(vector3.getXf()).put(vector3.getYf()).put(vector3.getZf());
                pQTorus._meshData.getNormalBuffer().put(vector32.getXf()).put(vector32.getYf()).put(vector32.getZf());
                pQTorus._meshData.getTextureCoords(0).getBuffer().put((float) d19).put((float) d14);
                i16++;
                d17 = d18;
                vector35 = vector35;
            }
            i13 = i15 + 1;
            fetchTempInstance6 = vector32;
            fetchTempInstance3 = vector33;
            fetchTempInstance4 = vector34;
            d11 = d16;
            fetchTempInstance5 = vector3;
            d10 = d13;
            readOnlyVector3 = vector35;
        }
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [java.nio.Buffer] */
    private void setIndexData() {
        IndexBufferData<?> createIndexBufferData = BufferUtils.createIndexBufferData(this._meshData.getVertexCount() * 6, this._meshData.getVertexCount() - 1);
        int i10 = this._radialSamples;
        while (i10 < this._meshData.getVertexCount() + this._radialSamples) {
            createIndexBufferData.put2(i10);
            createIndexBufferData.put2(i10 - this._radialSamples);
            int i11 = i10 + 1;
            createIndexBufferData.put2(i11);
            createIndexBufferData.put2(i11);
            createIndexBufferData.put2(i10 - this._radialSamples);
            createIndexBufferData.put2((i10 - this._radialSamples) + 1);
            i10 = i11;
        }
        int bufferCapacity = createIndexBufferData.getBufferCapacity();
        for (int i12 = 0; i12 < bufferCapacity; i12++) {
            int i13 = createIndexBufferData.get(i12);
            if (i13 < 0) {
                i13 += this._meshData.getVertexCount();
                createIndexBufferData.put2(i12, i13);
            }
            if (i13 >= this._meshData.getVertexCount()) {
                createIndexBufferData.put2(i12, i13 - this._meshData.getVertexCount());
            }
        }
        createIndexBufferData.getBuffer().rewind();
        this._meshData.setIndices(createIndexBufferData);
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._p = inputCapsule.readDouble(a.f72594b, 0.0d);
        this._q = inputCapsule.readDouble("q", 0.0d);
        this._radius = inputCapsule.readDouble(TestVFXEffect.f77524P, 0.0d);
        this._width = inputCapsule.readDouble("width", 0.0d);
        this._steps = inputCapsule.readInt("steps", 0);
        this._radialSamples = inputCapsule.readInt("radialSamples", 0);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._p, a.f72594b, 0.0d);
        outputCapsule.write(this._q, "q", 0.0d);
        outputCapsule.write(this._radius, TestVFXEffect.f77524P, 0.0d);
        outputCapsule.write(this._width, "width", 0.0d);
        outputCapsule.write(this._steps, "steps", 0);
        outputCapsule.write(this._radialSamples, "radialSamples", 0);
    }

    public PQTorus(String str, double d10, double d11, double d12, double d13, int i10, int i11) {
        super(str);
        this._p = d10;
        this._q = d11;
        this._radius = d12;
        this._width = d13;
        this._steps = i10;
        this._radialSamples = i11;
        setGeometryData();
        setIndexData();
    }
}
