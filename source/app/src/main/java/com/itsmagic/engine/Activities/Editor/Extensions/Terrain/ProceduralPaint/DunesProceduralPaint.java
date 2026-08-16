package com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint;

import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import java.util.List;

public class DunesProceduralPaint extends com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a {

    public class a implements a.f {

        public final f4.b f70552a;

        public a(final f4.b val$s) {
            this.f70552a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70552a.f86031S = value;
        }

        @Override
        public int get() {
            return this.f70552a.f86031S;
        }
    }

    public class b implements a.f {

        public final f4.b f70554a;

        public b(final f4.b val$s) {
            this.f70554a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70554a.f86032T = value;
        }

        @Override
        public int get() {
            return this.f70554a.f86032T;
        }
    }

    public class c implements a.f {

        public final f4.b f70556a;

        public c(final f4.b val$s) {
            this.f70556a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70556a.f86033U = value;
        }

        @Override
        public int get() {
            return this.f70556a.f86033U;
        }
    }

    public class d implements a.f {

        public final f4.b f70558a;

        public d(final f4.b val$s) {
            this.f70558a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70558a.f86034V = value;
        }

        @Override
        public int get() {
            return this.f70558a.f86034V;
        }
    }

    public class e implements a.e {

        public final f4.b f70560a;

        public e(final f4.b val$s) {
            this.f70560a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70560a.f86035W = value;
        }

        @Override
        public float get() {
            return this.f70560a.f86035W;
        }
    }

    public class f implements a.e {

        public final f4.b f70562a;

        public f(final f4.b val$s) {
            this.f70562a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70562a.f86036X = value;
        }

        @Override
        public float get() {
            return this.f70562a.f86036X;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public DunesProceduralPaint() {
        super(r0, r0.b());
        f4.c cVar = f4.c.Dunes;
    }

    @Override
    public native void applyNative(long heightTablePointer, long[] layerPointers, int terrainResolution, int startX, int startY, int endX, int endY, float terrainWidth, float terrainMaxHeight, float brushStartX, float brushStartY, float brushSize, float intensity, int[] layerOptions, float[] floatOptions, long brushAlphaPointer, int brushWidth, int brushHeight);

    @Override
    public float[] g(Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        return new float[]{bVar.f86035W, bVar.f86036X, bVar.f86037Y};
    }

    @Override
    public int[] i(Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        return new int[]{bVar.f86031S, bVar.f86032T, bVar.f86033U, bVar.f86034V};
    }

    @Override
    public void j(List<C5.b> entries, Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        d(entries, terrain, "Sand", new a(bVar));
        d(entries, terrain, "Ridge", new b(bVar));
        d(entries, terrain, "Windward", new c(bVar));
        d(entries, terrain, "Leeward", new d(bVar));
        c(entries, "Ridge spacing", 0.01f, 1.0f, new e(bVar));
        c(entries, "Ridge sharpness", 0.0f, 1.0f, new f(bVar));
    }
}
