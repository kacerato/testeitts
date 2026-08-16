package com.ardor3d.renderer.state;

import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.record.StateRecord;
import com.ardor3d.renderer.state.record.StencilStateRecord;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.IOException;

public class StencilState extends RenderState {
    private int _stencilFuncMaskBack;
    private int _stencilFuncMaskFront;
    private StencilFunction _stencilFunctionBack;
    private StencilFunction _stencilFunctionFront;
    private StencilOperation _stencilOpFailBack;
    private StencilOperation _stencilOpFailFront;
    private StencilOperation _stencilOpZFailBack;
    private StencilOperation _stencilOpZFailFront;
    private StencilOperation _stencilOpZPassBack;
    private StencilOperation _stencilOpZPassFront;
    private int _stencilReferenceBack;
    private int _stencilReferenceFront;
    private int _stencilWriteMaskBack;
    private int _stencilWriteMaskFront;
    private boolean _useTwoSided = false;

    public enum StencilFunction {
        Never,
        LessThan,
        LessThanOrEqualTo,
        GreaterThan,
        GreaterThanOrEqualTo,
        EqualTo,
        NotEqualTo,
        Always
    }

    public enum StencilOperation {
        Keep,
        Zero,
        Replace,
        Increment,
        Decrement,
        IncrementWrap,
        DecrementWrap,
        Invert
    }

    public StencilState() {
        StencilFunction stencilFunction = StencilFunction.Always;
        this._stencilFunctionFront = stencilFunction;
        this._stencilReferenceFront = 0;
        this._stencilFuncMaskFront = -1;
        this._stencilWriteMaskFront = -1;
        StencilOperation stencilOperation = StencilOperation.Keep;
        this._stencilOpFailFront = stencilOperation;
        this._stencilOpZFailFront = stencilOperation;
        this._stencilOpZPassFront = stencilOperation;
        this._stencilFunctionBack = stencilFunction;
        this._stencilReferenceBack = 0;
        this._stencilFuncMaskBack = -1;
        this._stencilWriteMaskBack = -1;
        this._stencilOpFailBack = stencilOperation;
        this._stencilOpZFailBack = stencilOperation;
        this._stencilOpZPassBack = stencilOperation;
    }

    @Override
    public StateRecord createStateRecord() {
        return new StencilStateRecord();
    }

    public int getStencilFuncMaskBack() {
        return this._stencilFuncMaskBack;
    }

    public int getStencilFuncMaskFront() {
        return this._stencilFuncMaskFront;
    }

    public StencilFunction getStencilFunctionBack() {
        return this._stencilFunctionBack;
    }

    public StencilFunction getStencilFunctionFront() {
        return this._stencilFunctionFront;
    }

    public StencilOperation getStencilOpFailBack() {
        return this._stencilOpFailBack;
    }

    public StencilOperation getStencilOpFailFront() {
        return this._stencilOpFailFront;
    }

    public StencilOperation getStencilOpZFailBack() {
        return this._stencilOpZFailBack;
    }

    public StencilOperation getStencilOpZFailFront() {
        return this._stencilOpZFailFront;
    }

    public StencilOperation getStencilOpZPassBack() {
        return this._stencilOpZPassBack;
    }

    public StencilOperation getStencilOpZPassFront() {
        return this._stencilOpZPassFront;
    }

    public int getStencilReferenceBack() {
        return this._stencilReferenceBack;
    }

    public int getStencilReferenceFront() {
        return this._stencilReferenceFront;
    }

    public int getStencilWriteMaskBack() {
        return this._stencilWriteMaskBack;
    }

    public int getStencilWriteMaskFront() {
        return this._stencilWriteMaskFront;
    }

    @Override
    public RenderState.StateType getType() {
        return RenderState.StateType.Stencil;
    }

    public boolean isUseTwoSided() {
        return this._useTwoSided;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._useTwoSided = inputCapsule.readBoolean("useTwoSided", false);
        StencilFunction stencilFunction = StencilFunction.Always;
        this._stencilFunctionFront = (StencilFunction) inputCapsule.readEnum("stencilFuncFront", StencilFunction.class, stencilFunction);
        this._stencilReferenceFront = inputCapsule.readInt("stencilRefFront", 0);
        this._stencilWriteMaskFront = inputCapsule.readInt("stencilWriteMaskFront", -1);
        this._stencilFuncMaskFront = inputCapsule.readInt("stencilFuncMaskFront", -1);
        StencilOperation stencilOperation = StencilOperation.Keep;
        this._stencilOpFailFront = (StencilOperation) inputCapsule.readEnum("stencilOpFailFront", StencilOperation.class, stencilOperation);
        this._stencilOpZFailFront = (StencilOperation) inputCapsule.readEnum("stencilOpZFailFront", StencilOperation.class, stencilOperation);
        this._stencilOpZPassFront = (StencilOperation) inputCapsule.readEnum("stencilOpZPassFront", StencilOperation.class, stencilOperation);
        this._stencilFunctionBack = (StencilFunction) inputCapsule.readEnum("stencilFuncBack", StencilFunction.class, stencilFunction);
        this._stencilReferenceBack = inputCapsule.readInt("stencilRefBack", 0);
        this._stencilWriteMaskBack = inputCapsule.readInt("stencilWriteMaskBack", -1);
        this._stencilFuncMaskBack = inputCapsule.readInt("stencilFuncMaskBack", -1);
        this._stencilOpFailBack = (StencilOperation) inputCapsule.readEnum("stencilOpFailBack", StencilOperation.class, stencilOperation);
        this._stencilOpZFailBack = (StencilOperation) inputCapsule.readEnum("stencilOpZFailBack", StencilOperation.class, stencilOperation);
        this._stencilOpZPassBack = (StencilOperation) inputCapsule.readEnum("stencilOpZPassBack", StencilOperation.class, stencilOperation);
    }

    public void setStencilFuncMask(int i10) {
        setStencilFuncMaskFront(i10);
        setStencilFuncMaskBack(i10);
    }

    public void setStencilFuncMaskBack(int i10) {
        this._stencilFuncMaskBack = i10;
        setNeedsRefresh(true);
    }

    public void setStencilFuncMaskFront(int i10) {
        this._stencilFuncMaskFront = i10;
        setNeedsRefresh(true);
    }

    public void setStencilFunction(StencilFunction stencilFunction) {
        setStencilFunctionFront(stencilFunction);
        setStencilFunctionBack(stencilFunction);
    }

    public void setStencilFunctionBack(StencilFunction stencilFunction) {
        if (stencilFunction == null) {
            throw new IllegalArgumentException("function can not be null.");
        }
        this._stencilFunctionBack = stencilFunction;
        setNeedsRefresh(true);
    }

    public void setStencilFunctionFront(StencilFunction stencilFunction) {
        if (stencilFunction == null) {
            throw new IllegalArgumentException("function can not be null.");
        }
        this._stencilFunctionFront = stencilFunction;
        setNeedsRefresh(true);
    }

    public void setStencilMask(int i10) {
        setStencilMaskFront(i10);
        setStencilMaskBack(i10);
    }

    public void setStencilMaskBack(int i10) {
        setStencilWriteMaskBack(i10);
        setStencilFuncMaskBack(i10);
    }

    public void setStencilMaskFront(int i10) {
        setStencilWriteMaskFront(i10);
        setStencilFuncMaskFront(i10);
    }

    public void setStencilOpFail(StencilOperation stencilOperation) {
        setStencilOpFailFront(stencilOperation);
        setStencilOpFailBack(stencilOperation);
    }

    public void setStencilOpFailBack(StencilOperation stencilOperation) {
        if (stencilOperation == null) {
            throw new IllegalArgumentException("operation can not be null.");
        }
        this._stencilOpFailBack = stencilOperation;
        setNeedsRefresh(true);
    }

    public void setStencilOpFailFront(StencilOperation stencilOperation) {
        if (stencilOperation == null) {
            throw new IllegalArgumentException("operation can not be null.");
        }
        this._stencilOpFailFront = stencilOperation;
        setNeedsRefresh(true);
    }

    public void setStencilOpZFail(StencilOperation stencilOperation) {
        setStencilOpZFailFront(stencilOperation);
        setStencilOpZFailBack(stencilOperation);
    }

    public void setStencilOpZFailBack(StencilOperation stencilOperation) {
        if (stencilOperation == null) {
            throw new IllegalArgumentException("operation can not be null.");
        }
        this._stencilOpZFailBack = stencilOperation;
        setNeedsRefresh(true);
    }

    public void setStencilOpZFailFront(StencilOperation stencilOperation) {
        if (stencilOperation == null) {
            throw new IllegalArgumentException("operation can not be null.");
        }
        this._stencilOpZFailFront = stencilOperation;
        setNeedsRefresh(true);
    }

    public void setStencilOpZPass(StencilOperation stencilOperation) {
        setStencilOpZPassFront(stencilOperation);
        setStencilOpZPassBack(stencilOperation);
    }

    public void setStencilOpZPassBack(StencilOperation stencilOperation) {
        if (stencilOperation == null) {
            throw new IllegalArgumentException("operation can not be null.");
        }
        this._stencilOpZPassBack = stencilOperation;
        setNeedsRefresh(true);
    }

    public void setStencilOpZPassFront(StencilOperation stencilOperation) {
        if (stencilOperation == null) {
            throw new IllegalArgumentException("operation can not be null.");
        }
        this._stencilOpZPassFront = stencilOperation;
        setNeedsRefresh(true);
    }

    public void setStencilReference(int i10) {
        setStencilReferenceFront(i10);
        setStencilReferenceBack(i10);
    }

    public void setStencilReferenceBack(int i10) {
        this._stencilReferenceBack = i10;
        setNeedsRefresh(true);
    }

    public void setStencilReferenceFront(int i10) {
        this._stencilReferenceFront = i10;
        setNeedsRefresh(true);
    }

    public void setStencilWriteMask(int i10) {
        setStencilWriteMaskFront(i10);
        setStencilWriteMaskBack(i10);
    }

    public void setStencilWriteMaskBack(int i10) {
        this._stencilWriteMaskBack = i10;
        setNeedsRefresh(true);
    }

    public void setStencilWriteMaskFront(int i10) {
        this._stencilWriteMaskFront = i10;
        setNeedsRefresh(true);
    }

    public void setUseTwoSided(boolean z10) {
        this._useTwoSided = z10;
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._useTwoSided, "useTwoSided", false);
        StencilFunction stencilFunction = this._stencilFunctionFront;
        StencilFunction stencilFunction2 = StencilFunction.Always;
        outputCapsule.write(stencilFunction, "stencilFuncFront", stencilFunction2);
        outputCapsule.write(this._stencilReferenceFront, "stencilRefFront", 0);
        outputCapsule.write(this._stencilWriteMaskFront, "stencilWriteMaskFront", -1);
        outputCapsule.write(this._stencilFuncMaskFront, "stencilFuncMaskFront", -1);
        StencilOperation stencilOperation = this._stencilOpFailFront;
        StencilOperation stencilOperation2 = StencilOperation.Keep;
        outputCapsule.write(stencilOperation, "stencilOpFailFront", stencilOperation2);
        outputCapsule.write(this._stencilOpZFailFront, "stencilOpZFailFront", stencilOperation2);
        outputCapsule.write(this._stencilOpZPassFront, "stencilOpZPassFront", stencilOperation2);
        outputCapsule.write(this._stencilFunctionBack, "stencilFuncBack", stencilFunction2);
        outputCapsule.write(this._stencilReferenceBack, "stencilRefBack", 0);
        outputCapsule.write(this._stencilWriteMaskBack, "stencilWriteMaskBack", -1);
        outputCapsule.write(this._stencilFuncMaskBack, "stencilFuncMaskBack", -1);
        outputCapsule.write(this._stencilOpFailBack, "stencilOpFailBack", stencilOperation2);
        outputCapsule.write(this._stencilOpZFailBack, "stencilOpZFailBack", stencilOperation2);
        outputCapsule.write(this._stencilOpZPassBack, "stencilOpZPassBack", stencilOperation2);
    }
}
