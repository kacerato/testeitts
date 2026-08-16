package com.jme3.bullet.debug;

import com.jme3.bullet.debug.BulletDebugAppState;
import com.jme3.bullet.objects.PhysicsSoftBody;
import com.jme3.bullet.util.NativeSoftBodyUtil;
import com.jme3.material.Material;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.debug.Arrow;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.logging.Logger;
import jf.d;
import p000if.EnumC13714j;

class SoftBodyDebugControl extends AbstractPhysicsDebugControl {
    static final boolean $assertionsDisabled = false;
    private final PhysicsSoftBody body;
    private Geometry clustersGeometry;
    private Geometry facesGeometry;
    private Geometry linksGeometry;
    private Geometry pinsGeometry;
    private Geometry[] velocityGeometries;
    public static final Logger logger = Logger.getLogger(SoftBodyDebugControl.class.getName());
    private static final Quaternion rotateIdentity = new Quaternion();
    private static FloatBuffer tmpLocations = null;
    private static FloatBuffer tmpVelocities = null;
    private static final Vector3f tmpCenter = new Vector3f();
    private static final Vector3f tmpVector = new Vector3f();

    public SoftBodyDebugControl(BulletDebugAppState bulletDebugAppState, PhysicsSoftBody physicsSoftBody) {
        super(bulletDebugAppState);
        this.clustersGeometry = null;
        this.facesGeometry = null;
        this.linksGeometry = null;
        this.pinsGeometry = null;
        this.velocityGeometries = null;
        this.body = physicsSoftBody;
    }

    private boolean areVelocitiesSized() {
        Geometry[] geometryArr = this.velocityGeometries;
        return (geometryArr != null ? geometryArr.length : 0) == countVelocitiesToVisualize();
    }

    private int countClustersToVisualize() {
        BulletDebugAppState.DebugAppStateFilter clusterFilter = ((SoftDebugAppState) this.debugAppState).getClusterFilter();
        if (clusterFilter == null || !clusterFilter.displayObject(this.body)) {
            return 0;
        }
        return this.body.countClusters();
    }

    private static int countElements(Geometry geometry) {
        if (geometry != null) {
            return geometry.getMesh().getTriangleCount();
        }
        return 0;
    }

    private int countVelocitiesToVisualize() {
        BulletDebugAppState.DebugAppStateFilter velocityVectorFilter = ((SoftDebugAppState) this.debugAppState).getConfiguration().getVelocityVectorFilter();
        if (velocityVectorFilter == null || !velocityVectorFilter.displayObject(this.body)) {
            return 0;
        }
        int countClustersToVisualize = countClustersToVisualize();
        return countClustersToVisualize == 0 ? this.body.countNodes() : countClustersToVisualize;
    }

    private static int countVertices(Geometry geometry) {
        if (geometry != null) {
            return geometry.getMesh().getVertexCount();
        }
        return 0;
    }

    private Geometry createClustersGeometry() {
        int countClustersToVisualize = countClustersToVisualize();
        if (countClustersToVisualize <= 0) {
            return null;
        }
        Geometry geometry = new Geometry(((Object) this.body) + " clusters", createPointsMesh(countClustersToVisualize));
        geometry.setShadowMode(RenderQueue.ShadowMode.Off);
        geometry.setMaterial(((SoftDebugAppState) this.debugAppState).getClusterMaterial());
        return geometry;
    }

    private Geometry createFacesGeometry() {
        if (this.body.countFaces() <= 0) {
            return null;
        }
        Geometry geometry = new Geometry(((Object) this.body) + " faces", createFacesMesh());
        Material debugMaterial = this.body.getDebugMaterial();
        if (debugMaterial == null) {
            debugMaterial = ((SoftDebugAppState) this.debugAppState).getFaceMaterial(this.body.debugNumSides());
        }
        geometry.setMaterial(debugMaterial);
        return geometry;
    }

    private Mesh createFacesMesh() {
        Mesh mesh = new Mesh();
        mesh.setBuffer(VertexBuffer.Type.Index, 3, this.body.copyFaces(null));
        DebugMeshInitListener debugMeshInitListener = this.body.debugMeshInitListener();
        EnumC13714j debugMeshNormals = this.body.debugMeshNormals();
        if (debugMeshInitListener == null) {
            int countNodes = this.body.countNodes() * 3;
            mesh.setBuffer(VertexBuffer.Type.Position, 3, BufferUtils.createFloatBuffer(countNodes));
            if (debugMeshNormals != EnumC13714j.None) {
                mesh.setBuffer(VertexBuffer.Type.Normal, 3, BufferUtils.createFloatBuffer(countNodes));
            }
        } else {
            mesh.setBuffer(VertexBuffer.Type.Position, 3, this.body.copyLocations(null));
            if (debugMeshNormals != EnumC13714j.None) {
                mesh.setBuffer(VertexBuffer.Type.Normal, 3, this.body.copyNormals(null));
            }
            mesh.updateBound();
            debugMeshInitListener.debugMeshInit(mesh);
        }
        mesh.setMode(Mesh.Mode.Triangles);
        mesh.setStreamed();
        return mesh;
    }

    private Geometry createLinksGeometry() {
        if (this.body.countFaces() != 0 || this.body.countLinks() <= 0) {
            return null;
        }
        Geometry geometry = new Geometry(((Object) this.body) + " links", createLinksMesh());
        geometry.setMaterial(((SoftDebugAppState) this.debugAppState).getLinkMaterial());
        return geometry;
    }

    private Mesh createLinksMesh() {
        Mesh mesh = new Mesh();
        mesh.setBuffer(VertexBuffer.Type.Index, 2, this.body.copyLinks(null));
        mesh.setBuffer(VertexBuffer.Type.Position, 3, BufferUtils.createFloatBuffer(this.body.countNodes() * 3));
        mesh.setMode(Mesh.Mode.Lines);
        mesh.setStreamed();
        return mesh;
    }

    private Geometry createPinsGeometry() {
        int countPinnedNodes = this.body.countPinnedNodes();
        if (countPinnedNodes <= 0) {
            return null;
        }
        Geometry geometry = new Geometry(((Object) this.body) + " pins", createPointsMesh(countPinnedNodes));
        geometry.setShadowMode(RenderQueue.ShadowMode.Off);
        geometry.setMaterial(((SoftDebugAppState) this.debugAppState).getPinMaterial());
        return geometry;
    }

    private static Mesh createPointsMesh(int i10) {
        Mesh mesh = new Mesh();
        mesh.setBuffer(VertexBuffer.Type.Position, 3, BufferUtils.createFloatBuffer(i10 * 3));
        mesh.setMode(Mesh.Mode.Points);
        mesh.setStreamed();
        return mesh;
    }

    private Geometry[] createVelocityGeometries() {
        int countVelocitiesToVisualize = countVelocitiesToVisualize();
        if (countVelocitiesToVisualize <= 0) {
            return null;
        }
        Geometry[] geometryArr = new Geometry[countVelocitiesToVisualize];
        for (int i10 = 0; i10 < countVelocitiesToVisualize; i10++) {
            Geometry geometry = new Geometry(String.format("velocity of %s[%d]", this.body, Integer.valueOf(i10)), new Arrow(tmpVector));
            geometryArr[i10] = geometry;
            geometry.setMaterial(this.debugAppState.getVelocityVectorMaterial());
            geometry.setShadowMode(RenderQueue.ShadowMode.Off);
        }
        return geometryArr;
    }

    private boolean isClustersGeometrySized() {
        return countVertices(this.clustersGeometry) == countClustersToVisualize();
    }

    private boolean isFacesGeometrySized() {
        int countFaces = this.body.countFaces();
        return countElements(this.facesGeometry) == countFaces && countVertices(this.facesGeometry) == (countFaces == 0 ? 0 : this.body.countNodes());
    }

    private boolean isLinksGeometrySized() {
        int i10;
        int i11;
        if (this.body.countFaces() != 0 || this.body.countLinks() <= 0) {
            i10 = 0;
            i11 = 0;
        } else {
            i10 = this.body.countLinks();
            i11 = this.body.countNodes();
        }
        return countElements(this.linksGeometry) == i10 && countVertices(this.linksGeometry) == i11;
    }

    private boolean isPinsGeometrySized() {
        return countVertices(this.pinsGeometry) == this.body.countPinnedNodes();
    }

    @Override
    public void controlUpdate(float f10) {
        Node node = (Node) this.spatial;
        if (!isClustersGeometrySized()) {
            Geometry geometry = this.clustersGeometry;
            if (geometry != null) {
                node.detachChild(geometry);
            }
            Geometry createClustersGeometry = createClustersGeometry();
            this.clustersGeometry = createClustersGeometry;
            if (createClustersGeometry != null) {
                node.attachChild(createClustersGeometry);
            }
        }
        if (!isFacesGeometrySized()) {
            Geometry geometry2 = this.facesGeometry;
            if (geometry2 != null) {
                node.detachChild(geometry2);
            }
            Geometry createFacesGeometry = createFacesGeometry();
            this.facesGeometry = createFacesGeometry;
            if (createFacesGeometry != null) {
                node.attachChild(createFacesGeometry);
            }
        }
        if (!isLinksGeometrySized()) {
            Geometry geometry3 = this.linksGeometry;
            if (geometry3 != null) {
                node.detachChild(geometry3);
            }
            Geometry createLinksGeometry = createLinksGeometry();
            this.linksGeometry = createLinksGeometry;
            if (createLinksGeometry != null) {
                node.attachChild(createLinksGeometry);
            }
        }
        if (!isPinsGeometrySized()) {
            Geometry geometry4 = this.pinsGeometry;
            if (geometry4 != null) {
                node.detachChild(geometry4);
            }
            Geometry createPinsGeometry = createPinsGeometry();
            this.pinsGeometry = createPinsGeometry;
            if (createPinsGeometry != null) {
                node.attachChild(createPinsGeometry);
            }
        }
        if (!areVelocitiesSized()) {
            Geometry[] geometryArr = this.velocityGeometries;
            if (geometryArr != null) {
                for (Geometry geometry5 : geometryArr) {
                    node.detachChild(geometry5);
                }
            }
            Geometry[] createVelocityGeometries = createVelocityGeometries();
            this.velocityGeometries = createVelocityGeometries;
            if (createVelocityGeometries != null) {
                for (Geometry geometry6 : createVelocityGeometries) {
                    node.attachChild(geometry6);
                }
            }
        }
        Geometry geometry7 = this.clustersGeometry;
        if (geometry7 != null) {
            NativeSoftBodyUtil.updateClusterMesh(this.body, geometry7.getMesh(), true);
        }
        boolean z10 = this.body.debugMeshNormals() != EnumC13714j.None;
        Geometry geometry8 = this.linksGeometry;
        if (geometry8 != null) {
            NativeSoftBodyUtil.updateMesh(this.body, (IntBuffer) null, geometry8.getMesh(), true, z10, (Transform) null);
        }
        Geometry geometry9 = this.facesGeometry;
        if (geometry9 != null) {
            NativeSoftBodyUtil.updateMesh(this.body, (IntBuffer) null, geometry9.getMesh(), true, z10, (Transform) null);
            Material debugMaterial = this.body.getDebugMaterial();
            if (debugMaterial == null) {
                debugMaterial = ((SoftDebugAppState) this.debugAppState).getFaceMaterial(this.body.debugNumSides());
            }
            this.facesGeometry.setMaterial(debugMaterial);
        }
        Geometry geometry10 = this.pinsGeometry;
        if (geometry10 != null) {
            NativeSoftBodyUtil.updatePinMesh(this.body, geometry10.getMesh(), true);
        }
        this.body.getPhysicsLocation(tmpCenter);
        Geometry[] geometryArr2 = this.velocityGeometries;
        if (geometryArr2 != null) {
            int length = geometryArr2.length;
            int i10 = length * 3;
            FloatBuffer floatBuffer = tmpLocations;
            if (floatBuffer == null || i10 > floatBuffer.capacity()) {
                tmpLocations = BufferUtils.createFloatBuffer(i10);
            }
            FloatBuffer floatBuffer2 = tmpVelocities;
            if (floatBuffer2 == null || i10 > floatBuffer2.capacity()) {
                tmpVelocities = BufferUtils.createFloatBuffer(i10);
            }
            if (countClustersToVisualize() > 0) {
                this.body.copyClusterCenters(tmpLocations);
                this.body.copyClusterVelocities(tmpVelocities);
            } else {
                this.body.copyLocations(tmpLocations);
                this.body.copyVelocities(tmpVelocities);
            }
            for (int i11 = 0; i11 < length; i11++) {
                int i12 = i11 * 3;
                Geometry geometry11 = this.velocityGeometries[i11];
                FloatBuffer floatBuffer3 = tmpLocations;
                Vector3f vector3f = tmpVector;
                d.g(floatBuffer3, i12, vector3f);
                vector3f.subtractLocal(tmpCenter);
                geometry11.setLocalTranslation(vector3f);
                Arrow arrow = (Arrow) geometry11.getMesh();
                d.g(tmpVelocities, i12, vector3f);
                arrow.setArrowExtent(vector3f);
            }
        }
        applyPhysicsTransform(tmpCenter, rotateIdentity);
    }

    @Override
    public void setSpatial(Spatial spatial) {
        Spatial spatial2;
        if (spatial instanceof Node) {
            spatial.setCullHint(Spatial.CullHint.Never);
            Node node = (Node) spatial;
            Geometry geometry = this.clustersGeometry;
            if (geometry != null) {
                node.attachChild(geometry);
            }
            Geometry geometry2 = this.facesGeometry;
            if (geometry2 != null) {
                node.attachChild(geometry2);
            }
            Geometry geometry3 = this.linksGeometry;
            if (geometry3 != null) {
                node.attachChild(geometry3);
            }
        } else if (spatial == null && (spatial2 = this.spatial) != null) {
            Node node2 = (Node) spatial2;
            Geometry geometry4 = this.clustersGeometry;
            if (geometry4 != null) {
                node2.detachChild(geometry4);
            }
            Geometry geometry5 = this.facesGeometry;
            if (geometry5 != null) {
                node2.detachChild(geometry5);
            }
            Geometry geometry6 = this.linksGeometry;
            if (geometry6 != null) {
                node2.detachChild(geometry6);
            }
        }
        super.setSpatial(spatial);
    }
}
