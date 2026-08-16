package JAVARuntime;

import Fb.c;
import Ib.h;
import aa.C3593a;
import d8.m;
import java.io.InputStream;
import java.util.List;
import o8.InterfaceC14490d;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Vertex.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Vertex.class
  classes.dex
 */
@ClassCategory(cat = {"Vertex"})
public final class Vertex {

    @PrimitiveExpose
    public static final int CUBE = 0;

    @PrimitiveExpose
    public static final int SPHERE = 1;

    @PrimitiveExpose
    public static final int CONE = 2;

    @PrimitiveExpose
    public static final int CYLINDER = 3;

    @PrimitiveExpose
    public static final int CIRCLE = 4;

    @PrimitiveExpose
    public static final int TORUS = 5;

    @PrimitiveExpose
    public static final int SQUARE = 6;

    @PrimitiveExpose
    public static final int SQUARE90 = 7;

    @PrimitiveExpose
    public static final int CAPSULE = 8;

    @PrimitiveExpose
    public static final int HALF_CAPSULE = 9;

    @PrimitiveExpose
    public static final int SPHERE_LOWPOLY = 10;

    @PrimitiveExpose
    public static final int RENDER_TARGET = 11;

    public class AnonymousClass1 implements Runnable {
        final List val$list;

        public AnonymousClass1(final List val$list) {
            this.val$list = val$list;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                    h.J(anonymousClass1.val$list, Vertex.this.vertex);
                    Vertex.access$002(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass10 implements Runnable {
        final float[] val$array;

        public AnonymousClass10(final float[] val$array) {
            this.val$array = val$array;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass10 anonymousClass10 = AnonymousClass10.this;
                    h.x(anonymousClass10.val$array, Vertex.this.vertex);
                    Vertex.access$202(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass11 implements Runnable {
        final NativeFloatBuffer val$normals;

        public AnonymousClass11(final NativeFloatBuffer val$normals) {
            this.val$normals = val$normals;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass11 anonymousClass11 = AnonymousClass11.this;
                    Vertex.this.vertex.Y1(anonymousClass11.val$normals.buffer);
                    Vertex.access$202(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass12 implements Runnable {
        final Vector3Buffer val$buffer;

        public AnonymousClass12(final Vector3Buffer val$buffer) {
            this.val$buffer = val$buffer;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass12 anonymousClass12 = AnonymousClass12.this;
                    Vertex.this.vertex.Y1(anonymousClass12.val$buffer.getFloatBuffer().buffer);
                    Vertex.access$202(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass13 implements Runnable {
        final List val$list;

        public AnonymousClass13(final List val$list) {
            this.val$list = val$list;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass13 anonymousClass13 = AnonymousClass13.this;
                    h.G(anonymousClass13.val$list, Vertex.this.vertex);
                    Vertex.access$302(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass14 implements Runnable {
        final float[] val$array;

        public AnonymousClass14(final float[] val$array) {
            this.val$array = val$array;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass14 anonymousClass14 = AnonymousClass14.this;
                    h.F(anonymousClass14.val$array, Vertex.this.vertex);
                    Vertex.access$302(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass15 implements Runnable {
        final NativeFloatBuffer val$uvs;

        public AnonymousClass15(final NativeFloatBuffer val$uvs) {
            this.val$uvs = val$uvs;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass15 anonymousClass15 = AnonymousClass15.this;
                    Vertex.this.vertex.m2(anonymousClass15.val$uvs.buffer);
                    Vertex.access$302(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass16 implements Runnable {
        final Vector2Buffer val$buffer;

        public AnonymousClass16(final Vector2Buffer val$buffer) {
            this.val$buffer = val$buffer;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass16 anonymousClass16 = AnonymousClass16.this;
                    Vertex.this.vertex.m2(anonymousClass16.val$buffer.getFloatBuffer().buffer);
                    Vertex.access$302(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass17 implements Runnable {
        final List val$list;

        public AnonymousClass17(final List val$list) {
            this.val$list = val$list;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass17 anonymousClass17 = AnonymousClass17.this;
                    h.w(anonymousClass17.val$list, Vertex.this.vertex);
                    Vertex.access$402(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass18 implements Runnable {
        final float[] val$array;

        public AnonymousClass18(final float[] val$array) {
            this.val$array = val$array;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass18 anonymousClass18 = AnonymousClass18.this;
                    h.v(anonymousClass18.val$array, Vertex.this.vertex);
                    Vertex.access$402(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass19 implements Runnable {
        final NativeFloatBuffer val$joints;

        public AnonymousClass19(final NativeFloatBuffer val$joints) {
            this.val$joints = val$joints;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass19 anonymousClass19 = AnonymousClass19.this;
                    Vertex.this.vertex.S1(anonymousClass19.val$joints.buffer);
                    Vertex.access$402(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass2 implements Runnable {
        final float[] val$array;

        public AnonymousClass2(final float[] val$array) {
            this.val$array = val$array;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                    h.I(anonymousClass2.val$array, Vertex.this.vertex);
                    Vertex.access$002(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass20 implements Runnable {
        final Vector3Buffer val$buffer;

        public AnonymousClass20(final Vector3Buffer val$buffer) {
            this.val$buffer = val$buffer;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass20 anonymousClass20 = AnonymousClass20.this;
                    Vertex.this.vertex.S1(anonymousClass20.val$buffer.getFloatBuffer().buffer);
                    Vertex.access$402(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass21 implements Runnable {
        final List val$list;

        public AnonymousClass21(final List val$list) {
            this.val$list = val$list;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass21 anonymousClass21 = AnonymousClass21.this;
                    h.N(anonymousClass21.val$list, Vertex.this.vertex);
                    Vertex.access$502(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass22 implements Runnable {
        final float[] val$array;

        public AnonymousClass22(final float[] val$array) {
            this.val$array = val$array;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass22 anonymousClass22 = AnonymousClass22.this;
                    h.M(anonymousClass22.val$array, Vertex.this.vertex);
                    Vertex.access$502(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass23 implements Runnable {
        final NativeFloatBuffer val$weights;

        public AnonymousClass23(final NativeFloatBuffer val$weights) {
            this.val$weights = val$weights;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass23 anonymousClass23 = AnonymousClass23.this;
                    Vertex.this.vertex.s2(anonymousClass23.val$weights.buffer);
                    Vertex.access$502(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass24 implements Runnable {
        final Vector3Buffer val$buffer;

        public AnonymousClass24(final Vector3Buffer val$buffer) {
            this.val$buffer = val$buffer;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass24 anonymousClass24 = AnonymousClass24.this;
                    Vertex.this.vertex.s2(anonymousClass24.val$buffer.getFloatBuffer().buffer);
                    Vertex.access$502(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass25 implements AsyncRunnable {
        final AsyncLaserListener val$asyncLaserListener;
        final Ray val$ray;
        final RayMode val$rayMode;
        final Transform val$transform;

        public AnonymousClass25(final Transform val$transform, final Ray val$ray, final RayMode val$rayMode, final AsyncLaserListener val$asyncLaserListener) {
            this.val$transform = val$transform;
            this.val$ray = val$ray;
            this.val$rayMode = val$rayMode;
            this.val$asyncLaserListener = val$asyncLaserListener;
        }

        @Override
        public Object onBackground(Object input) {
            C3593a D22 = Vertex.this.vertex.D2(this.val$transform.transform, this.val$ray.ray, this.val$rayMode);
            if (D22 != null) {
                return D22.E();
            }
            return null;
        }

        @Override
        public void onEngine(Object result) {
            if (result != null) {
                this.val$asyncLaserListener.onFinish((LaserHit) result);
            } else {
                this.val$asyncLaserListener.onFinish(null);
            }
        }
    }

    public class AnonymousClass26 implements AsyncRunnable {
        final AsyncLaserListener val$asyncLaserListener;
        final boolean val$backfaceCulling;
        final Ray val$ray;
        final RayMode val$rayMode;
        final Transform val$transform;

        public AnonymousClass26(final Transform val$transform, final Ray val$ray, final RayMode val$rayMode, final boolean val$backfaceCulling, final AsyncLaserListener val$asyncLaserListener) {
            this.val$transform = val$transform;
            this.val$ray = val$ray;
            this.val$rayMode = val$rayMode;
            this.val$backfaceCulling = val$backfaceCulling;
            this.val$asyncLaserListener = val$asyncLaserListener;
        }

        @Override
        public Object onBackground(Object input) {
            C3593a E22 = Vertex.this.vertex.E2(this.val$transform.transform, this.val$ray.ray, this.val$rayMode, this.val$backfaceCulling);
            if (E22 != null) {
                return E22.E();
            }
            return null;
        }

        @Override
        public void onEngine(Object result) {
            if (result != null) {
                this.val$asyncLaserListener.onFinish((LaserHit) result);
            } else {
                this.val$asyncLaserListener.onFinish(null);
            }
        }
    }

    public class AnonymousClass27 implements c.g {
        @Override
        public void setProgress(float v10) {
        }
    }

    public class AnonymousClass28 implements c.g {
        @Override
        public void setProgress(float v10) {
        }
    }

    public class AnonymousClass3 implements Runnable {
        final NativeFloatBuffer val$vertices;

        public AnonymousClass3(final NativeFloatBuffer val$vertices) {
            this.val$vertices = val$vertices;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                    Vertex.this.vertex.q2(anonymousClass3.val$vertices.buffer);
                    Vertex.access$002(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass4 implements Runnable {
        final Vector3Buffer val$buffer;

        public AnonymousClass4(final Vector3Buffer val$buffer) {
            this.val$buffer = val$buffer;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                    Vertex.this.vertex.q2(anonymousClass4.val$buffer.getFloatBuffer().buffer);
                    Vertex.access$002(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass5 implements Runnable {
        final List val$list;

        public AnonymousClass5(final List val$list) {
            this.val$list = val$list;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                    h.B(anonymousClass5.val$list, Vertex.this.vertex);
                    Vertex.access$102(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass6 implements Runnable {
        final int[] val$array;

        public AnonymousClass6(final int[] val$array) {
            this.val$array = val$array;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                    h.A(anonymousClass6.val$array, Vertex.this.vertex);
                    Vertex.access$102(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass7 implements Runnable {
        final NativeIntBuffer val$triangles;

        public AnonymousClass7(final NativeIntBuffer val$triangles) {
            this.val$triangles = val$triangles;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                    Vertex.this.vertex.i2(anonymousClass7.val$triangles.buffer);
                    Vertex.access$102(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass8 implements Runnable {
        final Point3Buffer val$buffer;

        public AnonymousClass8(final Point3Buffer val$buffer) {
            this.val$buffer = val$buffer;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass8 anonymousClass8 = AnonymousClass8.this;
                    Vertex.this.vertex.j2(anonymousClass8.val$buffer.buffer);
                    Vertex.access$102(Vertex.this, null);
                }
            });
        }
    }

    public class AnonymousClass9 implements Runnable {
        final List val$list;

        public AnonymousClass9(final List val$list) {
            this.val$list = val$list;
        }

        @Override
        public void run() {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass9 anonymousClass9 = AnonymousClass9.this;
                    h.y(anonymousClass9.val$list, Vertex.this.vertex);
                    Vertex.access$202(Vertex.this, null);
                }
            });
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Vertex$PrimitiveExpose.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Vertex$PrimitiveExpose.class
  classes.dex
 */
    private @interface PrimitiveExpose {
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Vertex$RayMode.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Vertex$RayMode.class
  classes.dex
 */
    public enum RayMode {
        ClosestPoint,
        FirstHit,
        FarHit;

        public static RayMode[] valuesCustom() {
            RayMode[] valuesCustom = values();
            int length = valuesCustom.length;
            RayMode[] rayModeArr = new RayMode[length];
            java.lang.System.arraycopy(valuesCustom, 0, rayModeArr, 0, length);
            return rayModeArr;
        }
    }

    public List<Vector3> getVertices() {
        return null;
    }

    public float[] getVerticesArray() {
        return null;
    }

    public NativeFloatBuffer getVerticesBuffer() {
        return null;
    }

    public void setVertices(List<Vector3> list) {
    }

    public void setVertices(float[] fArr) {
    }

    public void setVertices(NativeFloatBuffer nativeFloatBuffer) {
    }

    public void setVertices(Vector3Buffer vector3Buffer) {
    }

    public List<Vector3> getTriangles() {
        return null;
    }

    public int[] getTrianglesArray() {
        return null;
    }

    public NativeIntBuffer getTrianglesBuffer() {
        return null;
    }

    public void setTriangles(List<Vector3> list) {
    }

    public void setTriangles(int[] iArr) {
    }

    public void setTriangles(NativeIntBuffer nativeIntBuffer) {
    }

    public void setTriangles(Point3Buffer point3Buffer) {
    }

    public List<Vector3> getNormals() {
        return null;
    }

    public float[] getNormalsArray() {
        return null;
    }

    public NativeFloatBuffer getNormalsBuffer() {
        return null;
    }

    public void setNormals(List<Vector3> list) {
    }

    public void setNormals(float[] fArr) {
    }

    public void setNormals(NativeFloatBuffer nativeFloatBuffer) {
    }

    public void setNormals(Vector3Buffer vector3Buffer) {
    }

    public List<Vector2> getUVs() {
        return null;
    }

    public float[] getUVsArray() {
        return null;
    }

    public NativeFloatBuffer getUVsBuffer() {
        return null;
    }

    public void setUVs(List<Vector2> list) {
    }

    public void setUVs(float[] fArr) {
    }

    public void setUVs(NativeFloatBuffer nativeFloatBuffer) {
    }

    public void setUVs(Vector2Buffer vector2Buffer) {
    }

    public List<Vector3> getJoints() {
        return null;
    }

    public float[] getJointsArray() {
        return null;
    }

    public NativeFloatBuffer getJointsBuffer() {
        return null;
    }

    public void setJoints(List<Vector3> list) {
    }

    public void setJoints(float[] fArr) {
    }

    public void setJoints(NativeFloatBuffer nativeFloatBuffer) {
    }

    public void setJoints(Vector3Buffer vector3Buffer) {
    }

    public List<Vector3> getWeights() {
        return null;
    }

    public float[] getWeightsArray() {
        return null;
    }

    public NativeFloatBuffer getWeightsBuffer() {
        return null;
    }

    public void setWeights(List<Vector3> list) {
    }

    public void setWeights(float[] fArr) {
    }

    public void setWeights(NativeFloatBuffer nativeFloatBuffer) {
    }

    public void setWeights(Vector3Buffer vector3Buffer) {
    }

    public LaserHit traceLaser(Transform transform, Ray ray) {
        return traceLaser(transform, ray, RayMode.ClosestPoint);
    }

    public LaserHit traceLaser(Transform transform, Ray ray, RayMode rayMode) {
        return null;
    }

    public LaserHit traceLaser(Transform transform, Ray ray, RayMode rayMode, boolean z10) {
        return null;
    }

    public void traceLaserAsync(Transform transform, Ray ray, AsyncLaserListener asyncLaserListener) {
        traceLaserAsync(transform, ray, asyncLaserListener, RayMode.ClosestPoint);
    }

    public void traceLaserAsync(Transform transform, Ray ray, AsyncLaserListener asyncLaserListener, RayMode rayMode) {
    }

    public void traceLaserAsync(Transform transform, Ray ray, AsyncLaserListener asyncLaserListener, RayMode rayMode, boolean z10) {
    }

    public void apply() {
    }

    public void applyAsync() {
    }

    public AABB getBoundingBox() {
        return null;
    }

    public AABB recalculateBoundingBox() {
        return null;
    }

    public static Vertex loadFile(VertexFile vertexFile) {
        return null;
    }

    public static Vertex loadFile(File file) {
        return null;
    }

    public static Vertex loadFile(InputStream inputStream) {
        return null;
    }

    public static Vertex loadPrimitive(int i10) {
        return null;
    }
}
