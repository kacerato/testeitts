package com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint;

import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import java.util.List;

public class TerraceProceduralPaint extends com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a {

    public class a implements a.f {

        public final f4.b f70624a;

        public a(final f4.b val$s) {
            this.f70624a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70624a.f86018F = value;
        }

        @Override
        public int get() {
            return this.f70624a.f86018F;
        }
    }

    public class b implements a.f {

        public final f4.b f70626a;

        public b(final f4.b val$s) {
            this.f70626a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70626a.f86019G = value;
        }

        @Override
        public int get() {
            return this.f70626a.f86019G;
        }
    }

    public class c implements a.f {

        public final f4.b f70628a;

        public c(final f4.b val$s) {
            this.f70628a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70628a.f86020H = value;
        }

        @Override
        public int get() {
            return this.f70628a.f86020H;
        }
    }

    public class d implements a.e {

        public final f4.b f70630a;

        public d(final f4.b val$s) {
            this.f70630a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70630a.f86021I = value;
        }

        @Override
        public float get() {
            return this.f70630a.f86021I;
        }
    }

    public class e implements a.e {

        public final f4.b f70632a;

        public e(final f4.b val$s) {
            this.f70632a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70632a.f86022J = value;
        }

        @Override
        public float get() {
            return this.f70632a.f86022J;
        }
    }

    public class f implements a.e {

        public final f4.b f70634a;

        public f(final f4.b val$s) {
            this.f70634a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70634a.f86023K = value;
        }

        @Override
        public float get() {
            return this.f70634a.f86023K;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TerraceProceduralPaint() {
        super(r0, r0.b());
        f4.c cVar = f4.c.Terrace;
    }

    @Override
    public native void applyNative(long heightTablePointer, long[] layerPointers, int terrainResolution, int startX, int startY, int endX, int endY, float terrainWidth, float terrainMaxHeight, float brushStartX, float brushStartY, float brushSize, float intensity, int[] layerOptions, float[] floatOptions, long brushAlphaPointer, int brushWidth, int brushHeight);

    @Override
    public float[] g(Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        return new float[]{bVar.f86021I, bVar.f86022J, bVar.f86023K};
    }

    @Override
    public int[] i(Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        return new int[]{bVar.f86018F, bVar.f86019G, bVar.f86020H};
    }

    @Override
    public void j(List<C5.b> entries, Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        d(entries, terrain, "Texture A", new a(bVar));
        d(entries, terrain, "Texture B", new b(bVar));
        d(entries, terrain, "Texture C", new c(bVar));
        c(entries, "Spacing", 0.01f, 1.0f, new d(bVar));
        c(entries, "Offset", 0.0f, 1.0f, new e(bVar));
        c(entries, "Softness", 0.0f, 0.5f, new f(bVar));
    }
}
