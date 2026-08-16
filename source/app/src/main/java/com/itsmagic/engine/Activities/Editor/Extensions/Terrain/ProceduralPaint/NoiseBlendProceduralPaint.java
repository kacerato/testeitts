package com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint;

import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import java.util.List;

public class NoiseBlendProceduralPaint extends com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a {

    public class a implements a.f {

        public final f4.b f70590a;

        public a(final f4.b val$s) {
            this.f70590a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70590a.f86024L = value;
        }

        @Override
        public int get() {
            return this.f70590a.f86024L;
        }
    }

    public class b implements a.f {

        public final f4.b f70592a;

        public b(final f4.b val$s) {
            this.f70592a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70592a.f86025M = value;
        }

        @Override
        public int get() {
            return this.f70592a.f86025M;
        }
    }

    public class c implements a.f {

        public final f4.b f70594a;

        public c(final f4.b val$s) {
            this.f70594a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70594a.f86026N = value;
        }

        @Override
        public int get() {
            return this.f70594a.f86026N;
        }
    }

    public class d implements a.f {

        public final f4.b f70596a;

        public d(final f4.b val$s) {
            this.f70596a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70596a.f86027O = value;
        }

        @Override
        public int get() {
            return this.f70596a.f86027O;
        }
    }

    public class e implements a.e {

        public final f4.b f70598a;

        public e(final f4.b val$s) {
            this.f70598a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70598a.f86028P = value;
        }

        @Override
        public float get() {
            return this.f70598a.f86028P;
        }
    }

    public class f implements a.e {

        public final f4.b f70600a;

        public f(final f4.b val$s) {
            this.f70600a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70600a.f86029Q = value;
        }

        @Override
        public float get() {
            return this.f70600a.f86029Q;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public NoiseBlendProceduralPaint() {
        super(r0, r0.b());
        f4.c cVar = f4.c.NoiseBlend;
    }

    @Override
    public native void applyNative(long heightTablePointer, long[] layerPointers, int terrainResolution, int startX, int startY, int endX, int endY, float terrainWidth, float terrainMaxHeight, float brushStartX, float brushStartY, float brushSize, float intensity, int[] layerOptions, float[] floatOptions, long brushAlphaPointer, int brushWidth, int brushHeight);

    @Override
    public float[] g(Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        return new float[]{bVar.f86028P, bVar.f86029Q};
    }

    @Override
    public int[] i(Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        return new int[]{bVar.f86024L, bVar.f86025M, bVar.f86026N, bVar.f86027O, bVar.f86030R};
    }

    @Override
    public void j(List<C5.b> entries, Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        d(entries, terrain, "Texture A", new a(bVar));
        d(entries, terrain, "Texture B", new b(bVar));
        d(entries, terrain, "Texture C", new c(bVar));
        d(entries, terrain, "Texture D", new d(bVar));
        c(entries, "Noise scale", 0.005f, 0.5f, new e(bVar));
        c(entries, "Contrast", 0.1f, 5.0f, new f(bVar));
    }
}
