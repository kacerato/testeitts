package org.ITsMagic.Atlas;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SunLight;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.BVHMesh;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import java.util.List;
import org.ITsMagic.Atlas.d;

public class SunLigthTriangleRasterizer extends org.ITsMagic.Atlas.a<SunLight> {

    public static final float f99895r = 0.02f;

    public static final float f99896s = 5000.0f;

    public final Vector3 f99897q;

    public static class a implements d.InterfaceC1902d {

        public final float[] f99898a;

        public final float[] f99899b;

        public final float[] f99900c;

        public final int[] f99901d;

        public final int f99902e;

        public a(float[] directions, float[] colors, float[] params, int[] shadowFlags, int lightCount) {
            this.f99898a = directions;
            this.f99899b = colors;
            this.f99900c = params;
            this.f99901d = shadowFlags;
            this.f99902e = lightCount;
        }

        @Override
        public int a() {
            return this.f99902e;
        }
    }

    public static class b implements d.c<SunLight> {

        public static final b f99903a = new b();

        @Override
        public int a(d.a surfels, d.InterfaceC1902d lightData, d.e meshData, int start, int end) {
            a aVar = (a) lightData;
            return SunLigthTriangleRasterizer.nativeCountRaycastsRange(NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99985a, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99986b, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99987c, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99991g, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99992h, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99993i, 0L), surfels.f99996l, aVar.f99898a, aVar.f99899b, aVar.f99900c, aVar.f99901d, aVar.f99902e, meshData.f99997a, meshData.f99998b, meshData.f99999c, meshData.f100000d, meshData.f100001e, meshData.f100002f, start, end);
        }

        @Override
        public d.InterfaceC1902d b(List<SunLight> list) {
            GameObject gameObject;
            if (list == null || list.isEmpty()) {
                return new a(new float[0], new float[0], new float[0], new int[0], 0);
            }
            float[] fArr = new float[list.size() * 3];
            float[] fArr2 = new float[list.size() * 4];
            float[] fArr3 = new float[list.size()];
            int[] iArr = new int[list.size()];
            Vector3 vector3 = new Vector3();
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                SunLight sunLight = list.get(i11);
                if (sunLight != null && (gameObject = sunLight.f79250n) != null) {
                    gameObject.transform.B(vector3);
                    if (vector3.lengthSquared() > 1.0E-8f) {
                        vector3.normalizeLocal();
                        int i12 = i10 * 3;
                        fArr[i12] = vector3.getX();
                        fArr[i12 + 1] = vector3.getY();
                        fArr[i12 + 2] = vector3.getZ();
                        int i13 = i10 * 4;
                        fArr2[i13] = sunLight.getColor().w();
                        fArr2[i13 + 1] = sunLight.getColor().u();
                        fArr2[i13 + 2] = sunLight.getColor().s();
                        fArr2[i13 + 3] = sunLight.getColor().r();
                        fArr3[i10] = sunLight.getLux() * 0.02f;
                        iArr[i10] = sunLight.isAllowShadow() ? 1 : 0;
                        i10++;
                    }
                }
            }
            return new a(fArr, fArr2, fArr3, iArr, i10);
        }

        @Override
        public void c(d.a surfels, d.InterfaceC1902d lightData, d.e meshData, int outputWidth, int start, int end, NativeFloatBuffer outputPixels) {
            a aVar = (a) lightData;
            SunLigthTriangleRasterizer.nativeRasterizeRange(NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99985a, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99986b, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99987c, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99988d, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99989e, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99990f, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99991g, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99992h, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99993i, 0L), NativeIntBuffer.getCriticalDirectCppPointer(surfels.f99994j, 0L), NativeIntBuffer.getCriticalDirectCppPointer(surfels.f99995k, 0L), surfels.f99996l, aVar.f99898a, aVar.f99899b, aVar.f99900c, aVar.f99901d, aVar.f99902e, meshData.f99997a, meshData.f99998b, meshData.f99999c, meshData.f100000d, meshData.f100001e, meshData.f100002f, outputWidth, start, end, NativeFloatBuffer.getCriticalDirectCppPointer(outputPixels, 0L));
        }
    }

    static {
        System.loadLibrary("vertex");
    }

    public SunLigthTriangleRasterizer(List<BVHMesh> raycastVertices, Bb.b normalAtlasTexture) {
        super(raycastVertices, normalAtlasTexture);
        this.f99897q = new Vector3();
    }

    public static native int nativeCountRaycastsRange(long posXPointer, long posYPointer, long posZPointer, long shadingNormalXPointer, long shadingNormalYPointer, long shadingNormalZPointer, int surfelCount, float[] lightDirections, float[] lightColors, float[] lightParams, int[] shadowFlags, int lightCount, long[] meshVerticesPointers, long[] meshTrianglesPointers, long[] meshNodeBoundsPointers, long[] meshNodeMetaPointers, long[] meshTriangleOrderPointers, int[] meshNodeCounts, int start, int end);

    public static native void nativeRasterizeRange(long posXPointer, long posYPointer, long posZPointer, long surfaceNormalXPointer, long surfaceNormalYPointer, long surfaceNormalZPointer, long shadingNormalXPointer, long shadingNormalYPointer, long shadingNormalZPointer, long pixelXPointer, long pixelYPointer, int surfelCount, float[] lightDirections, float[] lightColors, float[] lightParams, int[] shadowFlags, int lightCount, long[] meshVerticesPointers, long[] meshTrianglesPointers, long[] meshNodeBoundsPointers, long[] meshNodeMetaPointers, long[] meshTriangleOrderPointers, int[] meshNodeCounts, int width, int start, int end, long outputPixelsPointer);

    @Override
    public void d(SunLight light, Vector3 worldPosition, Vector3 surfaceNormal, Vector3 shadingNormal, float[] outRgb) {
        GameObject gameObject;
        if (light == null || (gameObject = light.f79250n) == null) {
            return;
        }
        gameObject.transform.B(this.f99897q);
        if (this.f99897q.lengthSquared() <= 1.0E-8f) {
            return;
        }
        this.f99897q.normalizeLocal();
        float H10 = H(shadingNormal.dot(this.f99897q));
        if (H10 <= 0.0f) {
            return;
        }
        float lux = light.getLux() * 0.02f * H10 * light.getColor().r();
        if (lux <= 0.0f) {
            return;
        }
        if (light.isAllowShadow() && y(worldPosition, surfaceNormal, this.f99897q, 5000.0f)) {
            return;
        }
        f(light.getColor(), lux, outRgb);
    }

    @Override
    public org.ITsMagic.Atlas.a<SunLight> s() {
        return new SunLigthTriangleRasterizer(x(), w());
    }

    @Override
    public d.c<SunLight> v() {
        return b.f99903a;
    }
}
