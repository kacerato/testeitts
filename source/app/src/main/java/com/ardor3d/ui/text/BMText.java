package com.ardor3d.ui.text;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.Matrix3;
import com.ardor3d.math.Vector2;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.math.type.ReadOnlyVector2;
import com.ardor3d.renderer.Camera;
import com.ardor3d.renderer.IndexMode;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.hint.CullHint;
import com.ardor3d.scenegraph.hint.LightCombineMode;
import com.ardor3d.scenegraph.hint.TextureCombineMode;
import com.ardor3d.ui.text.BMFont;
import com.ardor3d.util.geom.BufferUtils;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public class BMText extends Mesh {
    protected Align _align;
    protected final Vector2 _alignOffset;
    protected AutoFade _autoFade;
    protected boolean _autoRotate;
    protected AutoScale _autoScale;
    protected final Vector2 _distanceAlphaRange;
    protected final Vector2 _fixedOffset;
    protected int _fixedPixelAlphaThresh;
    protected BMFont _font;
    protected double _fontScale;
    protected IntBuffer _indexBuffer;
    protected Justify _justify;
    protected final Vector3 _left;
    protected float[] _lineWidths;
    protected int _lines;
    protected final Vector3 _look;
    protected final Matrix3 _rot;
    protected float _screenSizeAlphaFalloff;
    protected final Vector2 _size;
    protected int _spacing;
    private final int _tabSize;
    protected ColorRGBA _tempClr;
    protected FloatBuffer _texCrdBuffer;
    protected ColorRGBA _textClr;
    protected String _textString;
    protected boolean _useBlend;
    protected FloatBuffer _vertexBuffer;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$ui$text$BMText$AutoFade;
        static final int[] $SwitchMap$com$ardor3d$ui$text$BMText$Justify;

        static {
            int[] iArr = new int[Justify.values().length];
            $SwitchMap$com$ardor3d$ui$text$BMText$Justify = iArr;
            try {
                iArr[Justify.Left.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$ui$text$BMText$Justify[Justify.Center.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$ui$text$BMText$Justify[Justify.Right.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[AutoFade.values().length];
            $SwitchMap$com$ardor3d$ui$text$BMText$AutoFade = iArr2;
            try {
                iArr2[AutoFade.Off.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$ardor3d$ui$text$BMText$AutoFade[AutoFade.DistanceRange.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$ardor3d$ui$text$BMText$AutoFade[AutoFade.FixedPixelSize.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$ardor3d$ui$text$BMText$AutoFade[AutoFade.CapScreenSize.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public enum Align {
        North(-0.5f, 0.0f),
        NorthWest(0.0f, 0.0f),
        NorthEast(-1.0f, 0.0f),
        Center(-0.5f, -0.5f),
        West(0.0f, -0.5f),
        East(-1.0f, -0.5f),
        South(-0.5f, -1.0f),
        SouthWest(0.0f, -1.0f),
        SouthEast(-1.0f, -1.0f);

        public final float horizontal;
        public final float vertical;

        Align(float f10, float f11) {
            this.horizontal = f10;
            this.vertical = f11;
        }
    }

    public enum AutoFade {
        Off,
        DistanceRange,
        FixedPixelSize,
        CapScreenSize
    }

    public enum AutoScale {
        Off,
        FixedScreenSize,
        CapScreenSize
    }

    public enum Justify {
        Left,
        Center,
        Right
    }

    public BMText(String str, String str2, BMFont bMFont) {
        this(str, str2, bMFont, Align.SouthWest);
    }

    private void addEmptyCharacter(FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        floatBuffer.put(0.0f).put(0.0f).put(0.0f);
        floatBuffer.put(0.0f).put(0.0f).put(0.0f);
        floatBuffer.put(0.0f).put(0.0f).put(0.0f);
        floatBuffer.put(0.0f).put(0.0f).put(0.0f);
        floatBuffer.put(0.0f).put(0.0f).put(0.0f);
        floatBuffer.put(0.0f).put(0.0f).put(0.0f);
        floatBuffer2.put(0.0f).put(0.0f);
        floatBuffer2.put(0.0f).put(0.0f);
        floatBuffer2.put(0.0f).put(0.0f);
        floatBuffer2.put(0.0f).put(0.0f);
        floatBuffer2.put(0.0f).put(0.0f);
        floatBuffer2.put(0.0f).put(0.0f);
    }

    public void addToLineSizes(float f10, int i10) {
        float[] fArr = this._lineWidths;
        if (i10 >= fArr.length) {
            float[] fArr2 = new float[fArr.length * 2];
            System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
            this._lineWidths = fArr2;
        }
        this._lineWidths[i10] = f10;
    }

    public void calculateAlignmentOffset() {
        this._alignOffset.set(0.0d, 0.0d);
        if (this._align != null) {
            this._alignOffset.setX(this._size.getX() * this._align.horizontal);
            this._alignOffset.setY(this._size.getY() * this._align.vertical);
        }
    }

    public void calculateSize(String str) {
        this._size.set(0.0d, 0.0d);
        float lineHeight = this._font.getLineHeight();
        this._lines = 0;
        this._lineWidths[0] = 0.0f;
        int length = this._textString.length();
        int i10 = 0;
        float f10 = 0.0f;
        float f11 = 0.0f;
        while (i10 < length) {
            char charAt = this._textString.charAt(i10);
            if (charAt == '\n') {
                addToLineSizes(f10, this._lines);
                this._lines++;
                double d10 = f10;
                if (d10 > this._size.getX()) {
                    this._size.setX(d10);
                }
                f11 = this._lines * lineHeight;
                f10 = 0.0f;
            } else if (charAt == '\t') {
                f10 = (((float) Math.floor(f10 / r6)) + 1.0f) * this._font.getMaxCharAdvance() * 4;
            } else {
                f10 += this._font.getChar(charAt).xadvance + this._font.getKerning(charAt, i10 < length + (-1) ? this._textString.charAt(i10 + 1) : (char) 0) + this._spacing;
            }
            i10++;
        }
        addToLineSizes(f10, this._lines);
        double d11 = f10;
        if (d11 > this._size.getX()) {
            this._size.setX(d11);
        }
        this._size.setY(f11 + lineHeight);
        this._lines++;
    }

    public void checkBuffers(String str) {
        int length = str.length();
        int i10 = length * 6;
        int i11 = ((i10 / 20) + 1) * 20;
        IntBuffer intBuffer = this._indexBuffer;
        if (intBuffer == null || intBuffer.capacity() < i11) {
            this._vertexBuffer = BufferUtils.createVector3Buffer(i11);
            this._texCrdBuffer = BufferUtils.createVector2Buffer(i11);
            this._indexBuffer = BufferUtils.createIntBuffer(i11);
        }
        this._vertexBuffer.limit(length * 18).rewind();
        this._texCrdBuffer.limit(length * 12).rewind();
        this._indexBuffer.limit(i10).rewind();
    }

    public void correctTransform(Camera camera) {
        updateWorldTransform(false);
        if (this._autoRotate) {
            this._look.set(camera.getDirection());
            this._left.set(camera.getLeft()).negateLocal();
            this._rot.fromAxes(this._left, this._look, camera.getUp());
            this._worldTransform.setRotation(this._rot);
        }
        this._worldTransform.setScale(this._localTransform.getScale());
    }

    public void distanceAlphaFade(ReadOnlyVector2 readOnlyVector2, double d10) {
        float x10 = d10 > readOnlyVector2.getY() ? 0.0f : d10 > readOnlyVector2.getX() ? 1.0f - (((float) (d10 - readOnlyVector2.getX())) / ((float) (readOnlyVector2.getY() - readOnlyVector2.getX()))) : 1.0f;
        this._tempClr.set(this._textClr);
        this._tempClr.setAlpha(this._textClr.getAlpha() * x10);
        setDefaultColor(this._tempClr);
    }

    @Override
    public synchronized void draw(Renderer renderer) {
        try {
            if (this._textString.length() > 0) {
                Camera currentCamera = Camera.getCurrentCamera();
                if (this._autoScale == AutoScale.Off) {
                    if (this._autoFade != AutoFade.Off) {
                    }
                    correctTransform(currentCamera);
                    updateWorldBound(false);
                    super.draw(renderer);
                }
                updateScaleAndAlpha(currentCamera, renderer);
                correctTransform(currentCamera);
                updateWorldBound(false);
                super.draw(renderer);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public Align getAlign() {
        return this._align;
    }

    public AutoFade getAutoFade() {
        return this._autoFade;
    }

    public int getAutoFadeFixedPixelSize() {
        return this._fixedPixelAlphaThresh;
    }

    public boolean getAutoRotate() {
        return this._autoRotate;
    }

    public AutoScale getAutoScale() {
        return this._autoScale;
    }

    public BMFont getFont() {
        return this._font;
    }

    public double getFontScale() {
        return this._fontScale;
    }

    public float getHeight() {
        return this._size.getYf() * this._worldTransform.getScale().getYf();
    }

    public float getJustificationXOffset(int i10) {
        int i11 = AnonymousClass1.$SwitchMap$com$ardor3d$ui$text$BMText$Justify[this._justify.ordinal()];
        if (i11 == 1) {
            return 0.0f;
        }
        if (i11 == 2) {
            return (this._size.getXf() - this._lineWidths[i10]) * 0.5f;
        }
        if (i11 != 3) {
            return 0.0f;
        }
        return this._size.getXf() - this._lineWidths[i10];
    }

    public Justify getJustify() {
        return this._justify;
    }

    public int getLineCount() {
        return this._lines;
    }

    public String getText() {
        return this._textString;
    }

    public boolean getUseBlend() {
        return this._useBlend;
    }

    public float getWidth() {
        return this._size.getXf() * this._worldTransform.getScale().getXf();
    }

    public void screenSizeCapAlphaFade(double d10, double d11, float f10) {
        if (d10 >= d11) {
            setDefaultColor(this._textClr);
            return;
        }
        float f11 = f10 - ((float) ((d11 - d10) / d10));
        float alpha = this._textClr.getAlpha() * (f11 >= 0.0f ? f11 / f10 : 0.0f);
        this._tempClr.set(this._textClr);
        this._tempClr.setAlpha(alpha);
        setDefaultColor(this._tempClr);
    }

    public void setAlign(Align align) {
        this._align = align;
        setText(this._textString);
    }

    public void setAutoFade(AutoFade autoFade) {
        this._autoFade = autoFade;
    }

    public void setAutoFadeDistanceRange(double d10, double d11) {
        this._distanceAlphaRange.set(d10, d11);
    }

    public void setAutoFadeFalloff(float f10) {
        this._screenSizeAlphaFalloff = f10;
    }

    public void setAutoFadeFixedPixelSize(int i10) {
        this._fixedPixelAlphaThresh = i10;
    }

    public void setAutoRotate(boolean z10) {
        this._autoRotate = z10;
    }

    public void setAutoScale(AutoScale autoScale) {
        this._autoScale = autoScale;
        setFontScale(this._fontScale);
    }

    public void setFixedOffset(double d10, double d11) {
        this._fixedOffset.set(d10 * this._font.getSize(), d11 * this._font.getSize());
    }

    public void setFont(BMFont bMFont) {
        this._font = bMFont;
        bMFont.applyRenderStatesTo(this, this._useBlend);
        setFontScale(this._fontScale);
        setText(this._textString);
    }

    public void setFontScale(double d10) {
        this._fontScale = d10;
        if (this._autoScale == AutoScale.Off) {
            double size = (1.0d / this._font.getSize()) * this._fontScale;
            setScale(size, size, -size);
        }
    }

    public void setJustify(Justify justify) {
        this._justify = justify;
        setText(this._textString);
    }

    public synchronized void setText(String str) {
        float f10;
        float f11;
        float f12;
        int i10;
        int i11;
        try {
            if (str == null) {
                this._textString = "";
            } else {
                this._textString = str;
            }
            checkBuffers(this._textString);
            calculateSize(this._textString);
            calculateAlignmentOffset();
            FloatBuffer floatBuffer = this._vertexBuffer;
            FloatBuffer floatBuffer2 = this._texCrdBuffer;
            float textureWidth = this._font.getTextureWidth();
            float textureHeight = this._font.getTextureHeight();
            float justificationXOffset = getJustificationXOffset(0);
            float lineHeight = this._font.getLineHeight();
            float xf2 = this._size.getXf() * this._align.horizontal;
            float yf2 = this._size.getYf() * this._align.vertical;
            float x10 = (float) (xf2 + this._fixedOffset.getX());
            float y10 = (float) (yf2 + this._fixedOffset.getY());
            int length = this._textString.length();
            int i12 = 0;
            int i13 = 0;
            float f13 = 0.0f;
            while (i12 < length) {
                char charAt = this._textString.charAt(i12);
                if (charAt == '\n') {
                    int i14 = i13 + 1;
                    float justificationXOffset2 = getJustificationXOffset(i14);
                    f13 += lineHeight;
                    addEmptyCharacter(floatBuffer, floatBuffer2);
                    justificationXOffset = justificationXOffset2;
                    f10 = lineHeight;
                    f11 = x10;
                    f12 = y10;
                    i11 = i12;
                    i10 = i14;
                } else if (charAt == '\t') {
                    justificationXOffset = (((float) Math.floor(justificationXOffset / r5)) + 1.0f) * this._font.getMaxCharAdvance() * 4;
                    addEmptyCharacter(floatBuffer, floatBuffer2);
                    f10 = lineHeight;
                    f11 = x10;
                    f12 = y10;
                    i10 = i13;
                    i11 = i12;
                } else {
                    int i15 = i12;
                    BMFont.Char r52 = this._font.getChar(charAt);
                    float f14 = x10 + justificationXOffset;
                    int i16 = r52.xoffset;
                    f10 = lineHeight;
                    float f15 = i16 + f14;
                    float f16 = y10 + f13;
                    f11 = x10;
                    int i17 = r52.yoffset;
                    f12 = y10;
                    float f17 = f16 + i17;
                    float f18 = f14 + i16 + r52.width;
                    float f19 = f16 + i17 + r52.height;
                    i10 = i13;
                    floatBuffer.put(f15).put(0.0f).put(f17);
                    floatBuffer.put(f15).put(0.0f).put(f19);
                    floatBuffer.put(f18).put(0.0f).put(f17);
                    floatBuffer.put(f18).put(0.0f).put(f17);
                    floatBuffer.put(f15).put(0.0f).put(f19);
                    floatBuffer.put(f18).put(0.0f).put(f19);
                    float f20 = r52.f58739x / textureWidth;
                    float f21 = r52.f58740y / textureHeight;
                    float f22 = (r7 + r52.width) / textureWidth;
                    float f23 = (r9 + r52.height) / textureHeight;
                    floatBuffer2.put(f20).put(f21);
                    floatBuffer2.put(f20).put(f23);
                    floatBuffer2.put(f22).put(f21);
                    floatBuffer2.put(f22).put(f21);
                    floatBuffer2.put(f20).put(f23);
                    floatBuffer2.put(f22).put(f23);
                    i11 = i15;
                    justificationXOffset += r52.xadvance + this._font.getKerning(charAt, i11 < length + (-1) ? this._textString.charAt(i11 + 1) : (char) 0) + this._spacing;
                    i12 = i11 + 1;
                    lineHeight = f10;
                    i13 = i10;
                    x10 = f11;
                    y10 = f12;
                }
                i12 = i11 + 1;
                lineHeight = f10;
                i13 = i10;
                x10 = f11;
                y10 = f12;
            }
            this._meshData.setVertexBuffer(floatBuffer);
            this._meshData.setTextureBuffer(floatBuffer2, 0);
            this._meshData.setIndices(null);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void setTextColor(ReadOnlyColorRGBA readOnlyColorRGBA) {
        this._textClr.set(readOnlyColorRGBA);
        setDefaultColor(this._textClr);
    }

    public void setUseBlend(boolean z10) {
        this._useBlend = z10;
        this._font.applyRenderStatesTo(this, z10);
    }

    public void updateScaleAndAlpha(Camera camera, Renderer renderer) {
        this._look.set(camera.getLocation());
        this._look.negateLocal().addLocal(this._worldTransform.getTranslation());
        double dot = camera.getDirection().dot(this._look);
        if (dot > camera.getFrustumFar() || dot < camera.getFrustumNear()) {
            return;
        }
        double frustumBottom = (camera.getProjectionMode() == Camera.ProjectionMode.Parallel ? camera.getFrustumBottom() : (dot * camera.getFrustumTop()) / camera.getFrustumNear()) / camera.getHeight();
        double size = 1.0d / (this._fontScale * this._font.getSize());
        double d10 = frustumBottom * 2.0d;
        AutoScale autoScale = this._autoScale;
        if (autoScale != AutoScale.Off) {
            double d11 = ((autoScale != AutoScale.CapScreenSize || d10 <= size) ? d10 : size) * this._fontScale;
            setScale(d11, d11, -d11);
        }
        int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$ui$text$BMText$AutoFade[this._autoFade.ordinal()];
        if (i10 == 2) {
            distanceAlphaFade(this._distanceAlphaRange, this._look.length());
        } else if (i10 == 3) {
            screenSizeCapAlphaFade(1.0d / this._fixedPixelAlphaThresh, d10, this._screenSizeAlphaFalloff);
        } else {
            if (i10 != 4) {
                return;
            }
            screenSizeCapAlphaFade(size, d10, this._screenSizeAlphaFalloff);
        }
    }

    public BMText(String str, String str2, BMFont bMFont, Align align) {
        this(str, str2, bMFont, align, Justify.Left);
    }

    public BMText(String str, String str2, BMFont bMFont, Align align, Justify justify) {
        this(str, str2, bMFont, align, justify, true);
    }

    public void setTextColor(float f10, float f11, float f12, float f13) {
        this._textClr.set(f10, f11, f12, f13);
        setDefaultColor(this._textClr);
    }

    public BMText(String str, String str2, BMFont bMFont, Align align, Justify justify, boolean z10) {
        super(str);
        this._tabSize = 4;
        this._fontScale = 1.0d;
        this._autoRotate = true;
        this._lines = 1;
        this._size = new Vector2();
        this._lineWidths = new float[64];
        this._textClr = new ColorRGBA(1.0f, 1.0f, 1.0f, 1.0f);
        this._tempClr = new ColorRGBA(1.0f, 1.0f, 1.0f, 1.0f);
        this._autoScale = AutoScale.CapScreenSize;
        this._autoFade = AutoFade.FixedPixelSize;
        this._fixedPixelAlphaThresh = 14;
        this._screenSizeAlphaFalloff = 0.7f;
        this._distanceAlphaRange = new Vector2(50.0d, 75.0d);
        this._spacing = 0;
        this._alignOffset = new Vector2();
        this._fixedOffset = new Vector2();
        this._vertexBuffer = null;
        this._texCrdBuffer = null;
        this._indexBuffer = null;
        this._look = new Vector3();
        this._left = new Vector3();
        this._rot = new Matrix3();
        this._font = bMFont;
        this._align = align;
        this._justify = justify;
        this._spacing = 0;
        this._useBlend = z10;
        if (bMFont.getOutlineWidth() > 1) {
            this._spacing = this._font.getOutlineWidth() - 1;
        }
        getMeshData().setIndexMode(IndexMode.Triangles);
        getSceneHints().setLightCombineMode(LightCombineMode.Off);
        getSceneHints().setTextureCombineMode(TextureCombineMode.Replace);
        setText(str2);
        setModelBound(null);
        getSceneHints().setCullHint(CullHint.Never);
        getSceneHints().setAllPickingHints(false);
        this._font.applyRenderStatesTo(this, z10);
    }

    public void setFixedOffset(Vector2 vector2) {
        this._fixedOffset.set(vector2.getX() * this._font.getSize(), vector2.getY() * this._font.getSize());
    }
}
