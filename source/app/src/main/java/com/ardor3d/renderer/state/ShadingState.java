package com.ardor3d.renderer.state;

import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.record.ShadingStateRecord;
import com.ardor3d.renderer.state.record.StateRecord;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.IOException;

public class ShadingState extends RenderState {
    protected ShadingMode _shadeMode = ShadingMode.Smooth;

    public enum ShadingMode {
        Flat,
        Smooth
    }

    @Override
    public StateRecord createStateRecord() {
        return new ShadingStateRecord();
    }

    public ShadingMode getShadingMode() {
        return this._shadeMode;
    }

    @Override
    public RenderState.StateType getType() {
        return RenderState.StateType.Shading;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._shadeMode = (ShadingMode) inputCapsule.readEnum("shadeMode", ShadingMode.class, ShadingMode.Smooth);
    }

    public void setShadingMode(ShadingMode shadingMode) {
        if (shadingMode == null) {
            throw new IllegalArgumentException("shadeMode can not be null.");
        }
        this._shadeMode = shadingMode;
        setNeedsRefresh(true);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._shadeMode, "shadeMode", ShadingMode.Smooth);
    }
}
