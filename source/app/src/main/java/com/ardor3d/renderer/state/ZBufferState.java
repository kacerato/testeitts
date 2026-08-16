package com.ardor3d.renderer.state;

import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.record.StateRecord;
import com.ardor3d.renderer.state.record.ZBufferStateRecord;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.IOException;

public class ZBufferState extends RenderState {
    protected TestFunction _function = TestFunction.LessThan;
    protected boolean _writable = true;

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

    @Override
    public StateRecord createStateRecord() {
        return new ZBufferStateRecord();
    }

    public TestFunction getFunction() {
        return this._function;
    }

    @Override
    public RenderState.StateType getType() {
        return RenderState.StateType.ZBuffer;
    }

    public boolean isWritable() {
        return this._writable;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._function = (TestFunction) inputCapsule.readEnum("function", TestFunction.class, TestFunction.LessThan);
        this._writable = inputCapsule.readBoolean("writable", true);
    }

    public void setFunction(TestFunction testFunction) {
        if (testFunction == null) {
            throw new IllegalArgumentException("function can not be null.");
        }
        this._function = testFunction;
        setNeedsRefresh(true);
    }

    public void setWritable(boolean z10) {
        this._writable = z10;
        setNeedsRefresh(true);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._function, "function", TestFunction.LessThan);
        outputCapsule.write(this._writable, "writable", true);
    }
}
