package org.ITsMagic.Atlas;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.PointLight;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.BVHMesh;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import java.util.List;
import org.ITsMagic.Atlas.d;

public class PointLigthTriangleRasterizer extends org.ITsMagic.Atlas.a<PointLight> {

    public static final float f99874s = 0.1f;

    public final Vector3 f99875q;

    public final Vector3 f99876r;

    public static class a implements d.InterfaceC1902d {

        public final float[] f99877a;

        public final float[] f99878b;

        public final float[] f99879c;

        public final int[] f99880d;

        public final int f99881e;

        public a(float[] positions, float[] colors, float[] params, int[] shadowFlags, int lightCount) {
            this.f99877a = positions;
            this.f99878b = colors;
            this.f99879c = params;
            this.f99880d = shadowFlags;
            this.f99881e = lightCount;
        }

        @Override
        public int a() {
            return this.f99881e;
        }
    }

    public static class b implements d.c<PointLight> {

        public static final b f99882a = new b();

        @Override
        public int a(d.a surfels, d.InterfaceC1902d lightData, d.e meshData, int start, int end) {
            a aVar = (a) lightData;
            return PointLigthTriangleRasterizer.nativeCountRaycastsRange(NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99985a, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99986b, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99987c, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99991g, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99992h, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99993i, 0L), surfels.f99996l, aVar.f99877a, aVar.f99878b, aVar.f99879c, aVar.f99880d, aVar.f99881e, meshData.f99997a, meshData.f99998b, meshData.f99999c, meshData.f100000d, meshData.f100001e, meshData.f100002f, start, end);
        }

        @Override
        public d.InterfaceC1902d b(List<PointLight> list) {
            if (list == null || list.isEmpty()) {
                return new a(new float[0], new float[0], new float[0], new int[0], 0);
            }
            float[] fArr = new float[list.size() * 3];
            float[] fArr2 = new float[list.size() * 4];
            float[] fArr3 = new float[list.size() * 2];
            int[] iArr = new int[list.size()];
            Vector3 vector3 = new Vector3();
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                PointLight pointLight = list.get(i11);
                if (pointLight != null && pointLight.f79250n != null && pointLight.getFalloffRadius() > 0.0f) {
                    pointLight.f79250n.transform.u0(vector3);
                    int i12 = i10 * 3;
                    fArr[i12] = vector3.getX();
                    fArr[i12 + 1] = vector3.getY();
                    fArr[i12 + 2] = vector3.getZ();
                    int i13 = i10 * 4;
                    fArr2[i13] = pointLight.getColor().w();
                    fArr2[i13 + 1] = pointLight.getColor().u();
                    fArr2[i13 + 2] = pointLight.getColor().s();
                    fArr2[i13 + 3] = pointLight.getColor().r();
                    int i14 = i10 * 2;
                    fArr3[i14] = pointLight.getLumens() * 0.1f;
                    fArr3[i14 + 1] = pointLight.getFalloffRadius();
                    iArr[i10] = pointLight.isAllowShadow() ? 1 : 0;
                    i10++;
                }
            }
            return new a(fArr, fArr2, fArr3, iArr, i10);
        }

        @Override
        public void c(d.a surfels, d.InterfaceC1902d lightData, d.e meshData, int outputWidth, int start, int end, NativeFloatBuffer outputPixels) {
            a aVar = (a) lightData;
            PointLigthTriangleRasterizer.nativeRasterizeRange(NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99985a, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99986b, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99987c, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99988d, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99989e, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99990f, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99991g, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99992h, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99993i, 0L), NativeIntBuffer.getCriticalDirectCppPointer(surfels.f99994j, 0L), NativeIntBuffer.getCriticalDirectCppPointer(surfels.f99995k, 0L), surfels.f99996l, aVar.f99877a, aVar.f99878b, aVar.f99879c, aVar.f99880d, aVar.f99881e, meshData.f99997a, meshData.f99998b, meshData.f99999c, meshData.f100000d, meshData.f100001e, meshData.f100002f, outputWidth, start, end, NativeFloatBuffer.getCriticalDirectCppPointer(outputPixels, 0L));
        }
    }

    static {
        System.loadLibrary("vertex");
    }

    public PointLigthTriangleRasterizer(List<BVHMesh> raycastVertices, Bb.b normalAtlasTexture) {
        super(raycastVertices, normalAtlasTexture);
        this.f99875q = new Vector3();
        this.f99876r = new Vector3();
    }

    public static native int nativeCountRaycastsRange(long posXPointer, long posYPointer, long posZPointer, long shadingNormalXPointer, long shadingNormalYPointer, long shadingNormalZPointer, int surfelCount, float[] lightPositions, float[] lightColors, float[] lightParams, int[] shadowFlags, int lightCount, long[] meshVerticesPointers, long[] meshTrianglesPointers, long[] meshNodeBoundsPointers, long[] meshNodeMetaPointers, long[] meshTriangleOrderPointers, int[] meshNodeCounts, int start, int end);

    public static native void nativeRasterizeRange(long posXPointer, long posYPointer, long posZPointer, long surfaceNormalXPointer, long surfaceNormalYPointer, long surfaceNormalZPointer, long shadingNormalXPointer, long shadingNormalYPointer, long shadingNormalZPointer, long pixelXPointer, long pixelYPointer, int surfelCount, float[] lightPositions, float[] lightColors, float[] lightParams, int[] shadowFlags, int lightCount, long[] meshVerticesPointers, long[] meshTrianglesPointers, long[] meshNodeBoundsPointers, long[] meshNodeMetaPointers, long[] meshTriangleOrderPointers, int[] meshNodeCounts, int width, int start, int end, long outputPixelsPointer);

    @Override
    public void d(PointLight light, Vector3 worldPosition, Vector3 surfaceNormal, Vector3 shadingNormal, float[] outRgb) {
        if (light == null || light.f79250n == null) {
            return;
        }
        float falloffRadius = light.getFalloffRadius();
        if (falloffRadius <= 0.0f) {
            return;
        }
        light.f79250n.transform.u0(this.f99875q);
        this.f99876r.set(this.f99875q);
        this.f99876r.subLocal(worldPosition);
        float lengthSquared = this.f99876r.lengthSquared();
        if (lengthSquared <= 1.0E-8f) {
            return;
        }
        float sqrt = (float) Math.sqrt(lengthSquared);
        if (sqrt > falloffRadius) {
            return;
        }
        this.f99876r.divLocal(sqrt);
        float H10 = H(shadingNormal.dot(this.f99876r));
        if (H10 <= 0.0f) {
            return;
        }
        float lumens = light.getLumens() * 0.1f * H10 * H(1.0f - (lengthSquared / (falloffRadius * falloffRadius))) * light.getColor().r();
        if (lumens <= 0.0f) {
            return;
        }
        if (light.isAllowShadow() && y(worldPosition, surfaceNormal, this.f99876r, sqrt)) {
            return;
        }
        f(light.getColor(), lumens, outRgb);
    }

    @Override
    public org.ITsMagic.Atlas.a<PointLight> s() {
        return new PointLigthTriangleRasterizer(x(), w());
    }

    @Override
    public d.c<PointLight> v() {
        return b.f99882a;
    }
}
