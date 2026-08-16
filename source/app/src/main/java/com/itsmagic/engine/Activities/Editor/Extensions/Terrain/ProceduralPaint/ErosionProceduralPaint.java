package com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint;

import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import java.util.List;

public class ErosionProceduralPaint extends com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a {

    public class a implements a.f {

        public final f4.b f70564a;

        public a(final f4.b val$s) {
            this.f70564a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70564a.f86073u = value;
        }

        @Override
        public int get() {
            return this.f70564a.f86073u;
        }
    }

    public class b implements a.f {

        public final f4.b f70566a;

        public b(final f4.b val$s) {
            this.f70566a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70566a.f86074v = value;
        }

        @Override
        public int get() {
            return this.f70566a.f86074v;
        }
    }

    public class c implements a.f {

        public final f4.b f70568a;

        public c(final f4.b val$s) {
            this.f70568a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70568a.f86075w = value;
        }

        @Override
        public int get() {
            return this.f70568a.f86075w;
        }
    }

    public class d implements a.e {

        public final f4.b f70570a;

        public d(final f4.b val$s) {
            this.f70570a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70570a.f86076x = value;
        }

        @Override
        public float get() {
            return this.f70570a.f86076x;
        }
    }

    public class e implements a.e {

        public final f4.b f70572a;

        public e(final f4.b val$s) {
            this.f70572a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70572a.f86077y = value;
        }

        @Override
        public float get() {
            return this.f70572a.f86077y;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ErosionProceduralPaint() {
        super(r0, r0.b());
        f4.c cVar = f4.c.Erosion;
    }

    @Override
    public native void applyNative(long heightTablePointer, long[] layerPointers, int terrainResolution, int startX, int startY, int endX, int endY, float terrainWidth, float terrainMaxHeight, float brushStartX, float brushStartY, float brushSize, float intensity, int[] layerOptions, float[] floatOptions, long brushAlphaPointer, int brushWidth, int brushHeight);

    @Override
    public float[] g(Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        return new float[]{bVar.f86076x, bVar.f86077y};
    }

    @Override
    public int[] i(Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        return new int[]{bVar.f86073u, bVar.f86074v, bVar.f86075w};
    }

    @Override
    public void j(List<C5.b> entries, Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        d(entries, terrain, "Channel", new a(bVar));
        d(entries, terrain, "Edge", new b(bVar));
        d(entries, terrain, "Sediment", new c(bVar));
        c(entries, "Channel threshold", 0.0f, 1.0f, new d(bVar));
        c(entries, "Sediment strength", 0.0f, 1.0f, new e(bVar));
    }
}
