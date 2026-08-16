package p000if;

import androidx.constraintlayout.motion.widget.Key;
import com.jme3.asset.AssetManager;
import com.jme3.material.Material;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Matrix4f;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Triangle;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.jme3.scene.CollisionData;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.mesh.IndexBuffer;
import com.jme3.util.BufferUtils;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;
import jf.b;
import jf.d;
import jf.f;
import jf.g;
import jf.h;
import jf.o;
import jf.p;

public final class C13720p {

    public static final int f92141a = 4;

    public static final int f92142b = 3;

    public static final int f92143c = 2;

    public static final int f92144d = 3;

    public static final Logger f92145e = Logger.getLogger(C13720p.class.getName());

    public static final Matrix4f f92146f = new Matrix4f();

    public static final Vector3f f92147g = new Vector3f(-1.0f, -1.0f, -1.0f);

    public static final boolean f92148h = false;

    public static class a {

        public static final int[] f92149a;

        static {
            int[] iArr = new int[Mesh.Mode.values().length];
            f92149a = iArr;
            try {
                iArr[Mesh.Mode.Points.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f92149a[Mesh.Mode.Lines.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f92149a[Mesh.Mode.Triangles.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f92149a[Mesh.Mode.LineLoop.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f92149a[Mesh.Mode.LineStrip.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f92149a[Mesh.Mode.TriangleFan.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f92149a[Mesh.Mode.TriangleStrip.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static int A(Mesh mesh, int i10) {
        C13702E.q(i10, "bone index");
        int maxNumWeights = mesh.getMaxNumWeights();
        Buffer dataReadOnly = mesh.getBuffer(VertexBuffer.Type.BoneIndex).getDataReadOnly();
        dataReadOnly.rewind();
        dataReadOnly.remaining();
        int remaining = dataReadOnly.remaining() / 4;
        FloatBuffer floatBuffer = mesh.getFloatBuffer(VertexBuffer.Type.BoneWeight);
        floatBuffer.rewind();
        floatBuffer.remaining();
        int i11 = 0;
        for (int i12 = 0; i12 < remaining; i12++) {
            for (int i13 = 0; i13 < 4; i13++) {
                float f10 = floatBuffer.get();
                int r10 = d.r(dataReadOnly);
                if (i13 < maxNumWeights && r10 == i10 && f10 != 0.0f) {
                    i11++;
                }
            }
        }
        return i11;
    }

    public static void B(Mesh mesh) {
        FloatBuffer floatBuffer = mesh.getFloatBuffer(VertexBuffer.Type.Normal);
        if (floatBuffer != null) {
            d.u(floatBuffer, 0, floatBuffer.limit(), f92147g);
        }
        FloatBuffer floatBuffer2 = mesh.getFloatBuffer(VertexBuffer.Type.BindPoseNormal);
        if (floatBuffer2 != null) {
            d.u(floatBuffer2, 0, floatBuffer2.limit(), f92147g);
        }
    }

    public static void C(Mesh mesh) {
        C13702E.H(mesh.getMode() == Mesh.Mode.Triangles, "be in Triangles mode");
        mesh.updateCounts();
        int triangleCount = mesh.getTriangleCount();
        IndexBuffer indexBuffer = mesh.getIndexBuffer();
        if (indexBuffer != null) {
            for (int i10 = 0; i10 < triangleCount; i10++) {
                int i11 = i10 * 3;
                int i12 = i11 + 2;
                int i13 = indexBuffer.get(i11);
                indexBuffer.put(i11, indexBuffer.get(i12));
                indexBuffer.put(i12, i13);
            }
            return;
        }
        Iterator<VertexBuffer> it = mesh.getBufferList().iterator();
        while (it.hasNext()) {
            VertexBuffer next = it.next();
            for (int i14 = 0; i14 < triangleCount; i14++) {
                int i15 = i14 * 3;
                C13709e.e(next, i15, i15 + 2);
            }
        }
    }

    public static void D(Mesh mesh, Quaternion quaternion) {
        E(mesh, VertexBuffer.Type.Position, quaternion);
        E(mesh, VertexBuffer.Type.BindPosePosition, quaternion);
        E(mesh, VertexBuffer.Type.Normal, quaternion);
        E(mesh, VertexBuffer.Type.BindPoseNormal, quaternion);
        F(mesh, VertexBuffer.Type.Tangent, quaternion);
        F(mesh, VertexBuffer.Type.BindPoseTangent, quaternion);
        E(mesh, VertexBuffer.Type.Binormal, quaternion);
        mesh.updateBound();
    }

    public static void E(Mesh mesh, VertexBuffer.Type type, Quaternion quaternion) {
        C13702E.t(type, "buffer type");
        C13702E.t(quaternion, Key.ROTATION);
        VertexBuffer buffer = mesh.getBuffer(type);
        if (buffer != null) {
            d.s((FloatBuffer) buffer.getData(), 0, mesh.getVertexCount() * 3, quaternion);
            buffer.setUpdateNeeded();
        }
    }

    public static void F(Mesh mesh, VertexBuffer.Type type, Quaternion quaternion) {
        C13702E.t(type, "buffer type");
        C13702E.t(quaternion, Key.ROTATION);
        VertexBuffer buffer = mesh.getBuffer(type);
        if (buffer != null) {
            FloatBuffer floatBuffer = (FloatBuffer) buffer.getData();
            int vertexCount = mesh.getVertexCount();
            Vector3f vector3f = new Vector3f();
            Vector4f vector4f = new Vector4f();
            for (int i10 = 0; i10 < vertexCount; i10++) {
                a0(mesh, type, i10, vector4f);
                vector3f.set(vector4f.f81615x, vector4f.f81616y, vector4f.f81617z);
                g.r(quaternion, vector3f, vector3f);
                float f10 = vector3f.f81611x;
                vector4f.f81615x = f10;
                vector4f.f81616y = vector3f.f81612y;
                vector4f.f81617z = vector3f.f81613z;
                int i11 = i10 * 3;
                floatBuffer.put(i11, f10);
                floatBuffer.put(i11 + 1, vector4f.f81616y);
                floatBuffer.put(i11 + 2, vector4f.f81617z);
                floatBuffer.put(i11 + 3, vector4f.f81614w);
            }
            buffer.setUpdateNeeded();
        }
    }

    public static void G(Mesh mesh, float f10) {
        int vertexCount = mesh.getVertexCount() * 3;
        Vector3f vector3f = new Vector3f(f10, f10, f10);
        VertexBuffer buffer = mesh.getBuffer(VertexBuffer.Type.Position);
        d.u((FloatBuffer) buffer.getData(), 0, vertexCount, vector3f);
        buffer.setUpdateNeeded();
        VertexBuffer buffer2 = mesh.getBuffer(VertexBuffer.Type.BindPosePosition);
        if (buffer2 != null) {
            d.u((FloatBuffer) buffer2.getData(), 0, vertexCount, vector3f);
            buffer2.setUpdateNeeded();
        }
        mesh.updateBound();
    }

    public static void H(Mesh mesh, int i10, IndexBuffer indexBuffer) {
        C13702E.t(mesh, "mesh");
        C13702E.i(i10, "weights per vertex", 1, 4);
        Buffer buffer = indexBuffer.getBuffer();
        VertexBuffer.Type type = VertexBuffer.Type.BoneIndex;
        if (buffer instanceof ByteBuffer) {
            mesh.setBuffer(type, i10, (ByteBuffer) buffer);
        } else if (buffer instanceof IntBuffer) {
            mesh.setBuffer(type, i10, (IntBuffer) buffer);
        } else {
            if (!(buffer instanceof ShortBuffer)) {
                throw new IllegalArgumentException(buffer.getClass().getName());
            }
            mesh.setBuffer(type, i10, (ShortBuffer) buffer);
        }
    }

    public static void I(Mesh mesh) {
        C13702E.t(mesh, "mesh");
        C13702E.H(o(mesh), "have normals");
        J(mesh, VertexBuffer.Type.Normal, VertexBuffer.Type.Position);
        VertexBuffer.Type type = VertexBuffer.Type.BindPoseNormal;
        if (mesh.getBuffer(type) != null) {
            J(mesh, type, VertexBuffer.Type.BindPosePosition);
        }
    }

    public static void J(Mesh mesh, VertexBuffer.Type type, VertexBuffer.Type type2) {
        C13702E.t(mesh, "mesh");
        FloatBuffer floatBuffer = mesh.getFloatBuffer(type2);
        int limit = floatBuffer.limit() / 3;
        HashMap hashMap = new HashMap(limit);
        int i10 = 0;
        for (int i11 = 0; i11 < limit; i11++) {
            Vector3f vector3f = new Vector3f();
            d.g(floatBuffer, i11 * 3, vector3f);
            h.U(vector3f, vector3f);
            if (!hashMap.containsKey(vector3f)) {
                hashMap.put(vector3f, Integer.valueOf(i10));
                i10++;
            }
        }
        Vector3f[] vector3fArr = new Vector3f[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            vector3fArr[i12] = new Vector3f(0.0f, 0.0f, 0.0f);
        }
        IndexBuffer indicesAsList = mesh.getIndicesAsList();
        int size = indicesAsList.size();
        FloatBuffer floatBuffer2 = mesh.getFloatBuffer(type);
        Vector3f vector3f2 = new Vector3f();
        Vector3f vector3f3 = new Vector3f();
        for (int i13 = 0; i13 < size; i13++) {
            int i14 = indicesAsList.get(i13) * 3;
            d.g(floatBuffer, i14, vector3f2);
            h.U(vector3f2, vector3f2);
            int intValue = ((Integer) hashMap.get(vector3f2)).intValue();
            d.g(floatBuffer2, i14, vector3f3);
            vector3fArr[intValue].addLocal(vector3f3);
        }
        for (int i15 = 0; i15 < i10; i15++) {
            h.P(vector3fArr[i15]);
        }
        for (int i16 = 0; i16 < limit; i16++) {
            int i17 = i16 * 3;
            d.g(floatBuffer, i17, vector3f2);
            h.U(vector3f2, vector3f2);
            d.p(floatBuffer2, i17, vector3fArr[((Integer) hashMap.get(vector3f2)).intValue()]);
        }
    }

    public static Mesh K(Mesh mesh, int i10) {
        int i11;
        int i12;
        C13702E.t(mesh, "input mesh");
        C13702E.H(mesh.getMode() == Mesh.Mode.Lines, "be in Lines mode");
        C13702E.i(i10, "ratio", 2, Integer.MAX_VALUE);
        IndexBuffer indicesAsList = mesh.getIndicesAsList();
        int triangleCount = mesh.getTriangleCount();
        int size = indicesAsList.size() * i10;
        Mesh mo1295clone = mesh.mo1295clone();
        Iterator<VertexBuffer> it = mesh.getBufferList().iterator();
        while (it.hasNext()) {
            VertexBuffer next = it.next();
            VertexBuffer.Type bufferType = next.getBufferType();
            mo1295clone.clearBuffer(bufferType);
            if (bufferType != VertexBuffer.Type.Index) {
                VertexBuffer.Format format = VertexBuffer.Format.Float;
                int h10 = f.h(next.getNumComponents(), 1, 4);
                mo1295clone.setBuffer(bufferType, h10, format, VertexBuffer.createBuffer(format, h10, size));
            }
        }
        int i13 = 0;
        for (int i14 = 0; i14 < triangleCount; i14++) {
            int i15 = i14 * 2;
            int i16 = indicesAsList.get(i15);
            int i17 = indicesAsList.get(i15 + 1);
            for (int i18 = 0; i18 < i10; i18 = i11) {
                float f10 = i10;
                float f11 = i18 / f10;
                i11 = i18 + 1;
                float f12 = i11 / f10;
                Iterator<VertexBuffer> it2 = mo1295clone.getBufferList().iterator();
                while (it2.hasNext()) {
                    VertexBuffer next2 = it2.next();
                    VertexBuffer buffer = mesh.getBuffer(next2.getBufferType());
                    if (buffer.getNumElements() > 0) {
                        i12 = i11;
                        C13709e.c(f11, buffer, i16, i17, next2, i13);
                        C13709e.c(f12, buffer, i16, i17, next2, i13 + 1);
                        i13 += 2;
                    } else {
                        i12 = i11;
                    }
                    i11 = i12;
                }
            }
        }
        Iterator<VertexBuffer> it3 = mo1295clone.getBufferList().iterator();
        while (it3.hasNext()) {
            Buffer data = it3.next().getData();
            data.position(data.capacity());
            data.flip();
        }
        mo1295clone.updateCounts();
        return mo1295clone;
    }

    public static Mesh L(Mesh mesh, int i10) {
        int i11;
        int i12;
        int i13;
        C13702E.t(mesh, "input mesh");
        C13702E.H(mesh.getMode() == Mesh.Mode.Triangles, "be in Triangles mode");
        C13702E.i(i10, "ratio", 2, Integer.MAX_VALUE);
        IndexBuffer indicesAsList = mesh.getIndicesAsList();
        int triangleCount = mesh.getTriangleCount();
        int size = indicesAsList.size() * i10 * i10;
        Mesh mo1295clone = mesh.mo1295clone();
        Iterator<VertexBuffer> it = mesh.getBufferList().iterator();
        while (it.hasNext()) {
            VertexBuffer next = it.next();
            VertexBuffer.Type bufferType = next.getBufferType();
            mo1295clone.clearBuffer(bufferType);
            if (bufferType != VertexBuffer.Type.Index) {
                VertexBuffer.Format format = VertexBuffer.Format.Float;
                int h10 = f.h(next.getNumComponents(), 1, 4);
                mo1295clone.setBuffer(bufferType, h10, format, VertexBuffer.createBuffer(format, h10, size));
            }
        }
        int i14 = 0;
        for (int i15 = 0; i15 < triangleCount; i15++) {
            int i16 = i15 * 3;
            int i17 = indicesAsList.get(i16);
            int i18 = indicesAsList.get(i16 + 1);
            int i19 = indicesAsList.get(i16 + 2);
            int i20 = 0;
            while (i20 < i10) {
                int i21 = 0;
                while (true) {
                    int i22 = i10 - i20;
                    if (i21 < i22) {
                        float f10 = i10;
                        float f11 = i21 / f10;
                        int i23 = i21 + 1;
                        float f12 = i23 / f10;
                        float f13 = (r12 - 1) / f10;
                        float f14 = (i22 - i21) / f10;
                        Iterator<VertexBuffer> it2 = mo1295clone.getBufferList().iterator();
                        while (it2.hasNext()) {
                            VertexBuffer next2 = it2.next();
                            VertexBuffer buffer = mesh.getBuffer(next2.getBufferType());
                            if (buffer.getNumElements() > 0) {
                                i12 = i23;
                                i13 = i20;
                                C13709e.d(f11, f13, buffer, i17, i18, i19, next2, i14);
                                C13709e.d(f12, f13, buffer, i17, i18, i19, next2, i14 + 1);
                                C13709e.d(f11, f14, buffer, i17, i18, i19, next2, i14 + 2);
                            } else {
                                i12 = i23;
                                i13 = i20;
                            }
                            i23 = i12;
                            i20 = i13;
                        }
                        i14 += 3;
                        i21 = i23;
                    }
                }
                i20++;
            }
            for (int i24 = 0; i24 < i10 - 1; i24++) {
                int i25 = 0;
                while (true) {
                    int i26 = i10 - i24;
                    if (i25 < i26 - 1) {
                        int i27 = i26 - i25;
                        float f15 = i10;
                        float f16 = i25 / f15;
                        int i28 = i25 + 1;
                        float f17 = i28 / f15;
                        float f18 = (i27 - 2) / f15;
                        float f19 = (i27 - 1) / f15;
                        Iterator<VertexBuffer> it3 = mo1295clone.getBufferList().iterator();
                        while (it3.hasNext()) {
                            VertexBuffer next3 = it3.next();
                            VertexBuffer buffer2 = mesh.getBuffer(next3.getBufferType());
                            if (buffer2.getNumElements() > 0) {
                                i11 = i28;
                                C13709e.d(f17, f18, buffer2, i17, i18, i19, next3, i14);
                                C13709e.d(f17, f19, buffer2, i17, i18, i19, next3, i14 + 1);
                                C13709e.d(f16, f19, buffer2, i17, i18, i19, next3, i14 + 2);
                            } else {
                                i11 = i28;
                            }
                            i28 = i11;
                        }
                        i14 += 3;
                        i25 = i28;
                    }
                }
            }
        }
        Iterator<VertexBuffer> it4 = mo1295clone.getBufferList().iterator();
        while (it4.hasNext()) {
            Buffer data = it4.next().getData();
            data.position(data.capacity());
            data.flip();
        }
        mo1295clone.updateCounts();
        return mo1295clone;
    }

    public static void M(Mesh mesh, Matrix4f[] matrix4fArr) {
        VertexBuffer buffer = mesh.getBuffer(VertexBuffer.Type.BindPosePosition);
        VertexBuffer buffer2 = mesh.getBuffer(VertexBuffer.Type.BindPoseNormal);
        VertexBuffer buffer3 = mesh.getBuffer(VertexBuffer.Type.BindPoseTangent);
        FloatBuffer floatBuffer = (FloatBuffer) buffer.getData();
        FloatBuffer floatBuffer2 = buffer2 == null ? null : (FloatBuffer) buffer2.getData();
        FloatBuffer floatBuffer3 = buffer3 == null ? null : (FloatBuffer) buffer3.getData();
        Vector3f vector3f = new Vector3f();
        Vector4f vector4f = floatBuffer3 != null ? new Vector4f() : null;
        int vertexCount = mesh.getVertexCount();
        for (int i10 = 0; i10 < vertexCount; i10++) {
            U(mesh, i10, matrix4fArr, vector3f);
            int i11 = i10 * 3;
            d.p(floatBuffer, i11, vector3f);
            if (floatBuffer2 != null) {
                V(mesh, i10, matrix4fArr, vector3f);
                d.p(floatBuffer2, i11, vector3f);
            }
            if (floatBuffer3 != null) {
                X(mesh, i10, matrix4fArr, vector4f);
                d.q(floatBuffer3, i10 * 4, vector4f);
            }
        }
    }

    public static void N(Mesh mesh, VertexBuffer.Type type, Transform transform) {
        C13702E.t(type, "buffer type");
        C13702E.t(transform, "transform");
        VertexBuffer buffer = mesh.getBuffer(type);
        if (buffer != null) {
            d.x((FloatBuffer) buffer.getData(), 0, mesh.getVertexCount() * 3, transform);
            buffer.setUpdateNeeded();
        }
    }

    public static void O(Mesh mesh, Vector3f vector3f) {
        int vertexCount = mesh.getVertexCount() * 3;
        VertexBuffer buffer = mesh.getBuffer(VertexBuffer.Type.Position);
        d.y((FloatBuffer) buffer.getData(), 0, vertexCount, vector3f);
        buffer.setUpdateNeeded();
        VertexBuffer buffer2 = mesh.getBuffer(VertexBuffer.Type.BindPosePosition);
        if (buffer2 != null) {
            d.y((FloatBuffer) buffer2.getData(), 0, vertexCount, vector3f);
            buffer2.setUpdateNeeded();
        }
        mesh.updateBound();
    }

    public static IndexBuffer P(IndexBuffer indexBuffer, int i10) {
        C13702E.t(indexBuffer, "index list");
        C13702E.H(indexBuffer.size() % 3 == 0, "size a multiple of 3");
        C13702E.F(i10, "number of vertices");
        int size = indexBuffer.size() / 3;
        HashSet<b> hashSet = new HashSet(size * 3);
        for (int i11 = 0; i11 < size; i11++) {
            int i12 = i11 * 3;
            int i13 = indexBuffer.get(i12);
            int i14 = indexBuffer.get(i12 + 1);
            int i15 = indexBuffer.get(i12 + 2);
            hashSet.add(new b(i13, i14));
            hashSet.add(new b(i13, i15));
            hashSet.add(new b(i14, i15));
        }
        IndexBuffer createIndexBuffer = IndexBuffer.createIndexBuffer(i10, hashSet.size() * 2);
        for (b bVar : hashSet) {
            createIndexBuffer.put(bVar.c());
            createIndexBuffer.put(bVar.b());
        }
        createIndexBuffer.getBuffer().flip();
        return createIndexBuffer;
    }

    public static void Q(Mesh mesh) {
        C13702E.t(mesh, "mesh");
        C13702E.H(t(mesh), "contain triangles");
        IndexBuffer P10 = P(mesh.getIndicesAsList(), mesh.getVertexCount());
        VertexBuffer.Type type = VertexBuffer.Type.Index;
        mesh.clearBuffer(type);
        mesh.setBuffer(type, 2, P10.getFormat(), P10.getBuffer());
        mesh.setMode(Mesh.Mode.Lines);
    }

    public static int[] R(Mesh mesh, int i10, int[] iArr) {
        C13702E.t(mesh, "mesh");
        C13702E.q(i10, "vertex index");
        if (iArr == null) {
            iArr = new int[4];
        }
        int maxNumWeights = mesh.getMaxNumWeights();
        if (maxNumWeights <= 0) {
            maxNumWeights = 1;
        }
        Buffer dataReadOnly = mesh.getBuffer(VertexBuffer.Type.BoneIndex).getDataReadOnly();
        dataReadOnly.position(i10 * 4);
        for (int i11 = 0; i11 < maxNumWeights; i11++) {
            iArr[i11] = d.r(dataReadOnly);
        }
        int length = iArr.length;
        while (maxNumWeights < length) {
            iArr[maxNumWeights] = -1;
            maxNumWeights++;
        }
        return iArr;
    }

    public static float[] S(Mesh mesh, int i10, float[] fArr) {
        C13702E.t(mesh, "mesh");
        C13702E.q(i10, "vertex index");
        if (fArr == null) {
            fArr = new float[4];
        }
        int maxNumWeights = mesh.getMaxNumWeights();
        if (maxNumWeights <= 0) {
            maxNumWeights = 1;
        }
        FloatBuffer floatBuffer = mesh.getFloatBuffer(VertexBuffer.Type.BoneWeight);
        int i11 = i10 * 4;
        for (int i12 = 0; i12 < maxNumWeights; i12++) {
            fArr[i12] = floatBuffer.get(i11 + i12);
        }
        int length = fArr.length;
        while (maxNumWeights < length) {
            fArr[maxNumWeights] = 0.0f;
            maxNumWeights++;
        }
        return fArr;
    }

    public static ColorRGBA T(Mesh mesh, int i10, ColorRGBA colorRGBA) {
        C13702E.t(mesh, "mesh");
        C13702E.q(i10, "vertex index");
        if (colorRGBA == null) {
            colorRGBA = new ColorRGBA();
        }
        VertexBuffer buffer = mesh.getBuffer(VertexBuffer.Type.Color);
        int numComponents = buffer.getNumComponents();
        C13702E.H(numComponents == 3 || numComponents == 4, "3 or 4 components per element");
        int i11 = i10 * numComponents;
        Buffer dataReadOnly = buffer.getDataReadOnly();
        if (dataReadOnly instanceof ByteBuffer) {
            ByteBuffer byteBuffer = (ByteBuffer) dataReadOnly;
            colorRGBA.set(byteBuffer.get(i11) & 255, byteBuffer.get(i11 + 1) & 255, byteBuffer.get(i11 + 2) & 255, numComponents == 4 ? 255 & byteBuffer.get(i11 + 3) : 255);
            colorRGBA.multLocal(0.003921569f);
        } else {
            FloatBuffer floatBuffer = (FloatBuffer) dataReadOnly;
            colorRGBA.f81598r = floatBuffer.get(i11);
            colorRGBA.f81597g = floatBuffer.get(i11 + 1);
            colorRGBA.f81596b = floatBuffer.get(i11 + 2);
            if (numComponents == 4) {
                colorRGBA.f81595a = floatBuffer.get(i11 + 3);
            } else {
                colorRGBA.f81595a = 1.0f;
            }
        }
        return colorRGBA;
    }

    public static Vector3f U(Mesh mesh, int i10, Matrix4f[] matrix4fArr, Vector3f vector3f) {
        C13702E.t(mesh, "mesh");
        C13702E.q(i10, "vertex index");
        C13702E.t(matrix4fArr, "skinning matrices");
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        if (v(mesh)) {
            Vector3f Z10 = Z(mesh, VertexBuffer.Type.BindPosePosition, i10, null);
            FloatBuffer floatBuffer = mesh.getFloatBuffer(VertexBuffer.Type.BoneWeight);
            int i11 = i10 * 4;
            floatBuffer.position(i11);
            Buffer dataReadOnly = mesh.getBuffer(VertexBuffer.Type.BoneIndex).getDataReadOnly();
            dataReadOnly.position(i11);
            vector3f.zero();
            int maxNumWeights = mesh.getMaxNumWeights();
            for (int i12 = 0; i12 < maxNumWeights; i12++) {
                float f10 = floatBuffer.get();
                int r10 = d.r(dataReadOnly);
                if (f10 != 0.0f) {
                    Matrix4f matrix4f = r10 < matrix4fArr.length ? matrix4fArr[r10] : f92146f;
                    float f11 = matrix4f.m00;
                    float f12 = Z10.f81611x;
                    float f13 = matrix4f.m01;
                    float f14 = Z10.f81612y;
                    float f15 = (f11 * f12) + (f13 * f14);
                    float f16 = matrix4f.m02;
                    float f17 = Z10.f81613z;
                    float f18 = f15 + (f16 * f17) + matrix4f.m03;
                    float f19 = (matrix4f.m10 * f12) + (matrix4f.m11 * f14) + (matrix4f.m12 * f17) + matrix4f.m13;
                    float f20 = (matrix4f.m20 * f12) + (matrix4f.m21 * f14) + (matrix4f.m22 * f17) + matrix4f.m23;
                    vector3f.f81611x += f18 * f10;
                    vector3f.f81612y += f19 * f10;
                    vector3f.f81613z += f10 * f20;
                }
            }
        } else {
            Z(mesh, VertexBuffer.Type.Position, i10, vector3f);
        }
        return vector3f;
    }

    public static Vector3f V(Mesh mesh, int i10, Matrix4f[] matrix4fArr, Vector3f vector3f) {
        C13702E.t(mesh, "mesh");
        C13702E.q(i10, "vertex index");
        C13702E.t(matrix4fArr, "skinning matrices");
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        if (v(mesh)) {
            Vector3f Z10 = Z(mesh, VertexBuffer.Type.BindPoseNormal, i10, null);
            FloatBuffer floatBuffer = mesh.getFloatBuffer(VertexBuffer.Type.BoneWeight);
            int i11 = i10 * 4;
            floatBuffer.position(i11);
            Buffer dataReadOnly = mesh.getBuffer(VertexBuffer.Type.BoneIndex).getDataReadOnly();
            dataReadOnly.position(i11);
            vector3f.zero();
            int maxNumWeights = mesh.getMaxNumWeights();
            for (int i12 = 0; i12 < maxNumWeights; i12++) {
                float f10 = floatBuffer.get();
                int r10 = d.r(dataReadOnly);
                if (f10 != 0.0f) {
                    Matrix4f matrix4f = r10 < matrix4fArr.length ? matrix4fArr[r10] : f92146f;
                    float f11 = matrix4f.m00;
                    float f12 = Z10.f81611x;
                    float f13 = matrix4f.m01;
                    float f14 = Z10.f81612y;
                    float f15 = (f11 * f12) + (f13 * f14);
                    float f16 = matrix4f.m02;
                    float f17 = Z10.f81613z;
                    float f18 = f15 + (f16 * f17);
                    float f19 = (matrix4f.m10 * f12) + (matrix4f.m11 * f14) + (matrix4f.m12 * f17);
                    float f20 = (matrix4f.m20 * f12) + (matrix4f.m21 * f14) + (matrix4f.m22 * f17);
                    vector3f.f81611x += f18 * f10;
                    vector3f.f81612y += f19 * f10;
                    vector3f.f81613z += f10 * f20;
                }
            }
            h.P(vector3f);
        } else {
            Z(mesh, VertexBuffer.Type.Normal, i10, vector3f);
        }
        return vector3f;
    }

    public static float W(Mesh mesh, int i10) {
        C13702E.t(mesh, "mesh");
        C13702E.q(i10, "vertex index");
        return mesh.getFloatBuffer(VertexBuffer.Type.Size).get(i10);
    }

    public static Vector4f X(Mesh mesh, int i10, Matrix4f[] matrix4fArr, Vector4f vector4f) {
        C13702E.t(mesh, "mesh");
        C13702E.q(i10, "vertex index");
        C13702E.t(matrix4fArr, "skinning matrices");
        if (vector4f == null) {
            vector4f = new Vector4f();
        }
        if (v(mesh)) {
            Vector4f a02 = a0(mesh, VertexBuffer.Type.BindPoseTangent, i10, null);
            FloatBuffer floatBuffer = mesh.getFloatBuffer(VertexBuffer.Type.BoneWeight);
            int i11 = i10 * 4;
            floatBuffer.position(i11);
            Buffer dataReadOnly = mesh.getBuffer(VertexBuffer.Type.BoneIndex).getDataReadOnly();
            dataReadOnly.position(i11);
            vector4f.zero();
            int maxNumWeights = mesh.getMaxNumWeights();
            for (int i12 = 0; i12 < maxNumWeights; i12++) {
                float f10 = floatBuffer.get();
                int r10 = d.r(dataReadOnly);
                if (f10 != 0.0f) {
                    Matrix4f matrix4f = r10 < matrix4fArr.length ? matrix4fArr[r10] : f92146f;
                    float f11 = matrix4f.m00;
                    float f12 = a02.f81615x;
                    float f13 = matrix4f.m01;
                    float f14 = a02.f81616y;
                    float f15 = (f11 * f12) + (f13 * f14);
                    float f16 = matrix4f.m02;
                    float f17 = a02.f81617z;
                    float f18 = f15 + (f16 * f17);
                    float f19 = (matrix4f.m10 * f12) + (matrix4f.m11 * f14) + (matrix4f.m12 * f17);
                    float f20 = (matrix4f.m20 * f12) + (matrix4f.m21 * f14) + (matrix4f.m22 * f17);
                    vector4f.f81615x += f18 * f10;
                    vector4f.f81616y += f19 * f10;
                    vector4f.f81617z += f10 * f20;
                }
            }
            vector4f.normalizeLocal();
            vector4f.f81614w = a02.f81614w;
        } else {
            a0(mesh, VertexBuffer.Type.Tangent, i10, vector4f);
        }
        return vector4f;
    }

    public static Vector2f Y(Mesh mesh, VertexBuffer.Type type, int i10, Vector2f vector2f) {
        C13702E.q(i10, "vertex index");
        if (vector2f == null) {
            vector2f = new Vector2f();
        }
        FloatBuffer floatBuffer = mesh.getFloatBuffer(type);
        int i11 = i10 * 2;
        vector2f.f81609x = floatBuffer.get(i11);
        vector2f.f81610y = floatBuffer.get(i11 + 1);
        return vector2f;
    }

    public static Vector3f Z(Mesh mesh, VertexBuffer.Type type, int i10, Vector3f vector3f) {
        C13702E.q(i10, "vertex index");
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        d.g(mesh.getFloatBuffer(type), i10 * 3, vector3f);
        return vector3f;
    }

    public static Mesh a(Mesh mesh) {
        C13702E.t(mesh, "input mesh");
        C13702E.H(!q(mesh), "not have an index buffer");
        int vertexCount = mesh.getVertexCount();
        int[] iArr = new int[vertexCount];
        int[] iArr2 = new int[vertexCount];
        int i10 = 0;
        for (int i11 = 0; i11 < vertexCount; i11++) {
            iArr[i11] = -1;
            iArr2[i11] = -1;
            int i12 = 0;
            while (true) {
                if (i12 >= i10) {
                    break;
                }
                if (d(mesh, i11, iArr2[i12])) {
                    iArr[i11] = i12;
                    break;
                }
                i12++;
            }
            if (iArr[i11] == -1) {
                iArr[i11] = i10;
                iArr2[i10] = i11;
                i10++;
            }
        }
        Mesh mo1295clone = mesh.mo1295clone();
        Iterator<VertexBuffer> it = mesh.getBufferList().iterator();
        while (it.hasNext()) {
            VertexBuffer next = it.next();
            VertexBuffer.Type bufferType = next.getBufferType();
            mo1295clone.clearBuffer(bufferType);
            VertexBuffer.Format format = next.getFormat();
            if (format == null) {
                format = VertexBuffer.Format.Float;
            }
            int h10 = f.h(next.getNumComponents(), 1, 4);
            mo1295clone.setBuffer(bufferType, h10, format, VertexBuffer.createBuffer(format, h10, i10));
        }
        for (int i13 = 0; i13 < i10; i13++) {
            int i14 = iArr2[i13];
            Iterator<VertexBuffer> it2 = mo1295clone.getBufferList().iterator();
            while (it2.hasNext()) {
                VertexBuffer next2 = it2.next();
                VertexBuffer buffer = mesh.getBuffer(next2.getBufferType());
                if (buffer.getNumElements() > 0) {
                    C13709e.a(buffer, i14, next2, i13);
                }
            }
        }
        IndexBuffer createIndexBuffer = IndexBuffer.createIndexBuffer(i10, vertexCount);
        for (int i15 = 0; i15 < vertexCount; i15++) {
            createIndexBuffer.put(i15, iArr[i15]);
        }
        mo1295clone.setBuffer(VertexBuffer.Type.Index, 1, createIndexBuffer.getFormat(), createIndexBuffer.getBuffer());
        Iterator<VertexBuffer> it3 = mo1295clone.getBufferList().iterator();
        while (it3.hasNext()) {
            Buffer data = it3.next().getData();
            data.position(data.capacity());
            data.flip();
        }
        mo1295clone.updateCounts();
        return mo1295clone;
    }

    public static Vector4f a0(Mesh mesh, VertexBuffer.Type type, int i10, Vector4f vector4f) {
        C13702E.q(i10, "vertex index");
        if (vector4f == null) {
            vector4f = new Vector4f();
        }
        FloatBuffer floatBuffer = mesh.getFloatBuffer(type);
        int i11 = i10 * 4;
        vector4f.f81615x = floatBuffer.get(i11);
        vector4f.f81616y = floatBuffer.get(i11 + 1);
        vector4f.f81617z = floatBuffer.get(i11 + 2);
        vector4f.f81614w = floatBuffer.get(i11 + 3);
        return vector4f;
    }

    public static void b(Mesh mesh) {
        C13702E.t(mesh, "mesh");
        C13702E.H(!o(mesh), "not have normals");
        m(mesh, VertexBuffer.Type.Normal, VertexBuffer.Type.Position);
        VertexBuffer.Type type = VertexBuffer.Type.BindPosePosition;
        if (mesh.getBuffer(type) != null) {
            m(mesh, VertexBuffer.Type.BindPoseNormal, type);
        }
    }

    public static Vector3f b0(Geometry geometry, int i10, Matrix4f[] matrix4fArr, Vector3f vector3f) {
        C13702E.q(i10, "vertex index");
        C13702E.t(matrix4fArr, "skinning matrices");
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        Vector3f U10 = U(geometry.getMesh(), i10, matrix4fArr, null);
        if (geometry.isIgnoreTransform()) {
            vector3f.set(U10);
        } else {
            geometry.localToWorld(U10, vector3f);
        }
        return vector3f;
    }

    public static void c(Geometry geometry, Spatial spatial, FloatBuffer floatBuffer, IndexBuffer indexBuffer) {
        Mesh mesh = geometry.getMesh();
        if (mesh == null || !t(mesh)) {
            return;
        }
        C13702E.t(floatBuffer, "addPositions");
        C13702E.t(indexBuffer, "addIndices");
        int position = floatBuffer.position() / 3;
        IndexBuffer indicesAsList = mesh.getIndicesAsList();
        int size = indicesAsList.size();
        for (int i10 = 0; i10 < size; i10++) {
            indexBuffer.put(indicesAsList.get(i10) + position);
        }
        Transform K10 = C13723s.K(geometry, spatial);
        Vector3f vector3f = new Vector3f();
        int vertexCount = mesh.getVertexCount();
        for (int i11 = 0; i11 < vertexCount; i11++) {
            Z(mesh, VertexBuffer.Type.Position, i11, vector3f);
            f.S(K10, vector3f, vector3f);
            floatBuffer.put(vector3f.f81611x);
            floatBuffer.put(vector3f.f81612y);
            floatBuffer.put(vector3f.f81613z);
        }
    }

    public static boolean d(Mesh mesh, int i10, int i11) {
        C13702E.t(mesh, "mesh");
        int vertexCount = mesh.getVertexCount() - 1;
        C13702E.i(i10, "first vertex index", 0, vertexCount);
        C13702E.i(i11, "2nd vertex index", 0, vertexCount);
        if (i10 == i11) {
            return true;
        }
        Iterator<VertexBuffer> it = mesh.getBufferList().iterator();
        while (it.hasNext()) {
            VertexBuffer next = it.next();
            if (next.getBufferType() != VertexBuffer.Type.Index && next.getNumElements() > 0 && !C13709e.b(next, i10, i11)) {
                return false;
            }
        }
        return true;
    }

    public static Material e(Mesh mesh, ColorRGBA[] colorRGBAArr, AssetManager assetManager) {
        if (!v(mesh)) {
            throw new IllegalArgumentException("Must be an animated mesh.");
        }
        int vertexCount = mesh.getVertexCount();
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(vertexCount * 4);
        int[] iArr = new int[4];
        float[] fArr = new float[4];
        ColorRGBA colorRGBA = new ColorRGBA();
        ColorRGBA colorRGBA2 = new ColorRGBA();
        for (int i10 = 0; i10 < vertexCount; i10++) {
            R(mesh, i10, iArr);
            S(mesh, i10, fArr);
            colorRGBA.set(0.0f, 0.0f, 0.0f, 1.0f);
            for (int i11 = 0; i11 < 4; i11++) {
                int i12 = iArr[i11];
                if (i12 >= 0 && i12 < colorRGBAArr.length) {
                    colorRGBA2.set(colorRGBAArr[i12]);
                    colorRGBA2.multLocal(fArr[i11]);
                    colorRGBA.addLocal(colorRGBA2);
                }
            }
            createFloatBuffer.put(colorRGBA.f81598r).put(colorRGBA.f81597g).put(colorRGBA.f81596b).put(1.0f);
        }
        mesh.setBuffer(VertexBuffer.Type.Color, 4, VertexBuffer.Format.Float, createFloatBuffer);
        Material m10 = C13716l.m(assetManager);
        m10.setBoolean("VertexColor", true);
        m10.getAdditionalRenderState().setWireframe(true);
        return m10;
    }

    public static void f(Mesh mesh, VertexBuffer.Type type) {
        C13702E.t(type, "buffer type");
        VertexBuffer buffer = mesh.getBuffer(type);
        if (buffer != null) {
            FloatBuffer floatBuffer = (FloatBuffer) buffer.getData();
            Vector3f vector3f = new Vector3f();
            Vector3f vector3f2 = new Vector3f();
            int vertexCount = mesh.getVertexCount() * 3;
            d.m(floatBuffer, 0, vertexCount, vector3f, vector3f2);
            d.y(floatBuffer, 0, vertexCount, h.M(vector3f, vector3f2, null).negateLocal());
            buffer.setUpdateNeeded();
        }
    }

    public static int g(Mesh mesh) {
        int maxNumWeights = mesh.getMaxNumWeights();
        C13702E.i(maxNumWeights, "mesh max num weights", 1, 4);
        Buffer dataReadOnly = mesh.getBuffer(VertexBuffer.Type.BoneIndex).getDataReadOnly();
        dataReadOnly.rewind();
        dataReadOnly.remaining();
        int remaining = dataReadOnly.remaining() / 4;
        FloatBuffer floatBuffer = mesh.getFloatBuffer(VertexBuffer.Type.BoneWeight);
        floatBuffer.rewind();
        floatBuffer.remaining();
        int i10 = 0;
        for (int i11 = 0; i11 < remaining; i11++) {
            for (int i12 = 0; i12 < 4; i12++) {
                float f10 = floatBuffer.get();
                int r10 = d.r(dataReadOnly);
                if (i12 < maxNumWeights && f10 != 0.0f && r10 >= i10) {
                    i10 = r10 + 1;
                }
            }
        }
        return i10;
    }

    public static Mesh h(Mesh mesh) {
        IndexBuffer indicesAsList = mesh.getIndicesAsList();
        int size = indicesAsList.size();
        Mesh.Mode i10 = i(mesh);
        Mesh mo1295clone = mesh.mo1295clone();
        mo1295clone.setMode(i10);
        Iterator<VertexBuffer> it = mesh.getBufferList().iterator();
        while (it.hasNext()) {
            VertexBuffer next = it.next();
            VertexBuffer.Type bufferType = next.getBufferType();
            mo1295clone.clearBuffer(bufferType);
            if (bufferType != VertexBuffer.Type.Index) {
                VertexBuffer.Format format = next.getFormat();
                if (format == null) {
                    format = VertexBuffer.Format.Float;
                }
                int h10 = f.h(next.getNumComponents(), 1, 4);
                mo1295clone.setBuffer(bufferType, h10, format, VertexBuffer.createBuffer(format, h10, size));
            }
        }
        for (int i11 = 0; i11 < size; i11++) {
            int i12 = indicesAsList.get(i11);
            Iterator<VertexBuffer> it2 = mo1295clone.getBufferList().iterator();
            while (it2.hasNext()) {
                VertexBuffer next2 = it2.next();
                VertexBuffer buffer = mesh.getBuffer(next2.getBufferType());
                if (buffer.getNumElements() > 0) {
                    C13709e.a(buffer, i12, next2, i11);
                }
            }
        }
        Iterator<VertexBuffer> it3 = mo1295clone.getBufferList().iterator();
        while (it3.hasNext()) {
            Buffer data = it3.next().getData();
            data.position(data.capacity());
            data.flip();
        }
        mo1295clone.updateCounts();
        return mo1295clone;
    }

    public static Mesh.Mode i(Mesh mesh) {
        Mesh.Mode mode = mesh.getMode();
        switch (a.f92149a[mode.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return mode;
            case 4:
            case 5:
                return Mesh.Mode.Lines;
            case 6:
            case 7:
                return Mesh.Mode.Triangles;
            default:
                throw new IllegalArgumentException("mode = " + ((Object) mode));
        }
    }

    public static void j(Mesh mesh) {
        C13702E.H(mesh.getMode() == Mesh.Mode.Triangles, "be in Triangles mode");
        C13702E.H(!q(mesh), "not have an index buffer");
        k(mesh, VertexBuffer.Type.Normal, VertexBuffer.Type.Position);
        VertexBuffer.Type type = VertexBuffer.Type.BindPosePosition;
        if (mesh.getBuffer(type) != null) {
            k(mesh, VertexBuffer.Type.BindPoseNormal, type);
        }
    }

    public static void k(Mesh mesh, VertexBuffer.Type type, VertexBuffer.Type type2) {
        C13702E.t(mesh, "mesh");
        boolean z10 = true;
        C13702E.H(mesh.getMode() == Mesh.Mode.Triangles, "be in Triangles mode");
        C13702E.H(!q(mesh), "not have an index buffer");
        C13702E.H(type == VertexBuffer.Type.BindPoseNormal || type == VertexBuffer.Type.Normal, "normal target-buffer type");
        if (type2 != VertexBuffer.Type.BindPosePosition && type2 != VertexBuffer.Type.Position) {
            z10 = false;
        }
        C13702E.H(z10, "position source-buffer type");
        FloatBuffer floatBuffer = mesh.getFloatBuffer(type2);
        int limit = floatBuffer.limit();
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(limit);
        mesh.setBuffer(type, 3, createFloatBuffer);
        Triangle triangle = new Triangle();
        Vector3f vector3f = new Vector3f();
        Vector3f vector3f2 = new Vector3f();
        Vector3f vector3f3 = new Vector3f();
        int i10 = (limit / 3) / 3;
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = i11 * 9;
            d.g(floatBuffer, i12, vector3f);
            d.g(floatBuffer, i12 + 3, vector3f2);
            d.g(floatBuffer, i12 + 6, vector3f3);
            triangle.set(vector3f, vector3f2, vector3f3);
            Vector3f normal = triangle.getNormal();
            for (int i13 = 0; i13 < 3; i13++) {
                createFloatBuffer.put(normal.f81611x);
                createFloatBuffer.put(normal.f81612y);
                createFloatBuffer.put(normal.f81613z);
            }
        }
        createFloatBuffer.flip();
    }

    @Deprecated
    public static void l(Mesh mesh) {
        C13702E.H(mesh.getMode() == Mesh.Mode.Triangles, "be in Triangles mode");
        C13702E.H(!q(mesh), "not have an index buffer");
        j(mesh);
    }

    public static void m(Mesh mesh, VertexBuffer.Type type, VertexBuffer.Type type2) {
        C13702E.t(mesh, "mesh");
        FloatBuffer floatBuffer = mesh.getFloatBuffer(type2);
        int limit = floatBuffer.limit();
        FloatBuffer clone = BufferUtils.clone(floatBuffer);
        mesh.setBuffer(type, 3, clone);
        d.o(clone, 0, limit);
        clone.limit(limit);
    }

    public static CollisionData n(Mesh mesh) {
        try {
            Field declaredField = Mesh.class.getDeclaredField("collisionTree");
            declaredField.setAccessible(true);
            try {
                return (CollisionData) declaredField.get(mesh);
            } catch (IllegalAccessException e10) {
                throw new RuntimeException(e10);
            }
        } catch (NoSuchFieldException e11) {
            throw new RuntimeException(e11);
        }
    }

    public static boolean o(Mesh mesh) {
        return mesh.getBuffer(VertexBuffer.Type.BindPoseNormal) != null || r(mesh);
    }

    public static boolean p(Mesh mesh) {
        return mesh.getBuffer(VertexBuffer.Type.BindPoseTangent) != null || s(mesh);
    }

    public static boolean q(Mesh mesh) {
        return mesh.getBuffer(VertexBuffer.Type.Index) != null;
    }

    public static boolean r(Mesh mesh) {
        return mesh.getBuffer(VertexBuffer.Type.Normal) != null;
    }

    public static boolean s(Mesh mesh) {
        return mesh.getBuffer(VertexBuffer.Type.Tangent) != null;
    }

    public static boolean t(Mesh mesh) {
        Mesh.Mode mode = mesh.getMode();
        switch (a.f92149a[mode.ordinal()]) {
            case 1:
            case 2:
            case 4:
            case 5:
                return false;
            case 3:
            case 6:
            case 7:
                return true;
            default:
                throw new IllegalArgumentException("mode = " + ((Object) mode));
        }
    }

    public static boolean u(Mesh mesh) {
        return mesh.getBuffer(VertexBuffer.Type.TexCoord) != null;
    }

    public static boolean v(Mesh mesh) {
        return (mesh.getBuffer(VertexBuffer.Type.BoneIndex) != null) && (mesh.getBuffer(VertexBuffer.Type.BoneWeight) != null);
    }

    public static List<Mesh> w(Spatial spatial, List<Mesh> list) {
        if (list == null) {
            list = new ArrayList<>(10);
        }
        if (spatial instanceof Geometry) {
            Mesh mesh = ((Geometry) spatial).getMesh();
            if (!list.contains(mesh)) {
                list.add(mesh);
            }
        } else if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                w(it.next(), list);
            }
        }
        return list;
    }

    public static o x(Spatial spatial, o oVar) {
        if (oVar == null) {
            oVar = new p(64, false);
        }
        if (spatial instanceof Geometry) {
            Geometry geometry = (Geometry) spatial;
            Mesh mesh = geometry.getMesh();
            int vertexCount = mesh.getVertexCount();
            Vector3f vector3f = new Vector3f();
            for (int i10 = 0; i10 < vertexCount; i10++) {
                Z(mesh, VertexBuffer.Type.Position, i10, vector3f);
                if (!geometry.isIgnoreTransform()) {
                    geometry.localToWorld(vector3f, vector3f);
                }
                oVar.a(vector3f);
            }
        } else if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                x(it.next(), oVar);
            }
        }
        return oVar;
    }

    public static Mesh y(Spatial spatial) {
        List<Geometry> I10;
        int size;
        int vertexCount;
        if (spatial instanceof Geometry) {
            I10 = new ArrayList(1);
            I10.add((Geometry) spatial);
        } else {
            if (!(spatial instanceof Node)) {
                throw new IllegalArgumentException("The model root must either be a Node or a Geometry!");
            }
            I10 = C13723s.I((Node) spatial, null);
        }
        ArrayList arrayList = new ArrayList(I10.size());
        int i10 = 0;
        int i11 = 0;
        for (Geometry geometry : I10) {
            Mesh mesh = geometry.getMesh();
            if (mesh != null && (size = mesh.getIndicesAsList().size()) != 0 && (vertexCount = mesh.getVertexCount()) != 0) {
                arrayList.add(geometry);
                i11 += size;
                i10 += vertexCount;
            }
        }
        IndexBuffer createIndexBuffer = IndexBuffer.createIndexBuffer(i10, i11);
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(i10 * 3);
        Iterator<E> it = arrayList.iterator();
        while (it.hasNext()) {
            c((Geometry) it.next(), spatial, createFloatBuffer, createIndexBuffer);
        }
        VertexBuffer.Format format = createIndexBuffer.getFormat();
        Buffer buffer = createIndexBuffer.getBuffer();
        Mesh mesh2 = new Mesh();
        mesh2.setBuffer(VertexBuffer.Type.Index, 3, format, buffer);
        mesh2.setBuffer(VertexBuffer.Type.Position, 3, createFloatBuffer);
        return mesh2;
    }

    public static Mesh z(Mesh mesh, Mesh mesh2) {
        VertexBuffer.Type[] typeArr;
        int i10;
        IndexBuffer indexBuffer;
        C13702E.H(mesh.getNumLodLevels() == 0, "no LODs in mesh1");
        C13702E.H(mesh.getNumLodLevels() == 0, "no LODs in mesh2");
        Mesh.Mode i11 = i(mesh);
        C13702E.H(i11 == i(mesh2), "same primitives");
        Mesh mesh3 = new Mesh();
        mesh3.setMode(i11);
        IndexBuffer indicesAsList = mesh.getIndicesAsList();
        IndexBuffer indicesAsList2 = mesh2.getIndicesAsList();
        int size = indicesAsList.size();
        int size2 = indicesAsList2.size();
        int i12 = size + size2;
        VertexBuffer.Type[] values = VertexBuffer.Type.values();
        int length = values.length;
        int i13 = 0;
        while (i13 < length) {
            VertexBuffer.Type type = values[i13];
            if (type != VertexBuffer.Type.Index) {
                VertexBuffer buffer = mesh.getBuffer(type);
                VertexBuffer buffer2 = mesh2.getBuffer(type);
                if (buffer != null || buffer2 != null) {
                    C13702E.t(buffer, "mesh1's " + ((Object) type));
                    C13702E.t(buffer2, "mesh2's " + ((Object) type));
                    int numComponents = buffer.getNumComponents();
                    buffer2.getNumComponents();
                    VertexBuffer.Format format = buffer.getFormat();
                    if (format == null) {
                        format = VertexBuffer.Format.Float;
                    }
                    VertexBuffer.Format format2 = buffer2.getFormat();
                    if (format2 == null) {
                        format2 = VertexBuffer.Format.Float;
                    }
                    typeArr = values;
                    VertexBuffer.Format format3 = format.getComponentSize() > format2.getComponentSize() ? format : format2;
                    i10 = length;
                    int h10 = f.h(numComponents, 1, 4);
                    mesh3.setBuffer(type, h10, format3, VertexBuffer.createBuffer(format3, h10, i12));
                    VertexBuffer buffer3 = mesh3.getBuffer(type);
                    for (int i14 = 0; i14 < size; i14++) {
                        int i15 = indicesAsList.get(i14);
                        int i16 = 0;
                        while (i16 < h10) {
                            buffer3.setElementComponent(i14, i16, buffer.getElementComponent(i15, i16));
                            i16++;
                            indicesAsList = indicesAsList;
                        }
                    }
                    indexBuffer = indicesAsList;
                    for (int i17 = 0; i17 < size2; i17++) {
                        int i18 = size + i17;
                        int i19 = indicesAsList2.get(i17);
                        for (int i20 = 0; i20 < h10; i20++) {
                            buffer3.setElementComponent(i18, i20, buffer2.getElementComponent(i19, i20));
                        }
                    }
                    i13++;
                    length = i10;
                    values = typeArr;
                    indicesAsList = indexBuffer;
                }
            }
            indexBuffer = indicesAsList;
            typeArr = values;
            i10 = length;
            i13++;
            length = i10;
            values = typeArr;
            indicesAsList = indexBuffer;
        }
        mesh3.updateBound();
        mesh3.setMaxNumWeights(Math.max(mesh.getMaxNumWeights(), mesh2.getMaxNumWeights()));
        return mesh3;
    }
}
