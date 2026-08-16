package com.ardor3d.renderer.state;

import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.record.ClipStateRecord;
import com.ardor3d.renderer.state.record.StateRecord;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.IOException;
import java.lang.reflect.Array;

public class ClipState extends RenderState {
    public static final int MAX_CLIP_PLANES = 6;
    protected boolean[] enabledClipPlanes = new boolean[6];
    protected double[][] planeEquations = (double[][]) Array.newInstance(Double.TYPE, 6, 4);

    @Override
    public StateRecord createStateRecord() {
        return new ClipStateRecord();
    }

    public boolean getPlaneEnabled(int i10) {
        return this.enabledClipPlanes[i10];
    }

    public double getPlaneEquation(int i10, int i11) {
        return this.planeEquations[i10][i11];
    }

    public double[] getPlaneEquations(int i10) {
        return this.planeEquations[i10];
    }

    @Override
    public RenderState.StateType getType() {
        return RenderState.StateType.Clip;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this.enabledClipPlanes = inputCapsule.readBooleanArray("enabledClipPlanes", new boolean[6]);
        this.planeEquations = inputCapsule.readDoubleArray2D("planeEquations", (double[][]) Array.newInstance(Double.TYPE, 6, 4));
    }

    public void setClipPlaneEquation(int i10, double d10, double d11, double d12, double d13) {
        if (i10 < 0 || i10 >= 6) {
            return;
        }
        double[] dArr = this.planeEquations[i10];
        dArr[0] = d10;
        dArr[1] = d11;
        dArr[2] = d12;
        dArr[3] = d13;
        setNeedsRefresh(true);
    }

    public void setEnableClipPlane(int i10, boolean z10) {
        if (i10 < 0 || i10 >= 6) {
            return;
        }
        this.enabledClipPlanes[i10] = z10;
        setNeedsRefresh(true);
    }

    public void setPlaneEq(int i10, int i11, double d10) {
        this.planeEquations[i10][i11] = d10;
        setNeedsRefresh(true);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this.enabledClipPlanes, "enabledClipPlanes", new boolean[6]);
        outputCapsule.write(this.planeEquations, "planeEquations", (double[][]) Array.newInstance(Double.TYPE, 6, 4));
    }
}
