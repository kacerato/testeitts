package com.ardor3d.renderer.state;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.record.BlendStateRecord;
import com.ardor3d.renderer.state.record.StateRecord;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import java.io.IOException;

public class BlendState extends RenderState {
    private BlendEquation _blendEquationAlpha;
    private BlendEquation _blendEquationRGB;
    private DestinationFunction _destinationFunctionAlpha;
    private DestinationFunction _destinationFunctionRGB;
    private float _reference;
    private boolean _sampleAlphaToCoverageEnabled;
    private boolean _sampleAlphaToOneEnabled;
    private float _sampleCoverage;
    private boolean _sampleCoverageEnabled;
    private boolean _sampleCoverageInverted;
    private SourceFunction _sourceFunctionAlpha;
    private SourceFunction _sourceFunctionRGB;
    private boolean _testEnabled;
    private TestFunction _testFunction;
    private boolean _blendEnabled = false;
    private ColorRGBA _constantColor = new ColorRGBA(0.0f, 0.0f, 0.0f, 0.0f);

    public enum BlendEquation {
        Add,
        Subtract,
        ReverseSubtract,
        Min,
        Max
    }

    public enum DestinationFunction {
        Zero(false),
        One(false),
        SourceColor(false),
        OneMinusSourceColor(false),
        SourceAlpha(false),
        OneMinusSourceAlpha(false),
        DestinationAlpha(false),
        OneMinusDestinationAlpha(false),
        ConstantColor(true),
        OneMinusConstantColor(true),
        ConstantAlpha(true),
        OneMinusConstantAlpha(true);

        private boolean usesConstantColor;

        DestinationFunction(boolean z10) {
            this.usesConstantColor = z10;
        }

        public boolean usesConstantColor() {
            return this.usesConstantColor;
        }
    }

    public enum SourceFunction {
        Zero(false),
        One(false),
        DestinationColor(false),
        OneMinusDestinationColor(false),
        SourceAlpha(false),
        OneMinusSourceAlpha(false),
        DestinationAlpha(false),
        OneMinusDestinationAlpha(false),
        SourceAlphaSaturate(false),
        ConstantColor(true),
        OneMinusConstantColor(true),
        ConstantAlpha(true),
        OneMinusConstantAlpha(true);

        private boolean usesConstantColor;

        SourceFunction(boolean z10) {
            this.usesConstantColor = z10;
        }

        public boolean usesConstantColor() {
            return this.usesConstantColor;
        }
    }

    public enum TestFunction {
        Never,
        Always,
        EqualTo,
        NotEqualTo,
        LessThan,
        LessThanOrEqualTo,
        GreaterThan,
        GreaterThanOrEqualTo
    }

    public BlendState() {
        SourceFunction sourceFunction = SourceFunction.SourceAlpha;
        this._sourceFunctionRGB = sourceFunction;
        DestinationFunction destinationFunction = DestinationFunction.OneMinusSourceAlpha;
        this._destinationFunctionRGB = destinationFunction;
        BlendEquation blendEquation = BlendEquation.Add;
        this._blendEquationRGB = blendEquation;
        this._sourceFunctionAlpha = sourceFunction;
        this._destinationFunctionAlpha = destinationFunction;
        this._blendEquationAlpha = blendEquation;
        this._testEnabled = false;
        this._testFunction = TestFunction.GreaterThan;
        this._reference = 0.0f;
        this._sampleAlphaToCoverageEnabled = false;
        this._sampleAlphaToOneEnabled = false;
        this._sampleCoverageEnabled = false;
        this._sampleCoverage = 1.0f;
        this._sampleCoverageInverted = false;
    }

    @Override
    public StateRecord createStateRecord() {
        return new BlendStateRecord();
    }

    public BlendEquation getBlendEquationAlpha() {
        return this._blendEquationAlpha;
    }

    public BlendEquation getBlendEquationRGB() {
        return this._blendEquationRGB;
    }

    public ReadOnlyColorRGBA getConstantColor() {
        return this._constantColor;
    }

    public DestinationFunction getDestinationFunctionAlpha() {
        return this._destinationFunctionAlpha;
    }

    public DestinationFunction getDestinationFunctionRGB() {
        return this._destinationFunctionRGB;
    }

    public float getReference() {
        return this._reference;
    }

    public float getSampleCoverage() {
        return this._sampleCoverage;
    }

    public SourceFunction getSourceFunctionAlpha() {
        return this._sourceFunctionAlpha;
    }

    public SourceFunction getSourceFunctionRGB() {
        return this._sourceFunctionRGB;
    }

    public TestFunction getTestFunction() {
        return this._testFunction;
    }

    @Override
    public RenderState.StateType getType() {
        return RenderState.StateType.Blend;
    }

    public boolean isBlendEnabled() {
        return this._blendEnabled;
    }

    public boolean isSampleAlphaToCoverageEnabled() {
        return this._sampleAlphaToCoverageEnabled;
    }

    public boolean isSampleAlphaToOneEnabled() {
        return this._sampleAlphaToOneEnabled;
    }

    public boolean isSampleCoverageEnabled() {
        return this._sampleCoverageEnabled;
    }

    public boolean isSampleCoverageInverted() {
        return this._sampleCoverageInverted;
    }

    public boolean isTestEnabled() {
        return this._testEnabled;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._blendEnabled = inputCapsule.readBoolean("blendEnabled", false);
        SourceFunction sourceFunction = SourceFunction.SourceAlpha;
        this._sourceFunctionRGB = (SourceFunction) inputCapsule.readEnum("sourceFunctionRGB", SourceFunction.class, sourceFunction);
        DestinationFunction destinationFunction = DestinationFunction.OneMinusSourceAlpha;
        this._destinationFunctionRGB = (DestinationFunction) inputCapsule.readEnum("destinationFunctionRGB", DestinationFunction.class, destinationFunction);
        BlendEquation blendEquation = BlendEquation.Add;
        this._blendEquationRGB = (BlendEquation) inputCapsule.readEnum("blendEquationRGB", BlendEquation.class, blendEquation);
        this._sourceFunctionAlpha = (SourceFunction) inputCapsule.readEnum("sourceFunctionAlpha", SourceFunction.class, sourceFunction);
        this._destinationFunctionAlpha = (DestinationFunction) inputCapsule.readEnum("destinationFunctionAlpha", DestinationFunction.class, destinationFunction);
        this._blendEquationAlpha = (BlendEquation) inputCapsule.readEnum("blendEquationAlpha", BlendEquation.class, blendEquation);
        this._testEnabled = inputCapsule.readBoolean("testEnabled", false);
        this._testFunction = (TestFunction) inputCapsule.readEnum("test", TestFunction.class, TestFunction.GreaterThan);
        this._reference = inputCapsule.readFloat("reference", 0.0f);
        this._constantColor = (ColorRGBA) inputCapsule.readSavable("constantColor", null);
    }

    public void setBlendEnabled(boolean z10) {
        this._blendEnabled = z10;
        setNeedsRefresh(true);
    }

    public void setBlendEquation(BlendEquation blendEquation) {
        setBlendEquationRGB(blendEquation);
        setBlendEquationAlpha(blendEquation);
    }

    public void setBlendEquationAlpha(BlendEquation blendEquation) {
        if (blendEquation == null) {
            throw new IllegalArgumentException("blendEquation can not be null.");
        }
        this._blendEquationAlpha = blendEquation;
    }

    public void setBlendEquationRGB(BlendEquation blendEquation) {
        if (blendEquation == null) {
            throw new IllegalArgumentException("blendEquation can not be null.");
        }
        this._blendEquationRGB = blendEquation;
    }

    public void setConstantColor(ReadOnlyColorRGBA readOnlyColorRGBA) {
        this._constantColor.set(readOnlyColorRGBA);
    }

    public void setDestinationFunction(DestinationFunction destinationFunction) {
        setDestinationFunctionRGB(destinationFunction);
        setDestinationFunctionAlpha(destinationFunction);
    }

    public void setDestinationFunctionAlpha(DestinationFunction destinationFunction) {
        if (destinationFunction == null) {
            throw new IllegalArgumentException("function can not be null.");
        }
        this._destinationFunctionAlpha = destinationFunction;
        setNeedsRefresh(true);
    }

    public void setDestinationFunctionRGB(DestinationFunction destinationFunction) {
        if (destinationFunction == null) {
            throw new IllegalArgumentException("function can not be null.");
        }
        this._destinationFunctionRGB = destinationFunction;
        setNeedsRefresh(true);
    }

    public void setReference(float f10) {
        if (f10 < 0.0f) {
            f10 = 0.0f;
        }
        if (f10 > 1.0f) {
            f10 = 1.0f;
        }
        this._reference = f10;
        setNeedsRefresh(true);
    }

    public void setSampleAlphaToCoverageEnabled(boolean z10) {
        this._sampleAlphaToCoverageEnabled = z10;
    }

    public void setSampleAlphaToOneEnabled(boolean z10) {
        this._sampleAlphaToOneEnabled = z10;
    }

    public void setSampleCoverage(float f10) {
        if (f10 > 1.0f || f10 < 0.0f) {
            throw new IllegalArgumentException("value must be in range [0f, 1f]");
        }
        this._sampleCoverage = f10;
    }

    public void setSampleCoverageEnabled(boolean z10) {
        this._sampleCoverageEnabled = z10;
    }

    public void setSampleCoverageInverted(boolean z10) {
        this._sampleCoverageInverted = z10;
    }

    public void setSourceFunction(SourceFunction sourceFunction) {
        setSourceFunctionRGB(sourceFunction);
        setSourceFunctionAlpha(sourceFunction);
    }

    public void setSourceFunctionAlpha(SourceFunction sourceFunction) {
        if (sourceFunction == null) {
            throw new IllegalArgumentException("function can not be null.");
        }
        this._sourceFunctionAlpha = sourceFunction;
        setNeedsRefresh(true);
    }

    public void setSourceFunctionRGB(SourceFunction sourceFunction) {
        if (sourceFunction == null) {
            throw new IllegalArgumentException("function can not be null.");
        }
        this._sourceFunctionRGB = sourceFunction;
        setNeedsRefresh(true);
    }

    public void setTestEnabled(boolean z10) {
        this._testEnabled = z10;
        setNeedsRefresh(true);
    }

    public void setTestFunction(TestFunction testFunction) {
        if (testFunction == null) {
            throw new IllegalArgumentException("function can not be null.");
        }
        this._testFunction = testFunction;
        setNeedsRefresh(true);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._blendEnabled, "blendEnabled", false);
        SourceFunction sourceFunction = this._sourceFunctionRGB;
        SourceFunction sourceFunction2 = SourceFunction.SourceAlpha;
        outputCapsule.write(sourceFunction, "sourceFunctionRGB", sourceFunction2);
        DestinationFunction destinationFunction = this._destinationFunctionRGB;
        DestinationFunction destinationFunction2 = DestinationFunction.OneMinusSourceAlpha;
        outputCapsule.write(destinationFunction, "destinationFunctionRGB", destinationFunction2);
        BlendEquation blendEquation = this._blendEquationRGB;
        BlendEquation blendEquation2 = BlendEquation.Add;
        outputCapsule.write(blendEquation, "blendEquationRGB", blendEquation2);
        outputCapsule.write(this._sourceFunctionAlpha, "sourceFunctionAlpha", sourceFunction2);
        outputCapsule.write(this._destinationFunctionAlpha, "destinationFunctionAlpha", destinationFunction2);
        outputCapsule.write(this._blendEquationAlpha, "blendEquationAlpha", blendEquation2);
        outputCapsule.write(this._testEnabled, "testEnabled", false);
        outputCapsule.write(this._testFunction, "test", TestFunction.GreaterThan);
        outputCapsule.write(this._reference, "reference", 0.0f);
        outputCapsule.write(this._constantColor, "constantColor", (Savable) null);
        outputCapsule.write(this._sampleAlphaToCoverageEnabled, "sampleAlphaToCoverageEnabled", false);
        outputCapsule.write(this._sampleAlphaToOneEnabled, "sampleAlphaToOneEnabled", false);
        outputCapsule.write(this._sampleCoverageEnabled, "sampleCoverageEnabled", false);
        outputCapsule.write(this._sampleCoverageInverted, "sampleCoverageInverted", false);
        outputCapsule.write(this._sampleCoverage, "sampleCoverage", 1.0f);
    }
}
