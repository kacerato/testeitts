package com.jme3.bullet.util;

import com.jme3.bullet.collision.shapes.BoxCollisionShape;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.bullet.collision.shapes.GImpactCollisionShape;
import com.jme3.bullet.collision.shapes.HeightfieldCollisionShape;
import com.jme3.bullet.collision.shapes.HullCollisionShape;
import com.jme3.bullet.collision.shapes.MeshCollisionShape;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.UserData;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.mesh.IndexBuffer;
import com.jme3.terrain.Terrain;
import java.nio.FloatBuffer;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;
import jf.d;
import jf.g;
import jf.h;
import p000if.C13702E;
import p000if.C13720p;
import p000if.C13723s;
import vhacd.VHACD;
import vhacd.VHACDHull;
import vhacd.VHACDParameters;
import vhacd4.Vhacd4;
import vhacd4.Vhacd4Hull;
import vhacd4.Vhacd4Parameters;

public final class CollisionShapeFactory {
    public static final Logger logger = Logger.getLogger(CollisionShapeFactory.class.getName());
    private static final int numAxes = 3;

    private CollisionShapeFactory() {
    }

    public static CollisionShape createBoxShape(Spatial spatial) {
        CompoundCollisionShape compoundCollisionShape = new CompoundCollisionShape();
        if (spatial instanceof Geometry) {
            Geometry geometry = (Geometry) spatial;
            Vector3f vector3f = new Vector3f();
            compoundCollisionShape.addChildShape(createSingleBoxShape(geometry, geometry, vector3f), vector3f);
        } else {
            if (!(spatial instanceof Node)) {
                throw new IllegalArgumentException("The model root must either be a Node or a Geometry!");
            }
            Node node = (Node) spatial;
            createCompoundShape(node, node, compoundCollisionShape, false, true);
        }
        return compoundCollisionShape;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void createCompoundShape(Node node, Node node2, CompoundCollisionShape compoundCollisionShape, boolean z10, boolean z11) {
        CollisionShape createSingleBoxShape;
        for (Spatial spatial : node2.getChildren()) {
            Boolean bool = (Boolean) spatial.getUserData(UserData.JME_PHYSICSIGNORE);
            if (bool == null || !bool.booleanValue()) {
                Transform K10 = C13723s.K(spatial, node);
                if (spatial instanceof Terrain) {
                    compoundCollisionShape.addChildShape(new HeightfieldCollisionShape((Terrain) spatial, K10.getScale()), K10);
                } else if (spatial instanceof Node) {
                    createCompoundShape(node, (Node) spatial, compoundCollisionShape, z10, z11);
                } else if (spatial instanceof Geometry) {
                    Geometry geometry = (Geometry) spatial;
                    Vector3f vector3f = new Vector3f(0.0f, 0.0f, 0.0f);
                    if (z10) {
                        createSingleBoxShape = z11 ? createSingleHullShape(geometry, node) : createSingleMeshShape(geometry, node);
                    } else {
                        createSingleBoxShape = createSingleBoxShape(geometry, node, vector3f);
                        g.r(K10.getRotation(), vector3f, vector3f);
                        K10.getTranslation().addLocal(vector3f);
                    }
                    if (createSingleBoxShape != null) {
                        compoundCollisionShape.addChildShape(createSingleBoxShape, K10);
                    }
                }
            }
        }
    }

    public static CollisionShape createDynamicMeshShape(Spatial spatial) {
        if (spatial instanceof Geometry) {
            return createSingleHullShape((Geometry) spatial, spatial);
        }
        if (!(spatial instanceof Node)) {
            throw new IllegalArgumentException("The model root must either be a Node or a Geometry!");
        }
        Node node = (Node) spatial;
        CompoundCollisionShape compoundCollisionShape = new CompoundCollisionShape();
        createCompoundShape(node, node, compoundCollisionShape, true, true);
        return compoundCollisionShape;
    }

    public static GImpactCollisionShape createGImpactShape(Spatial spatial) {
        C13702E.t(spatial, "model root");
        return new GImpactCollisionShape(C13720p.y(spatial));
    }

    public static CollisionShape createMergedBoxShape(Spatial spatial) {
        C13702E.t(spatial, "model root");
        Mesh y10 = C13720p.y(spatial);
        int vertexCount = y10.getVertexCount() * 3;
        FloatBuffer floatBuffer = y10.getFloatBuffer(VertexBuffer.Type.Position);
        Vector3f vector3f = new Vector3f();
        Vector3f vector3f2 = new Vector3f();
        d.m(floatBuffer, 0, vertexCount, vector3f, vector3f2);
        Vector3f vector3f3 = new Vector3f();
        h.M(vector3f, vector3f2, vector3f3);
        BoxCollisionShape boxCollisionShape = new BoxCollisionShape(vector3f.subtract(vector3f3));
        CompoundCollisionShape compoundCollisionShape = new CompoundCollisionShape();
        compoundCollisionShape.addChildShape(boxCollisionShape, vector3f3);
        return compoundCollisionShape;
    }

    public static HullCollisionShape createMergedHullShape(Spatial spatial) {
        C13702E.t(spatial, "model root");
        return new HullCollisionShape(C13720p.y(spatial));
    }

    public static MeshCollisionShape createMergedMeshShape(Spatial spatial) {
        C13702E.t(spatial, "model root");
        return new MeshCollisionShape(C13720p.y(spatial));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static CollisionShape createMeshShape(Spatial spatial) {
        if (spatial instanceof Terrain) {
            return new HeightfieldCollisionShape((Terrain) spatial, spatial.getLocalScale());
        }
        if (spatial instanceof Geometry) {
            return createSingleMeshShape((Geometry) spatial, spatial);
        }
        if (!(spatial instanceof Node)) {
            throw new IllegalArgumentException("The model root must either be a Node or a Geometry!");
        }
        Node node = (Node) spatial;
        CompoundCollisionShape compoundCollisionShape = new CompoundCollisionShape();
        createCompoundShape(node, node, compoundCollisionShape, true, false);
        return compoundCollisionShape;
    }

    private static BoxCollisionShape createSingleBoxShape(Geometry geometry, Spatial spatial, Vector3f vector3f) {
        int vertexCount;
        Mesh mesh = geometry.getMesh();
        if (mesh == null || (vertexCount = mesh.getVertexCount()) < 1) {
            return null;
        }
        Transform K10 = C13723s.K(geometry, spatial);
        FloatBuffer floatBuffer = mesh.getFloatBuffer(VertexBuffer.Type.Position);
        Vector3f vector3f2 = new Vector3f();
        Vector3f vector3f3 = new Vector3f();
        d.m(floatBuffer, 0, vertexCount * 3, vector3f2, vector3f3);
        h.M(vector3f2, vector3f3, vector3f);
        BoxCollisionShape boxCollisionShape = new BoxCollisionShape(vector3f2.subtract(vector3f));
        boxCollisionShape.setScale(K10.getScale());
        return boxCollisionShape;
    }

    private static HullCollisionShape createSingleHullShape(Geometry geometry, Spatial spatial) {
        Mesh mesh = geometry.getMesh();
        if (mesh == null) {
            return null;
        }
        Transform K10 = C13723s.K(geometry, spatial);
        HullCollisionShape hullCollisionShape = new HullCollisionShape(mesh);
        hullCollisionShape.setScale(K10.getScale());
        return hullCollisionShape;
    }

    private static MeshCollisionShape createSingleMeshShape(Geometry geometry, Spatial spatial) {
        Mesh mesh = geometry.getMesh();
        if (mesh == null || !C13720p.t(mesh)) {
            return null;
        }
        Transform K10 = C13723s.K(geometry, spatial);
        MeshCollisionShape meshCollisionShape = new MeshCollisionShape(mesh);
        meshCollisionShape.setScale(K10.getScale());
        return meshCollisionShape;
    }

    public static CompoundCollisionShape createVhacdShape(Spatial spatial, VHACDParameters vHACDParameters, CompoundCollisionShape compoundCollisionShape) {
        C13702E.t(spatial, "model root");
        C13702E.t(vHACDParameters, "parameters");
        Mesh y10 = C13720p.y(spatial);
        FloatBuffer floatBuffer = y10.getFloatBuffer(VertexBuffer.Type.Position);
        int limit = floatBuffer.limit();
        float[] fArr = new float[limit];
        for (int i10 = 0; i10 < limit; i10++) {
            fArr[i10] = floatBuffer.get(i10);
        }
        IndexBuffer indicesAsList = y10.getIndicesAsList();
        int size = indicesAsList.size();
        int[] iArr = new int[size];
        for (int i11 = 0; i11 < size; i11++) {
            iArr[i11] = indicesAsList.get(i11);
        }
        List<VHACDHull> compute = VHACD.compute(fArr, iArr, vHACDParameters);
        if (compoundCollisionShape == null) {
            compoundCollisionShape = new CompoundCollisionShape(compute.size());
        }
        Iterator<VHACDHull> it = compute.iterator();
        while (it.hasNext()) {
            compoundCollisionShape.addChildShape(new HullCollisionShape(it.next()));
        }
        return compoundCollisionShape;
    }

    public static CompoundCollisionShape createVhacdShape(Spatial spatial, Vhacd4Parameters vhacd4Parameters, CompoundCollisionShape compoundCollisionShape) {
        C13702E.t(spatial, "model root");
        C13702E.t(vhacd4Parameters, "parameters");
        Mesh y10 = C13720p.y(spatial);
        FloatBuffer floatBuffer = y10.getFloatBuffer(VertexBuffer.Type.Position);
        int limit = floatBuffer.limit();
        float[] fArr = new float[limit];
        for (int i10 = 0; i10 < limit; i10++) {
            fArr[i10] = floatBuffer.get(i10);
        }
        IndexBuffer indicesAsList = y10.getIndicesAsList();
        int size = indicesAsList.size();
        int[] iArr = new int[size];
        for (int i11 = 0; i11 < size; i11++) {
            iArr[i11] = indicesAsList.get(i11);
        }
        List<Vhacd4Hull> compute = Vhacd4.compute(fArr, iArr, vhacd4Parameters);
        if (compoundCollisionShape == null) {
            compoundCollisionShape = new CompoundCollisionShape(compute.size());
        }
        Iterator<Vhacd4Hull> it = compute.iterator();
        while (it.hasNext()) {
            compoundCollisionShape.addChildShape(new HullCollisionShape(it.next()));
        }
        return compoundCollisionShape;
    }
}
