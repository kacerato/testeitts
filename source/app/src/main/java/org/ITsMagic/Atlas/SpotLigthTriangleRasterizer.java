package org.ITsMagic.Atlas;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SpotLight;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.BVHMesh;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import java.util.List;
import org.ITsMagic.Atlas.d;

public class SpotLigthTriangleRasterizer extends org.ITsMagic.Atlas.a<SpotLight> {

    public static final float f99883u = 0.1f;

    public final Vector3 f99884q;

    public final Vector3 f99885r;

    public final Vector3 f99886s;

    public final Vector3 f99887t;

    public static class a implements d.InterfaceC1902d {

        public final float[] f99888a;

        public final float[] f99889b;

        public final float[] f99890c;

        public final float[] f99891d;

        public final int[] f99892e;

        public final int f99893f;

        public a(float[] positions, float[] forwards, float[] colors, float[] params, int[] shadowFlags, int lightCount) {
            this.f99888a = positions;
            this.f99889b = forwards;
            this.f99890c = colors;
            this.f99891d = params;
            this.f99892e = shadowFlags;
            this.f99893f = lightCount;
        }

        @Override
        public int a() {
            return this.f99893f;
        }
    }

    public static class b implements d.c<SpotLight> {

        public static final b f99894a = new b();

        @Override
        public int a(d.a surfels, d.InterfaceC1902d lightData, d.e meshData, int start, int end) {
            a aVar = (a) lightData;
            return SpotLigthTriangleRasterizer.nativeCountRaycastsRange(NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99985a, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99986b, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99987c, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99991g, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99992h, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99993i, 0L), surfels.f99996l, aVar.f99888a, aVar.f99889b, aVar.f99890c, aVar.f99891d, aVar.f99892e, aVar.f99893f, meshData.f99997a, meshData.f99998b, meshData.f99999c, meshData.f100000d, meshData.f100001e, meshData.f100002f, start, end);
        }

        @Override
        public d.InterfaceC1902d b(List<SpotLight> list) {
            if (list == null || list.isEmpty()) {
                return new a(new float[0], new float[0], new float[0], new float[0], new int[0], 0);
            }
            float[] fArr = new float[list.size() * 3];
            float[] fArr2 = new float[list.size() * 3];
            float[] fArr3 = new float[list.size() * 4];
            float[] fArr4 = new float[list.size() * 4];
            int[] iArr = new int[list.size()];
            Vector3 vector3 = new Vector3();
            Vector3 vector32 = new Vector3();
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                SpotLight spotLight = list.get(i11);
                if (spotLight != null && spotLight.f79250n != null && spotLight.getFalloffRadius() > 0.0f) {
                    spotLight.f79250n.transform.u0(vector3);
                    spotLight.f79250n.transform.a0(vector32);
                    if (vector32.lengthSquared() > 1.0E-8f) {
                        vector32.normalizeLocal();
                        int i12 = i10 * 3;
                        fArr[i12] = vector3.getX();
                        int i13 = i12 + 1;
                        fArr[i13] = vector3.getY();
                        int i14 = i12 + 2;
                        fArr[i14] = vector3.getZ();
                        fArr2[i12] = vector32.getX();
                        fArr2[i13] = vector32.getY();
                        fArr2[i14] = vector32.getZ();
                        int i15 = i10 * 4;
                        fArr3[i15] = spotLight.getColor().w();
                        int i16 = i15 + 1;
                        fArr3[i16] = spotLight.getColor().u();
                        int i17 = i15 + 2;
                        fArr3[i17] = spotLight.getColor().s();
                        int i18 = i15 + 3;
                        fArr3[i18] = spotLight.getColor().r();
                        fArr4[i15] = spotLight.getLumens() * 0.1f;
                        fArr4[i16] = spotLight.getFalloffRadius();
                        float max = Math.max(0.0f, spotLight.getInnerConeAngle() * 0.5f);
                        fArr4[i17] = max;
                        fArr4[i18] = Math.max(max, spotLight.getOuterConeAngle() * 0.5f);
                        iArr[i10] = spotLight.isAllowShadow() ? 1 : 0;
                        i10++;
                    }
                }
            }
            return new a(fArr, fArr2, fArr3, fArr4, iArr, i10);
        }

        @Override
        public void c(d.a surfels, d.InterfaceC1902d lightData, d.e meshData, int outputWidth, int start, int end, NativeFloatBuffer outputPixels) {
            a aVar = (a) lightData;
            SpotLigthTriangleRasterizer.nativeRasterizeRange(NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99985a, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99986b, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99987c, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99988d, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99989e, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99990f, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99991g, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99992h, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99993i, 0L), NativeIntBuffer.getCriticalDirectCppPointer(surfels.f99994j, 0L), NativeIntBuffer.getCriticalDirectCppPointer(surfels.f99995k, 0L), surfels.f99996l, aVar.f99888a, aVar.f99889b, aVar.f99890c, aVar.f99891d, aVar.f99892e, aVar.f99893f, meshData.f99997a, meshData.f99998b, meshData.f99999c, meshData.f100000d, meshData.f100001e, meshData.f100002f, outputWidth, start, end, NativeFloatBuffer.getCriticalDirectCppPointer(outputPixels, 0L));
        }
    }

    static {
        System.loadLibrary("vertex");
    }

    public SpotLigthTriangleRasterizer(List<BVHMesh> raycastVertices, Bb.b normalAtlasTexture) {
        super(raycastVertices, normalAtlasTexture);
        this.f99884q = new Vector3();
        this.f99885r = new Vector3();
        this.f99886s = new Vector3();
        this.f99887t = new Vector3();
    }

    public static native int nativeCountRaycastsRange(long posXPointer, long posYPointer, long posZPointer, long shadingNormalXPointer, long shadingNormalYPointer, long shadingNormalZPointer, int surfelCount, float[] lightPositions, float[] lightForwards, float[] lightColors, float[] lightParams, int[] shadowFlags, int lightCount, long[] meshVerticesPointers, long[] meshTrianglesPointers, long[] meshNodeBoundsPointers, long[] meshNodeMetaPointers, long[] meshTriangleOrderPointers, int[] meshNodeCounts, int start, int end);

    public static native void nativeRasterizeRange(long posXPointer, long posYPointer, long posZPointer, long surfaceNormalXPointer, long surfaceNormalYPointer, long surfaceNormalZPointer, long shadingNormalXPointer, long shadingNormalYPointer, long shadingNormalZPointer, long pixelXPointer, long pixelYPointer, int surfelCount, float[] lightPositions, float[] lightForwards, float[] lightColors, float[] lightParams, int[] shadowFlags, int lightCount, long[] meshVerticesPointers, long[] meshTrianglesPointers, long[] meshNodeBoundsPointers, long[] meshNodeMetaPointers, long[] meshTriangleOrderPointers, int[] meshNodeCounts, int width, int start, int end, long outputPixelsPointer);

    @Override
    public void d(SpotLight light, Vector3 worldPosition, Vector3 surfaceNormal, Vector3 shadingNormal, float[] outRgb) {
        float f10;
        if (light == null || light.f79250n == null) {
            return;
        }
        float falloffRadius = light.getFalloffRadius();
        if (falloffRadius <= 0.0f) {
            return;
        }
        light.f79250n.transform.u0(this.f99884q);
        this.f99885r.set(this.f99884q);
        this.f99885r.subLocal(worldPosition);
        float lengthSquared = this.f99885r.lengthSquared();
        if (lengthSquared <= 1.0E-8f) {
            return;
        }
        float sqrt = (float) Math.sqrt(lengthSquared);
        if (sqrt > falloffRadius) {
            return;
        }
        this.f99885r.divLocal(sqrt);
        float H10 = H(shadingNormal.dot(this.f99885r));
        if (H10 <= 0.0f) {
            return;
        }
        light.f79250n.transform.a0(this.f99887t);
        if (this.f99887t.lengthSquared() <= 1.0E-8f) {
            return;
        }
        this.f99887t.normalizeLocal();
        this.f99886s.set(this.f99885r);
        this.f99886s.mulLocal(-1.0f);
        float max = Math.max(0.0f, light.getInnerConeAngle() * 0.5f);
        float max2 = Math.max(max, light.getOuterConeAngle() * 0.5f);
        float cos = (float) Math.cos(Math.toRadians(max2));
        float dot = this.f99887t.dot(this.f99886s);
        if (dot <= cos) {
            return;
        }
        if (max2 > max) {
            f10 = H((dot - cos) / Math.max(1.0E-4f, ((float) Math.cos(Math.toRadians(max))) - cos));
        } else {
            f10 = 1.0f;
        }
        float lumens = light.getLumens() * 0.1f * H10 * f10 * H(1.0f - (lengthSquared / (falloffRadius * falloffRadius))) * light.getColor().r();
        if (lumens <= 0.0f) {
            return;
        }
        if (light.isAllowShadow() && y(worldPosition, surfaceNormal, this.f99885r, sqrt)) {
            return;
        }
        f(light.getColor(), lumens, outRgb);
    }

    @Override
    public org.ITsMagic.Atlas.a<SpotLight> s() {
        return new SpotLigthTriangleRasterizer(x(), w());
    }

    @Override
    public d.c<SpotLight> v() {
        return b.f99894a;
    }
}
