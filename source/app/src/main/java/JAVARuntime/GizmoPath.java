package JAVARuntime;

import JAVARuntime.GizmoElement;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:GizmoPath.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:GizmoPath.class
  classes.dex
 */
@ClassCategory(cat = {"Debug"})
public class GizmoPath extends GizmoElement {
    private transient Vertex vertex;
    private transient float[] matrix;
    private transient Color color;
    private final Object block = new Object();
    private transient Vector3 position = new Vector3();
    private transient Quaternion rotation = new Quaternion();
    private transient Vector3 scale = new Vector3(1);
    private transient Object userPointer = null;
    private int wireFrameWidth = 0;
    private volatile float thickness = 0.0f;

    public class Entry {
        public Entry() {
        }

        public int indicesCount(float thickness) {
            return 0;
        }

        public void insertIndices(NativeIntBuffer nativeIntBuffer, int offset, float thickness) {
        }

        public void insertVertices(NativeFloatBuffer nativeFloatBuffer, int offset, float thickness) {
        }

        public int verticesCount(float thickness) {
            return 0;
        }
    }

    public class Line extends Entry {
        private static final float LENGTH_EPSILON = 1.0E-6f;
        private static final int PRISM_SIDES = 3;
        private static final float SCALE_EPSILON = 1.0E-6f;

        public Vector3 f10350a;
        private int addedLoc;

        public Vector3 f10351b;
        private transient float rightX;
        private transient float rightY;
        private transient float rightZ;
        private transient boolean tubeBasisValid;
        private transient float upX;
        private transient float upY;
        private transient float upZ;

        public Line(Vector3 a10, Vector3 b10) {
            super();
            this.f10350a = a10;
            this.f10351b = b10;
        }

        private boolean buildTubeBasis() {
            float x10 = this.f10350a.getX();
            float y10 = this.f10350a.getY();
            float z10 = this.f10350a.getZ();
            float x11 = this.f10351b.getX();
            float y11 = this.f10351b.getY();
            float z11 = this.f10351b.getZ();
            float abs = Math.abs(GizmoPath.access$000(GizmoPath.this).getX());
            float abs2 = Math.abs(GizmoPath.access$000(GizmoPath.this).getY());
            float abs3 = Math.abs(GizmoPath.access$000(GizmoPath.this).getZ());
            if (abs < 1.0E-6f) {
                abs = 1.0E-6f;
            }
            if (abs2 < 1.0E-6f) {
                abs2 = 1.0E-6f;
            }
            if (abs3 < 1.0E-6f) {
                abs3 = 1.0E-6f;
            }
            float f10 = (x11 - x10) * abs;
            float f11 = (y11 - y10) * abs2;
            float f12 = (z11 - z10) * abs3;
            float f13 = (f10 * f10) + (f11 * f11) + (f12 * f12);
            if (f13 <= 1.0E-12f) {
                this.tubeBasisValid = false;
                return false;
            }
            float sqrt = 1.0f / Math.sqrt(f13);
            float f14 = f10 * sqrt;
            float f15 = f11 * sqrt;
            float f16 = f12 * sqrt;
            float f17 = Math.abs(f15) < 0.99f ? 0.0f : 1.0f;
            float f18 = Math.abs(f15) < 0.99f ? 1.0f : 0.0f;
            float f19 = f15 * 0.0f;
            float f20 = f19 - (f16 * f18);
            float f21 = f14 * 0.0f;
            float f22 = (f16 * f17) - f21;
            float f23 = (f18 * f14) - (f17 * f15);
            float f24 = (f20 * f20) + (f22 * f22) + (f23 * f23);
            if (f24 <= 1.0E-12f) {
                float f25 = 0.0f * f16;
                f20 = (f15 * 1.0f) - f25;
                f22 = f25 - (f14 * 1.0f);
                f23 = f21 - f19;
                f24 = (f20 * f20) + (f22 * f22) + (f23 * f23);
                if (f24 <= 1.0E-12f) {
                    this.tubeBasisValid = false;
                    return false;
                }
            }
            float sqrt2 = 1.0f / Math.sqrt(f24);
            float f26 = f20 * sqrt2;
            float f27 = f22 * sqrt2;
            float f28 = f23 * sqrt2;
            this.rightX = f26 / abs;
            this.rightY = f27 / abs2;
            this.rightZ = f28 / abs3;
            this.upX = ((f15 * f28) - (f16 * f27)) / abs;
            this.upY = ((f16 * f26) - (f14 * f28)) / abs2;
            this.upZ = ((f14 * f27) - (f15 * f26)) / abs3;
            this.tubeBasisValid = true;
            return true;
        }

        private boolean isLineRenderable() {
            float x10 = this.f10351b.getX() - this.f10350a.getX();
            float y10 = this.f10351b.getY() - this.f10350a.getY();
            float z10 = this.f10351b.getZ() - this.f10350a.getZ();
            return ((x10 * x10) + (y10 * y10)) + (z10 * z10) > 1.0E-12f;
        }

        private boolean isTubeRenderable() {
            float x10 = this.f10351b.getX() - this.f10350a.getX();
            float y10 = this.f10351b.getY() - this.f10350a.getY();
            float z10 = this.f10351b.getZ() - this.f10350a.getZ();
            float abs = Math.abs(GizmoPath.access$000(GizmoPath.this).getX());
            float abs2 = Math.abs(GizmoPath.access$000(GizmoPath.this).getY());
            float abs3 = Math.abs(GizmoPath.access$000(GizmoPath.this).getZ());
            if (abs < 1.0E-6f) {
                abs = 1.0E-6f;
            }
            if (abs2 < 1.0E-6f) {
                abs2 = 1.0E-6f;
            }
            if (abs3 < 1.0E-6f) {
                abs3 = 1.0E-6f;
            }
            float f10 = x10 * abs;
            float f11 = y10 * abs2;
            float f12 = z10 * abs3;
            return ((f10 * f10) + (f11 * f11)) + (f12 * f12) > 1.0E-12f;
        }

        @Override
        public int indicesCount(float thickness) {
            if (thickness <= 0.0f) {
                return 4;
            }
            return isTubeRenderable() ? 24 : 0;
        }

        @Override
        public void insertIndices(NativeIntBuffer nativeIntBuffer, int offset, float thickness) {
            if (thickness <= 0.0f) {
                nativeIntBuffer.put(this.addedLoc);
                nativeIntBuffer.put(this.addedLoc + 1);
                nativeIntBuffer.put(this.addedLoc + 1);
                nativeIntBuffer.put(this.addedLoc + 1);
                return;
            }
            if (this.tubeBasisValid || buildTubeBasis()) {
                int i10 = this.addedLoc;
                int i11 = i10 + 3;
                int i12 = 0;
                while (i12 < 3) {
                    int i13 = i12 + 1;
                    int i14 = i13 % 3;
                    int i15 = i10 + i12;
                    int i16 = i10 + i14;
                    int i17 = i14 + i11;
                    nativeIntBuffer.put(i15);
                    nativeIntBuffer.put(i16);
                    nativeIntBuffer.put(i17);
                    nativeIntBuffer.put(i15);
                    nativeIntBuffer.put(i17);
                    nativeIntBuffer.put(i12 + i11);
                    i12 = i13;
                }
                nativeIntBuffer.put(i10);
                nativeIntBuffer.put(i10 + 2);
                nativeIntBuffer.put(i10 + 1);
                nativeIntBuffer.put(i11);
                nativeIntBuffer.put(i10 + 4);
                nativeIntBuffer.put(i10 + 5);
            }
        }

        @Override
        public void insertVertices(NativeFloatBuffer nativeFloatBuffer, int offset, float thickness) {
            this.addedLoc = offset;
            if (thickness <= 0.0f) {
                nativeFloatBuffer.put(this.f10350a.getX());
                nativeFloatBuffer.put(this.f10350a.getY());
                nativeFloatBuffer.put(this.f10350a.getZ());
                nativeFloatBuffer.put(this.f10351b.getX());
                nativeFloatBuffer.put(this.f10351b.getY());
                nativeFloatBuffer.put(this.f10351b.getZ());
                return;
            }
            if (buildTubeBasis()) {
                float f10 = 0.5f * thickness;
                float x10 = this.f10350a.getX();
                float y10 = this.f10350a.getY();
                float z10 = this.f10350a.getZ();
                float x11 = this.f10351b.getX();
                float y11 = this.f10351b.getY();
                float z11 = this.f10351b.getZ();
                int i10 = 3;
                float[] fArr = new float[3];
                float[] fArr2 = new float[3];
                float[] fArr3 = new float[3];
                int i11 = 0;
                while (i11 < i10) {
                    float f11 = i11 * 2.0943952f;
                    float cos = Math.cos(f11);
                    float sin = Math.sin(f11);
                    fArr[i11] = ((this.rightX * cos) + (this.upX * sin)) * f10;
                    fArr2[i11] = ((this.rightY * cos) + (this.upY * sin)) * f10;
                    fArr3[i11] = ((this.rightZ * cos) + (this.upZ * sin)) * f10;
                    i11++;
                    i10 = 3;
                }
                int i12 = i10;
                int i13 = 0;
                while (i13 < i12) {
                    nativeFloatBuffer.put(fArr[i13] + x10);
                    nativeFloatBuffer.put(fArr2[i13] + y10);
                    nativeFloatBuffer.put(fArr3[i13] + z10);
                    i13++;
                    i12 = 3;
                }
                for (int i14 = 0; i14 < i12; i14++) {
                    nativeFloatBuffer.put(fArr[i14] + x11);
                    nativeFloatBuffer.put(fArr2[i14] + y11);
                    nativeFloatBuffer.put(fArr3[i14] + z11);
                }
            }
        }

        @Override
        public int verticesCount(float thickness) {
            if (thickness <= 0.0f) {
                return 2;
            }
            return isTubeRenderable() ? 6 : 0;
        }
    }

    @Override
    @HideGetSet
    public Color getColor() {
        return this.color;
    }

    @HideGetSet
    public void setColor(Color color) {
        this.color = color;
    }

    @HideGetSet
    public Vector3 getPosition() {
        return this.position;
    }

    @HideGetSet
    public void setPosition(Vector3 vector3) {
        this.position = vector3;
    }

    public void setPosition(float f10, float f11, float f12) {
        this.position.set(f10, f11, f12);
    }

    @HideGetSet
    public Quaternion getRotation() {
        return this.rotation;
    }

    @HideGetSet
    public void setRotation(Quaternion quaternion) {
        this.rotation = quaternion;
    }

    public void setRotation(float f10, float f11, float f12) {
    }

    public void setRotation(float f10, float f11, float f12, float f13) {
    }

    @HideGetSet
    public Vector3 getScale() {
        return this.scale;
    }

    @HideGetSet
    public void setScale(Vector3 vector3) {
        this.scale = vector3;
    }

    public void setScale(float f10, float f11, float f12) {
        this.scale.set(f10, f11, f12);
    }

    @Override
    @HideGetSet
    public float[] getMatrix() {
        return null;
    }

    @HideGetSet
    public void setMatrix(float[] fArr) {
        this.matrix = fArr;
    }

    @Override
    @HideGetSet
    public Object getUserPointer() {
        return this.userPointer;
    }

    @Override
    @HideGetSet
    public void setUserPointer(Object obj) {
        this.userPointer = obj;
    }

    public void clear() {
    }

    public GizmoPath addLine(Vector3 vector3, Vector3 vector32) {
        return this;
    }

    public GizmoPath addPath(List<Vector2> list) {
        return this;
    }

    @Override
    @HideGetSet
    public int getWireFrameWidth() {
        return this.wireFrameWidth;
    }

    @HideGetSet
    public void setWireFrameWidth(int i10) {
        this.wireFrameWidth = i10;
    }

    @HideGetSet
    public float getThickness() {
        return this.thickness;
    }

    @HideGetSet
    public void setThickness(float f10) {
    }

    public void apply() {
    }

    public void destroy() {
    }

    @Override
    public Vertex getVertex() {
        return null;
    }

    @Override
    public boolean isDeepDestroyVertexAfterCacheInvalidation() {
        return false;
    }

    @Override
    public GizmoElement.RenderMode getRenderMode() {
        return this.thickness <= 0.0f ? GizmoElement.RenderMode.WireFrame : GizmoElement.RenderMode.Triangles;
    }

    @Override
    public boolean isDualFaceRender() {
        return this.thickness > 0.0f;
    }
}
