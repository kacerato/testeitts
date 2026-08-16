package com.jme3.bullet.util;

import com.jme3.bullet.collision.shapes.infos.IndexedMesh;
import com.jme3.bullet.objects.PhysicsSoftBody;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.mesh.IndexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import jf.b;
import jf.d;
import jf.f;
import jf.g;
import jf.h;
import p000if.C13702E;

public final class NativeSoftBodyUtil {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(NativeSoftBodyUtil.class.getName());
    private static final int numAxes = 3;
    private static final int vpe = 2;
    private static final int vpt = 3;

    private NativeSoftBodyUtil() {
    }

    public static void appendFromLineMesh(Mesh mesh, PhysicsSoftBody physicsSoftBody) {
        mesh.getMode();
        C13702E.t(physicsSoftBody, "soft body");
        physicsSoftBody.appendNodes(mesh.getFloatBuffer(VertexBuffer.Type.Position));
        physicsSoftBody.appendLinks(mesh.getIndexBuffer());
    }

    public static void appendFromNativeMesh(IndexedMesh indexedMesh, PhysicsSoftBody physicsSoftBody) {
        C13702E.t(physicsSoftBody, "soft body");
        physicsSoftBody.appendNodes(indexedMesh.copyVertexPositions());
        IntBuffer copyIndices = indexedMesh.copyIndices();
        physicsSoftBody.appendFaces(IndexBuffer.wrapIndexBuffer(copyIndices));
        int capacity = copyIndices.capacity();
        HashSet<b> hashSet = new HashSet(capacity * 3);
        int i10 = 0;
        for (int i11 = 0; i11 < capacity; i11 += 3) {
            int i12 = copyIndices.get(i11);
            int i13 = copyIndices.get(i11 + 1);
            int i14 = copyIndices.get(i11 + 2);
            hashSet.add(new b(i12, i13));
            hashSet.add(new b(i13, i14));
            hashSet.add(new b(i12, i14));
        }
        IntBuffer createIntBuffer = BufferUtils.createIntBuffer(hashSet.size() * 2);
        for (b bVar : hashSet) {
            createIntBuffer.put(i10, bVar.c());
            createIntBuffer.put(i10 + 1, bVar.b());
            i10 += 2;
        }
        physicsSoftBody.appendLinks(IndexBuffer.wrapIndexBuffer(createIntBuffer));
    }

    public static void appendFromTriMesh(Mesh mesh, PhysicsSoftBody physicsSoftBody) {
        mesh.getMode();
        C13702E.t(physicsSoftBody, "soft body");
        FloatBuffer floatBuffer = mesh.getFloatBuffer(VertexBuffer.Type.Position);
        physicsSoftBody.appendNodes(floatBuffer);
        IndexBuffer indexBuffer = mesh.getIndexBuffer();
        physicsSoftBody.appendFaces(indexBuffer);
        int size = indexBuffer.size();
        HashSet<b> hashSet = new HashSet(size * 3);
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11 += 3) {
            int i12 = indexBuffer.get(i11);
            int i13 = indexBuffer.get(i11 + 1);
            int i14 = indexBuffer.get(i11 + 2);
            hashSet.add(new b(i12, i13));
            hashSet.add(new b(i13, i14));
            hashSet.add(new b(i12, i14));
        }
        IndexBuffer createIndexBuffer = IndexBuffer.createIndexBuffer(floatBuffer.limit(), hashSet.size() * 2);
        for (b bVar : hashSet) {
            createIndexBuffer.put(i10, bVar.c());
            createIndexBuffer.put(i10 + 1, bVar.b());
            i10 += 2;
        }
        physicsSoftBody.appendLinks(createIndexBuffer);
    }

    public static void appendTetras(PhysicsSoftBody physicsSoftBody) {
        int countNodes = physicsSoftBody.countNodes();
        physicsSoftBody.appendNodes(BufferUtils.createFloatBuffer(physicsSoftBody.getPhysicsLocation(null)));
        int countNodes2 = physicsSoftBody.countNodes();
        int countFaces = physicsSoftBody.countFaces();
        IndexBuffer createIndexBuffer = IndexBuffer.createIndexBuffer(countNodes2, countFaces * 4);
        IntBuffer copyFaces = physicsSoftBody.copyFaces(null);
        for (int i10 = 0; i10 < countFaces; i10++) {
            int i11 = i10 * 3;
            int i12 = copyFaces.get(i11);
            int i13 = copyFaces.get(i11 + 1);
            int i14 = copyFaces.get(i11 + 2);
            int i15 = i10 * 4;
            createIndexBuffer.put(i15, i12);
            createIndexBuffer.put(i15 + 1, i13);
            createIndexBuffer.put(i15 + 2, i14);
            createIndexBuffer.put(i15 + 3, countNodes);
        }
        physicsSoftBody.appendTetras(createIndexBuffer);
    }

    public static IntBuffer generateIndexMap(FloatBuffer floatBuffer) {
        int limit = floatBuffer.limit();
        C13702E.H(limit % 3 == 0, "limit a multiple of 3");
        int i10 = limit / 3;
        IntBuffer createIntBuffer = BufferUtils.createIntBuffer(i10);
        HashMap hashMap = new HashMap(i10);
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            Vector3f vector3f = new Vector3f();
            d.g(floatBuffer, i12 * 3, vector3f);
            h.U(vector3f, vector3f);
            if (hashMap.containsKey(vector3f)) {
                createIntBuffer.put(((Integer) hashMap.get(vector3f)).intValue());
            } else {
                hashMap.put(vector3f, Integer.valueOf(i11));
                createIntBuffer.put(i11);
                i11++;
            }
        }
        createIntBuffer.flip();
        return createIntBuffer;
    }

    public static IndexBuffer mapIndices(IntBuffer intBuffer, IndexBuffer indexBuffer, IndexBuffer indexBuffer2) {
        int size = indexBuffer.size();
        if (indexBuffer2 == null) {
            indexBuffer2 = IndexBuffer.createIndexBuffer(Integer.MAX_VALUE, size);
        } else {
            int size2 = indexBuffer2.size();
            if (size2 < size) {
                logger.log(Level.SEVERE, "outputSize={0}", Integer.valueOf(size2));
                throw new IllegalArgumentException(String.format("Reuse buffer size must be greater than or equal to %d.", Integer.valueOf(size)));
            }
        }
        for (int i10 = 0; i10 < size; i10++) {
            indexBuffer2.put(i10, intBuffer.get(indexBuffer.get(i10)));
        }
        indexBuffer2.getBuffer().limit(size);
        return indexBuffer2;
    }

    public static FloatBuffer mapVertexData(IntBuffer intBuffer, FloatBuffer floatBuffer, int i10) {
        C13702E.t(intBuffer, "index map");
        C13702E.F(i10, "number of floats per vertex");
        int limit = floatBuffer.limit();
        int i11 = limit / i10;
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(limit);
        int i12 = -1;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = intBuffer.get(i13);
            for (int i15 = 0; i15 < i10; i15++) {
                createFloatBuffer.put((i10 * i14) + i15, floatBuffer.get((i10 * i13) + i15));
            }
            if (i14 > i12) {
                i12 = i14;
            }
        }
        createFloatBuffer.limit(i10 * (i12 + 1));
        return createFloatBuffer;
    }

    private static native void updateClusterMesh(long j10, FloatBuffer floatBuffer, boolean z10);

    public static void updateClusterMesh(PhysicsSoftBody physicsSoftBody, Mesh mesh, boolean z10) {
        long nativeId = physicsSoftBody.nativeId();
        VertexBuffer.Type type = VertexBuffer.Type.Position;
        updateClusterMesh(nativeId, mesh.getFloatBuffer(type), z10);
        mesh.getBuffer(type).setUpdateNeeded();
    }

    private static native void updateMesh(long j10, FloatBuffer floatBuffer, FloatBuffer floatBuffer2, boolean z10, boolean z11);

    private static native void updateMesh(long j10, IntBuffer intBuffer, FloatBuffer floatBuffer, FloatBuffer floatBuffer2, boolean z10, boolean z11);

    public static void updateMesh(PhysicsSoftBody physicsSoftBody, IntBuffer intBuffer, Mesh mesh, boolean z10, boolean z11, Transform transform) {
        long nativeId = physicsSoftBody.nativeId();
        FloatBuffer floatBuffer = mesh.getFloatBuffer(VertexBuffer.Type.Position);
        FloatBuffer floatBuffer2 = z11 ? mesh.getFloatBuffer(VertexBuffer.Type.Normal) : null;
        if (intBuffer != null) {
            updateMesh(nativeId, intBuffer, floatBuffer, floatBuffer2, z10, z11);
        } else {
            updateMesh(nativeId, floatBuffer, floatBuffer2, z10, z11);
        }
        if (transform != null) {
            Vector3f vector3f = new Vector3f();
            floatBuffer.rewind();
            while (floatBuffer.hasRemaining()) {
                floatBuffer.mark();
                vector3f.f81611x = floatBuffer.get();
                vector3f.f81612y = floatBuffer.get();
                vector3f.f81613z = floatBuffer.get();
                f.S(transform, vector3f, vector3f);
                floatBuffer.reset();
                floatBuffer.put(vector3f.f81611x);
                floatBuffer.put(vector3f.f81612y);
                floatBuffer.put(vector3f.f81613z);
            }
            if (floatBuffer2 != null) {
                Quaternion rotation = transform.getRotation();
                floatBuffer2.rewind();
                while (floatBuffer2.hasRemaining()) {
                    floatBuffer2.mark();
                    vector3f.f81611x = floatBuffer2.get();
                    vector3f.f81612y = floatBuffer2.get();
                    vector3f.f81613z = floatBuffer2.get();
                    g.r(rotation, vector3f, vector3f);
                    floatBuffer2.reset();
                    floatBuffer2.put(vector3f.f81611x);
                    floatBuffer2.put(vector3f.f81612y);
                    floatBuffer2.put(vector3f.f81613z);
                }
            }
        }
        mesh.getBuffer(VertexBuffer.Type.Position).setUpdateNeeded();
        if (floatBuffer2 != null) {
            mesh.getBuffer(VertexBuffer.Type.Normal).setUpdateNeeded();
        }
    }

    private static native void updatePinMesh(long j10, FloatBuffer floatBuffer, boolean z10);

    public static void updatePinMesh(PhysicsSoftBody physicsSoftBody, Mesh mesh, boolean z10) {
        long nativeId = physicsSoftBody.nativeId();
        VertexBuffer.Type type = VertexBuffer.Type.Position;
        updatePinMesh(nativeId, mesh.getFloatBuffer(type), z10);
        mesh.getBuffer(type).setUpdateNeeded();
    }
}
