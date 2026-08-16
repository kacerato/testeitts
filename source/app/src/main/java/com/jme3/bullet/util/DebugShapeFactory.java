package com.jme3.bullet.util;

import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.bullet.collision.shapes.ConvexShape;
import com.jme3.bullet.collision.shapes.PlaneCollisionShape;
import com.jme3.bullet.collision.shapes.infos.ChildCollisionShape;
import com.jme3.bullet.collision.shapes.infos.IndexedMesh;
import com.jme3.bullet.debug.DebugMeshInitListener;
import com.jme3.bullet.debug.MeshCustomizer;
import com.jme3.math.Matrix3f;
import com.jme3.math.Plane;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.logging.Logger;
import jf.d;
import jf.f;
import jf.h;
import org.eclipse.jdt.internal.compiler.codegen.ConstantPool;
import p000if.C13702E;
import p000if.C13720p;
import p000if.EnumC13714j;

public final class DebugShapeFactory {
    static final boolean $assertionsDisabled = false;
    public static final int highResolution = 1;
    public static final int highResolution2 = 2;
    public static final int lowResolution = 0;
    private static MeshCustomizer meshCustomizer = null;
    private static final int numAxes = 3;
    private static final float planeDebugMeshSideLength = 1500.0f;
    public static final Logger logger = Logger.getLogger(DebugShapeFactory.class.getName());
    private static final Vector3f translateIdentity = new Vector3f(0.0f, 0.0f, 0.0f);
    private static int maxVerticesToIndex = ConstantPool.CONSTANTPOOL_GROW_SIZE;
    private static final Map<DebugMeshKey, Mesh> cache = Collections.synchronizedMap(new WeakHashMap(200));

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$jme3utilities$MeshNormals;

        static {
            int[] iArr = new int[EnumC13714j.values().length];
            $SwitchMap$jme3utilities$MeshNormals = iArr;
            try {
                iArr[EnumC13714j.Facet.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$jme3utilities$MeshNormals[EnumC13714j.None.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$jme3utilities$MeshNormals[EnumC13714j.Smooth.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$jme3utilities$MeshNormals[EnumC13714j.Sphere.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private DebugShapeFactory() {
    }

    public static void clearCache() {
        cache.clear();
    }

    public static int countCachedMeshes() {
        return cache.size();
    }

    private static FloatBuffer createCompoundTriangles(CompoundCollisionShape compoundCollisionShape, int i10) {
        ChildCollisionShape[] listChildren = compoundCollisionShape.listChildren();
        int length = listChildren.length;
        FloatBuffer[] floatBufferArr = new FloatBuffer[length];
        Transform transform = new Transform();
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            ChildCollisionShape childCollisionShape = listChildren[i12];
            CollisionShape shape = childCollisionShape.getShape();
            childCollisionShape.copyTransform(transform);
            FloatBuffer debugTriangles = getDebugTriangles(shape, i10);
            int capacity = debugTriangles.capacity();
            d.x(debugTriangles, 0, capacity, transform);
            floatBufferArr[i12] = debugTriangles;
            i11 += capacity;
        }
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(i11);
        for (int i13 = 0; i13 < length; i13++) {
            FloatBuffer floatBuffer = floatBufferArr[i13];
            for (int i14 = 0; i14 < floatBuffer.capacity(); i14++) {
                createFloatBuffer.put(floatBuffer.get(i14));
            }
        }
        return createFloatBuffer;
    }

    private static FloatBuffer createCompoundVertices(CompoundCollisionShape compoundCollisionShape, int i10) {
        ChildCollisionShape[] listChildren = compoundCollisionShape.listChildren();
        int length = listChildren.length;
        FloatBuffer[] floatBufferArr = new FloatBuffer[length];
        Transform transform = new Transform();
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            ChildCollisionShape childCollisionShape = listChildren[i12];
            CollisionShape shape = childCollisionShape.getShape();
            childCollisionShape.copyTransform(transform);
            FloatBuffer debugVertices = debugVertices(shape, i10);
            int capacity = debugVertices.capacity();
            d.x(debugVertices, 0, capacity, transform);
            floatBufferArr[i12] = debugVertices;
            i11 += capacity;
        }
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(i11);
        for (int i13 = 0; i13 < length; i13++) {
            FloatBuffer floatBuffer = floatBufferArr[i13];
            for (int i14 = 0; i14 < floatBuffer.capacity(); i14++) {
                createFloatBuffer.put(floatBuffer.get(i14));
            }
        }
        return createFloatBuffer;
    }

    private static Geometry createGeometry(CollisionShape collisionShape, DebugMeshInitListener debugMeshInitListener, EnumC13714j enumC13714j, int i10) {
        Mesh mesh;
        DebugMeshKey debugMeshKey = new DebugMeshKey(collisionShape, enumC13714j, i10);
        Map<DebugMeshKey, Mesh> map = cache;
        synchronized (map) {
            try {
                mesh = map.get(debugMeshKey);
                if (mesh == null) {
                    Mesh createPlaneMesh = collisionShape instanceof PlaneCollisionShape ? createPlaneMesh((PlaneCollisionShape) collisionShape, enumC13714j) : createMesh(collisionShape, enumC13714j, i10);
                    MeshCustomizer meshCustomizer2 = meshCustomizer;
                    if (meshCustomizer2 != null) {
                        createPlaneMesh = meshCustomizer2.customizeMesh(createPlaneMesh);
                    }
                    mesh = createPlaneMesh;
                    if (debugMeshInitListener != null) {
                        debugMeshInitListener.debugMeshInit(mesh);
                    }
                    map.put(debugMeshKey, mesh);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Geometry geometry = new Geometry("Physics debug", mesh);
        geometry.updateModelBound();
        return geometry;
    }

    private static Mesh createMesh(CollisionShape collisionShape, EnumC13714j enumC13714j, int i10) {
        FloatBuffer copyTriangles;
        FloatBuffer copyTriangles2;
        IndexedMesh indexedMesh = new IndexedMesh(collisionShape, i10);
        Mesh mesh = new Mesh();
        int i11 = AnonymousClass1.$SwitchMap$jme3utilities$MeshNormals[enumC13714j.ordinal()];
        if (i11 == 1) {
            mesh.setBuffer(VertexBuffer.Type.Position, 3, indexedMesh.copyTriangles());
            C13720p.j(mesh);
        } else if (i11 == 2) {
            if (collisionShape.isConvex()) {
                copyTriangles = indexedMesh.copyVertexPositions();
                mesh.setBuffer(VertexBuffer.Type.Index, 3, VertexBuffer.Format.UnsignedInt, indexedMesh.copyIndices());
            } else {
                copyTriangles = indexedMesh.copyTriangles();
            }
            mesh.setBuffer(VertexBuffer.Type.Position, 3, copyTriangles);
        } else if (i11 == 3) {
            mesh.setBuffer(VertexBuffer.Type.Position, 3, indexedMesh.copyTriangles());
            C13720p.j(mesh);
            C13720p.I(mesh);
        } else {
            if (i11 != 4) {
                throw new IllegalArgumentException("normals = " + ((Object) enumC13714j));
            }
            if (collisionShape.isConvex()) {
                copyTriangles2 = indexedMesh.copyVertexPositions();
                mesh.setBuffer(VertexBuffer.Type.Index, 3, VertexBuffer.Format.UnsignedInt, indexedMesh.copyIndices());
            } else {
                copyTriangles2 = indexedMesh.copyTriangles();
            }
            mesh.setBuffer(VertexBuffer.Type.Position, 3, copyTriangles2);
            C13720p.b(mesh);
        }
        if (!C13720p.q(mesh) && mesh.getVertexCount() <= maxVerticesToIndex) {
            mesh = C13720p.a(mesh);
        }
        mesh.updateBound();
        mesh.setStatic();
        return mesh;
    }

    private static Node createNode(CompoundCollisionShape compoundCollisionShape, DebugMeshInitListener debugMeshInitListener, EnumC13714j enumC13714j, int i10) {
        Node node = new Node("Bullet debug");
        Vector3f scale = compoundCollisionShape.getScale(null);
        Matrix3f matrix3f = new Matrix3f();
        Vector3f vector3f = new Vector3f();
        for (ChildCollisionShape childCollisionShape : compoundCollisionShape.listChildren()) {
            Geometry createGeometry = createGeometry(childCollisionShape.getShape(), debugMeshInitListener, enumC13714j, i10);
            childCollisionShape.copyOffset(vector3f);
            vector3f.multLocal(scale);
            createGeometry.setLocalTranslation(vector3f);
            childCollisionShape.copyRotationMatrix(matrix3f);
            createGeometry.setLocalRotation(matrix3f);
            node.attachChild(createGeometry);
        }
        node.updateGeometricState();
        return node;
    }

    private static Mesh createPlaneMesh(PlaneCollisionShape planeCollisionShape, EnumC13714j enumC13714j) {
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(24);
        for (int i10 = 0; i10 < 2; i10++) {
            createFloatBuffer.put(new float[]{0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, -1.0f, 0.0f});
        }
        createFloatBuffer.flip();
        Transform planeTransform = planeTransform(planeCollisionShape);
        planeTransform.setScale(meshSideLength() / f.f92906c);
        d.x(createFloatBuffer, 0, 24, planeTransform);
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(2, 1, 0, 3, 2, 0, 5, 6, 7, 4, 5, 7);
        createByteBuffer.clear();
        Mesh mesh = new Mesh();
        mesh.setBuffer(VertexBuffer.Type.Position, 3, createFloatBuffer);
        mesh.setBuffer(VertexBuffer.Type.Index, 3, createByteBuffer);
        if (enumC13714j != EnumC13714j.None) {
            Vector3f normal = planeCollisionShape.getPlane().getNormal();
            FloatBuffer createFloatBuffer2 = BufferUtils.createFloatBuffer(24);
            for (int i11 = 0; i11 < 4; i11++) {
                createFloatBuffer2.put(normal.f81611x).put(normal.f81612y).put(normal.f81613z);
            }
            for (int i12 = 0; i12 < 4; i12++) {
                createFloatBuffer2.put(-normal.f81611x).put(-normal.f81612y).put(-normal.f81613z);
            }
            createFloatBuffer2.flip();
            mesh.setBuffer(VertexBuffer.Type.Normal, 3, createFloatBuffer2);
        }
        mesh.updateBound();
        mesh.setStatic();
        return mesh;
    }

    private static FloatBuffer createPlaneTriangles(PlaneCollisionShape planeCollisionShape, float f10) {
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(0.0f, 0.0f, -1.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, -1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f);
        int capacity = createFloatBuffer.capacity();
        Transform planeTransform = planeTransform(planeCollisionShape);
        planeTransform.setScale(f10);
        d.x(createFloatBuffer, 0, capacity, planeTransform);
        return createFloatBuffer;
    }

    private static FloatBuffer createPlaneVertices(PlaneCollisionShape planeCollisionShape, float f10) {
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(0.0f, 0.0f, -1.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, -1.0f, 0.0f);
        int capacity = createFloatBuffer.capacity();
        Transform planeTransform = planeTransform(planeCollisionShape);
        planeTransform.setScale(f10);
        d.x(createFloatBuffer, 0, capacity, planeTransform);
        return createFloatBuffer;
    }

    public static FloatBuffer debugVertices(CollisionShape collisionShape, int i10) {
        C13702E.t(collisionShape, "shape");
        C13702E.i(i10, "mesh resolution", 0, 2);
        return collisionShape instanceof CompoundCollisionShape ? createCompoundVertices((CompoundCollisionShape) collisionShape, i10) : collisionShape instanceof PlaneCollisionShape ? createPlaneVertices((PlaneCollisionShape) collisionShape, 1000.0f) : new IndexedMesh(collisionShape, i10).copyVertexPositions();
    }

    public static Vector3f[] footprint(CollisionShape collisionShape, Transform transform, int i10) {
        C13702E.H((collisionShape == null || (collisionShape instanceof CompoundCollisionShape) || (collisionShape instanceof PlaneCollisionShape)) ? false : true, "a non-null value, neither a compound nor a plane shape");
        C13702E.t(transform, "shape-to-world");
        C13702E.i(i10, "mesh resolution", 0, 2);
        return new IndexedMesh(collisionShape, i10).footprint(transform);
    }

    public static Mesh getDebugMesh(CollisionShape collisionShape) {
        C13702E.t(collisionShape, "shape");
        FloatBuffer debugTriangles = getDebugTriangles(collisionShape, 0);
        Mesh mesh = new Mesh();
        mesh.setBuffer(VertexBuffer.Type.Position, 3, debugTriangles);
        mesh.updateBound();
        return mesh;
    }

    public static Spatial getDebugShape(CollisionShape collisionShape) {
        if (collisionShape == null) {
            return null;
        }
        if (collisionShape instanceof CompoundCollisionShape) {
            return createNode((CompoundCollisionShape) collisionShape, null, EnumC13714j.None, 0);
        }
        return createGeometry(collisionShape, null, EnumC13714j.None, 0);
    }

    public static FloatBuffer getDebugTriangles(CollisionShape collisionShape, int i10) {
        C13702E.t(collisionShape, "shape");
        C13702E.i(i10, "mesh resolution", 0, 2);
        return collisionShape instanceof CompoundCollisionShape ? createCompoundTriangles((CompoundCollisionShape) collisionShape, i10) : collisionShape instanceof PlaneCollisionShape ? createPlaneTriangles((PlaneCollisionShape) collisionShape, 1000.0f) : new IndexedMesh(collisionShape, i10).copyTriangles();
    }

    public static void installMeshCustomizer(MeshCustomizer meshCustomizer2) {
        meshCustomizer = meshCustomizer2;
    }

    public static float maxDistance(CollisionShape collisionShape, Transform transform, int i10) {
        C13702E.H((collisionShape == null || (collisionShape instanceof CompoundCollisionShape) || (collisionShape instanceof PlaneCollisionShape)) ? false : true, "a non-null value, neither a compound nor a plane shape");
        C13702E.t(transform, "shapeToWorld");
        C13702E.i(i10, "mesh resolution", 0, 2);
        return new IndexedMesh(collisionShape, i10).maxDistance(transform);
    }

    public static float meshSideLength() {
        return 1500.0f;
    }

    private static Transform planeTransform(PlaneCollisionShape planeCollisionShape) {
        Transform transform = new Transform();
        Plane plane = planeCollisionShape.getPlane();
        plane.getClosestPoint(translateIdentity, transform.getTranslation());
        Vector3f normal = plane.getNormal();
        Vector3f vector3f = new Vector3f();
        Vector3f vector3f2 = new Vector3f();
        h.u(normal, vector3f, vector3f2);
        transform.getRotation().fromAxes(normal, vector3f, vector3f2);
        return transform;
    }

    public static void removeShapeFromCache(long j10) {
        Map<DebugMeshKey, Mesh> map = cache;
        synchronized (map) {
            try {
                for (DebugMeshKey debugMeshKey : map.o()) {
                    if (debugMeshKey.shapeId() == j10) {
                        cache.remove(debugMeshKey);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void setIndexBuffers(boolean z10) {
        maxVerticesToIndex = z10 ? Integer.MAX_VALUE : -1;
    }

    public static float volumeConvex(ConvexShape convexShape, int i10) {
        C13702E.t(convexShape, "shape");
        C13702E.i(i10, "mesh resolution", 0, 2);
        return new IndexedMesh(convexShape, i10).volumeConvex();
    }

    public static void setIndexBuffers(int i10) {
        C13702E.i(i10, "maxVertices", -1, Integer.MAX_VALUE);
        maxVerticesToIndex = i10;
    }

    public static Spatial getDebugShape(PhysicsCollisionObject physicsCollisionObject) {
        CollisionShape collisionShape = physicsCollisionObject.getCollisionShape();
        DebugMeshInitListener debugMeshInitListener = physicsCollisionObject.debugMeshInitListener();
        EnumC13714j debugMeshNormals = physicsCollisionObject.debugMeshNormals();
        int debugMeshResolution = physicsCollisionObject.debugMeshResolution();
        if (collisionShape instanceof CompoundCollisionShape) {
            return createNode((CompoundCollisionShape) collisionShape, debugMeshInitListener, debugMeshNormals, debugMeshResolution);
        }
        return createGeometry(collisionShape, debugMeshInitListener, debugMeshNormals, debugMeshResolution);
    }
}
