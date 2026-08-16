package com.jme3.material;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import java.io.IOException;

public class RenderState implements Cloneable, Savable {
    public static final RenderState ADDITIONAL;
    public static final RenderState DEFAULT = new RenderState();
    public static final RenderState NULL;
    StencilOperation backStencilDepthFailOperation;
    StencilOperation backStencilDepthPassOperation;
    TestFunction backStencilFunction;
    int backStencilMask;
    int backStencilReference;
    StencilOperation backStencilStencilFailOperation;
    int cachedHashCode;
    BlendFunc dfactorAlpha;
    BlendFunc dfactorRGB;
    StencilOperation frontStencilDepthFailOperation;
    StencilOperation frontStencilDepthPassOperation;
    TestFunction frontStencilFunction;
    int frontStencilMask;
    int frontStencilReference;
    StencilOperation frontStencilStencilFailOperation;
    BlendFunc sfactorAlpha;
    BlendFunc sfactorRGB;
    boolean wireframe = false;
    boolean applyWireFrame = true;
    FaceCullMode cullMode = FaceCullMode.Back;
    boolean applyCullMode = true;
    boolean depthWrite = true;
    boolean applyDepthWrite = true;
    boolean depthTest = true;
    boolean applyDepthTest = true;
    boolean colorWrite = true;
    boolean applyColorWrite = true;
    BlendEquation blendEquation = BlendEquation.Add;
    BlendEquationAlpha blendEquationAlpha = BlendEquationAlpha.InheritColor;
    BlendMode blendMode = BlendMode.Off;
    boolean applyBlendMode = true;
    float offsetFactor = 0.0f;
    float offsetUnits = 0.0f;
    boolean offsetEnabled = false;
    boolean applyPolyOffset = true;
    boolean stencilTest = false;
    boolean applyStencilTest = false;
    float lineWidth = 1.0f;
    boolean applyLineWidth = false;
    TestFunction depthFunc = TestFunction.LessOrEqual;
    boolean applyDepthFunc = false;

    public enum BlendEquation {
        Add,
        Subtract,
        ReverseSubtract,
        Min,
        Max
    }

    public enum BlendEquationAlpha {
        InheritColor,
        Add,
        Subtract,
        ReverseSubtract,
        Min,
        Max
    }

    public enum BlendFunc {
        Zero,
        One,
        Src_Color,
        One_Minus_Src_Color,
        Dst_Color,
        One_Minus_Dst_Color,
        Src_Alpha,
        One_Minus_Src_Alpha,
        Dst_Alpha,
        One_Minus_Dst_Alpha,
        Src_Alpha_Saturate
    }

    public enum BlendMode {
        Off,
        Additive,
        PremultAlpha,
        AlphaAdditive,
        Color,
        Alpha,
        AlphaSumA,
        Modulate,
        ModulateX2,
        Screen,
        Exclusion,
        Custom
    }

    public enum FaceCullMode {
        Off,
        Front,
        Back,
        FrontAndBack
    }

    public enum StencilOperation {
        Keep,
        Zero,
        Replace,
        Increment,
        IncrementWrap,
        Decrement,
        DecrementWrap,
        Invert
    }

    public enum TestFunction {
        Never,
        Equal,
        Less,
        LessOrEqual,
        Greater,
        GreaterOrEqual,
        NotEqual,
        Always
    }

    static {
        RenderState renderState = new RenderState();
        NULL = renderState;
        RenderState renderState2 = new RenderState();
        ADDITIONAL = renderState2;
        renderState.cullMode = FaceCullMode.Off;
        renderState.depthTest = false;
        renderState2.applyWireFrame = false;
        renderState2.applyCullMode = false;
        renderState2.applyDepthWrite = false;
        renderState2.applyDepthTest = false;
        renderState2.applyColorWrite = false;
        renderState2.applyBlendMode = false;
        renderState2.applyPolyOffset = false;
    }

    public RenderState() {
        StencilOperation stencilOperation = StencilOperation.Keep;
        this.frontStencilStencilFailOperation = stencilOperation;
        this.frontStencilDepthFailOperation = stencilOperation;
        this.frontStencilDepthPassOperation = stencilOperation;
        this.backStencilStencilFailOperation = stencilOperation;
        this.backStencilDepthFailOperation = stencilOperation;
        this.backStencilDepthPassOperation = stencilOperation;
        TestFunction testFunction = TestFunction.Always;
        this.frontStencilFunction = testFunction;
        this.backStencilFunction = testFunction;
        this.frontStencilReference = 0;
        this.backStencilReference = 0;
        this.frontStencilMask = Integer.MAX_VALUE;
        this.backStencilMask = Integer.MAX_VALUE;
        this.cachedHashCode = -1;
        BlendFunc blendFunc = BlendFunc.One;
        this.sfactorRGB = blendFunc;
        this.dfactorRGB = blendFunc;
        this.sfactorAlpha = blendFunc;
        this.dfactorAlpha = blendFunc;
    }

    public int contentHashCode() {
        if (this.cachedHashCode == -1) {
            int i10 = (553 + (this.wireframe ? 1 : 0)) * 79;
            FaceCullMode faceCullMode = this.cullMode;
            int hashCode = (((((i10 + (faceCullMode != null ? faceCullMode.hashCode() : 0)) * 79) + (this.depthWrite ? 1 : 0)) * 79) + (this.depthTest ? 1 : 0)) * 79;
            TestFunction testFunction = this.depthFunc;
            int hashCode2 = (((hashCode + (testFunction != null ? testFunction.hashCode() : 0)) * 79) + (this.colorWrite ? 1 : 0)) * 79;
            BlendMode blendMode = this.blendMode;
            int hashCode3 = (hashCode2 + (blendMode != null ? blendMode.hashCode() : 0)) * 79;
            BlendEquation blendEquation = this.blendEquation;
            int hashCode4 = (hashCode3 + (blendEquation != null ? blendEquation.hashCode() : 0)) * 79;
            BlendEquationAlpha blendEquationAlpha = this.blendEquationAlpha;
            int hashCode5 = (((((((((hashCode4 + (blendEquationAlpha != null ? blendEquationAlpha.hashCode() : 0)) * 79) + Float.floatToIntBits(this.offsetFactor)) * 79) + Float.floatToIntBits(this.offsetUnits)) * 79) + (this.offsetEnabled ? 1 : 0)) * 79) + (this.stencilTest ? 1 : 0)) * 79;
            StencilOperation stencilOperation = this.frontStencilStencilFailOperation;
            int hashCode6 = (hashCode5 + (stencilOperation != null ? stencilOperation.hashCode() : 0)) * 79;
            StencilOperation stencilOperation2 = this.frontStencilDepthFailOperation;
            int hashCode7 = (hashCode6 + (stencilOperation2 != null ? stencilOperation2.hashCode() : 0)) * 79;
            StencilOperation stencilOperation3 = this.frontStencilDepthPassOperation;
            int hashCode8 = (hashCode7 + (stencilOperation3 != null ? stencilOperation3.hashCode() : 0)) * 79;
            StencilOperation stencilOperation4 = this.backStencilStencilFailOperation;
            int hashCode9 = (hashCode8 + (stencilOperation4 != null ? stencilOperation4.hashCode() : 0)) * 79;
            StencilOperation stencilOperation5 = this.backStencilDepthFailOperation;
            int hashCode10 = (hashCode9 + (stencilOperation5 != null ? stencilOperation5.hashCode() : 0)) * 79;
            StencilOperation stencilOperation6 = this.backStencilDepthPassOperation;
            int hashCode11 = (hashCode10 + (stencilOperation6 != null ? stencilOperation6.hashCode() : 0)) * 79;
            TestFunction testFunction2 = this.frontStencilFunction;
            int hashCode12 = (hashCode11 + (testFunction2 != null ? testFunction2.hashCode() : 0)) * 79;
            TestFunction testFunction3 = this.backStencilFunction;
            this.cachedHashCode = ((((((((((((((((((hashCode12 + (testFunction3 != null ? testFunction3.hashCode() : 0)) * 79) + this.frontStencilMask) * 79) + this.frontStencilReference) * 79) + this.backStencilMask) * 79) + this.backStencilReference) * 79) + Float.floatToIntBits(this.lineWidth)) * 79) + this.sfactorRGB.hashCode()) * 79) + this.dfactorRGB.hashCode()) * 79) + this.sfactorAlpha.hashCode()) * 79) + this.dfactorAlpha.hashCode();
        }
        return this.cachedHashCode;
    }

    public RenderState copyFrom(RenderState renderState) {
        this.applyBlendMode = renderState.applyBlendMode;
        this.applyColorWrite = renderState.applyColorWrite;
        this.applyCullMode = renderState.applyCullMode;
        this.applyDepthFunc = renderState.applyDepthFunc;
        this.applyDepthTest = renderState.applyDepthTest;
        this.applyDepthWrite = renderState.applyDepthWrite;
        this.applyLineWidth = renderState.applyLineWidth;
        this.applyPolyOffset = renderState.applyPolyOffset;
        this.applyStencilTest = renderState.applyStencilTest;
        this.applyWireFrame = renderState.applyWireFrame;
        this.backStencilDepthFailOperation = renderState.backStencilDepthFailOperation;
        this.backStencilDepthPassOperation = renderState.backStencilDepthPassOperation;
        this.backStencilFunction = renderState.backStencilFunction;
        this.backStencilMask = renderState.backStencilMask;
        this.backStencilReference = renderState.backStencilReference;
        this.backStencilStencilFailOperation = renderState.backStencilStencilFailOperation;
        this.blendEquation = renderState.blendEquation;
        this.blendEquationAlpha = renderState.blendEquationAlpha;
        this.blendMode = renderState.blendMode;
        this.cachedHashCode = renderState.cachedHashCode;
        this.colorWrite = renderState.colorWrite;
        this.cullMode = renderState.cullMode;
        this.depthFunc = renderState.depthFunc;
        this.depthTest = renderState.depthTest;
        this.depthWrite = renderState.depthWrite;
        this.dfactorAlpha = renderState.dfactorAlpha;
        this.dfactorRGB = renderState.dfactorRGB;
        this.frontStencilDepthFailOperation = renderState.frontStencilDepthFailOperation;
        this.frontStencilDepthPassOperation = renderState.frontStencilDepthPassOperation;
        this.frontStencilFunction = renderState.frontStencilFunction;
        this.frontStencilMask = renderState.frontStencilMask;
        this.frontStencilReference = renderState.frontStencilReference;
        this.frontStencilStencilFailOperation = renderState.frontStencilStencilFailOperation;
        this.lineWidth = renderState.lineWidth;
        this.offsetEnabled = renderState.offsetEnabled;
        this.offsetFactor = renderState.offsetFactor;
        this.offsetUnits = renderState.offsetUnits;
        this.sfactorAlpha = renderState.sfactorAlpha;
        this.sfactorRGB = renderState.sfactorRGB;
        this.stencilTest = renderState.stencilTest;
        this.wireframe = renderState.wireframe;
        return this;
    }

    public RenderState copyMergedTo(RenderState renderState, RenderState renderState2) {
        if (renderState == null) {
            return this;
        }
        if (renderState.applyWireFrame) {
            renderState2.wireframe = renderState.wireframe;
        } else {
            renderState2.wireframe = this.wireframe;
        }
        if (renderState.applyCullMode) {
            renderState2.cullMode = renderState.cullMode;
        } else {
            renderState2.cullMode = this.cullMode;
        }
        if (renderState.applyDepthWrite) {
            renderState2.depthWrite = renderState.depthWrite;
        } else {
            renderState2.depthWrite = this.depthWrite;
        }
        if (renderState.applyDepthTest) {
            renderState2.depthTest = renderState.depthTest;
        } else {
            renderState2.depthTest = this.depthTest;
        }
        if (renderState.applyDepthFunc) {
            renderState2.depthFunc = renderState.depthFunc;
        } else {
            renderState2.depthFunc = this.depthFunc;
        }
        if (renderState.applyColorWrite) {
            renderState2.colorWrite = renderState.colorWrite;
        } else {
            renderState2.colorWrite = this.colorWrite;
        }
        if (renderState.applyBlendMode) {
            renderState2.blendMode = renderState.blendMode;
            if (renderState.blendMode == BlendMode.Custom) {
                renderState2.blendEquation = renderState.blendEquation;
                renderState2.blendEquationAlpha = renderState.blendEquationAlpha;
                renderState2.sfactorRGB = renderState.sfactorRGB;
                renderState2.dfactorRGB = renderState.dfactorRGB;
                renderState2.sfactorAlpha = renderState.sfactorAlpha;
                renderState2.dfactorAlpha = renderState.dfactorAlpha;
            }
        } else {
            renderState2.blendMode = this.blendMode;
            if (this.blendMode == BlendMode.Custom) {
                renderState2.blendEquation = this.blendEquation;
                renderState2.blendEquationAlpha = this.blendEquationAlpha;
                renderState2.sfactorRGB = this.sfactorRGB;
                renderState2.dfactorRGB = this.dfactorRGB;
                renderState2.sfactorAlpha = this.sfactorAlpha;
                renderState2.dfactorAlpha = this.dfactorAlpha;
            }
        }
        if (renderState.applyPolyOffset) {
            renderState2.offsetEnabled = renderState.offsetEnabled;
            renderState2.offsetFactor = renderState.offsetFactor;
            renderState2.offsetUnits = renderState.offsetUnits;
        } else {
            renderState2.offsetEnabled = this.offsetEnabled;
            renderState2.offsetFactor = this.offsetFactor;
            renderState2.offsetUnits = this.offsetUnits;
        }
        if (renderState.applyStencilTest) {
            renderState2.stencilTest = renderState.stencilTest;
            renderState2.frontStencilStencilFailOperation = renderState.frontStencilStencilFailOperation;
            renderState2.frontStencilDepthFailOperation = renderState.frontStencilDepthFailOperation;
            renderState2.frontStencilDepthPassOperation = renderState.frontStencilDepthPassOperation;
            renderState2.backStencilStencilFailOperation = renderState.backStencilStencilFailOperation;
            renderState2.backStencilDepthFailOperation = renderState.backStencilDepthFailOperation;
            renderState2.backStencilDepthPassOperation = renderState.backStencilDepthPassOperation;
            renderState2.frontStencilFunction = renderState.frontStencilFunction;
            renderState2.backStencilFunction = renderState.backStencilFunction;
            renderState2.frontStencilMask = renderState.frontStencilMask;
            renderState2.frontStencilReference = renderState.frontStencilReference;
            renderState2.backStencilMask = renderState.backStencilMask;
            renderState2.backStencilReference = renderState.backStencilReference;
        } else {
            renderState2.stencilTest = this.stencilTest;
            renderState2.frontStencilStencilFailOperation = this.frontStencilStencilFailOperation;
            renderState2.frontStencilDepthFailOperation = this.frontStencilDepthFailOperation;
            renderState2.frontStencilDepthPassOperation = this.frontStencilDepthPassOperation;
            renderState2.backStencilStencilFailOperation = this.backStencilStencilFailOperation;
            renderState2.backStencilDepthFailOperation = this.backStencilDepthFailOperation;
            renderState2.backStencilDepthPassOperation = this.backStencilDepthPassOperation;
            renderState2.frontStencilFunction = this.frontStencilFunction;
            renderState2.backStencilFunction = this.backStencilFunction;
            renderState2.frontStencilMask = this.frontStencilMask;
            renderState2.frontStencilReference = this.frontStencilReference;
            renderState2.backStencilMask = this.backStencilMask;
            renderState2.backStencilReference = this.backStencilReference;
        }
        if (renderState.applyLineWidth) {
            renderState2.lineWidth = renderState.lineWidth;
        } else {
            renderState2.lineWidth = this.lineWidth;
        }
        renderState2.cachedHashCode = -1;
        return renderState2;
    }

    public boolean equals(Object obj) {
        boolean z10;
        BlendMode blendMode;
        boolean z11;
        if (obj == null || !(obj instanceof RenderState)) {
            return false;
        }
        RenderState renderState = (RenderState) obj;
        if (this.wireframe != renderState.wireframe || this.cullMode != renderState.cullMode || this.depthWrite != renderState.depthWrite || (z10 = this.depthTest) != renderState.depthTest) {
            return false;
        }
        if ((z10 && this.depthFunc != renderState.depthFunc) || this.colorWrite != renderState.colorWrite || (blendMode = this.blendMode) != renderState.blendMode) {
            return false;
        }
        if ((blendMode != BlendMode.Custom || (this.blendEquation == renderState.blendEquation && this.blendEquationAlpha == renderState.blendEquationAlpha && this.sfactorRGB == renderState.sfactorRGB && this.dfactorRGB == renderState.dfactorRGB && this.sfactorAlpha == renderState.sfactorAlpha && this.dfactorAlpha == renderState.dfactorAlpha)) && this.offsetEnabled == renderState.offsetEnabled && this.offsetFactor == renderState.offsetFactor && this.offsetUnits == renderState.offsetUnits && (z11 = this.stencilTest) == renderState.stencilTest) {
            return (!z11 || (this.frontStencilStencilFailOperation == renderState.frontStencilStencilFailOperation && this.frontStencilDepthFailOperation == renderState.frontStencilDepthFailOperation && this.frontStencilDepthPassOperation == renderState.frontStencilDepthPassOperation && this.backStencilStencilFailOperation == renderState.backStencilStencilFailOperation && this.backStencilDepthFailOperation == renderState.backStencilDepthFailOperation && this.backStencilDepthPassOperation == renderState.backStencilDepthPassOperation && this.frontStencilFunction == renderState.frontStencilFunction && this.backStencilFunction == renderState.backStencilFunction && this.frontStencilMask == renderState.frontStencilMask && this.backStencilMask == renderState.backStencilMask && this.frontStencilReference == renderState.frontStencilReference && this.backStencilReference == renderState.backStencilReference)) && this.lineWidth == renderState.lineWidth;
        }
        return false;
    }

    public void flipFaceCull() {
        int ordinal = this.cullMode.ordinal();
        if (ordinal == 1) {
            setFaceCullMode(FaceCullMode.Back);
        } else {
            if (ordinal != 2) {
                return;
            }
            setFaceCullMode(FaceCullMode.Front);
        }
    }

    @Deprecated
    public float getAlphaFallOff() {
        return 0.0f;
    }

    @Deprecated
    public TestFunction getAlphaFunc() {
        return TestFunction.Greater;
    }

    public StencilOperation getBackStencilDepthFailOperation() {
        return this.backStencilDepthFailOperation;
    }

    public StencilOperation getBackStencilDepthPassOperation() {
        return this.backStencilDepthPassOperation;
    }

    public TestFunction getBackStencilFunction() {
        return this.backStencilFunction;
    }

    public int getBackStencilMask() {
        return this.backStencilMask;
    }

    public int getBackStencilReference() {
        return this.backStencilReference;
    }

    public StencilOperation getBackStencilStencilFailOperation() {
        return this.backStencilStencilFailOperation;
    }

    public BlendEquation getBlendEquation() {
        return this.blendEquation;
    }

    public BlendEquationAlpha getBlendEquationAlpha() {
        return this.blendEquationAlpha;
    }

    public BlendMode getBlendMode() {
        return this.blendMode;
    }

    public BlendFunc getCustomDfactorAlpha() {
        return this.dfactorAlpha;
    }

    public BlendFunc getCustomDfactorRGB() {
        return this.dfactorRGB;
    }

    public BlendFunc getCustomSfactorAlpha() {
        return this.sfactorAlpha;
    }

    public BlendFunc getCustomSfactorRGB() {
        return this.sfactorRGB;
    }

    public TestFunction getDepthFunc() {
        return this.depthFunc;
    }

    public FaceCullMode getFaceCullMode() {
        return this.cullMode;
    }

    public StencilOperation getFrontStencilDepthFailOperation() {
        return this.frontStencilDepthFailOperation;
    }

    public StencilOperation getFrontStencilDepthPassOperation() {
        return this.frontStencilDepthPassOperation;
    }

    public TestFunction getFrontStencilFunction() {
        return this.frontStencilFunction;
    }

    public int getFrontStencilMask() {
        return this.frontStencilMask;
    }

    public int getFrontStencilReference() {
        return this.frontStencilReference;
    }

    public StencilOperation getFrontStencilStencilFailOperation() {
        return this.frontStencilStencilFailOperation;
    }

    public float getLineWidth() {
        return this.lineWidth;
    }

    public float getPolyOffsetFactor() {
        return this.offsetFactor;
    }

    public float getPolyOffsetUnits() {
        return this.offsetUnits;
    }

    @Deprecated
    public boolean isAlphaTest() {
        return false;
    }

    public boolean isApplyBlendMode() {
        return this.applyBlendMode;
    }

    public boolean isApplyColorWrite() {
        return this.applyColorWrite;
    }

    public boolean isApplyCullMode() {
        return this.applyCullMode;
    }

    public boolean isApplyDepthFunc() {
        return this.applyDepthFunc;
    }

    public boolean isApplyDepthTest() {
        return this.applyDepthTest;
    }

    public boolean isApplyDepthWrite() {
        return this.applyDepthWrite;
    }

    public boolean isApplyLineWidth() {
        return this.applyLineWidth;
    }

    public boolean isApplyPolyOffset() {
        return this.applyPolyOffset;
    }

    public boolean isApplyWireFrame() {
        return this.applyWireFrame;
    }

    public boolean isColorWrite() {
        return this.colorWrite;
    }

    public boolean isDepthTest() {
        return this.depthTest;
    }

    public boolean isDepthWrite() {
        return this.depthWrite;
    }

    public boolean isFaceCullFlippable() {
        FaceCullMode faceCullMode = this.cullMode;
        return faceCullMode == FaceCullMode.Front || faceCullMode == FaceCullMode.Back;
    }

    @Deprecated
    public boolean isPointSprite() {
        return true;
    }

    public boolean isPolyOffset() {
        return this.offsetEnabled;
    }

    public boolean isStencilTest() {
        return this.stencilTest;
    }

    public boolean isWireframe() {
        return this.wireframe;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.wireframe = capsule.readBoolean("wireframe", false);
        this.cullMode = (FaceCullMode) capsule.readEnum("cullMode", FaceCullMode.class, FaceCullMode.Back);
        this.depthWrite = capsule.readBoolean("depthWrite", true);
        this.depthTest = capsule.readBoolean("depthTest", true);
        this.colorWrite = capsule.readBoolean("colorWrite", true);
        this.blendMode = (BlendMode) capsule.readEnum("blendMode", BlendMode.class, BlendMode.Off);
        this.offsetEnabled = capsule.readBoolean("offsetEnabled", false);
        this.offsetFactor = capsule.readFloat("offsetFactor", 0.0f);
        this.offsetUnits = capsule.readFloat("offsetUnits", 0.0f);
        this.stencilTest = capsule.readBoolean("stencilTest", false);
        StencilOperation stencilOperation = StencilOperation.Keep;
        this.frontStencilStencilFailOperation = (StencilOperation) capsule.readEnum("frontStencilStencilFailOperation", StencilOperation.class, stencilOperation);
        this.frontStencilDepthFailOperation = (StencilOperation) capsule.readEnum("frontStencilDepthFailOperation", StencilOperation.class, stencilOperation);
        this.frontStencilDepthPassOperation = (StencilOperation) capsule.readEnum("frontStencilDepthPassOperation", StencilOperation.class, stencilOperation);
        this.backStencilStencilFailOperation = (StencilOperation) capsule.readEnum("backStencilStencilFailOperation", StencilOperation.class, stencilOperation);
        this.backStencilDepthFailOperation = (StencilOperation) capsule.readEnum("backStencilDepthFailOperation", StencilOperation.class, stencilOperation);
        this.backStencilDepthPassOperation = (StencilOperation) capsule.readEnum("backStencilDepthPassOperation", StencilOperation.class, stencilOperation);
        TestFunction testFunction = TestFunction.Always;
        this.frontStencilFunction = (TestFunction) capsule.readEnum("frontStencilFunction", TestFunction.class, testFunction);
        this.backStencilFunction = (TestFunction) capsule.readEnum("backStencilFunction", TestFunction.class, testFunction);
        this.frontStencilReference = capsule.readInt("frontStencilReference", 0);
        this.backStencilReference = capsule.readInt("backStencilReference", 0);
        this.frontStencilMask = capsule.readInt("frontStencilMask", Integer.MAX_VALUE);
        this.backStencilMask = capsule.readInt("backStencilMask", Integer.MAX_VALUE);
        this.blendEquation = (BlendEquation) capsule.readEnum("blendEquation", BlendEquation.class, BlendEquation.Add);
        this.blendEquationAlpha = (BlendEquationAlpha) capsule.readEnum("blendEquationAlpha", BlendEquationAlpha.class, BlendEquationAlpha.InheritColor);
        this.depthFunc = (TestFunction) capsule.readEnum("depthFunc", TestFunction.class, TestFunction.LessOrEqual);
        this.lineWidth = capsule.readFloat("lineWidth", 1.0f);
        BlendFunc blendFunc = BlendFunc.One;
        this.sfactorRGB = (BlendFunc) capsule.readEnum("sfactorRGB", BlendFunc.class, blendFunc);
        this.dfactorRGB = (BlendFunc) capsule.readEnum("dfactorRGB", BlendFunc.class, blendFunc);
        this.sfactorAlpha = (BlendFunc) capsule.readEnum("sfactorAlpha", BlendFunc.class, blendFunc);
        this.dfactorAlpha = (BlendFunc) capsule.readEnum("dfactorAlpha", BlendFunc.class, blendFunc);
        this.applyWireFrame = capsule.readBoolean("applyWireFrame", true);
        this.applyCullMode = capsule.readBoolean("applyCullMode", true);
        this.applyDepthWrite = capsule.readBoolean("applyDepthWrite", true);
        this.applyDepthTest = capsule.readBoolean("applyDepthTest", true);
        this.applyColorWrite = capsule.readBoolean("applyColorWrite", true);
        this.applyBlendMode = capsule.readBoolean("applyBlendMode", true);
        this.applyPolyOffset = capsule.readBoolean("applyPolyOffset", true);
        this.applyDepthFunc = capsule.readBoolean("applyDepthFunc", true);
        this.applyLineWidth = capsule.readBoolean("applyLineWidth", true);
    }

    public void set(RenderState renderState) {
        this.wireframe = renderState.wireframe;
        this.cullMode = renderState.cullMode;
        this.depthWrite = renderState.depthWrite;
        this.depthTest = renderState.depthTest;
        this.colorWrite = renderState.colorWrite;
        this.blendMode = renderState.blendMode;
        this.offsetEnabled = renderState.offsetEnabled;
        this.offsetFactor = renderState.offsetFactor;
        this.offsetUnits = renderState.offsetUnits;
        this.stencilTest = renderState.stencilTest;
        this.frontStencilStencilFailOperation = renderState.frontStencilStencilFailOperation;
        this.frontStencilDepthFailOperation = renderState.frontStencilDepthFailOperation;
        this.frontStencilDepthPassOperation = renderState.frontStencilDepthPassOperation;
        this.backStencilStencilFailOperation = renderState.backStencilStencilFailOperation;
        this.backStencilDepthFailOperation = renderState.backStencilDepthFailOperation;
        this.backStencilDepthPassOperation = renderState.backStencilDepthPassOperation;
        this.frontStencilFunction = renderState.frontStencilFunction;
        this.backStencilFunction = renderState.backStencilFunction;
        this.frontStencilMask = renderState.frontStencilMask;
        this.frontStencilReference = renderState.frontStencilReference;
        this.backStencilMask = renderState.backStencilMask;
        this.backStencilReference = renderState.backStencilReference;
        this.blendEquationAlpha = renderState.blendEquationAlpha;
        this.blendEquation = renderState.blendEquation;
        this.depthFunc = renderState.depthFunc;
        this.lineWidth = renderState.lineWidth;
        this.applyWireFrame = true;
        this.applyCullMode = true;
        this.applyDepthWrite = true;
        this.applyDepthTest = true;
        this.applyColorWrite = true;
        this.applyBlendMode = true;
        this.applyPolyOffset = true;
        this.applyDepthFunc = true;
        this.applyLineWidth = true;
        this.sfactorRGB = renderState.sfactorRGB;
        this.dfactorRGB = renderState.dfactorRGB;
        this.sfactorAlpha = renderState.sfactorAlpha;
        this.dfactorAlpha = renderState.dfactorAlpha;
    }

    public void setBackStencilMask(int i10) {
        this.backStencilMask = i10;
        this.cachedHashCode = -1;
    }

    public void setBackStencilReference(int i10) {
        this.backStencilReference = i10;
        this.cachedHashCode = -1;
    }

    public void setBlendEquation(BlendEquation blendEquation) {
        this.blendEquation = blendEquation;
        this.cachedHashCode = -1;
    }

    public void setBlendEquationAlpha(BlendEquationAlpha blendEquationAlpha) {
        this.blendEquationAlpha = blendEquationAlpha;
        this.cachedHashCode = -1;
    }

    public void setBlendMode(BlendMode blendMode) {
        this.applyBlendMode = true;
        this.blendMode = blendMode;
        this.cachedHashCode = -1;
    }

    public void setColorWrite(boolean z10) {
        this.applyColorWrite = true;
        this.colorWrite = z10;
        this.cachedHashCode = -1;
    }

    public void setCustomBlendFactors(BlendFunc blendFunc, BlendFunc blendFunc2, BlendFunc blendFunc3, BlendFunc blendFunc4) {
        this.sfactorRGB = blendFunc;
        this.dfactorRGB = blendFunc2;
        this.sfactorAlpha = blendFunc3;
        this.dfactorAlpha = blendFunc4;
        this.cachedHashCode = -1;
    }

    public void setDepthFunc(TestFunction testFunction) {
        this.applyDepthFunc = true;
        this.depthFunc = testFunction;
        this.cachedHashCode = -1;
    }

    public void setDepthTest(boolean z10) {
        this.applyDepthTest = true;
        this.depthTest = z10;
        this.cachedHashCode = -1;
    }

    public void setDepthWrite(boolean z10) {
        this.applyDepthWrite = true;
        this.depthWrite = z10;
        this.cachedHashCode = -1;
    }

    public void setFaceCullMode(FaceCullMode faceCullMode) {
        this.applyCullMode = true;
        this.cullMode = faceCullMode;
        this.cachedHashCode = -1;
    }

    public void setFrontStencilMask(int i10) {
        this.frontStencilMask = i10;
        this.cachedHashCode = -1;
    }

    public void setFrontStencilReference(int i10) {
        this.frontStencilReference = i10;
        this.cachedHashCode = -1;
    }

    public void setLineWidth(float f10) {
        if (f10 < 1.0f) {
            throw new IllegalArgumentException("lineWidth must be greater than or equal to 1.0");
        }
        this.lineWidth = f10;
        this.applyLineWidth = true;
        this.cachedHashCode = -1;
    }

    public void setPolyOffset(float f10, float f11) {
        this.applyPolyOffset = true;
        if (f10 == 0.0f && f11 == 0.0f) {
            this.offsetEnabled = false;
        } else {
            this.offsetEnabled = true;
            this.offsetFactor = f10;
            this.offsetUnits = f11;
        }
        this.cachedHashCode = -1;
    }

    public void setStencil(boolean z10, StencilOperation stencilOperation, StencilOperation stencilOperation2, StencilOperation stencilOperation3, StencilOperation stencilOperation4, StencilOperation stencilOperation5, StencilOperation stencilOperation6, TestFunction testFunction, TestFunction testFunction2) {
        this.stencilTest = z10;
        this.applyStencilTest = true;
        this.frontStencilStencilFailOperation = stencilOperation;
        this.frontStencilDepthFailOperation = stencilOperation2;
        this.frontStencilDepthPassOperation = stencilOperation3;
        this.backStencilStencilFailOperation = stencilOperation4;
        this.backStencilDepthFailOperation = stencilOperation5;
        this.backStencilDepthPassOperation = stencilOperation6;
        this.frontStencilFunction = testFunction;
        this.backStencilFunction = testFunction2;
        this.cachedHashCode = -1;
    }

    public void setWireframe(boolean z10) {
        this.applyWireFrame = true;
        this.wireframe = z10;
        this.cachedHashCode = -1;
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("RenderState[\n\nwireframe=");
        sb2.append(this.wireframe);
        sb2.append("\napplyWireFrame=");
        sb2.append(this.applyWireFrame);
        sb2.append("\ncullMode=");
        sb2.append((Object) this.cullMode);
        sb2.append("\napplyCullMode=");
        sb2.append(this.applyCullMode);
        sb2.append("\ndepthWrite=");
        sb2.append(this.depthWrite);
        sb2.append("\napplyDepthWrite=");
        sb2.append(this.applyDepthWrite);
        sb2.append("\ndepthTest=");
        sb2.append(this.depthTest);
        sb2.append("\ndepthFunc=");
        sb2.append((Object) this.depthFunc);
        sb2.append("\napplyDepthTest=");
        sb2.append(this.applyDepthTest);
        sb2.append("\ncolorWrite=");
        sb2.append(this.colorWrite);
        sb2.append("\napplyColorWrite=");
        sb2.append(this.applyColorWrite);
        sb2.append("\nblendEquation=");
        sb2.append((Object) this.blendEquation);
        sb2.append("\nblendMode=");
        sb2.append((Object) this.blendMode);
        sb2.append("\napplyBlendMode=");
        sb2.append(this.applyBlendMode);
        sb2.append("\noffsetEnabled=");
        sb2.append(this.offsetEnabled);
        sb2.append("\napplyPolyOffset=");
        sb2.append(this.applyPolyOffset);
        sb2.append("\noffsetFactor=");
        sb2.append(this.offsetFactor);
        sb2.append("\noffsetUnits=");
        sb2.append(this.offsetUnits);
        sb2.append("\nlineWidth=");
        sb2.append(this.lineWidth);
        if (this.blendMode.equals(BlendMode.Custom)) {
            str = "\ncustomBlendFactors=(" + ((Object) this.sfactorRGB) + ", " + ((Object) this.dfactorRGB) + ", " + ((Object) this.sfactorAlpha) + ", " + ((Object) this.dfactorAlpha) + ")";
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append("\n]");
        return sb2.toString();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(true, "pointSprite", false);
        capsule.write(this.wireframe, "wireframe", false);
        capsule.write(this.cullMode, "cullMode", FaceCullMode.Back);
        capsule.write(this.depthWrite, "depthWrite", true);
        capsule.write(this.depthTest, "depthTest", true);
        capsule.write(this.colorWrite, "colorWrite", true);
        capsule.write(this.blendMode, "blendMode", BlendMode.Off);
        capsule.write(this.offsetEnabled, "offsetEnabled", false);
        capsule.write(this.offsetFactor, "offsetFactor", 0.0f);
        capsule.write(this.offsetUnits, "offsetUnits", 0.0f);
        capsule.write(this.stencilTest, "stencilTest", false);
        StencilOperation stencilOperation = this.frontStencilStencilFailOperation;
        StencilOperation stencilOperation2 = StencilOperation.Keep;
        capsule.write(stencilOperation, "frontStencilStencilFailOperation", stencilOperation2);
        capsule.write(this.frontStencilDepthFailOperation, "frontStencilDepthFailOperation", stencilOperation2);
        capsule.write(this.frontStencilDepthPassOperation, "frontStencilDepthPassOperation", stencilOperation2);
        capsule.write(this.backStencilStencilFailOperation, "backStencilStencilFailOperation", stencilOperation2);
        capsule.write(this.backStencilDepthFailOperation, "backStencilDepthFailOperation", stencilOperation2);
        capsule.write(this.backStencilDepthPassOperation, "backStencilDepthPassOperation", stencilOperation2);
        TestFunction testFunction = this.frontStencilFunction;
        TestFunction testFunction2 = TestFunction.Always;
        capsule.write(testFunction, "frontStencilFunction", testFunction2);
        capsule.write(this.backStencilFunction, "backStencilFunction", testFunction2);
        capsule.write(this.frontStencilReference, "frontStencilReference", 0);
        capsule.write(this.backStencilReference, "backStencilReference", 0);
        capsule.write(this.frontStencilMask, "frontStencilMask", Integer.MAX_VALUE);
        capsule.write(this.backStencilMask, "backStencilMask", Integer.MAX_VALUE);
        capsule.write(this.blendEquation, "blendEquation", BlendEquation.Add);
        capsule.write(this.blendEquationAlpha, "blendEquationAlpha", BlendEquationAlpha.InheritColor);
        capsule.write(this.depthFunc, "depthFunc", TestFunction.LessOrEqual);
        capsule.write(this.lineWidth, "lineWidth", 1.0f);
        BlendFunc blendFunc = this.sfactorRGB;
        BlendFunc blendFunc2 = BlendFunc.One;
        capsule.write(blendFunc, "sfactorRGB", blendFunc2);
        capsule.write(this.dfactorRGB, "dfactorRGB", blendFunc2);
        capsule.write(this.sfactorAlpha, "sfactorAlpha", blendFunc2);
        capsule.write(this.dfactorAlpha, "dfactorAlpha", blendFunc2);
        capsule.write(this.applyWireFrame, "applyWireFrame", true);
        capsule.write(this.applyCullMode, "applyCullMode", true);
        capsule.write(this.applyDepthWrite, "applyDepthWrite", true);
        capsule.write(this.applyDepthTest, "applyDepthTest", true);
        capsule.write(this.applyColorWrite, "applyColorWrite", true);
        capsule.write(this.applyBlendMode, "applyBlendMode", true);
        capsule.write(this.applyPolyOffset, "applyPolyOffset", true);
        capsule.write(this.applyDepthFunc, "applyDepthFunc", true);
        capsule.write(this.applyLineWidth, "applyLineWidth", true);
    }

    public RenderState m1276clone() {
        try {
            return (RenderState) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }
}
