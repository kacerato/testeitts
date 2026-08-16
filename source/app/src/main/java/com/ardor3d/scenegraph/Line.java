package com.ardor3d.scenegraph;

import com.ardor3d.math.MathUtils;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.math.type.ReadOnlyVector2;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.renderer.IndexMode;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.geom.BufferUtils;
import java.io.IOException;
import java.nio.FloatBuffer;

public class Line extends Mesh {
    private static final long serialVersionUID = 1;
    private boolean _antialiased;
    private float _lineWidth;
    private int _stippleFactor;
    private short _stipplePattern;

    public Line() {
        this("line");
    }

    private void setupData(FloatBuffer floatBuffer, FloatBuffer floatBuffer2, FloatBuffer floatBuffer3, FloatBufferData floatBufferData) {
        this._meshData.setVertexBuffer(floatBuffer);
        this._meshData.setNormalBuffer(floatBuffer2);
        this._meshData.setColorBuffer(floatBuffer3);
        this._meshData.setTextureCoords(floatBufferData, 0);
        this._meshData.setIndices(null);
    }

    public void appendCircle(double d10, double d11, double d12, int i10, boolean z10) {
        double d13;
        float f10;
        double d14 = d10;
        int i11 = i10 * 6;
        FloatBuffer ensureLargeEnough = BufferUtils.ensureLargeEnough(this._meshData.getVertexBuffer(), i11);
        this._meshData.setVertexBuffer(ensureLargeEnough);
        FloatBuffer ensureLargeEnough2 = BufferUtils.ensureLargeEnough(this._meshData.getNormalBuffer(), i11);
        this._meshData.setNormalBuffer(ensureLargeEnough2);
        double d15 = 6.283185307179586d / i10;
        double d16 = 0.0d;
        int i12 = 0;
        while (i12 < i10) {
            double cos = MathUtils.cos(z10 ? -d16 : d16) * d14;
            double sin = MathUtils.sin(z10 ? -d16 : d16) * d14;
            if (i12 > 0) {
                ensureLargeEnough.put((float) (cos + d11)).put((float) (sin + d12)).put(0.0f);
                d13 = cos;
                f10 = 0.0f;
                ensureLargeEnough2.put((float) d13).put((float) sin).put(0.0f);
            } else {
                d13 = cos;
                f10 = 0.0f;
            }
            double d17 = d15;
            ensureLargeEnough.put((float) (d13 + d11)).put((float) (sin + d12)).put(f10);
            ensureLargeEnough2.put((float) d13).put((float) sin).put(f10);
            d16 += d17;
            i12++;
            d14 = d10;
            d15 = d17;
        }
        double d18 = d14;
        ensureLargeEnough.put((float) (d18 + d11)).put((float) d12).put(0.0f);
        ensureLargeEnough2.put((float) d18).put(0.0f).put(0.0f);
    }

    public float getLineWidth() {
        return this._lineWidth;
    }

    public int getStippleFactor() {
        return this._stippleFactor;
    }

    public short getStipplePattern() {
        return this._stipplePattern;
    }

    public boolean isAntialiased() {
        return this._antialiased;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._lineWidth = inputCapsule.readFloat("lineWidth", 1.0f);
        this._stipplePattern = inputCapsule.readShort("stipplePattern", (short) -1);
        this._antialiased = inputCapsule.readBoolean("antialiased", false);
    }

    @Override
    public void render(Renderer renderer) {
        renderer.setupLineParameters(getLineWidth(), getStippleFactor(), getStipplePattern(), isAntialiased());
        super.render(renderer);
    }

    public void setAntialiased(boolean z10) {
        this._antialiased = z10;
    }

    public void setLineWidth(float f10) {
        this._lineWidth = f10;
    }

    public void setStippleFactor(int i10) {
        this._stippleFactor = i10;
    }

    public void setStipplePattern(short s10) {
        this._stipplePattern = s10;
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._lineWidth, "lineWidth", 1.0f);
        outputCapsule.write(this._stipplePattern, "stipplePattern", (short) -1);
        outputCapsule.write(this._antialiased, "antialiased", false);
    }

    public Line(String str) {
        super(str);
        this._lineWidth = 1.0f;
        this._stipplePattern = (short) -1;
        this._stippleFactor = 1;
        this._antialiased = false;
        this._meshData.setIndexMode(IndexMode.Lines);
    }

    public Line(String str, FloatBuffer floatBuffer, FloatBuffer floatBuffer2, FloatBuffer floatBuffer3, FloatBufferData floatBufferData) {
        super(str);
        this._lineWidth = 1.0f;
        this._stipplePattern = (short) -1;
        this._stippleFactor = 1;
        this._antialiased = false;
        setupData(floatBuffer, floatBuffer2, floatBuffer3, floatBufferData);
        this._meshData.setIndexMode(IndexMode.Lines);
    }

    public Line(String str, ReadOnlyVector3[] readOnlyVector3Arr, ReadOnlyVector3[] readOnlyVector3Arr2, ReadOnlyColorRGBA[] readOnlyColorRGBAArr, ReadOnlyVector2[] readOnlyVector2Arr) {
        super(str);
        this._lineWidth = 1.0f;
        this._stipplePattern = (short) -1;
        this._stippleFactor = 1;
        this._antialiased = false;
        setupData(BufferUtils.createFloatBuffer(readOnlyVector3Arr), BufferUtils.createFloatBuffer(readOnlyVector3Arr2), BufferUtils.createFloatBuffer(readOnlyColorRGBAArr), FloatBufferDataUtil.makeNew(readOnlyVector2Arr));
        this._meshData.setIndexMode(IndexMode.Lines);
    }
}
