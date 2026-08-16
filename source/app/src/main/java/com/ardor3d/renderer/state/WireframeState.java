package com.ardor3d.renderer.state;

import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.record.StateRecord;
import com.ardor3d.renderer.state.record.WireframeStateRecord;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.IOException;

public class WireframeState extends RenderState {
    protected Face _face = Face.FrontAndBack;
    protected float _lineWidth = 1.0f;
    protected boolean _antialiased = false;

    public enum Face {
        Front,
        Back,
        FrontAndBack
    }

    @Override
    public StateRecord createStateRecord() {
        return new WireframeStateRecord();
    }

    public Face getFace() {
        return this._face;
    }

    public float getLineWidth() {
        return this._lineWidth;
    }

    @Override
    public RenderState.StateType getType() {
        return RenderState.StateType.Wireframe;
    }

    public boolean isAntialiased() {
        return this._antialiased;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._face = (Face) inputCapsule.readEnum("face", Face.class, Face.FrontAndBack);
        this._lineWidth = inputCapsule.readFloat("lineWidth", 1.0f);
        this._antialiased = inputCapsule.readBoolean("antialiased", false);
    }

    public void setAntialiased(boolean z10) {
        this._antialiased = z10;
        setNeedsRefresh(true);
    }

    public void setFace(Face face) {
        if (face == null) {
            throw new IllegalArgumentException("face can not be null.");
        }
        this._face = face;
        setNeedsRefresh(true);
    }

    public void setLineWidth(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("Line width must be positive");
        }
        this._lineWidth = f10;
        setNeedsRefresh(true);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._face, "face", Face.FrontAndBack);
        outputCapsule.write(this._lineWidth, "lineWidth", 1.0f);
        outputCapsule.write(this._antialiased, "antialiased", false);
    }
}
