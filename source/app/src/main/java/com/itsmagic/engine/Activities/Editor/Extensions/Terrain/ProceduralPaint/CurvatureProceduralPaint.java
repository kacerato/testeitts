package com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint;

import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import java.util.List;

public class CurvatureProceduralPaint extends com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a {

    public class a implements a.f {

        public final f4.b f70542a;

        public a(final f4.b val$s) {
            this.f70542a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70542a.f86068p = value;
        }

        @Override
        public int get() {
            return this.f70542a.f86068p;
        }
    }

    public class b implements a.f {

        public final f4.b f70544a;

        public b(final f4.b val$s) {
            this.f70544a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70544a.f86069q = value;
        }

        @Override
        public int get() {
            return this.f70544a.f86069q;
        }
    }

    public class c implements a.f {

        public final f4.b f70546a;

        public c(final f4.b val$s) {
            this.f70546a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70546a.f86070r = value;
        }

        @Override
        public int get() {
            return this.f70546a.f86070r;
        }
    }

    public class d implements a.e {

        public final f4.b f70548a;

        public d(final f4.b val$s) {
            this.f70548a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70548a.f86071s = value;
        }

        @Override
        public float get() {
            return this.f70548a.f86071s;
        }
    }

    public class e implements a.e {

        public final f4.b f70550a;

        public e(final f4.b val$s) {
            this.f70550a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70550a.f86072t = value;
        }

        @Override
        public float get() {
            return this.f70550a.f86072t;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CurvatureProceduralPaint() {
        super(r0, r0.b());
        f4.c cVar = f4.c.Curvature;
    }

    @Override
    public native void applyNative(long heightTablePointer, long[] layerPointers, int terrainResolution, int startX, int startY, int endX, int endY, float terrainWidth, float terrainMaxHeight, float brushStartX, float brushStartY, float brushSize, float intensity, int[] layerOptions, float[] floatOptions, long brushAlphaPointer, int brushWidth, int brushHeight);

    @Override
    public float[] g(Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        return new float[]{bVar.f86071s, bVar.f86072t};
    }

    @Override
    public int[] i(Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        return new int[]{bVar.f86068p, bVar.f86069q, bVar.f86070r};
    }

    @Override
    public void j(List<C5.b> entries, Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        d(entries, terrain, "Convex", new a(bVar));
        d(entries, terrain, "Concave", new b(bVar));
        d(entries, terrain, "Flat", new c(bVar));
        c(entries, "Threshold", 0.0f, 0.5f, new d(bVar));
        c(entries, "Softness", 0.0f, 0.5f, new e(bVar));
    }
}
