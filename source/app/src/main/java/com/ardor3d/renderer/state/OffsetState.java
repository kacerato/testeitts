package com.ardor3d.renderer.state;

import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.record.OffsetStateRecord;
import com.ardor3d.renderer.state.record.StateRecord;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.IOException;
import java.util.EnumSet;

public class OffsetState extends RenderState {
    private final EnumSet<OffsetType> _enabledOffsets = EnumSet.noneOf(OffsetType.class);
    private float _factor;
    private float _units;

    public enum OffsetType {
        Fill,
        Line,
        Point
    }

    @Override
    public StateRecord createStateRecord() {
        return new OffsetStateRecord();
    }

    public float getFactor() {
        return this._factor;
    }

    @Override
    public RenderState.StateType getType() {
        return RenderState.StateType.Offset;
    }

    public float getUnits() {
        return this._units;
    }

    public boolean isTypeEnabled(OffsetType offsetType) {
        return this._enabledOffsets.contains(offsetType);
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._factor = inputCapsule.readFloat("factor", 0.0f);
        this._units = inputCapsule.readFloat("units", 0.0f);
        this._enabledOffsets.clear();
        if (inputCapsule.readBoolean("typeFill", false)) {
            this._enabledOffsets.add(OffsetType.Fill);
        }
        if (inputCapsule.readBoolean("typeLine", false)) {
            this._enabledOffsets.add(OffsetType.Line);
        }
        if (inputCapsule.readBoolean("typePoint", false)) {
            this._enabledOffsets.add(OffsetType.Point);
        }
    }

    public void setFactor(float f10) {
        this._factor = f10;
        setNeedsRefresh(true);
    }

    public void setTypeEnabled(OffsetType offsetType, boolean z10) {
        if (z10) {
            this._enabledOffsets.add(offsetType);
        } else {
            this._enabledOffsets.remove(offsetType);
        }
        setNeedsRefresh(true);
    }

    public void setUnits(float f10) {
        this._units = f10;
        setNeedsRefresh(true);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._factor, "factor", 0.0f);
        outputCapsule.write(this._units, "units", 0.0f);
        outputCapsule.write(this._enabledOffsets.contains(OffsetType.Fill), "typeFill", false);
        outputCapsule.write(this._enabledOffsets.contains(OffsetType.Line), "typeLine", false);
        outputCapsule.write(this._enabledOffsets.contains(OffsetType.Point), "typePoint", false);
    }
}
