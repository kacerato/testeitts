package com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint;

import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import java.util.List;

public class BiomeProceduralPaint extends com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a {

    public class a implements a.f {

        public final f4.b f70512a;

        public a(final f4.b val$s) {
            this.f70512a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70512a.f86050f0 = value;
        }

        @Override
        public int get() {
            return this.f70512a.f86050f0;
        }
    }

    public class b implements a.f {

        public final f4.b f70514a;

        public b(final f4.b val$s) {
            this.f70514a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70514a.f86052g0 = value;
        }

        @Override
        public int get() {
            return this.f70514a.f86052g0;
        }
    }

    public class c implements a.f {

        public final f4.b f70516a;

        public c(final f4.b val$s) {
            this.f70516a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70516a.f86054h0 = value;
        }

        @Override
        public int get() {
            return this.f70516a.f86054h0;
        }
    }

    public class d implements a.f {

        public final f4.b f70518a;

        public d(final f4.b val$s) {
            this.f70518a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70518a.f86056i0 = value;
        }

        @Override
        public int get() {
            return this.f70518a.f86056i0;
        }
    }

    public class e implements a.f {

        public final f4.b f70520a;

        public e(final f4.b val$s) {
            this.f70520a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70520a.f86058j0 = value;
        }

        @Override
        public int get() {
            return this.f70520a.f86058j0;
        }
    }

    public class f implements a.e {

        public final f4.b f70522a;

        public f(final f4.b val$s) {
            this.f70522a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70522a.f86060k0 = value;
        }

        @Override
        public float get() {
            return this.f70522a.f86060k0;
        }
    }

    public class g implements a.e {

        public final f4.b f70524a;

        public g(final f4.b val$s) {
            this.f70524a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70524a.f86062l0 = value;
        }

        @Override
        public float get() {
            return this.f70524a.f86062l0;
        }
    }

    public class h implements a.e {

        public final f4.b f70526a;

        public h(final f4.b val$s) {
            this.f70526a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70526a.f86064m0 = value;
        }

        @Override
        public float get() {
            return this.f70526a.f86064m0;
        }
    }

    public class i implements a.e {

        public final f4.b f70528a;

        public i(final f4.b val$s) {
            this.f70528a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70528a.f86066n0 = value;
        }

        @Override
        public float get() {
            return this.f70528a.f86066n0;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public BiomeProceduralPaint() {
        super(r0, r0.b());
        f4.c cVar = f4.c.Biome;
    }

    @Override
    public native void applyNative(long heightTablePointer, long[] layerPointers, int terrainResolution, int startX, int startY, int endX, int endY, float terrainWidth, float terrainMaxHeight, float brushStartX, float brushStartY, float brushSize, float intensity, int[] layerOptions, float[] floatOptions, long brushAlphaPointer, int brushWidth, int brushHeight);

    @Override
    public float[] g(Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        return new float[]{bVar.f86060k0, bVar.f86062l0, bVar.f86064m0, bVar.f86066n0};
    }

    @Override
    public int[] i(Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        return new int[]{bVar.f86050f0, bVar.f86052g0, bVar.f86054h0, bVar.f86056i0, bVar.f86058j0};
    }

    @Override
    public void j(List<C5.b> entries, Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        d(entries, terrain, "Grass", new a(bVar));
        d(entries, terrain, "Dirt", new b(bVar));
        d(entries, terrain, "Rock", new c(bVar));
        d(entries, terrain, "Sand", new d(bVar));
        d(entries, terrain, "Snow", new e(bVar));
        c(entries, "Snow height", 0.0f, 1.0f, new f(bVar));
        c(entries, "Sand max", 0.0f, 1.0f, new g(bVar));
        c(entries, "Rock slope", 0.0f, 90.0f, new h(bVar));
        c(entries, "Noise scale", 0.005f, 0.5f, new i(bVar));
    }
}
