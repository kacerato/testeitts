package com.jme3.scene;

import com.jme3.asset.AssetNotFoundException;
import com.jme3.bounding.BoundingVolume;
import com.jme3.collision.Collidable;
import com.jme3.collision.CollisionResults;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.material.Material;
import com.jme3.math.Matrix4f;
import com.jme3.renderer.Camera;
import com.jme3.scene.Spatial;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.mesh.MorphTarget;
import com.jme3.util.TempVars;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.IdentityCloneFunction;
import java.io.IOException;
import java.util.Queue;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Geometry extends Spatial {
    static final boolean $assertionsDisabled = false;
    public static final int SAVABLE_VERSION = 1;
    private static final Logger logger = Logger.getLogger(Geometry.class.getName());
    protected transient Matrix4f cachedWorldMat;
    private boolean dirtyMorph;
    private MorphTarget fallbackMorphTarget;
    protected GeometryGroupNode groupNode;
    protected boolean ignoreTransform;
    protected transient int lodLevel;
    protected Material material;
    protected Mesh mesh;
    private float[] morphState;
    private int nbSimultaneousGPUMorph;
    protected int startIndex;

    public Geometry() {
        this(null);
    }

    public void associateWithGroupNode(GeometryGroupNode geometryGroupNode, int i10) {
        if (isGrouped()) {
            unassociateFromGroupNode();
        }
        this.groupNode = geometryGroupNode;
        this.startIndex = i10;
    }

    @Override
    public void breadthFirstTraversal(SceneGraphVisitor sceneGraphVisitor, Queue<Spatial> queue) {
    }

    @Override
    public boolean checkCulling(Camera camera) {
        if (!isGrouped()) {
            return super.checkCulling(camera);
        }
        setLastFrustumIntersection(Camera.FrustumIntersect.Outside);
        return false;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        Mesh mesh;
        super.cloneFields(cloner, obj);
        GeometryGroupNode geometryGroupNode = this.groupNode;
        if (geometryGroupNode != null) {
            if (cloner.isCloned(geometryGroupNode)) {
                this.groupNode = (GeometryGroupNode) cloner.clone(this.groupNode);
            } else {
                this.groupNode = null;
                this.startIndex = -1;
            }
        }
        this.cachedWorldMat = (Matrix4f) cloner.clone(this.cachedWorldMat);
        if (!(cloner.getCloneFunction(Mesh.class) instanceof IdentityCloneFunction) || (mesh = this.mesh) == null || mesh.getBuffer(VertexBuffer.Type.BindPosePosition) == null) {
            this.mesh = (Mesh) cloner.clone(this.mesh);
        } else {
            this.mesh = this.mesh.cloneForAnim();
        }
        this.material = (Material) cloner.clone(this.material);
    }

    @Override
    public int collideWith(Collidable collidable, CollisionResults collisionResults) {
        checkDoBoundUpdate();
        computeWorldMatrix();
        if (this.mesh == null) {
            return 0;
        }
        int collideWith = this.mesh.collideWith(collidable, this.cachedWorldMat, this.worldBound, collisionResults);
        int size = collisionResults.size();
        for (int size2 = collisionResults.size(); size2 < size; size2++) {
            collisionResults.getCollisionDirect(size2).setGeometry(this);
        }
        return collideWith;
    }

    public void computeWorldMatrix() {
        checkDoTransformUpdate();
        this.cachedWorldMat.loadIdentity();
        if (this.ignoreTransform) {
            return;
        }
        this.cachedWorldMat.setRotationQuaternion(this.worldTransform.getRotation());
        this.cachedWorldMat.setTranslation(this.worldTransform.getTranslation());
        TempVars tempVars = TempVars.get();
        Matrix4f matrix4f = tempVars.tempMat4;
        matrix4f.loadIdentity();
        matrix4f.scale(this.worldTransform.getScale());
        this.cachedWorldMat.multLocal(matrix4f);
        tempVars.release();
    }

    @Override
    public Spatial deepClone() {
        return super.deepClone();
    }

    @Override
    public void depthFirstTraversal(SceneGraphVisitor sceneGraphVisitor, Spatial.DFSMode dFSMode) {
        sceneGraphVisitor.visit(this);
    }

    public MorphTarget getFallbackMorphTarget() {
        return this.fallbackMorphTarget;
    }

    public int getLodLevel() {
        return this.lodLevel;
    }

    public Material getMaterial() {
        return this.material;
    }

    public Mesh getMesh() {
        return this.mesh;
    }

    public BoundingVolume getModelBound() {
        return this.mesh.getBound();
    }

    public float[] getMorphState() {
        if (this.morphState == null) {
            this.morphState = new float[this.mesh.getMorphTargets().length];
        }
        return this.morphState;
    }

    public int getNbSimultaneousGPUMorph() {
        return this.nbSimultaneousGPUMorph;
    }

    @Override
    public int getTriangleCount() {
        return this.mesh.getTriangleCount();
    }

    @Override
    public int getVertexCount() {
        return this.mesh.getVertexCount();
    }

    public Matrix4f getWorldMatrix() {
        return this.cachedWorldMat;
    }

    @Deprecated
    public boolean isBatched() {
        return isGrouped();
    }

    public boolean isDirtyMorph() {
        return this.dirtyMorph;
    }

    public boolean isGrouped() {
        return this.groupNode != null;
    }

    public boolean isIgnoreTransform() {
        return this.ignoreTransform;
    }

    public Spatial oldDeepClone() {
        Geometry clone = clone(true);
        clone.mesh = this.mesh.deepClone();
        return clone;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        Mesh mesh;
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.mesh = (Mesh) capsule.readSavable("mesh", null);
        this.material = null;
        String readString = capsule.readString("materialName", null);
        if (readString != null) {
            try {
                this.material = jmeImporter.getAssetManager().loadMaterial(readString);
            } catch (AssetNotFoundException unused) {
                Logger logger2 = logger;
                Level level = Level.FINE;
                if (logger2.isLoggable(level)) {
                    logger2.log(level, "Cannot locate {0} for geometry {1}", new Object[]{readString, this.key});
                }
            }
        }
        if (this.material == null) {
            this.material = (Material) capsule.readSavable("material", null);
        }
        this.ignoreTransform = capsule.readBoolean("ignoreTransform", false);
        if (capsule.getSavableVersion(Geometry.class) != 0 || (mesh = (Mesh) getUserData(UserData.JME_SHAREDMESH)) == null) {
            return;
        }
        getMesh().extractVertexData(mesh);
        setUserData(UserData.JME_SHAREDMESH, null);
    }

    @Override
    public boolean removeFromParent() {
        return super.removeFromParent();
    }

    public void setDirtyMorph(boolean z10) {
        this.dirtyMorph = z10;
    }

    public void setFallbackMorphTarget(MorphTarget morphTarget) {
        this.fallbackMorphTarget = morphTarget;
    }

    public void setIgnoreTransform(boolean z10) {
        this.ignoreTransform = z10;
    }

    @Override
    public void setLodLevel(int i10) {
        if (this.mesh.getNumLodLevels() == 0) {
            throw new IllegalStateException("LOD levels are not set on this mesh");
        }
        if (i10 < 0 || i10 >= this.mesh.getNumLodLevels()) {
            throw new IllegalArgumentException("LOD level is out of range: " + i10);
        }
        this.lodLevel = i10;
        if (isGrouped()) {
            this.groupNode.onMeshChange(this);
        }
    }

    @Override
    public void setMaterial(Material material) {
        this.material = material;
        this.nbSimultaneousGPUMorph = -1;
        if (isGrouped()) {
            this.groupNode.onMaterialChange(this);
        }
    }

    public void setMesh(Mesh mesh) {
        if (mesh == null) {
            throw new IllegalArgumentException();
        }
        this.mesh = mesh;
        setBoundRefresh();
        if (isGrouped()) {
            this.groupNode.onMeshChange(this);
        }
    }

    @Override
    public void setModelBound(BoundingVolume boundingVolume) {
        this.worldBound = null;
        this.mesh.setBound(boundingVolume);
        setBoundRefresh();
    }

    public void setMorphState(float[] fArr) {
        Mesh mesh = this.mesh;
        if (mesh == null || mesh.getMorphTargets().length == 0) {
            return;
        }
        int length = this.mesh.getMorphTargets().length;
        if (this.morphState == null) {
            this.morphState = new float[length];
        }
        float[] fArr2 = this.morphState;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        this.dirtyMorph = true;
    }

    public void setNbSimultaneousGPUMorph(int i10) {
        this.nbSimultaneousGPUMorph = i10;
    }

    @Override
    public void setParent(Node node) {
        super.setParent(node);
        if (node == null && isGrouped()) {
            unassociateFromGroupNode();
        }
    }

    public void unassociateFromGroupNode() {
        GeometryGroupNode geometryGroupNode = this.groupNode;
        if (geometryGroupNode != null) {
            geometryGroupNode.onGeometryUnassociated(this);
            this.groupNode = null;
            this.startIndex = -1;
        }
    }

    @Override
    public void updateModelBound() {
        this.mesh.updateBound();
        setBoundRefresh();
    }

    @Override
    public void updateWorldBound() {
        super.updateWorldBound();
        Mesh mesh = this.mesh;
        if (mesh == null) {
            throw new IllegalStateException("Geometry \"" + getName() + "\" has null mesh.");
        }
        if (mesh.getBound() != null) {
            if (this.ignoreTransform) {
                this.worldBound = this.mesh.getBound().clone(this.worldBound);
            } else {
                this.worldBound = this.mesh.getBound().transform(this.worldTransform, this.worldBound);
            }
        }
    }

    @Override
    public void updateWorldLightList() {
        super.updateWorldLightList();
        this.worldLights.sort(true);
    }

    @Override
    public void updateWorldTransforms() {
        super.updateWorldTransforms();
        computeWorldMatrix();
        if (isGrouped()) {
            this.groupNode.onTransformChange(this);
        }
        this.worldLights.sort(true);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.mesh, "mesh", (Savable) null);
        Material material = this.material;
        if (material != null) {
            capsule.write(material.getAssetName(), "materialName", (String) null);
        }
        capsule.write(this.material, "material", (Savable) null);
        capsule.write(this.ignoreTransform, "ignoreTransform", false);
    }

    public Geometry(String str) {
        super(str);
        this.lodLevel = 0;
        this.ignoreTransform = false;
        this.cachedWorldMat = new Matrix4f();
        this.startIndex = -1;
        this.dirtyMorph = true;
        this.nbSimultaneousGPUMorph = -1;
        setRequiresUpdates(Geometry.class != getClass());
    }

    public float getMorphState(String str) {
        int morphIndex = this.mesh.getMorphIndex(str);
        if (morphIndex < 0) {
            return -1.0f;
        }
        return this.morphState[morphIndex];
    }

    @Override
    public Geometry clone(boolean z10) {
        return (Geometry) super.clone(z10);
    }

    @Override
    public Geometry mo1263clone() {
        return clone(true);
    }

    public void setMorphState(String str, float f10) {
        int morphIndex = this.mesh.getMorphIndex(str);
        if (morphIndex >= 0) {
            this.morphState[morphIndex] = f10;
            this.dirtyMorph = true;
        }
    }

    public Geometry(String str, Mesh mesh) {
        this(str);
        if (mesh != null) {
            this.mesh = mesh;
            return;
        }
        throw new IllegalArgumentException("mesh cannot be null");
    }

    public Geometry(String str, Mesh mesh, Material material) {
        this(str, mesh);
        setMaterial(material);
    }
}
