package com.ardor3d.renderer.state;

import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.record.CullStateRecord;
import com.ardor3d.renderer.state.record.StateRecord;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.IOException;

public class CullState extends RenderState {
    private Face cullFace = Face.None;
    private PolygonWind polygonWind = PolygonWind.CounterClockWise;

    public enum Face {
        None,
        Front,
        Back,
        FrontAndBack
    }

    public enum PolygonWind {
        CounterClockWise,
        ClockWise
    }

    @Override
    public StateRecord createStateRecord() {
        return new CullStateRecord();
    }

    public Face getCullFace() {
        return this.cullFace;
    }

    public PolygonWind getPolygonWind() {
        return this.polygonWind;
    }

    @Override
    public RenderState.StateType getType() {
        return RenderState.StateType.Cull;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this.cullFace = (Face) inputCapsule.readEnum("cullFace", Face.class, Face.None);
        this.polygonWind = (PolygonWind) inputCapsule.readEnum("polygonWind", PolygonWind.class, PolygonWind.CounterClockWise);
    }

    public void setCullFace(Face face) {
        this.cullFace = face;
        setNeedsRefresh(true);
    }

    public void setPolygonWind(PolygonWind polygonWind) {
        this.polygonWind = polygonWind;
        setNeedsRefresh(true);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this.cullFace, "cullFace", Face.None);
        outputCapsule.write(this.polygonWind, "polygonWind", PolygonWind.CounterClockWise);
    }
}
