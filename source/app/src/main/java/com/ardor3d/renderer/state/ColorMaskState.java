package com.ardor3d.renderer.state;

import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.record.ColorMaskStateRecord;
import com.ardor3d.renderer.state.record.StateRecord;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.IOException;

public class ColorMaskState extends RenderState {
    protected boolean blue = true;
    protected boolean green = true;
    protected boolean red = true;
    protected boolean alpha = true;

    @Override
    public StateRecord createStateRecord() {
        return new ColorMaskStateRecord();
    }

    public boolean getAlpha() {
        return this.alpha;
    }

    public boolean getBlue() {
        return this.blue;
    }

    public boolean getGreen() {
        return this.green;
    }

    public boolean getRed() {
        return this.red;
    }

    @Override
    public RenderState.StateType getType() {
        return RenderState.StateType.ColorMask;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this.blue = inputCapsule.readBoolean("blue", true);
        this.green = inputCapsule.readBoolean("green", true);
        this.red = inputCapsule.readBoolean("red", true);
        this.alpha = inputCapsule.readBoolean("alpha", true);
    }

    public void setAll(boolean z10) {
        this.blue = z10;
        this.green = z10;
        this.red = z10;
        this.alpha = z10;
        setNeedsRefresh(true);
    }

    public void setAlpha(boolean z10) {
        this.alpha = z10;
        setNeedsRefresh(true);
    }

    public void setBlue(boolean z10) {
        this.blue = z10;
        setNeedsRefresh(true);
    }

    public void setGreen(boolean z10) {
        this.green = z10;
        setNeedsRefresh(true);
    }

    public void setRed(boolean z10) {
        this.red = z10;
        setNeedsRefresh(true);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this.blue, "blue", true);
        outputCapsule.write(this.green, "green", true);
        outputCapsule.write(this.red, "red", true);
        outputCapsule.write(this.alpha, "alpha", true);
    }
}
