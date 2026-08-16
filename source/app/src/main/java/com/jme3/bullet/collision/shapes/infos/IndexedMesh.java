package com.jme3.bullet.collision.shapes.infos;

import android.provider.MediaStore;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.jme3.bullet.NativePhysicsObject;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.bullet.util.DebugShapeFactory;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Plane;
import com.jme3.math.Transform;
import com.jme3.math.Triangle;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.mesh.IndexBuffer;
import com.jme3.util.BufferUtils;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import jf.C13831a;
import jf.d;
import jf.f;
import jf.h;
import jf.i;
import jf.m;
import jf.o;
import p000if.C13702E;
import p000if.C13720p;

public class IndexedMesh extends NativePhysicsObject implements JmeCloneable, Savable {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(IndexedMesh.class.getName());
    private static final int numAxes = 3;
    private static final String tagIndexInts = "indexInts";
    private static final String tagIndexStride = "indexStride";
    private static final String tagNumTriangles = "numTriangles";
    private static final String tagNumVertices = "numVertices";
    private static final String tagVertexStride = "vertexStride";
    private static final String tagVertices = "vertices";
    private static final int vpt = 3;
    public int indexStride;
    public IndexBuffer indices;
    public int numTriangles;
    public int numVertices;
    public FloatBuffer vertexPositions;
    public int vertexStride;

    public IndexedMesh() {
    }

    private static native int countTriangles(long j10);

    private static native int countVertices(long j10);

    private void create(Mesh mesh, Transform transform) {
        int vertexCount = mesh.getVertexCount();
        this.numVertices = vertexCount;
        if (vertexCount <= 0) {
            this.numVertices = 0;
        }
        FloatBuffer floatBuffer = mesh.getFloatBuffer(VertexBuffer.Type.Position);
        int i10 = this.numVertices * 3;
        this.vertexPositions = BufferUtils.createFloatBuffer(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            this.vertexPositions.put(i11, floatBuffer.get(i11));
        }
        this.vertexStride = 12;
        if (transform != null && !f.w(transform)) {
            d.x(this.vertexPositions, 0, i10, transform);
        }
        int triangleCount = mesh.getTriangleCount();
        this.numTriangles = triangleCount;
        if (triangleCount <= 0) {
            this.numTriangles = 0;
        }
        int i12 = this.numTriangles * 3;
        this.indices = IndexBuffer.createIndexBuffer(this.numVertices, i12);
        IndexBuffer indicesAsList = mesh.getIndicesAsList();
        for (int i13 = 0; i13 < i12; i13++) {
            this.indices.put(i13, indicesAsList.get(i13));
        }
        this.indexStride = this.indices.getFormat().getComponentSize() * 3;
        createMesh();
    }

    private static native long createByte(ByteBuffer byteBuffer, FloatBuffer floatBuffer, int i10, int i11, int i12, int i13);

    private static native long createInt(IntBuffer intBuffer, FloatBuffer floatBuffer, int i10, int i11, int i12, int i13);

    private static native long createIntDebug(long j10, int i10);

    private static native long createIntPointer(long j10, long j11, int i10, int i11, int i12, int i13);

    private static native long createShort(ShortBuffer shortBuffer, FloatBuffer floatBuffer, int i10, int i11, int i12, int i13);

    private static native void fillBuffersInt(long j10, FloatBuffer floatBuffer, IntBuffer intBuffer);

    private static native void finalizeNative(long j10);

    private static void freeNativeObject(long j10) {
        finalizeNative(j10);
    }

    private static void putTriangle(FloatBuffer floatBuffer, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        if (vector3f.equals(vector3f2) || vector3f.equals(vector3f3) || vector3f2.equals(vector3f3)) {
            return;
        }
        floatBuffer.put(vector3f.f81611x).put(vector3f.f81612y).put(vector3f.f81613z);
        floatBuffer.put(vector3f2.f81611x).put(vector3f2.f81612y).put(vector3f2.f81613z);
        floatBuffer.put(vector3f3.f81611x).put(vector3f3.f81612y).put(vector3f3.f81613z);
    }

    private static void splitTriangle(Triangle triangle, Plane plane, FloatBuffer[] floatBufferArr) {
        Vector3f vector3f = triangle.get1();
        Vector3f vector3f2 = triangle.get2();
        Vector3f vector3f3 = triangle.get3();
        float pseudoDistance = plane.pseudoDistance(vector3f);
        float pseudoDistance2 = plane.pseudoDistance(vector3f2);
        float pseudoDistance3 = plane.pseudoDistance(vector3f3);
        if (pseudoDistance == 0.0f && pseudoDistance2 == 0.0f && pseudoDistance3 == 0.0f) {
            putTriangle(floatBufferArr[0], vector3f, vector3f2, vector3f3);
            putTriangle(floatBufferArr[1], vector3f, vector3f2, vector3f3);
            return;
        }
        if (pseudoDistance <= 0.0f && pseudoDistance2 <= 0.0f && pseudoDistance3 <= 0.0f) {
            putTriangle(floatBufferArr[0], vector3f, vector3f2, vector3f3);
            return;
        }
        if (pseudoDistance >= 0.0f && pseudoDistance2 >= 0.0f && pseudoDistance3 >= 0.0f) {
            putTriangle(floatBufferArr[1], vector3f, vector3f2, vector3f3);
            return;
        }
        if (pseudoDistance >= 0.0f && pseudoDistance2 <= 0.0f && pseudoDistance3 <= 0.0f) {
            Vector3f G10 = h.G(pseudoDistance / (pseudoDistance - pseudoDistance2), vector3f, vector3f2, null);
            Vector3f G11 = h.G(pseudoDistance / (pseudoDistance - pseudoDistance3), vector3f, vector3f3, null);
            putTriangle(floatBufferArr[0], vector3f2, vector3f3, G11);
            putTriangle(floatBufferArr[0], vector3f2, G11, G10);
            putTriangle(floatBufferArr[1], vector3f, G10, G11);
            return;
        }
        if (pseudoDistance <= 0.0f && pseudoDistance2 >= 0.0f && pseudoDistance3 >= 0.0f) {
            float f10 = -pseudoDistance;
            Vector3f G12 = h.G(f10 / (pseudoDistance2 - pseudoDistance), vector3f, vector3f2, null);
            Vector3f G13 = h.G(f10 / (pseudoDistance3 - pseudoDistance), vector3f, vector3f3, null);
            putTriangle(floatBufferArr[1], vector3f2, vector3f3, G13);
            putTriangle(floatBufferArr[1], vector3f2, G13, G12);
            putTriangle(floatBufferArr[0], vector3f, G12, G13);
            return;
        }
        if (pseudoDistance <= 0.0f && pseudoDistance2 >= 0.0f && pseudoDistance3 <= 0.0f) {
            Vector3f G14 = h.G((-pseudoDistance) / (pseudoDistance2 - pseudoDistance), vector3f, vector3f2, null);
            Vector3f G15 = h.G(pseudoDistance2 / (pseudoDistance2 - pseudoDistance3), vector3f2, vector3f3, null);
            putTriangle(floatBufferArr[0], vector3f, G15, vector3f3);
            putTriangle(floatBufferArr[0], vector3f, G14, G15);
            putTriangle(floatBufferArr[1], vector3f2, G15, G14);
            return;
        }
        if (pseudoDistance >= 0.0f && pseudoDistance2 <= 0.0f && pseudoDistance3 >= 0.0f) {
            Vector3f G16 = h.G(pseudoDistance / (pseudoDistance - pseudoDistance2), vector3f, vector3f2, null);
            Vector3f G17 = h.G((-pseudoDistance2) / (pseudoDistance3 - pseudoDistance2), vector3f2, vector3f3, null);
            putTriangle(floatBufferArr[1], vector3f, G17, vector3f3);
            putTriangle(floatBufferArr[1], vector3f, G16, G17);
            putTriangle(floatBufferArr[0], vector3f2, G17, G16);
            return;
        }
        if (pseudoDistance > 0.0f || pseudoDistance2 > 0.0f || pseudoDistance3 < 0.0f) {
            Vector3f G18 = h.G(pseudoDistance / (pseudoDistance - pseudoDistance3), vector3f, vector3f3, null);
            Vector3f G19 = h.G(pseudoDistance2 / (pseudoDistance2 - pseudoDistance3), vector3f2, vector3f3, null);
            putTriangle(floatBufferArr[1], vector3f, vector3f2, G19);
            putTriangle(floatBufferArr[1], vector3f, G19, G18);
            putTriangle(floatBufferArr[0], G18, G19, vector3f3);
            return;
        }
        Vector3f G20 = h.G((-pseudoDistance) / (pseudoDistance3 - pseudoDistance), vector3f, vector3f3, null);
        Vector3f G21 = h.G((-pseudoDistance2) / (pseudoDistance3 - pseudoDistance2), vector3f2, vector3f3, null);
        putTriangle(floatBufferArr[0], vector3f, vector3f2, G21);
        putTriangle(floatBufferArr[0], vector3f, G21, G20);
        putTriangle(floatBufferArr[1], G20, G21, vector3f3);
    }

    public void cloneFields(Cloner cloner, Object obj) {
        IndexedMesh indexedMesh = (IndexedMesh) obj;
        int capacity = this.vertexPositions.capacity();
        this.vertexPositions = BufferUtils.createFloatBuffer(capacity);
        for (int i10 = 0; i10 < capacity; i10++) {
            this.vertexPositions.put(i10, indexedMesh.vertexPositions.get(i10));
        }
        int capacity2 = this.indices.getBuffer().capacity();
        this.indices = IndexBuffer.createIndexBuffer(this.numVertices, capacity2);
        for (int i11 = 0; i11 < capacity2; i11++) {
            this.indices.put(i11, indexedMesh.indices.get(i11));
        }
        unassignNativeObject();
        createMesh();
    }

    public IntBuffer copyIndices() {
        int size = this.indices.size();
        IntBuffer createIntBuffer = BufferUtils.createIntBuffer(size);
        for (int i10 = 0; i10 < size; i10++) {
            createIntBuffer.put(this.indices.get(i10));
        }
        return createIntBuffer;
    }

    public void copyTriangle(int i10, Triangle triangle) {
        C13702E.i(i10, "triangle index", 0, this.numTriangles - 1);
        C13702E.t(triangle, FirebaseAnalytics.d.f67729z);
        int i11 = i10 * 3;
        Vector3f vector3f = new Vector3f();
        for (int i12 = 0; i12 < 3; i12++) {
            d.g(this.vertexPositions, this.indices.get(i11 + i12) * 3, vector3f);
            triangle.set(i12, vector3f);
        }
    }

    public FloatBuffer copyTriangles() {
        int i10 = this.numTriangles;
        int i11 = i10 * 3;
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(i10 * 9);
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = this.indices.get(i12) * 3;
            float f10 = this.vertexPositions.get(i13);
            float f11 = this.vertexPositions.get(i13 + 1);
            createFloatBuffer.put(f10).put(f11).put(this.vertexPositions.get(i13 + 2));
        }
        return createFloatBuffer;
    }

    public FloatBuffer copyVertexPositions() {
        int i10 = this.numVertices * 3;
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            createFloatBuffer.put(this.vertexPositions.get(i11));
        }
        return createFloatBuffer;
    }

    public int countTriangles() {
        return this.numTriangles;
    }

    public int countVertices() {
        return this.numVertices;
    }

    public void createMesh() {
        long createByte;
        int i10 = this.indexStride;
        if (i10 == 3) {
            createByte = createByte((ByteBuffer) this.indices.getBuffer(), this.vertexPositions, this.numTriangles, this.numVertices, this.vertexStride, this.indexStride);
        } else if (i10 == 6) {
            createByte = createShort((ShortBuffer) this.indices.getBuffer(), this.vertexPositions, this.numTriangles, this.numVertices, this.vertexStride, this.indexStride);
        } else {
            if (i10 != 12) {
                throw new RuntimeException("indexStride = " + this.indexStride);
            }
            createByte = createInt((IntBuffer) this.indices.getBuffer(), this.vertexPositions, this.numTriangles, this.numVertices, this.vertexStride, this.indexStride);
        }
        setNativeId(createByte);
        logger.log(Level.FINE, "Created {0}", this);
    }

    public void createMeshFromIntPointers(long j10, long j11) {
        setNativeId(createIntPointer(j10, j11, this.numTriangles, this.numVertices, this.vertexStride, this.indexStride));
        logger.log(Level.FINE, "Created {0}", this);
    }

    public o distinctVertices() {
        return d.c(this.vertexPositions, 0, this.numVertices * 3);
    }

    public Vector3f[] footprint(Transform transform) {
        C13702E.t(transform, "mesh-to-world transform");
        FloatBuffer j10 = distinctVertices().j();
        int limit = j10.limit();
        d.x(j10, 0, limit, transform);
        int i10 = limit / 3;
        float f10 = Float.POSITIVE_INFINITY;
        for (int i11 = 0; i11 < i10; i11++) {
            float f11 = j10.get((i11 * 3) + 1);
            if (f11 < f10) {
                f10 = f11;
            }
        }
        for (int i12 = 0; i12 < i10; i12++) {
            j10.put((i12 * 3) + 1, f10);
        }
        m mVar = new m(j10, 0, limit);
        Vector3f g10 = mVar.g(null);
        Vector3f h10 = mVar.h(null);
        float f12 = (h10.f81611x + g10.f81611x) / 2.0f;
        Vector3f[] vector3fArr = {new Vector3f(f12, g10.f81612y, g10.f81613z), new Vector3f(f12, h10.f81612y, g10.f81613z), new Vector3f(f12, g10.f81612y, h10.f81613z), new Vector3f(f12, h10.f81612y, h10.f81613z)};
        for (int i13 = 0; i13 < 4; i13++) {
            Vector3f vector3f = vector3fArr[i13];
            mVar.f(vector3f, vector3f);
        }
        return vector3fArr;
    }

    public float maxDistance(Transform transform) {
        C13702E.t(transform, "meshToWorld");
        Vector3f vector3f = new Vector3f();
        double d10 = 0.0d;
        for (int i10 = 0; i10 < this.numVertices; i10++) {
            d.g(this.vertexPositions, i10 * 3, vector3f);
            f.S(transform, vector3f, vector3f);
            double F10 = h.F(vector3f);
            if (F10 > d10) {
                d10 = F10;
            }
        }
        return (float) Math.sqrt(d10);
    }

    public void maxMin(Vector3f vector3f, Vector3f vector3f2) {
        C13702E.t(vector3f, "store maxima");
        C13702E.t(vector3f2, "store minima");
        d.m(this.vertexPositions, 0, this.numVertices * 3, vector3f, vector3f2);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.indexStride = capsule.readInt(tagIndexStride, 12);
        this.numTriangles = capsule.readInt(tagNumTriangles, 0);
        this.numVertices = capsule.readInt(tagNumVertices, 0);
        this.vertexStride = capsule.readInt(tagVertexStride, 12);
        int[] readIntArray = capsule.readIntArray(tagIndexInts, new int[0]);
        int length = readIntArray.length;
        int i10 = this.indexStride;
        if (i10 == 3) {
            this.indices = IndexBuffer.wrapIndexBuffer(BufferUtils.createByteBuffer(length));
        } else if (i10 == 6) {
            this.indices = IndexBuffer.wrapIndexBuffer(BufferUtils.createShortBuffer(length));
        } else {
            if (i10 != 12) {
                throw new RuntimeException("indexStride = " + this.indexStride);
            }
            this.indices = IndexBuffer.wrapIndexBuffer(BufferUtils.createIntBuffer(length));
        }
        for (int i11 = 0; i11 < length; i11++) {
            this.indices.put(i11, readIntArray[i11]);
        }
        this.vertexPositions = BufferUtils.createFloatBuffer(capsule.readFloatArray(tagVertices, new float[0]));
        createMesh();
    }

    public IndexedMesh[] split(Plane plane) {
        C13702E.t(plane, "splitting plane");
        int i10 = this.numTriangles * 18;
        FloatBuffer[] floatBufferArr = {BufferUtils.createFloatBuffer(i10), BufferUtils.createFloatBuffer(i10)};
        Triangle triangle = new Triangle();
        for (int i11 = 0; i11 < this.numTriangles; i11++) {
            copyTriangle(i11, triangle);
            splitTriangle(triangle, plane, floatBufferArr);
        }
        IndexedMesh[] indexedMeshArr = new IndexedMesh[2];
        int position = floatBufferArr[0].position();
        int position2 = floatBufferArr[1].position();
        if (position != 0 && position2 != 0) {
            for (int i12 = 0; i12 < 2; i12++) {
                floatBufferArr[i12].flip();
                indexedMeshArr[i12] = new IndexedMesh(floatBufferArr[i12]);
            }
        } else if (position > 0) {
            indexedMeshArr[0] = this;
        } else if (position2 > 0) {
            indexedMeshArr[1] = this;
        }
        return indexedMeshArr;
    }

    public float surfaceArea() {
        Triangle triangle = new Triangle();
        double d10 = 0.0d;
        for (int i10 = 0; i10 < this.numTriangles; i10++) {
            copyTriangle(i10, triangle);
            d10 += f.b(triangle);
        }
        return (float) d10;
    }

    public float volumeConvex() {
        double d10 = 0.0d;
        if (this.numTriangles > 0) {
            Vector3f vector3f = new Vector3f();
            d.g(this.vertexPositions, 0, vector3f);
            Triangle triangle = new Triangle();
            for (int i10 = 0; i10 < this.numTriangles; i10++) {
                copyTriangle(i10, triangle);
                d10 += i.f(triangle.get1(), triangle.get2(), triangle.get3(), vector3f);
            }
        }
        return (float) d10;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        int i10 = this.numTriangles * 3;
        int[] iArr = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            iArr[i11] = this.indices.get(i11);
        }
        capsule.write(iArr, tagIndexInts, (int[]) null);
        capsule.write(this.indexStride, tagIndexStride, 12);
        capsule.write(this.numTriangles, tagNumTriangles, 0);
        capsule.write(this.numVertices, tagNumVertices, 0);
        capsule.write(this.vertexStride, tagVertexStride, 12);
        int capacity = this.vertexPositions.capacity();
        float[] fArr = new float[capacity];
        for (int i12 = 0; i12 < capacity; i12++) {
            fArr[i12] = this.vertexPositions.get(i12);
        }
        capsule.write(fArr, tagVertices, (float[]) null);
    }

    public IndexedMesh(CollisionShape collisionShape, int i10, boolean z10) {
        C13702E.t(collisionShape, "shape");
        C13702E.i(i10, MediaStore.Video.VideoColumns.RESOLUTION, 0, 2);
        FloatBuffer debugTriangles = DebugShapeFactory.getDebugTriangles(collisionShape, i10);
        Mesh mesh = new Mesh();
        mesh.setBuffer(VertexBuffer.Type.Position, 3, debugTriangles);
        create(z10 ? C13720p.a(mesh) : mesh, null);
    }

    @Override
    public IndexedMesh jmeClone() {
        try {
            return (IndexedMesh) clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public IndexedMesh(Mesh mesh) {
        C13702E.t(mesh, "JME mesh");
        C13702E.H(C13720p.t(mesh), "mode=Triangles/TriangleFan/TriangleStrip");
        create(mesh, null);
    }

    public IndexedMesh(Mesh mesh, Transform transform) {
        C13702E.t(mesh, "JME mesh");
        C13702E.H(C13720p.t(mesh), "mode=Triangles/TriangleFan/TriangleStrip");
        C13702E.t(transform, "transform");
        create(mesh, transform);
    }

    public IndexedMesh(Vector3f[] vector3fArr, int[] iArr) {
        C13702E.t(vector3fArr, "position array");
        C13702E.t(iArr, "index array");
        int length = iArr.length;
        C13702E.H(length % 3 == 0, "length a multiple of 3");
        this.numVertices = vector3fArr.length;
        this.vertexPositions = BufferUtils.createFloatBuffer(vector3fArr);
        this.vertexStride = 12;
        this.numTriangles = length / 3;
        IndexBuffer wrapIndexBuffer = IndexBuffer.wrapIndexBuffer(BufferUtils.createIntBuffer(iArr));
        this.indices = wrapIndexBuffer;
        this.indexStride = wrapIndexBuffer.getFormat().getComponentSize() * 3;
        createMesh();
    }

    public IndexedMesh(FloatBuffer floatBuffer) {
        C13702E.t(floatBuffer, "buffer");
        int limit = floatBuffer.limit();
        C13702E.H(limit % 9 == 0, "limit a multiple of 9");
        C13831a c13831a = new C13831a(floatBuffer, 0, limit);
        int a10 = c13831a.a();
        this.numVertices = a10;
        this.vertexPositions = BufferUtils.createFloatBuffer(a10 * 3);
        this.vertexStride = 12;
        int i10 = limit / 3;
        this.numTriangles = i10 / 3;
        IndexBuffer createIndexBuffer = IndexBuffer.createIndexBuffer(this.numVertices, i10);
        this.indices = createIndexBuffer;
        this.indexStride = createIndexBuffer.getFormat().getComponentSize() * 3;
        Vector3f vector3f = new Vector3f();
        for (int i11 = 0; i11 < i10; i11++) {
            int b10 = c13831a.b(i11);
            this.indices.put(i11, b10);
            d.g(floatBuffer, i11 * 3, vector3f);
            d.p(this.vertexPositions, b10 * 3, vector3f);
        }
        createMesh();
    }

    public IndexedMesh(FloatBuffer floatBuffer, IntBuffer intBuffer) {
        C13702E.t(floatBuffer, "position buffer");
        C13702E.t(intBuffer, "index buffer");
        int capacity = floatBuffer.capacity();
        C13702E.H(capacity % 3 == 0, "capacity a multiple of 3");
        int capacity2 = intBuffer.capacity();
        C13702E.H(capacity2 % 3 == 0, "capacity a multiple of 3");
        this.numVertices = capacity / 3;
        this.vertexPositions = floatBuffer;
        this.vertexStride = 12;
        this.numTriangles = capacity2 / 3;
        IndexBuffer wrapIndexBuffer = IndexBuffer.wrapIndexBuffer(intBuffer);
        this.indices = wrapIndexBuffer;
        this.indexStride = wrapIndexBuffer.getFormat().getComponentSize() * 3;
        createMesh();
    }

    public IndexedMesh(CollisionShape collisionShape, int i10) {
        C13702E.t(collisionShape, "shape");
        C13702E.H(!(collisionShape instanceof CompoundCollisionShape), "not a compound shape");
        C13702E.i(i10, "mesh resolution", 0, 2);
        long createIntDebug = createIntDebug(collisionShape.nativeId(), i10);
        setNativeId(createIntDebug);
        logger.log(Level.FINE, "Created {0}", this);
        int countVertices = countVertices(createIntDebug);
        this.numVertices = countVertices;
        this.vertexPositions = BufferUtils.createFloatBuffer(countVertices * 3);
        this.vertexStride = 12;
        int countTriangles = countTriangles(createIntDebug);
        this.numTriangles = countTriangles;
        IntBuffer createIntBuffer = BufferUtils.createIntBuffer(countTriangles * 3);
        IndexBuffer wrapIndexBuffer = IndexBuffer.wrapIndexBuffer(createIntBuffer);
        this.indices = wrapIndexBuffer;
        this.indexStride = wrapIndexBuffer.getFormat().getComponentSize() * 3;
        fillBuffersInt(createIntDebug, this.vertexPositions, createIntBuffer);
    }
}
