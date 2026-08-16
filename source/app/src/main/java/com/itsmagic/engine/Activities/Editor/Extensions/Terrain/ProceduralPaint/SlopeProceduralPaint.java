package com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint;

import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import java.util.List;

public class SlopeProceduralPaint extends com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a {

    public class a implements a.f {

        public final f4.b f70614a;

        public a(final f4.b val$s) {
            this.f70614a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70614a.f86043c = value;
        }

        @Override
        public int get() {
            return this.f70614a.f86043c;
        }
    }

    public class b implements a.f {

        public final f4.b f70616a;

        public b(final f4.b val$s) {
            this.f70616a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70616a.f86045d = value;
        }

        @Override
        public int get() {
            return this.f70616a.f86045d;
        }
    }

    public class c implements a.f {

        public final f4.b f70618a;

        public c(final f4.b val$s) {
            this.f70618a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70618a.f86047e = value;
        }

        @Override
        public int get() {
            return this.f70618a.f86047e;
        }
    }

    public class d implements a.e {

        public final f4.b f70620a;

        public d(final f4.b val$s) {
            this.f70620a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70620a.f86049f = value;
        }

        @Override
        public float get() {
            return this.f70620a.f86049f;
        }
    }

    public class e implements a.e {

        public final f4.b f70622a;

        public e(final f4.b val$s) {
            this.f70622a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70622a.f86051g = value;
        }

        @Override
        public float get() {
            return this.f70622a.f86051g;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public SlopeProceduralPaint() {
        super(r0, r0.b());
        f4.c cVar = f4.c.Slope;
    }

    @Override
    public native void applyNative(long heightTablePointer, long[] layerPointers, int terrainResolution, int startX, int startY, int endX, int endY, float terrainWidth, float terrainMaxHeight, float brushStartX, float brushStartY, float brushSize, float intensity, int[] layerOptions, float[] floatOptions, long brushAlphaPointer, int brushWidth, int brushHeight);

    @Override
    public float[] g(Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        return new float[]{bVar.f86049f, bVar.f86051g};
    }

    @Override
    public int[] i(Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        return new int[]{bVar.f86043c, bVar.f86045d, bVar.f86047e};
    }

    @Override
    public void j(List<C5.b> entries, Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        d(entries, terrain, "Flat", new a(bVar));
        d(entries, terrain, "Slope", new b(bVar));
        d(entries, terrain, "Cliff", new c(bVar));
        c(entries, "Min angle", 0.0f, 90.0f, new d(bVar));
        c(entries, "Max angle", 0.0f, 90.0f, new e(bVar));
    }
}
