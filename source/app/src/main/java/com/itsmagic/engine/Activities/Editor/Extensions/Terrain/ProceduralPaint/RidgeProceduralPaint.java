package com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint;

import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import java.util.List;

public class RidgeProceduralPaint extends com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a {

    public class a implements a.f {

        public final f4.b f70602a;

        public a(final f4.b val$s) {
            this.f70602a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70602a.f86038Z = value;
        }

        @Override
        public int get() {
            return this.f70602a.f86038Z;
        }
    }

    public class b implements a.f {

        public final f4.b f70604a;

        public b(final f4.b val$s) {
            this.f70604a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70604a.f86040a0 = value;
        }

        @Override
        public int get() {
            return this.f70604a.f86040a0;
        }
    }

    public class c implements a.f {

        public final f4.b f70606a;

        public c(final f4.b val$s) {
            this.f70606a = val$s;
        }

        @Override
        public void b(int value) {
            this.f70606a.f86042b0 = value;
        }

        @Override
        public int get() {
            return this.f70606a.f86042b0;
        }
    }

    public class d implements a.e {

        public final f4.b f70608a;

        public d(final f4.b val$s) {
            this.f70608a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70608a.f86044c0 = value;
        }

        @Override
        public float get() {
            return this.f70608a.f86044c0;
        }
    }

    public class e implements a.e {

        public final f4.b f70610a;

        public e(final f4.b val$s) {
            this.f70610a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70610a.f86046d0 = value;
        }

        @Override
        public float get() {
            return this.f70610a.f86046d0;
        }
    }

    public class f implements a.e {

        public final f4.b f70612a;

        public f(final f4.b val$s) {
            this.f70612a = val$s;
        }

        @Override
        public void a(float value) {
            this.f70612a.f86048e0 = value;
        }

        @Override
        public float get() {
            return this.f70612a.f86048e0;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public RidgeProceduralPaint() {
        super(r0, r0.b());
        f4.c cVar = f4.c.Ridge;
    }

    @Override
    public native void applyNative(long heightTablePointer, long[] layerPointers, int terrainResolution, int startX, int startY, int endX, int endY, float terrainWidth, float terrainMaxHeight, float brushStartX, float brushStartY, float brushSize, float intensity, int[] layerOptions, float[] floatOptions, long brushAlphaPointer, int brushWidth, int brushHeight);

    @Override
    public float[] g(Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        return new float[]{bVar.f86044c0, bVar.f86046d0, bVar.f86048e0};
    }

    @Override
    public int[] i(Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        return new int[]{bVar.f86038Z, bVar.f86040a0, bVar.f86042b0};
    }

    @Override
    public void j(List<C5.b> entries, Terrain terrain) {
        f4.b bVar = terrain.f77039Q;
        d(entries, terrain, "Ridge", new a(bVar));
        d(entries, terrain, "Side", new b(bVar));
        d(entries, terrain, "Base", new c(bVar));
        c(entries, "Min height", 0.0f, 1.0f, new d(bVar));
        c(entries, "Curvature", 0.0f, 0.5f, new e(bVar));
        c(entries, "Min slope", 0.0f, 90.0f, new f(bVar));
    }
}
