package com.ardor3d.renderer.state.record;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.Rectangle2;
import com.ardor3d.renderer.DrawBufferTarget;
import java.util.Stack;

public class RendererRecord extends StateRecord {
    private boolean _clippingTestEnabled;
    private boolean _clippingTestValid;
    private boolean _elementVboValid;
    private boolean _matrixValid;
    private boolean _vboValid;
    private int _matrixMode = -1;
    private int _currentElementVboId = -1;
    private int _currentVboId = -1;
    private final transient ColorRGBA _tempColor = new ColorRGBA();
    private DrawBufferTarget _drawBufferTarget = null;
    private final Stack<Rectangle2> _clips = new Stack<>();
    private int _normalMode = -1;
    private int _enabledTextures = 0;
    private boolean _texturesValid = false;
    private int _currentTextureArraysUnit = 0;

    public int getCurrentElementVboId() {
        return this._currentElementVboId;
    }

    public int getCurrentTextureArraysUnit() {
        return this._currentTextureArraysUnit;
    }

    public int getCurrentVboId() {
        return this._currentVboId;
    }

    public DrawBufferTarget getDrawBufferTarget() {
        return this._drawBufferTarget;
    }

    public int getEnabledTextures() {
        return this._enabledTextures;
    }

    public int getMatrixMode() {
        return this._matrixMode;
    }

    public int getNormalMode() {
        return this._normalMode;
    }

    public Stack<Rectangle2> getScissorClips() {
        return this._clips;
    }

    public ColorRGBA getTempColor() {
        return this._tempColor;
    }

    @Override
    public void invalidate() {
        invalidateMatrix();
        invalidateVBO();
        this._drawBufferTarget = null;
        this._clippingTestValid = false;
        this._texturesValid = false;
        this._normalMode = -1;
        this._currentTextureArraysUnit = -1;
    }

    public void invalidateMatrix() {
        this._matrixValid = false;
        this._matrixMode = -1;
    }

    public void invalidateVBO() {
        this._vboValid = false;
        this._elementVboValid = false;
        this._currentVboId = -1;
        this._currentElementVboId = -1;
    }

    public boolean isClippingTestEnabled() {
        return this._clippingTestEnabled;
    }

    public boolean isClippingTestValid() {
        return this._clippingTestValid;
    }

    public boolean isElementVboValid() {
        return this._elementVboValid;
    }

    public boolean isMatrixValid() {
        return this._matrixValid;
    }

    public boolean isTexturesValid() {
        return this._texturesValid;
    }

    public boolean isVboValid() {
        return this._vboValid;
    }

    public void setClippingTestEnabled(boolean z10) {
        this._clippingTestEnabled = z10;
    }

    public void setClippingTestValid(boolean z10) {
        this._clippingTestValid = z10;
    }

    public void setCurrentElementVboId(int i10) {
        this._currentElementVboId = i10;
    }

    public void setCurrentTextureArraysUnit(int i10) {
        this._currentTextureArraysUnit = i10;
    }

    public void setCurrentVboId(int i10) {
        this._currentVboId = i10;
    }

    public void setDrawBufferTarget(DrawBufferTarget drawBufferTarget) {
        this._drawBufferTarget = drawBufferTarget;
    }

    public void setElementVboValid(boolean z10) {
        this._elementVboValid = z10;
    }

    public void setEnabledTextures(int i10) {
        this._enabledTextures = i10;
    }

    public void setMatrixMode(int i10) {
        this._matrixMode = i10;
    }

    public void setMatrixValid(boolean z10) {
        this._matrixValid = z10;
    }

    public void setNormalMode(int i10) {
        this._normalMode = i10;
    }

    public void setTexturesValid(boolean z10) {
        this._texturesValid = z10;
    }

    public void setVboValid(boolean z10) {
        this._vboValid = z10;
    }

    @Override
    public void validate() {
    }
}
