package com.ardor3d.scenegraph;

import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.math.type.ReadOnlyVector2;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.renderer.IndexMode;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.geom.BufferUtils;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.nio.FloatBuffer;

public class Point extends Mesh {
    private static final long serialVersionUID = 2;
    private boolean _antialiased;
    private final FloatBuffer _attenuationCoefficients;
    private float _maxPointSize;
    private float _minPointSize;
    private float _pointSize;
    private PointType _pointType;
    private boolean _useDistanceAttenuation;

    public enum PointType {
        Point,
        PointSprite
    }

    public Point() {
        this("point", (FloatBuffer) null, (FloatBuffer) null, (FloatBuffer) null, (FloatBufferData) null);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
    }

    private void setupData(FloatBuffer floatBuffer, FloatBuffer floatBuffer2, FloatBuffer floatBuffer3, FloatBufferData floatBufferData) {
        this._meshData.setVertexBuffer(floatBuffer);
        this._meshData.setNormalBuffer(floatBuffer2);
        this._meshData.setColorBuffer(floatBuffer3);
        this._meshData.setTextureCoords(floatBufferData, 0);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
    }

    public void enableDistanceAttenuation(boolean z10) {
        this._useDistanceAttenuation = z10;
    }

    public float getMaxPointSize() {
        return this._maxPointSize;
    }

    public float getMinPointSize() {
        return this._minPointSize;
    }

    public float getPointSize() {
        return this._pointSize;
    }

    public PointType getPointType() {
        return this._pointType;
    }

    public boolean isAntialiased() {
        return this._antialiased;
    }

    public boolean isPointSprite() {
        return this._pointType == PointType.PointSprite;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._pointSize = inputCapsule.readFloat("pointSize", 1.0f);
        this._antialiased = inputCapsule.readBoolean("antialiased", false);
        this._pointType = (PointType) inputCapsule.readEnum("pointType", PointType.class, PointType.Point);
        this._useDistanceAttenuation = inputCapsule.readBoolean("useDistanceAttenuation", false);
        FloatBuffer readFloatBuffer = inputCapsule.readFloatBuffer("attenuationCoefficients", null);
        if (readFloatBuffer == null) {
            this._attenuationCoefficients.clear();
            this._attenuationCoefficients.put(new float[]{0.0f, 0.0f, 4.0E-6f, 0.0f});
        } else {
            this._attenuationCoefficients.clear();
            this._attenuationCoefficients.put(readFloatBuffer);
        }
        this._minPointSize = inputCapsule.readFloat("minPointSize", 1.0f);
        this._maxPointSize = inputCapsule.readFloat("maxPointSize", 64.0f);
    }

    @Override
    public void render(Renderer renderer) {
        renderer.setupPointParameters(this._pointSize, isAntialiased(), isPointSprite(), this._useDistanceAttenuation, this._attenuationCoefficients, this._minPointSize, this._maxPointSize);
        super.render(renderer);
    }

    public void setAntialiased(boolean z10) {
        this._antialiased = z10;
    }

    public void setDistanceAttenuationCoefficients(float f10, float f11, float f12) {
        this._attenuationCoefficients.put(0, f10);
        this._attenuationCoefficients.put(1, f11);
        this._attenuationCoefficients.put(2, f12);
    }

    public void setMaxPointSize(float f10) {
        this._maxPointSize = f10;
    }

    public void setMinPointSize(float f10) {
        this._minPointSize = f10;
    }

    public void setPointSize(float f10) {
        this._pointSize = f10;
    }

    public void setPointType(PointType pointType) {
        this._pointType = pointType;
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._pointSize, "pointSize", 1.0f);
        outputCapsule.write(this._antialiased, "antialiased", false);
        outputCapsule.write(this._pointType, "pointType", PointType.Point);
        outputCapsule.write(this._useDistanceAttenuation, "useDistanceAttenuation", false);
        outputCapsule.write(this._attenuationCoefficients, "attenuationCoefficients", (FloatBuffer) null);
        outputCapsule.write(this._minPointSize, "minPointSize", 1.0f);
        outputCapsule.write(this._maxPointSize, "maxPointSize", 64.0f);
    }

    public Point(PointType pointType) {
        this();
        this._pointType = pointType;
    }

    public Point(String str, ReadOnlyVector3[] readOnlyVector3Arr, ReadOnlyVector3[] readOnlyVector3Arr2, ReadOnlyColorRGBA[] readOnlyColorRGBAArr, ReadOnlyVector2[] readOnlyVector2Arr) {
        super(str);
        this._pointSize = 1.0f;
        this._antialiased = false;
        this._attenuationCoefficients = BufferUtils.createFloatBuffer(0.0f, 0.0f, 4.0E-6f, 0.0f);
        this._minPointSize = 1.0f;
        this._maxPointSize = 64.0f;
        this._useDistanceAttenuation = false;
        setupData(BufferUtils.createFloatBuffer(readOnlyVector3Arr), BufferUtils.createFloatBuffer(readOnlyVector3Arr2), BufferUtils.createFloatBuffer(readOnlyColorRGBAArr), FloatBufferDataUtil.makeNew(readOnlyVector2Arr));
        this._meshData.setIndexMode(IndexMode.Points);
    }

    public Point(String str, FloatBuffer floatBuffer, FloatBuffer floatBuffer2, FloatBuffer floatBuffer3, FloatBufferData floatBufferData) {
        super(str);
        this._pointSize = 1.0f;
        this._antialiased = false;
        this._attenuationCoefficients = BufferUtils.createFloatBuffer(0.0f, 0.0f, 4.0E-6f, 0.0f);
        this._minPointSize = 1.0f;
        this._maxPointSize = 64.0f;
        this._useDistanceAttenuation = false;
        setupData(floatBuffer, floatBuffer2, floatBuffer3, floatBufferData);
        this._meshData.setIndexMode(IndexMode.Points);
    }
}
