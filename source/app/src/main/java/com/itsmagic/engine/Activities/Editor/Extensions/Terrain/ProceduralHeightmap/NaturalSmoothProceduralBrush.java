package com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralHeightmap;

import e4.AbstractC13004a;
import e4.EnumC13007d;

public class NaturalSmoothProceduralBrush extends AbstractC13004a {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public NaturalSmoothProceduralBrush() {
        super(r0, r0.b());
        EnumC13007d enumC13007d = EnumC13007d.NaturalSmooth;
    }

    @Override
    public native void applyNative(long tablePointer, int terrainResolution, int startX, int startY, int endX, int endY, float terrainWidth, float terrainMaxHeight, float terrainOriginX, float terrainOriginZ, float brushStartX, float brushStartY, float brushSize, float intensity, int proceduralOption, float directionX, float directionY, long seed);
}
