package com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint;

import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import java.util.List;

public class HeightBandProceduralPaint extends com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a {

    public class a implements a.f {

        public final f4.b f70574a;

        public a(final f4.b val$s) {
            this.f70574a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70574a.f86053h = value;
        }

        @Override
        public int get() {
            return this.f70574a.f86053h;
        }
    }

    public class b implements a.f {

        public final f4.b f70576a;

        public b(final f4.b val$s) {
            this.f70576a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70576a.f86055i = value;
        }

        @Override
        public int get() {
            return this.f70576a.f86055i;
        }
    }

    public class c implements a.f {

        public final f4.b f70578a;

        public c(final f4.b val$s) {
            this.f70578a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70578a.f86057j = value;
        }

        @Override
        public int get() {
            return this.f70578a.f86057j;
        }
    }

    public class d implements a.f {

        public final f4.b f70580a;

        public d(final f4.b val$s) {
            this.f70580a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70580a.f86059k = value;
        }

        @Override
        public int get() {
            return this.f70580a.f86059k;
        }
    }

    public class e implements a.e {

        public final f4.b f70582a;

        public e(final f4.b val$s) {
            this.f70582a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70582a.f86061l = value;
        }

        @Override
        public float get() {
            return this.f70582a.f86061l;
        }
    }

    public class f implements a.e {

        public final f4.b f70584a;

        public f(final f4.b val$s) {
            this.f70584a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70584a.f86063m = value;
        }

        @Override
        public float get() {
            return this.f70584a.f86063m;
        }
    }

    public class g implements a.e {

        public final f4.b f70586a;

        public g(final f4.b val$s) {
            this.f70586a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70586a.f86065n = value;
        }

        @Override
        public float get() {
            return this.f70586a.f86065n;
        }
    }

    public class h implements a.e {

        public final f4.b f70588a;

        public h(final f4.b val$s) {
            this.f70588a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70588a.f86067o = value;
        }

        @Override
        public float get() {
            return this.f70588a.f86067o;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public HeightBandProceduralPaint() {
        super(r0, r0.b());
        f4.c cVar = f4.c.HeightBand;
    }

    @Override
    public native void applyNative(long heightTablePointer, long[] layerPointers, int terrainResolution, int startX, int startY, int endX, int endY, float terrainWidth, float terrainMaxHeight, float brushStartX, float brushStartY, float brushSize, float intensity, int[] layerOptions, float[] floatOptions, long brushAlphaPointer, int brushWidth, int brushHeight);

    @Override
    public float[] g(Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        return new float[]{bVar.f86061l, bVar.f86063m, bVar.f86065n, bVar.f86067o};
    }

    @Override
    public int[] i(Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        return new int[]{bVar.f86053h, bVar.f86055i, bVar.f86057j, bVar.f86059k};
    }

    @Override
    public void j(List<C5.b> entries, Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        d(entries, terrain, "Low", new a(bVar));
        d(entries, terrain, "Mid", new b(bVar));
        d(entries, terrain, "High", new c(bVar));
        d(entries, terrain, "Top", new d(bVar));
        c(entries, "Low height", 0.0f, 1.0f, new e(bVar));
        c(entries, "Mid height", 0.0f, 1.0f, new f(bVar));
        c(entries, "High height", 0.0f, 1.0f, new g(bVar));
        c(entries, "Softness", 0.0f, 0.5f, new h(bVar));
    }
}
