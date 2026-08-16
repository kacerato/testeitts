package com.itsmagic.engine.Engines.Engine.Vertex.Data;

import Ib.h;
import W7.b;
import X7.a;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.Primitives.Indices;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.Primitives.Part;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Utils.FileGUID;
import com.jme3.math.Matrix4f;
import com.jme3.math.Vector3f;
import org.apache.commons.lang3.ArrayUtils;
import uc.C15593a;

@Deprecated
public class VertexData {

    @Expose
    private float[] COLORS_ARRAY;

    @Expose
    private int[] INDICES_ARRAY;

    @Expose
    private float[] NORMALS_ARRAY;

    @Expose
    private float[] TANGENTS_ARRAY;

    @Expose
    private float[] TEX_COORD_ARRAY;

    @Expose
    private float[] VERTICES_ARRAY;

    @Expose
    public FileGUID f79927fg;

    @Expose
    private Indices indices;

    @Expose
    private int[] jointsArray;

    @Expose
    private float[] weightsArray;

    public VertexData() {
    }

    public void a(VertexData vertexData) {
        if (vertexData.VERTICES_ARRAY != null) {
            if (this.VERTICES_ARRAY == null) {
                this.VERTICES_ARRAY = new float[0];
            }
            float[] fArr = this.VERTICES_ARRAY;
            int length = fArr.length / 3;
            this.VERTICES_ARRAY = ArrayUtils.addAll(fArr, vertexData.VERTICES_ARRAY);
            if (vertexData.INDICES_ARRAY != null) {
                if (this.INDICES_ARRAY == null) {
                    this.INDICES_ARRAY = new int[0];
                }
                int[] iArr = this.INDICES_ARRAY;
                int length2 = iArr.length;
                int[] iArr2 = new int[iArr.length + vertexData.INDICES_ARRAY.length];
                int i10 = 0;
                while (true) {
                    int[] iArr3 = this.INDICES_ARRAY;
                    if (i10 >= iArr3.length) {
                        break;
                    }
                    iArr2[i10] = iArr3[i10];
                    i10++;
                }
                int i11 = 0;
                while (true) {
                    int[] iArr4 = vertexData.INDICES_ARRAY;
                    if (i11 >= iArr4.length) {
                        break;
                    }
                    iArr2[i11 + length2] = iArr4[i11] + length;
                    i11++;
                }
                this.INDICES_ARRAY = iArr2;
            }
        }
        if (vertexData.NORMALS_ARRAY != null) {
            if (this.NORMALS_ARRAY == null) {
                this.NORMALS_ARRAY = new float[0];
            }
            this.NORMALS_ARRAY = ArrayUtils.addAll(this.NORMALS_ARRAY, vertexData.NORMALS_ARRAY);
        }
        if (vertexData.TEX_COORD_ARRAY != null) {
            if (this.TEX_COORD_ARRAY == null) {
                this.TEX_COORD_ARRAY = new float[0];
            }
            this.TEX_COORD_ARRAY = ArrayUtils.addAll(this.TEX_COORD_ARRAY, vertexData.TEX_COORD_ARRAY);
        }
        if (vertexData.weightsArray != null) {
            if (this.weightsArray == null) {
                this.weightsArray = new float[0];
            }
            this.weightsArray = ArrayUtils.addAll(this.weightsArray, vertexData.weightsArray);
        }
        if (vertexData.jointsArray != null) {
            if (this.jointsArray == null) {
                this.jointsArray = new int[0];
            }
            this.jointsArray = ArrayUtils.addAll(this.jointsArray, vertexData.jointsArray);
        }
        if (vertexData.COLORS_ARRAY != null) {
            if (this.COLORS_ARRAY == null) {
                this.COLORS_ARRAY = new float[0];
            }
            this.COLORS_ARRAY = ArrayUtils.addAll(this.COLORS_ARRAY, vertexData.COLORS_ARRAY);
        }
        Indices indices = new Indices();
        this.indices = indices;
        indices.f(this.INDICES_ARRAY);
    }

    public void b() {
        boolean z10;
        float[] fArr = this.VERTICES_ARRAY;
        if (fArr != null) {
            float[] fArr2 = this.NORMALS_ARRAY;
            boolean z11 = true;
            if (fArr2 == null || fArr2.length != fArr.length) {
                h.c(this);
                z10 = true;
            } else {
                z10 = false;
            }
            float[] fArr3 = this.TANGENTS_ARRAY;
            if (fArr3 != null && fArr3.length == this.VERTICES_ARRAY.length) {
                z11 = z10;
            }
            if (z11) {
                Vertex vertex = new Vertex();
                l(vertex);
                vertex.c0();
                if (vertex.F0() != null) {
                    this.TANGENTS_ARRAY = vertex.F0().toArray();
                }
            }
        }
    }

    public int[] c() {
        return this.INDICES_ARRAY;
    }

    public int[] d() {
        return this.jointsArray;
    }

    public float[] e() {
        return this.NORMALS_ARRAY;
    }

    public float[] f() {
        return this.TANGENTS_ARRAY;
    }

    public float[] g() {
        return this.TEX_COORD_ARRAY;
    }

    public float[] h() {
        return this.VERTICES_ARRAY;
    }

    public float[] i() {
        return this.weightsArray;
    }

    public void j(float scale) {
        if (scale == 1.0f) {
            return;
        }
        float[] fArr = new float[this.VERTICES_ARRAY.length];
        int i10 = 0;
        while (true) {
            float[] fArr2 = this.VERTICES_ARRAY;
            if (i10 >= fArr2.length) {
                this.VERTICES_ARRAY = fArr;
                return;
            } else {
                fArr[i10] = fArr2[i10] * scale;
                i10++;
            }
        }
    }

    public void k(Vector3 vector3) {
        if (vector3.equally(1.0f)) {
            return;
        }
        float[] fArr = new float[this.VERTICES_ARRAY.length];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            float[] fArr2 = this.VERTICES_ARRAY;
            if (i10 >= fArr2.length) {
                this.VERTICES_ARRAY = fArr;
                return;
            }
            if (i11 == 0) {
                fArr[i10] = fArr2[i10] * vector3.getX();
            } else if (i11 == 1) {
                fArr[i10] = fArr2[i10] * vector3.getY();
            } else if (i11 == 2) {
                fArr[i10] = fArr2[i10] * vector3.getZ();
            }
            i11++;
            if (i11 > 2) {
                i11 = 0;
            }
            i10++;
        }
    }

    public void l(Vertex vertex) {
        float[] fArr = this.VERTICES_ARRAY;
        if (fArr != null) {
            vertex.q2(C15593a.m(fArr));
        }
        float[] fArr2 = this.TEX_COORD_ARRAY;
        if (fArr2 != null) {
            vertex.m2(C15593a.m(fArr2));
        }
        float[] fArr3 = this.NORMALS_ARRAY;
        if (fArr3 != null) {
            vertex.Y1(C15593a.m(fArr3));
        }
        Indices indices = this.indices;
        if (indices != null) {
            if (!indices.d() && this.INDICES_ARRAY != null) {
                this.indices.c();
                this.indices.f(this.INDICES_ARRAY);
            }
            if (this.indices.b().isEmpty()) {
                return;
            }
            try {
                Part part = this.indices.b().get(0);
                if (part != null) {
                    vertex.i2(part.a());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void m(int[] INDICES) {
        this.INDICES_ARRAY = INDICES;
        Indices indices = new Indices();
        this.indices = indices;
        indices.f(INDICES);
    }

    public void n(int[] jointsArray) {
        this.jointsArray = jointsArray;
    }

    public void o(float[] matrix) {
        Matrix4f matrix4f = new Matrix4f();
        int i10 = 0;
        matrix4f.set(matrix, false);
        Vector3f vector3f = new Vector3f();
        while (true) {
            float[] fArr = this.VERTICES_ARRAY;
            if (i10 >= fArr.length) {
                return;
            }
            vector3f.f81611x = fArr[i10];
            int i11 = i10 + 1;
            vector3f.f81612y = fArr[i11];
            int i12 = i10 + 2;
            vector3f.f81613z = fArr[i12];
            matrix4f.mult(vector3f, vector3f);
            float[] fArr2 = this.VERTICES_ARRAY;
            fArr2[i10] = vector3f.f81611x;
            fArr2[i11] = vector3f.f81612y;
            fArr2[i12] = vector3f.f81613z;
            i10 += 3;
        }
    }

    public void p(float[] NORMALS_ARRAY) {
        this.NORMALS_ARRAY = NORMALS_ARRAY;
    }

    public void q(float[] TANGENTS_ARRAY) {
        this.TANGENTS_ARRAY = TANGENTS_ARRAY;
    }

    public void r(float[] TEX_COORD_ARRAY) {
        this.TEX_COORD_ARRAY = TEX_COORD_ARRAY;
    }

    public void s(float[] VERTICES_ARRAY) {
        this.VERTICES_ARRAY = VERTICES_ARRAY;
    }

    public void t(float[] weightsArray) {
        this.weightsArray = weightsArray;
    }

    public String u() {
        a aVar = b.f27305e;
        return a.m().toJson(this);
    }

    public Vertex v() {
        float[] fArr;
        float[] fArr2 = this.NORMALS_ARRAY;
        if (fArr2 == null || fArr2.length == 0) {
            System.out.println("MISSING NORMALS AT VERTEX LOAD, REGENERATE");
            b();
        }
        Vertex vertex = new Vertex();
        l(vertex);
        float[] fArr3 = this.COLORS_ARRAY;
        if (fArr3 != null) {
            vertex.P1(C15593a.m(fArr3));
        }
        float[] fArr4 = this.TANGENTS_ARRAY;
        if (fArr4 != null) {
            vertex.e2(C15593a.m(fArr4));
        }
        float[] fArr5 = this.weightsArray;
        if (fArr5 != null && fArr5.length > 0) {
            vertex.s2(C15593a.m(fArr5));
        }
        int[] iArr = this.jointsArray;
        if (iArr != null && iArr.length > 0) {
            vertex.S1(C15593a.n(iArr));
        }
        float[] fArr6 = this.VERTICES_ARRAY;
        vertex.F(!((fArr6 == null || (fArr = this.TANGENTS_ARRAY) == null || fArr.length < fArr6.length) ? false : true), true);
        return vertex;
    }

    public void w(Vector3 vector3) {
        if (vector3.equally(0.0f)) {
            return;
        }
        float[] fArr = new float[this.VERTICES_ARRAY.length];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            float[] fArr2 = this.VERTICES_ARRAY;
            if (i10 >= fArr2.length) {
                this.VERTICES_ARRAY = fArr;
                return;
            }
            if (i11 == 0) {
                fArr[i10] = fArr2[i10] + vector3.getX();
            } else if (i11 == 1) {
                fArr[i10] = fArr2[i10] + vector3.getY();
            } else if (i11 == 2) {
                fArr[i10] = fArr2[i10] + vector3.getZ();
            }
            i11++;
            if (i11 > 2) {
                i11 = 0;
            }
            i10++;
        }
    }

    public VertexData(Vertex vertex) {
        if (vertex.i1() != null) {
            this.VERTICES_ARRAY = vertex.i1().toArray();
        }
        if (vertex.a1() != null) {
            this.TEX_COORD_ARRAY = vertex.a1().toArray();
        }
        if (vertex.x0() != null) {
            this.NORMALS_ARRAY = vertex.x0().toArray();
        }
        if (vertex.V0() != null) {
            this.INDICES_ARRAY = vertex.V0().toArray();
            Indices indices = new Indices();
            this.indices = indices;
            indices.f(this.INDICES_ARRAY);
        }
        if (vertex.l1() != null) {
            this.weightsArray = vertex.l1().toArray();
        }
        if (vertex.m0() != null) {
            this.jointsArray = Nc.b.R(vertex.m0().toArray());
        }
        if (vertex.i0() != null) {
            this.COLORS_ARRAY = vertex.i0().toArray();
        }
        if (vertex.F0() != null) {
            this.TANGENTS_ARRAY = vertex.F0().toArray();
        }
    }
}
