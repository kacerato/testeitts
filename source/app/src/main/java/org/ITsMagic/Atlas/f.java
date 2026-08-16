package org.ITsMagic.Atlas;

import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import org.ITsMagic.Atlas.XAtlas;

public class f {

    public static final boolean f100021a = false;

    public class a implements XAtlas.a {
        @Override
        public void a(int executed, int total, float progress, String tda) {
            System.out.println(executed + "/" + total + " - " + progress);
        }

        @Override
        public void b(String step) {
        }
    }

    public static NativeFloatBuffer a(Vertex vertex) {
        NativeFloatBuffer nativeFloatBuffer;
        BakeOptions bakeOptions;
        XAtlas xAtlas = new XAtlas();
        xAtlas.addInputMesh(vertex, null, com.itsmagic.engine.Engines.Engine.Vector.f.y());
        try {
            bakeOptions = new BakeOptions();
            bakeOptions.f99793a = 1024;
            nativeFloatBuffer = null;
        } catch (Exception e10) {
            e = e10;
            nativeFloatBuffer = null;
        }
        try {
            xAtlas.generate(1024, bakeOptions.maxChartArea, bakeOptions.maxBoundaryLength, bakeOptions.normalDeviationWeight, bakeOptions.roundnessWeight, bakeOptions.straightnessWeight, bakeOptions.normalSeamWeight, bakeOptions.textureSeamWeight, bakeOptions.maxChartSize, bakeOptions.padding, 0.0f, bakeOptions.bilinear, bakeOptions.blockAlign, true, new a());
            if (xAtlas.getBakeDataList().isEmpty() || xAtlas.getBakeDataList().get(0).d() == null) {
                return null;
            }
            Ug.g a10 = xAtlas.getBakeDataList().get(0).c().get(0).a();
            a10.i().k().destroyImmediate();
            a10.g().g().destroyImmediate();
            a10.c().k().destroyImmediate();
            a10.e().h().destroyImmediate();
            return a10.a().h();
        } catch (Exception e11) {
            e = e11;
            e.printStackTrace();
            return nativeFloatBuffer;
        }
    }

    public static void b(String msg) {
    }
}
