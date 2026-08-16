package com.ardor3d.scenegraph.shape;

import com.ardor3d.math.Vector3;
import com.ardor3d.scenegraph.FloatBufferData;
import com.ardor3d.scenegraph.IndexBufferData;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.MeshData;
import com.ardor3d.util.geom.BufferUtils;
import java.nio.FloatBuffer;

public class GeoSphere extends Mesh {
    private static final long serialVersionUID = 1;
    private int _maxlevels;
    private double _radius;
    private TextureMode _textureMode;
    private boolean _usingIcosahedron;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$scenegraph$shape$GeoSphere$TextureMode;

        static {
            int[] iArr = new int[TextureMode.values().length];
            $SwitchMap$com$ardor3d$scenegraph$shape$GeoSphere$TextureMode = iArr;
            try {
                iArr[TextureMode.Original.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$scenegraph$shape$GeoSphere$TextureMode[TextureMode.Projected.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum TextureMode {
        Original,
        Projected
    }

    public GeoSphere(String str, boolean z10, double d10, int i10, TextureMode textureMode) {
        super(str);
        this._usingIcosahedron = true;
        TextureMode textureMode2 = TextureMode.Original;
        this._radius = d10;
        this._maxlevels = i10;
        this._usingIcosahedron = z10;
        this._textureMode = textureMode;
        updateGeometry();
    }

    private int calculateBorderTriangles(int i10) {
        int i11 = i10 - 4;
        int i12 = 108;
        while (true) {
            int i13 = i11 - 1;
            if (i11 <= 0) {
                return i12;
            }
            i12 = (i12 * 2) + 12;
            i11 = i13;
        }
    }

    private void put(Vector3 vector3) {
        put(vector3, false);
    }

    private void updateGeometry() {
        FloatBuffer floatBuffer;
        int i10;
        Triangle[] triangleArr;
        int i11;
        int i12 = 6;
        boolean z10 = this._usingIcosahedron;
        int i13 = z10 ? 20 : 8;
        int i14 = z10 ? 12 : 6;
        int i15 = this._maxlevels;
        int i16 = i13 << ((i15 - 1) * 2);
        int calculateBorderTriangles = (i13 * ((((1 << (i15 * 2)) - 1) / 3) - 1)) + i14 + calculateBorderTriangles(i15);
        FloatBuffer vertexBuffer = this._meshData.getVertexBuffer();
        MeshData meshData = this._meshData;
        FloatBuffer createVector3Buffer = BufferUtils.createVector3Buffer(vertexBuffer, calculateBorderTriangles);
        meshData.setVertexBuffer(createVector3Buffer);
        MeshData meshData2 = this._meshData;
        meshData2.setNormalBuffer(BufferUtils.createVector3Buffer(meshData2.getNormalBuffer(), calculateBorderTriangles));
        FloatBufferData textureCoords = this._meshData.getTextureCoords(0);
        this._meshData.setTextureCoords(new FloatBufferData(BufferUtils.createVector2Buffer(textureCoords != null ? textureCoords.getBuffer() : null, calculateBorderTriangles), 2), 0);
        if (this._usingIcosahedron) {
            int[] iArr = {0, 1, 2, 0, 2, 3, 0, 3, 4, 0, 4, 5, 0, 5, 1, 1, 10, 6, 2, 6, 7, 3, 7, 8, 4, 8, 9, 5, 9, 10, 6, 2, 1, 7, 3, 2, 8, 4, 3, 9, 5, 4, 10, 1, 5, 11, 7, 6, 11, 8, 7, 11, 9, 8, 11, 10, 9, 11, 6, 10};
            double d10 = this._radius;
            double d11 = d10 * 0.4472d;
            double d12 = d10 * 0.8944d;
            double d13 = d10 * 0.2764d;
            i10 = calculateBorderTriangles;
            double d14 = d10 * 0.7236d;
            floatBuffer = createVector3Buffer;
            double d15 = d10 * 0.8507d;
            double d16 = d10 * 0.5257d;
            put(new Vector3(0.0d, this._radius, 0.0d));
            put(new Vector3(d12, d11, 0.0d));
            double d17 = -d15;
            put(new Vector3(d13, d11, d17));
            double d18 = -d14;
            double d19 = -d16;
            put(new Vector3(d18, d11, d19));
            put(new Vector3(d18, d11, d16));
            put(new Vector3(d13, d11, d15));
            double d20 = -d11;
            put(new Vector3(d14, d20, d19));
            double d21 = -d13;
            put(new Vector3(d21, d20, d17));
            put(new Vector3(-d12, d20, 0.0d));
            put(new Vector3(d21, d20, d15));
            put(new Vector3(d14, d20, d16));
            put(new Vector3(0.0d, -this._radius, 0.0d));
            triangleArr = new Triangle[20];
            for (int i17 = 0; i17 < 20; i17++) {
                Triangle triangle = new Triangle();
                triangleArr[i17] = triangle;
                int[] iArr2 = triangle.pt;
                int i18 = i17 * 3;
                iArr2[0] = iArr[i18];
                iArr2[1] = iArr[i18 + 1];
                iArr2[2] = iArr[i18 + 2];
            }
            i12 = 12;
        } else {
            floatBuffer = createVector3Buffer;
            i10 = calculateBorderTriangles;
            Vector3 vector3 = new Vector3(this._radius, 0.0d, 0.0d);
            Vector3 vector32 = new Vector3(-this._radius, 0.0d, 0.0d);
            Vector3 vector33 = new Vector3(0.0d, this._radius, 0.0d);
            Vector3 vector34 = new Vector3(0.0d, -this._radius, 0.0d);
            Vector3 vector35 = new Vector3(0.0d, 0.0d, this._radius);
            Vector3 vector36 = new Vector3(0.0d, 0.0d, -this._radius);
            put(vector3);
            put(vector32);
            put(vector33);
            put(vector34);
            put(vector35);
            put(vector36);
            triangleArr = new Triangle[]{new Triangle(2, 4, 0), new Triangle(1, 4, 2), new Triangle(3, 4, 1), new Triangle(0, 4, 3), new Triangle(5, 2, 0), new Triangle(5, 1, 2), new Triangle(5, 3, 1), new Triangle(5, 0, 3)};
        }
        Vector3 vector37 = new Vector3();
        Vector3 vector38 = new Vector3();
        Vector3 vector39 = new Vector3();
        int i19 = 1;
        while (i19 < this._maxlevels) {
            int length = triangleArr.length * 4;
            Triangle[] triangleArr2 = new Triangle[length];
            for (int i20 = 0; i20 < length; i20++) {
                triangleArr2[i20] = new Triangle();
            }
            int i21 = 0;
            while (i21 < triangleArr.length) {
                int i22 = i21 * 4;
                Triangle triangle2 = triangleArr[i21];
                Triangle triangle3 = triangleArr2[i22];
                FloatBuffer floatBuffer2 = floatBuffer;
                BufferUtils.populateFromBuffer(vector37, floatBuffer2, triangle2.pt[0]);
                BufferUtils.populateFromBuffer(vector38, floatBuffer2, triangle2.pt[1]);
                BufferUtils.populateFromBuffer(vector39, floatBuffer2, triangle2.pt[2]);
                Vector3 multiplyLocal = createMidpoint(vector37, vector39).normalizeLocal().multiplyLocal(this._radius);
                Vector3 multiplyLocal2 = createMidpoint(vector37, vector38).normalizeLocal().multiplyLocal(this._radius);
                Vector3 vector310 = vector37;
                Vector3 multiplyLocal3 = createMidpoint(vector38, vector39).normalizeLocal().multiplyLocal(this._radius);
                int i23 = i12 + 1;
                put(multiplyLocal);
                int i24 = i12 + 2;
                put(multiplyLocal2);
                put(multiplyLocal3);
                int[] iArr3 = triangle3.pt;
                int[] iArr4 = triangle2.pt;
                iArr3[0] = iArr4[0];
                iArr3[1] = i23;
                iArr3[2] = i12;
                int[] iArr5 = triangleArr2[i22 + 1].pt;
                iArr5[0] = i23;
                iArr5[1] = iArr4[1];
                iArr5[2] = i24;
                int[] iArr6 = triangleArr2[i22 + 2].pt;
                iArr6[0] = i12;
                iArr6[1] = i23;
                iArr6[2] = i24;
                int[] iArr7 = triangleArr2[i22 + 3].pt;
                iArr7[0] = i12;
                iArr7[1] = i24;
                iArr7[2] = iArr4[2];
                i21++;
                vector37 = vector310;
                vector38 = vector38;
                i12 += 3;
            }
            i19++;
            triangleArr = triangleArr2;
            vector37 = vector37;
            vector38 = vector38;
        }
        IndexBufferData<?> createIndexBufferData = BufferUtils.createIndexBufferData(i16 * 3, i10 - 1);
        this._meshData.setIndices(createIndexBufferData);
        int position = this._meshData.getVertexBuffer().position() / 3;
        for (Triangle triangle4 : triangleArr) {
            int[] iArr8 = triangle4.pt;
            int length2 = iArr8.length;
            int i25 = 0;
            while (i25 < length2) {
                int i26 = iArr8[i25];
                Vector3 vector311 = new Vector3();
                BufferUtils.populateFromBuffer(vector311, this._meshData.getVertexBuffer(), i26);
                if (vector311.getX() <= 0.0d || vector311.getY() != 0.0d) {
                    i11 = 1;
                } else {
                    i11 = 1;
                    if (((this._meshData.getVertexBuffer().get((r5.pt[0] * 3) + 1) + this._meshData.getVertexBuffer().get((r5.pt[1] * 3) + 1)) + this._meshData.getVertexBuffer().get((r5.pt[2] * 3) + 1)) / 3.0d > 0.0d) {
                        put(vector311, true);
                        createIndexBufferData.put2(position);
                        position++;
                        i25 += i11;
                    }
                }
                createIndexBufferData.put2(i26);
                i25 += i11;
            }
        }
    }

    public Vector3 createMidpoint(Vector3 vector3, Vector3 vector32) {
        return new Vector3((vector3.getX() + vector32.getX()) * 0.5d, (vector3.getY() + vector32.getY()) * 0.5d, (vector3.getZ() + vector32.getZ()) * 0.5d);
    }

    public double getRadius() {
        return this._radius;
    }

    public TextureMode getTextureMode() {
        return this._textureMode;
    }

    public boolean isUsingIcosahedron() {
        return this._usingIcosahedron;
    }

    public void setTextureMode(TextureMode textureMode) {
        if (textureMode != this._textureMode) {
            this._textureMode = textureMode;
            updateGeometry();
        }
    }

    public static class Triangle {
        int[] pt;

        public Triangle() {
            this.pt = new int[3];
        }

        public Triangle(int i10, int i11, int i12) {
            this.pt = r0;
            int[] iArr = {i10, i11, i12};
        }
    }

    private void put(Vector3 vector3, boolean z10) {
        FloatBuffer vertexBuffer = this._meshData.getVertexBuffer();
        vertexBuffer.put((float) vector3.getX());
        vertexBuffer.put((float) vector3.getY());
        vertexBuffer.put((float) vector3.getZ());
        double length = vector3.length();
        FloatBuffer normalBuffer = this._meshData.getNormalBuffer();
        double x10 = vector3.getX() / length;
        normalBuffer.put((float) x10);
        double y10 = vector3.getY() / length;
        normalBuffer.put((float) y10);
        double z11 = vector3.getZ() / length;
        normalBuffer.put((float) z11);
        FloatBuffer buffer = this._meshData.getTextureCoords(0).getBuffer();
        double d10 = 0.0d;
        if (vector3.getX() <= 0.0d || vector3.getY() != 0.0d) {
            buffer.put((float) (((Math.atan2(y10, x10) / 6.283185307179586d) + 1.0d) % 1.0d));
        } else if (z10) {
            buffer.put(0.0f);
        } else {
            buffer.put(1.0f);
        }
        int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$scenegraph$shape$GeoSphere$TextureMode[this._textureMode.ordinal()];
        if (i10 == 1) {
            d10 = (z11 + 1.0d) * 0.5d;
        } else if (i10 == 2) {
            d10 = (Math.asin(z11) + 1.5707963267948966d) * 0.3183098861837907d;
        }
        buffer.put((float) d10);
    }

    public GeoSphere() {
        this._usingIcosahedron = true;
        this._textureMode = TextureMode.Original;
    }
}
