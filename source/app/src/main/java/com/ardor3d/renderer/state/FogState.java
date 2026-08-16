package com.ardor3d.renderer.state;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.record.FogStateRecord;
import com.ardor3d.renderer.state.record.StateRecord;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.IOException;

public class FogState extends RenderState {
    protected float start = 0.0f;
    protected float end = 1.0f;
    protected float density = 1.0f;
    protected final ColorRGBA color = new ColorRGBA();
    protected DensityFunction densityFunction = DensityFunction.Exponential;
    protected Quality quality = Quality.PerVertex;
    protected CoordinateSource source = CoordinateSource.Depth;

    public enum CoordinateSource {
        Depth,
        FogCoords
    }

    public enum DensityFunction {
        Linear,
        Exponential,
        ExponentialSquared
    }

    public enum Quality {
        PerVertex,
        PerPixel
    }

    @Override
    public StateRecord createStateRecord() {
        return new FogStateRecord();
    }

    public ReadOnlyColorRGBA getColor() {
        return this.color;
    }

    public float getDensity() {
        return this.density;
    }

    public DensityFunction getDensityFunction() {
        return this.densityFunction;
    }

    public float getEnd() {
        return this.end;
    }

    public Quality getQuality() {
        return this.quality;
    }

    public CoordinateSource getSource() {
        return this.source;
    }

    public float getStart() {
        return this.start;
    }

    @Override
    public RenderState.StateType getType() {
        return RenderState.StateType.Fog;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this.start = inputCapsule.readFloat("start", 0.0f);
        this.end = inputCapsule.readFloat("end", 0.0f);
        this.density = inputCapsule.readFloat("density", 0.0f);
        this.color.set((ColorRGBA) inputCapsule.readSavable("color", new ColorRGBA(ColorRGBA.WHITE)));
        this.densityFunction = (DensityFunction) inputCapsule.readEnum("densityFunction", DensityFunction.class, DensityFunction.Exponential);
        this.quality = (Quality) inputCapsule.readEnum("applyFunction", Quality.class, Quality.PerPixel);
        this.source = (CoordinateSource) inputCapsule.readEnum("source", CoordinateSource.class, CoordinateSource.Depth);
    }

    public void setColor(ReadOnlyColorRGBA readOnlyColorRGBA) {
        this.color.set(readOnlyColorRGBA);
        setNeedsRefresh(true);
    }

    public void setDensity(float f10) {
        if (f10 < 0.0f) {
            f10 = 0.0f;
        }
        if (f10 > 1.0f) {
            f10 = 1.0f;
        }
        this.density = f10;
        setNeedsRefresh(true);
    }

    public void setDensityFunction(DensityFunction densityFunction) {
        if (densityFunction == null) {
            throw new IllegalArgumentException("function can not be null.");
        }
        this.densityFunction = densityFunction;
        setNeedsRefresh(true);
    }

    public void setEnd(float f10) {
        this.end = f10;
        setNeedsRefresh(true);
    }

    public void setQuality(Quality quality) {
        if (quality == null) {
            throw new IllegalArgumentException("quality can not be null.");
        }
        this.quality = quality;
        setNeedsRefresh(true);
    }

    public void setSource(CoordinateSource coordinateSource) {
        this.source = coordinateSource;
    }

    public void setStart(float f10) {
        this.start = f10;
        setNeedsRefresh(true);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this.start, "start", 0.0f);
        outputCapsule.write(this.end, "end", 0.0f);
        outputCapsule.write(this.density, "density", 0.0f);
        outputCapsule.write(this.color, "color", new ColorRGBA(ColorRGBA.WHITE));
        outputCapsule.write(this.densityFunction, "densityFunction", DensityFunction.Exponential);
        outputCapsule.write(this.quality, "applyFunction", Quality.PerPixel);
        outputCapsule.write(this.source, "source", CoordinateSource.Depth);
    }
}
