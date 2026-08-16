package com.jme3.renderer;

import com.jme3.material.RenderState;
import com.jme3.math.ColorRGBA;
import com.jme3.scene.VertexBuffer;
import com.jme3.shader.Shader;
import com.jme3.shader.bufferobject.BufferObject;
import com.jme3.texture.FrameBuffer;
import com.jme3.texture.Image;
import java.lang.ref.WeakReference;

public class RenderContext {
    public static final int maxBufferObjectUnits = 8;
    public static final int maxTextureUnits = 16;
    public RenderState.TestFunction alphaFunc;
    public RenderState.StencilOperation backStencilDepthFailOperation;
    public RenderState.StencilOperation backStencilDepthPassOperation;
    public RenderState.TestFunction backStencilFunction;
    public RenderState.StencilOperation backStencilStencilFailOperation;
    public RenderState.BlendEquation blendEquation;
    public RenderState.BlendEquationAlpha blendEquationAlpha;
    public RenderState.BlendMode blendMode;
    public int boundArrayVBO;
    public int boundElementArrayVBO;
    public FrameBuffer boundFB;
    public int boundFBO;
    public int boundPixelPackPBO;
    public int boundRB;
    public Shader boundShader;
    public int boundShaderProgram;
    public int boundTextureUnit;
    public int boundVertexArray;
    public boolean clipRectEnabled;
    public boolean colorWriteEnabled;
    public RenderState.FaceCullMode cullMode;
    public RenderState.TestFunction depthFunc;
    public boolean depthTestEnabled;
    public boolean depthWriteEnabled;
    public RenderState.BlendFunc dfactorAlpha;
    public RenderState.BlendFunc dfactorRGB;
    public RenderState.StencilOperation frontStencilDepthFailOperation;
    public RenderState.StencilOperation frontStencilDepthPassOperation;
    public RenderState.TestFunction frontStencilFunction;
    public RenderState.StencilOperation frontStencilStencilFailOperation;
    public int initialDrawBuf;
    public int initialReadBuf;
    public float lineWidth;
    public int numTexturesSet;
    public float pointSize;
    public boolean polyOffsetEnabled;
    public float polyOffsetFactor;
    public float polyOffsetUnits;
    public RenderState.BlendFunc sfactorAlpha;
    public RenderState.BlendFunc sfactorRGB;
    public boolean srgbWriteEnabled;
    public boolean stencilTest;
    public boolean wireframe;
    public final WeakReference<Image>[] boundTextures = new WeakReference[16];
    public final WeakReference<BufferObject>[] boundBO = new WeakReference[8];
    public final IDList textureIndexList = new IDList();
    public final WeakReference<VertexBuffer>[] boundAttribs = new WeakReference[16];
    public final IDList attribIndexList = new IDList();
    public ColorRGBA clearColor = new ColorRGBA(0.0f, 0.0f, 0.0f, 0.0f);

    public RenderContext() {
        init();
    }

    private void init() {
        RenderState.FaceCullMode faceCullMode = RenderState.FaceCullMode.Off;
        this.cullMode = faceCullMode;
        this.depthTestEnabled = false;
        this.depthWriteEnabled = true;
        this.colorWriteEnabled = true;
        this.clipRectEnabled = false;
        this.polyOffsetEnabled = false;
        this.polyOffsetFactor = 0.0f;
        this.polyOffsetUnits = 0.0f;
        this.pointSize = 1.0f;
        this.lineWidth = 1.0f;
        this.blendMode = RenderState.BlendMode.Off;
        this.blendEquation = RenderState.BlendEquation.Add;
        this.blendEquationAlpha = RenderState.BlendEquationAlpha.InheritColor;
        RenderState.BlendFunc blendFunc = RenderState.BlendFunc.One;
        this.sfactorRGB = blendFunc;
        this.dfactorRGB = blendFunc;
        this.sfactorAlpha = blendFunc;
        this.dfactorAlpha = blendFunc;
        this.wireframe = false;
        this.boundShaderProgram = 0;
        this.boundShader = null;
        this.boundFBO = 0;
        this.boundFB = null;
        this.boundRB = 0;
        this.boundElementArrayVBO = 0;
        this.boundVertexArray = 0;
        this.boundArrayVBO = 0;
        this.boundPixelPackPBO = 0;
        this.numTexturesSet = 0;
        this.boundTextureUnit = 0;
        this.stencilTest = false;
        RenderState.StencilOperation stencilOperation = RenderState.StencilOperation.Keep;
        this.frontStencilStencilFailOperation = stencilOperation;
        this.frontStencilDepthFailOperation = stencilOperation;
        this.frontStencilDepthPassOperation = stencilOperation;
        this.backStencilStencilFailOperation = stencilOperation;
        this.backStencilDepthFailOperation = stencilOperation;
        this.backStencilDepthPassOperation = stencilOperation;
        RenderState.TestFunction testFunction = RenderState.TestFunction.Always;
        this.frontStencilFunction = testFunction;
        this.backStencilFunction = testFunction;
        this.depthFunc = RenderState.TestFunction.Less;
        this.alphaFunc = RenderState.TestFunction.Greater;
        this.cullMode = faceCullMode;
        this.srgbWriteEnabled = false;
        this.clearColor.set(0.0f, 0.0f, 0.0f, 0.0f);
    }

    public void reset() {
        init();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            WeakReference<Image>[] weakReferenceArr = this.boundTextures;
            if (i11 >= weakReferenceArr.length) {
                break;
            }
            weakReferenceArr[i11] = null;
            i11++;
        }
        this.textureIndexList.reset();
        while (true) {
            WeakReference<VertexBuffer>[] weakReferenceArr2 = this.boundAttribs;
            if (i10 >= weakReferenceArr2.length) {
                this.attribIndexList.reset();
                return;
            } else {
                weakReferenceArr2[i10] = null;
                i10++;
            }
        }
    }
}
