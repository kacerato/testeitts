package com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint;

import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import java.util.List;

public class WaterFlowProceduralPaint extends com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a {

    public class a implements a.f {

        public final f4.b f70636a;

        public a(final f4.b val$s) {
            this.f70636a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70636a.f86078z = value;
        }

        @Override
        public int get() {
            return this.f70636a.f86078z;
        }
    }

    public class b implements a.f {

        public final f4.b f70638a;

        public b(final f4.b val$s) {
            this.f70638a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70638a.f86013A = value;
        }

        @Override
        public int get() {
            return this.f70638a.f86013A;
        }
    }

    public class c implements a.f {

        public final f4.b f70640a;

        public c(final f4.b val$s) {
            this.f70640a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70640a.f86014B = value;
        }

        @Override
        public int get() {
            return this.f70640a.f86014B;
        }
    }

    public class d implements a.f {

        public final f4.b f70642a;

        public d(final f4.b val$s) {
            this.f70642a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70642a.f86015C = value;
        }

        @Override
        public int get() {
            return this.f70642a.f86015C;
        }
    }

    public class e implements a.e {

        public final f4.b f70644a;

        public e(final f4.b val$s) {
            this.f70644a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70644a.f86016D = value;
        }

        @Override
        public float get() {
            return this.f70644a.f86016D;
        }
    }

    public class f implements a.e {

        public final f4.b f70646a;

        public f(final f4.b val$s) {
            this.f70646a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70646a.f86017E = value;
        }

        @Override
        public float get() {
            return this.f70646a.f86017E;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public WaterFlowProceduralPaint() {
        super(r0, r0.b());
        f4.c cVar = f4.c.WaterFlow;
    }

    @Override
    public native void applyNative(long heightTablePointer, long[] layerPointers, int terrainResolution, int startX, int startY, int endX, int endY, float terrainWidth, float terrainMaxHeight, float brushStartX, float brushStartY, float brushSize, float intensity, int[] layerOptions, float[] floatOptions, long brushAlphaPointer, int brushWidth, int brushHeight);

    @Override
    public float[] g(Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        return new float[]{bVar.f86016D, bVar.f86017E};
    }

    @Override
    public int[] i(Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        return new int[]{bVar.f86078z, bVar.f86013A, bVar.f86014B, bVar.f86015C};
    }

    @Override
    public void j(List<C5.b> entries, Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        d(entries, terrain, "Wet", new a(bVar));
        d(entries, terrain, "Mud", new b(bVar));
        d(entries, terrain, "Moss", new c(bVar));
        d(entries, terrain, "Washed rock", new d(bVar));
        c(entries, "Flow threshold", 0.0f, 1.0f, new e(bVar));
        c(entries, "Accumulation", 0.0f, 1.0f, new f(bVar));
    }
}
