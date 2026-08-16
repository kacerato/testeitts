package com.jme3.scene;

import com.jme3.anim.util.HasLocalTransform;
import com.jme3.asset.AssetKey;
import com.jme3.asset.CloneableSmartAsset;
import com.jme3.bounding.BoundingVolume;
import com.jme3.collision.Collidable;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.light.Light;
import com.jme3.light.LightList;
import com.jme3.material.MatParamOverride;
import com.jme3.material.Material;
import com.jme3.math.Matrix3f;
import com.jme3.math.Matrix4f;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.control.Control;
import com.jme3.scene.threadwarden.SceneGraphThreadWarden;
import com.jme3.util.SafeArrayList;
import com.jme3.util.TempVars;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.IdentityCloneFunction;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.function.Predicate;
import java.util.logging.Logger;

public abstract class Spatial implements Savable, Cloneable, Collidable, CloneableSmartAsset, JmeCloneable, HasLocalTransform {
    static final boolean $assertionsDisabled = false;
    protected static final int RF_BOUND = 2;
    protected static final int RF_CHILD_LIGHTLIST = 8;
    protected static final int RF_GLOBAL_LIGHTS = 32;
    protected static final int RF_LIGHTLIST = 4;
    protected static final int RF_MATPARAM_OVERRIDE = 16;
    protected static final int RF_TRANSFORM = 1;
    private static final Logger logger = Logger.getLogger(Spatial.class.getName());
    protected BatchHint batchHint;
    protected SafeArrayList<Control> controls;
    protected CullHint cullHint;
    protected transient Camera.FrustumIntersect frustrumIntersects;
    protected AssetKey key;
    protected LightList localLights;
    protected SafeArrayList<MatParamOverride> localOverrides;
    protected Transform localTransform;
    protected String name;
    protected transient Node parent;
    protected RenderQueue.Bucket queueBucket;
    public transient float queueDistance;
    protected transient int refreshFlags;
    private boolean requiresUpdates;
    protected RenderQueue.ShadowMode shadowMode;
    protected HashMap<String, Savable> userData;
    protected BoundingVolume worldBound;
    protected transient LightList worldLights;
    protected SafeArrayList<MatParamOverride> worldOverrides;
    protected Transform worldTransform;

    public enum BatchHint {
        Inherit,
        Always,
        Never
    }

    public enum CullHint {
        Inherit,
        Dynamic,
        Always,
        Never
    }

    public enum DFSMode {
        PRE_ORDER,
        POST_ORDER
    }

    public Spatial() {
        this(null);
    }

    public static boolean lambda$updateWorldLightList$0(Light light) {
        return !light.isGlobal();
    }

    public static boolean lambda$updateWorldLightList$1(Light light) {
        return !light.isGlobal();
    }

    private void runControlUpdate(float f10) {
        if (this.controls.isEmpty()) {
            return;
        }
        for (Control control : this.controls.getArray()) {
            control.update(f10);
        }
    }

    public void addControl(Control control) {
        boolean requiresUpdates = requiresUpdates();
        this.controls.add(control);
        control.setSpatial(this);
        boolean requiresUpdates2 = requiresUpdates();
        Node node = this.parent;
        if (node == null || requiresUpdates == requiresUpdates2) {
            return;
        }
        node.invalidateUpdateList();
    }

    public void addControlAt(int i10, Control control) {
        if (control == null) {
            throw new IllegalArgumentException("null control");
        }
        int numControls = getNumControls();
        if (i10 < 0 || i10 > numControls) {
            throw new IndexOutOfBoundsException("index=" + i10 + " for numControls=" + numControls);
        }
        if (this.controls.contains(control)) {
            throw new IllegalStateException("Control is already added here.");
        }
        addControl(control);
        if (i10 < numControls) {
            this.controls.remove(control);
            this.controls.add(i10, control);
        }
    }

    public void addLight(Light light) {
        this.localLights.add(light);
        setLightListRefresh();
    }

    public void addMatParamOverride(MatParamOverride matParamOverride) {
        if (matParamOverride == null) {
            throw new IllegalArgumentException("override cannot be null");
        }
        this.localOverrides.add(matParamOverride);
        setMatParamOverrideRefresh();
    }

    public void breadthFirstTraversal(SceneGraphVisitor sceneGraphVisitor) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(this);
        while (!linkedList.isEmpty()) {
            Spatial poll = linkedList.poll();
            sceneGraphVisitor.visit(poll);
            poll.breadthFirstTraversal(sceneGraphVisitor, linkedList);
        }
    }

    public abstract void breadthFirstTraversal(SceneGraphVisitor sceneGraphVisitor, Queue<Spatial> queue);

    public Spatial center() {
        setLocalTranslation(getWorldTranslation().subtract(getWorldBound().getCenter()));
        return this;
    }

    public boolean checkCulling(Camera camera) {
        if (this.refreshFlags != 0) {
            throw new IllegalStateException("Scene graph is not properly updated for rendering.\nState was changed after rootNode.updateGeometricState() call. \nMake sure you do not modify the scene from another thread!\nProblem spatial name: " + getName() + "\n" + SceneGraphThreadWarden.getTurnOnAssertsPrompt());
        }
        CullHint cullHint = getCullHint();
        if (cullHint == CullHint.Always) {
            setLastFrustumIntersection(Camera.FrustumIntersect.Outside);
            return false;
        }
        if (cullHint == CullHint.Never) {
            setLastFrustumIntersection(Camera.FrustumIntersect.Intersects);
            return true;
        }
        Node node = this.parent;
        Camera.FrustumIntersect frustumIntersect = node != null ? node.frustrumIntersects : Camera.FrustumIntersect.Intersects;
        this.frustrumIntersects = frustumIntersect;
        if (frustumIntersect == Camera.FrustumIntersect.Intersects) {
            if (getQueueBucket() == RenderQueue.Bucket.Gui) {
                return camera.containsGui(getWorldBound());
            }
            this.frustrumIntersects = camera.contains(getWorldBound());
        }
        return this.frustrumIntersects != Camera.FrustumIntersect.Outside;
    }

    public void checkDoBoundUpdate() {
        if ((this.refreshFlags & 2) == 0) {
            return;
        }
        checkDoTransformUpdate();
        if (this instanceof Node) {
            Node node = (Node) this;
            int quantity = node.getQuantity();
            for (int i10 = 0; i10 < quantity; i10++) {
                node.getChild(i10).checkDoBoundUpdate();
            }
        }
        updateWorldBound();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0045  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x003d -> B:13:0x0042). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void checkDoTransformUpdate() {
        if ((this.refreshFlags & 1) == 0) {
            return;
        }
        if (this.parent == null) {
            this.worldTransform.set(this.localTransform);
            this.refreshFlags &= -2;
            return;
        }
        TempVars tempVars = TempVars.get();
        Spatial[] spatialArr = tempVars.spatialStack;
        int i10 = 0;
        Spatial spatial = this;
        while (true) {
            Node node = spatial.parent;
            if (node == null) {
                spatial.worldTransform.set(spatial.localTransform);
                spatial.refreshFlags &= -2;
                break;
            } else {
                spatialArr[i10] = spatial;
                if ((node.refreshFlags & 1) == 0) {
                    break;
                }
                i10++;
                spatial = node;
            }
        }
        if (i10 < 0) {
            spatialArr[i10].updateWorldTransforms();
            i10--;
            if (i10 < 0) {
                tempVars.release();
            }
        }
    }

    public void clearMatParamOverrides() {
        if (!this.localOverrides.isEmpty()) {
            setMatParamOverrideRefresh();
        }
        this.localOverrides.clear();
    }

    public void cloneFields(Cloner cloner, Object obj) {
        this.parent = (Node) cloner.clone(this.parent);
        this.worldBound = (BoundingVolume) cloner.clone(this.worldBound);
        this.worldLights = (LightList) cloner.clone(this.worldLights);
        this.localLights = (LightList) cloner.clone(this.localLights);
        this.worldTransform = (Transform) cloner.clone(this.worldTransform);
        this.localTransform = (Transform) cloner.clone(this.localTransform);
        this.worldOverrides = (SafeArrayList) cloner.clone(this.worldOverrides);
        this.localOverrides = (SafeArrayList) cloner.clone(this.localOverrides);
        this.controls = (SafeArrayList) cloner.clone(this.controls);
        HashMap<String, Savable> hashMap = this.userData;
        if (hashMap != null) {
            HashMap<String, Savable> hashMap2 = (HashMap) hashMap.clone();
            this.userData = hashMap2;
            for (Map.Entry<String, Savable> entry : hashMap2.entrySet()) {
                Savable value = entry.getValue();
                if (value instanceof Cloneable) {
                    entry.setValue((Savable) cloner.clone(value));
                }
            }
        }
    }

    public Spatial deepClone() {
        Cloner cloner = new Cloner();
        cloner.setClonedValue(this.parent, null);
        Spatial spatial = (Spatial) cloner.clone(this);
        spatial.setTransformRefresh();
        spatial.setLightListRefresh();
        spatial.setMatParamOverrideRefresh();
        return spatial;
    }

    public void depthFirstTraversal(SceneGraphVisitor sceneGraphVisitor) {
        depthFirstTraversal(sceneGraphVisitor, DFSMode.POST_ORDER);
    }

    public abstract void depthFirstTraversal(SceneGraphVisitor sceneGraphVisitor, DFSMode dFSMode);

    public void forceRefresh(boolean z10, boolean z11, boolean z12) {
        if (z10) {
            setTransformRefresh();
        }
        if (z11) {
            setBoundRefresh();
        }
        if (z12) {
            setLightListRefresh();
        }
    }

    public BatchHint getBatchHint() {
        BatchHint batchHint = this.batchHint;
        if (batchHint != BatchHint.Inherit) {
            return batchHint;
        }
        Node node = this.parent;
        return node != null ? node.getBatchHint() : BatchHint.Always;
    }

    public <T extends Control> T getControl(Class<T> cls) {
        for (Control control : this.controls.getArray()) {
            T t10 = (T) control;
            if (cls.isAssignableFrom(t10.getClass())) {
                return t10;
            }
        }
        return null;
    }

    public CullHint getCullHint() {
        CullHint cullHint = this.cullHint;
        if (cullHint != CullHint.Inherit) {
            return cullHint;
        }
        Node node = this.parent;
        return node != null ? node.getCullHint() : CullHint.Dynamic;
    }

    @Override
    public AssetKey getKey() {
        return this.key;
    }

    public Camera.FrustumIntersect getLastFrustumIntersection() {
        return this.frustrumIntersects;
    }

    public BatchHint getLocalBatchHint() {
        return this.batchHint;
    }

    public CullHint getLocalCullHint() {
        return this.cullHint;
    }

    public LightList getLocalLightList() {
        return this.localLights;
    }

    public SafeArrayList<MatParamOverride> getLocalMatParamOverrides() {
        return this.localOverrides;
    }

    public RenderQueue.Bucket getLocalQueueBucket() {
        return this.queueBucket;
    }

    public Quaternion getLocalRotation() {
        return this.localTransform.getRotation();
    }

    public Vector3f getLocalScale() {
        return this.localTransform.getScale();
    }

    public RenderQueue.ShadowMode getLocalShadowMode() {
        return this.shadowMode;
    }

    public Matrix4f getLocalToWorldMatrix(Matrix4f matrix4f) {
        if (matrix4f == null) {
            matrix4f = new Matrix4f();
        } else {
            matrix4f.loadIdentity();
        }
        matrix4f.scale(getWorldScale());
        matrix4f.multLocal(getWorldRotation());
        matrix4f.setTranslation(getWorldTranslation());
        return matrix4f;
    }

    @Override
    public Transform getLocalTransform() {
        return this.localTransform;
    }

    public Vector3f getLocalTranslation() {
        return this.localTransform.getTranslation();
    }

    public String getName() {
        return this.name;
    }

    public int getNumControls() {
        return this.controls.size();
    }

    public Node getParent() {
        return this.parent;
    }

    public RenderQueue.Bucket getQueueBucket() {
        RenderQueue.Bucket bucket = this.queueBucket;
        if (bucket != RenderQueue.Bucket.Inherit) {
            return bucket;
        }
        Node node = this.parent;
        return node != null ? node.getQueueBucket() : RenderQueue.Bucket.Opaque;
    }

    public RenderQueue.ShadowMode getShadowMode() {
        RenderQueue.ShadowMode shadowMode = this.shadowMode;
        if (shadowMode != RenderQueue.ShadowMode.Inherit) {
            return shadowMode;
        }
        Node node = this.parent;
        return node != null ? node.getShadowMode() : RenderQueue.ShadowMode.Off;
    }

    public abstract int getTriangleCount();

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T getUserData(String str) {
        HashMap<String, Savable> hashMap = this.userData;
        if (hashMap == null) {
            return null;
        }
        T t10 = (T) hashMap.get(str);
        return t10 instanceof UserData ? (T) ((UserData) t10).getValue() : t10;
    }

    public Collection<String> getUserDataKeys() {
        HashMap<String, Savable> hashMap = this.userData;
        return hashMap != null ? hashMap.o() : Collections.EMPTY_SET;
    }

    public abstract int getVertexCount();

    public BoundingVolume getWorldBound() {
        checkDoBoundUpdate();
        return this.worldBound;
    }

    public LightList getWorldLightList() {
        return this.worldLights;
    }

    public SafeArrayList<MatParamOverride> getWorldMatParamOverrides() {
        return this.worldOverrides;
    }

    public Quaternion getWorldRotation() {
        checkDoTransformUpdate();
        return this.worldTransform.getRotation();
    }

    public Vector3f getWorldScale() {
        checkDoTransformUpdate();
        return this.worldTransform.getScale();
    }

    public Transform getWorldTransform() {
        checkDoTransformUpdate();
        return this.worldTransform;
    }

    public Vector3f getWorldTranslation() {
        checkDoTransformUpdate();
        return this.worldTransform.getTranslation();
    }

    public boolean hasAncestor(Node node) {
        Node node2 = this.parent;
        if (node2 == null) {
            return false;
        }
        if (node2.equals(node)) {
            return true;
        }
        return this.parent.hasAncestor(node);
    }

    public boolean hasGlobalLights() {
        for (int i10 = 0; i10 < this.localLights.size(); i10++) {
            if (this.localLights.get(i10).isGlobal()) {
                return true;
            }
        }
        return false;
    }

    public Vector3f localToWorld(Vector3f vector3f, Vector3f vector3f2) {
        checkDoTransformUpdate();
        return this.worldTransform.transformVector(vector3f, vector3f2);
    }

    public void lookAt(Vector3f vector3f, Vector3f vector3f2) {
        Vector3f worldTranslation = getWorldTranslation();
        TempVars tempVars = TempVars.get();
        Vector3f vector3f3 = tempVars.vect4;
        vector3f3.set(vector3f).subtractLocal(worldTranslation);
        getLocalRotation().lookAt(vector3f3, vector3f2);
        if (getParent() != null) {
            Quaternion multLocal = tempVars.quat1.set(this.parent.getWorldRotation()).inverseLocal().multLocal(getLocalRotation());
            multLocal.normalizeLocal();
            setLocalRotation(multLocal);
        }
        tempVars.release();
        setTransformRefresh();
    }

    public boolean matches(Class<? extends Spatial> cls, String str) {
        if (cls != null && !cls.isInstance(this)) {
            return false;
        }
        if (str == null) {
            return true;
        }
        String str2 = this.name;
        return str2 != null && str2.matches(str);
    }

    public Spatial move(float f10, float f11, float f12) {
        this.localTransform.getTranslation().addLocal(f10, f11, f12);
        setTransformRefresh();
        return this;
    }

    @Deprecated
    public Spatial oldClone(boolean z10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.name = capsule.readString("name", null);
        this.worldBound = (BoundingVolume) capsule.readSavable("world_bound", null);
        this.cullHint = (CullHint) capsule.readEnum("cull_mode", CullHint.class, CullHint.Inherit);
        this.batchHint = (BatchHint) capsule.readEnum("batch_hint", BatchHint.class, BatchHint.Inherit);
        this.queueBucket = (RenderQueue.Bucket) capsule.readEnum("queue", RenderQueue.Bucket.class, RenderQueue.Bucket.Inherit);
        this.shadowMode = (RenderQueue.ShadowMode) capsule.readEnum("shadow_mode", RenderQueue.ShadowMode.class, RenderQueue.ShadowMode.Inherit);
        this.localTransform = (Transform) capsule.readSavable("transform", Transform.IDENTITY);
        LightList lightList = (LightList) capsule.readSavable("lights", null);
        this.localLights = lightList;
        lightList.setOwner(this);
        ArrayList readSavableArrayList = capsule.readSavableArrayList("overrides", null);
        if (readSavableArrayList == null) {
            this.localOverrides = new SafeArrayList<>(MatParamOverride.class);
        } else {
            this.localOverrides = new SafeArrayList<>(MatParamOverride.class, readSavableArrayList);
        }
        this.worldOverrides = new SafeArrayList<>(MatParamOverride.class);
        this.controls.addAll(0, capsule.readSavableArrayList("controlsList", null));
        this.userData = (HashMap) capsule.readStringSavableMap("user_data", null);
    }

    public void removeControl(Class<? extends Control> cls) {
        boolean requiresUpdates = requiresUpdates();
        int i10 = 0;
        while (true) {
            if (i10 >= this.controls.size()) {
                break;
            }
            if (cls.isAssignableFrom(this.controls.get(i10).getClass())) {
                this.controls.remove(i10).setSpatial(null);
                break;
            }
            i10++;
        }
        boolean requiresUpdates2 = requiresUpdates();
        Node node = this.parent;
        if (node == null || requiresUpdates == requiresUpdates2) {
            return;
        }
        node.invalidateUpdateList();
    }

    public boolean removeFromParent() {
        Node node = this.parent;
        if (node == null) {
            return false;
        }
        node.detachChild(this);
        return true;
    }

    public void removeLight(Light light) {
        setLightListRefresh();
        this.localLights.remove(light);
    }

    public void removeMatParamOverride(MatParamOverride matParamOverride) {
        if (this.localOverrides.remove(matParamOverride)) {
            setMatParamOverrideRefresh();
        }
    }

    public boolean requiresUpdates() {
        return this.requiresUpdates || !this.controls.isEmpty();
    }

    public Spatial rotate(Quaternion quaternion) {
        this.localTransform.getRotation().multLocal(quaternion);
        setTransformRefresh();
        return this;
    }

    public void rotateUpTo(Vector3f vector3f) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f2 = tempVars.vect1;
        Quaternion quaternion = tempVars.quat1;
        Vector3f vector3f3 = vector3f2.set(Vector3f.UNIT_Y);
        Quaternion rotation = this.localTransform.getRotation();
        rotation.multLocal(vector3f3);
        quaternion.fromAngleNormalAxis(vector3f3.angleBetween(vector3f), vector3f3.crossLocal(vector3f).normalizeLocal());
        quaternion.mult(rotation, rotation);
        tempVars.release();
        setTransformRefresh();
    }

    public void runControlRender(RenderManager renderManager, ViewPort viewPort) {
        if (this.controls.isEmpty()) {
            return;
        }
        for (Control control : this.controls.getArray()) {
            control.render(renderManager, viewPort);
        }
    }

    public Spatial scale(float f10) {
        return scale(f10, f10, f10);
    }

    public void setBatchHint(BatchHint batchHint) {
        this.batchHint = batchHint;
    }

    public void setBoundRefresh() {
        this.refreshFlags |= 2;
        for (Node node = this.parent; node != null; node = node.parent) {
            int i10 = node.refreshFlags;
            if ((i10 & 2) != 0) {
                return;
            }
            node.refreshFlags = i10 | 2;
        }
    }

    public void setCullHint(CullHint cullHint) {
        this.cullHint = cullHint;
    }

    @Override
    public void setKey(AssetKey assetKey) {
        this.key = assetKey;
    }

    public void setLastFrustumIntersection(Camera.FrustumIntersect frustumIntersect) {
        this.frustrumIntersects = frustumIntersect;
    }

    public void setLightListRefresh() {
        this.refreshFlags |= 4;
        boolean hasGlobalLights = hasGlobalLights();
        if (hasGlobalLights) {
            this.refreshFlags |= 32;
        }
        for (Node node = this.parent; node != null; node = node.parent) {
            int i10 = node.refreshFlags;
            if ((i10 & 8) != 0 && (!hasGlobalLights || (i10 & 32) != 0)) {
                return;
            }
            node.refreshFlags = i10 | 8;
            if (hasGlobalLights) {
                node.refreshFlags = i10 | 44;
            }
        }
    }

    public void setLocalRotation(Matrix3f matrix3f) {
        this.localTransform.getRotation().fromRotationMatrix(matrix3f);
        setTransformRefresh();
    }

    public void setLocalScale(float f10) {
        this.localTransform.setScale(f10);
        setTransformRefresh();
    }

    @Override
    public void setLocalTransform(Transform transform) {
        this.localTransform.set(transform);
        setTransformRefresh();
    }

    public void setLocalTranslation(Vector3f vector3f) {
        this.localTransform.setTranslation(vector3f);
        setTransformRefresh();
    }

    public void setLodLevel(int i10) {
    }

    public void setMatParamOverrideRefresh() {
        this.refreshFlags |= 16;
        for (Node node = this.parent; node != null; node = node.parent) {
            int i10 = node.refreshFlags;
            if ((i10 & 16) != 0) {
                return;
            }
            node.refreshFlags = i10 | 16;
        }
    }

    public void setMaterial(Material material) {
    }

    public abstract void setModelBound(BoundingVolume boundingVolume);

    public void setName(String str) {
        this.name = str;
    }

    public void setParent(Node node) {
        this.parent = node;
    }

    public void setQueueBucket(RenderQueue.Bucket bucket) {
        this.queueBucket = bucket;
    }

    public void setRequiresUpdates(boolean z10) {
        if (this.parent != null) {
            throw new IllegalStateException("setRequiresUpdates() cannot be called once attached.");
        }
        this.requiresUpdates = z10;
    }

    public void setShadowMode(RenderQueue.ShadowMode shadowMode) {
        this.shadowMode = shadowMode;
    }

    public void setTransformRefresh() {
        this.refreshFlags |= 1;
        setBoundRefresh();
    }

    public void setUserData(String str, Object obj) {
        if (obj != null) {
            if (this.userData == null) {
                this.userData = new HashMap<>();
            }
            if (obj instanceof Savable) {
                this.userData.put(str, (Savable) obj);
                return;
            } else {
                this.userData.put(str, new UserData(UserData.getObjectType(obj), obj));
                return;
            }
        }
        HashMap<String, Savable> hashMap = this.userData;
        if (hashMap != null) {
            hashMap.remove(str);
            if (this.userData.isEmpty()) {
                this.userData = null;
            }
        }
    }

    public String toString() {
        return this.name + " (" + getClass().getSimpleName() + ')';
    }

    public void updateGeometricState() {
        if ((this.refreshFlags & 4) != 0) {
            updateWorldLightList();
        }
        if ((this.refreshFlags & 1) != 0) {
            updateWorldTransforms();
        }
        if ((this.refreshFlags & 2) != 0) {
            updateWorldBound();
        }
        if ((this.refreshFlags & 16) != 0) {
            updateMatParamOverrides();
        }
        int i10 = this.refreshFlags;
        if ((i10 & 32) != 0) {
            this.refreshFlags = i10 & (-33);
        }
    }

    public void updateLogicalState(float f10) {
        runControlUpdate(f10);
    }

    public void updateMatParamOverrides() {
        this.refreshFlags &= -17;
        this.worldOverrides.clear();
        Node node = this.parent;
        if (node == null) {
            this.worldOverrides.addAll(this.localOverrides);
        } else {
            this.worldOverrides.addAll(node.worldOverrides);
            this.worldOverrides.addAll(this.localOverrides);
        }
    }

    public abstract void updateModelBound();

    public void updateWorldBound() {
        this.refreshFlags &= -3;
    }

    public void updateWorldLightList() {
        Node node = this.parent;
        if (node == null) {
            this.worldLights.update(this.localLights, null, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$updateWorldLightList$0;
                    lambda$updateWorldLightList$0 = Spatial.lambda$updateWorldLightList$0((Light) obj);
                    return lambda$updateWorldLightList$0;
                }
            });
            this.refreshFlags &= -5;
        } else {
            this.worldLights.update(this.localLights, node.worldLights, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$updateWorldLightList$1;
                    lambda$updateWorldLightList$1 = Spatial.lambda$updateWorldLightList$1((Light) obj);
                    return lambda$updateWorldLightList$1;
                }
            });
            this.refreshFlags &= -5;
        }
    }

    public void updateWorldTransforms() {
        if (this.parent == null) {
            this.worldTransform.set(this.localTransform);
            this.refreshFlags &= -2;
        } else {
            this.worldTransform.set(this.localTransform);
            this.worldTransform.combineWithParent(this.parent.worldTransform);
            this.refreshFlags &= -2;
        }
    }

    public Vector3f worldToLocal(Vector3f vector3f, Vector3f vector3f2) {
        checkDoTransformUpdate();
        return this.worldTransform.transformInverseVector(vector3f, vector3f2);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.name, "name", (String) null);
        capsule.write(this.worldBound, "world_bound", (Savable) null);
        capsule.write(this.cullHint, "cull_mode", CullHint.Inherit);
        capsule.write(this.batchHint, "batch_hint", BatchHint.Inherit);
        capsule.write(this.queueBucket, "queue", RenderQueue.Bucket.Inherit);
        capsule.write(this.shadowMode, "shadow_mode", RenderQueue.ShadowMode.Inherit);
        capsule.write(this.localTransform, "transform", Transform.IDENTITY);
        capsule.write(this.localLights, "lights", (Savable) null);
        capsule.writeSavableArrayList(new ArrayList(this.localOverrides), "overrides", null);
        capsule.writeSavableArrayList(new ArrayList(this.controls), "controlsList", null);
        capsule.writeStringSavableMap(this.userData, "user_data", null);
    }

    public Spatial(String str) {
        this.cullHint = CullHint.Inherit;
        this.batchHint = BatchHint.Inherit;
        this.frustrumIntersects = Camera.FrustumIntersect.Intersects;
        this.queueBucket = RenderQueue.Bucket.Inherit;
        this.shadowMode = RenderQueue.ShadowMode.Inherit;
        this.queueDistance = Float.NEGATIVE_INFINITY;
        this.controls = new SafeArrayList<>(Control.class);
        this.userData = null;
        this.refreshFlags = 0;
        this.requiresUpdates = true;
        this.name = str;
        this.localTransform = new Transform();
        this.worldTransform = new Transform();
        this.localLights = new LightList(this);
        this.worldLights = new LightList(this);
        this.localOverrides = new SafeArrayList<>(MatParamOverride.class);
        this.worldOverrides = new SafeArrayList<>(MatParamOverride.class);
        this.refreshFlags |= 2;
    }

    @Override
    public Spatial jmeClone() {
        try {
            return (Spatial) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Spatial scale(float f10, float f11, float f12) {
        this.localTransform.getScale().multLocal(f10, f11, f12);
        setTransformRefresh();
        return this;
    }

    public Spatial clone(boolean z10) {
        Cloner cloner = new Cloner();
        cloner.setClonedValue(this.parent, null);
        if (!z10) {
            cloner.setCloneFunction(Material.class, new IdentityCloneFunction());
        }
        cloner.setCloneFunction(Mesh.class, new IdentityCloneFunction());
        Spatial spatial = (Spatial) cloner.clone(this);
        spatial.setTransformRefresh();
        spatial.setLightListRefresh();
        spatial.setMatParamOverrideRefresh();
        return spatial;
    }

    public Control getControl(int i10) {
        return this.controls.get(i10);
    }

    public Spatial move(Vector3f vector3f) {
        this.localTransform.getTranslation().addLocal(vector3f);
        setTransformRefresh();
        return this;
    }

    public Spatial rotate(float f10, float f11, float f12) {
        TempVars tempVars = TempVars.get();
        Quaternion quaternion = tempVars.quat1;
        quaternion.fromAngles(f10, f11, f12);
        rotate(quaternion);
        tempVars.release();
        return this;
    }

    public void setLocalRotation(Quaternion quaternion) {
        this.localTransform.setRotation(quaternion);
        setTransformRefresh();
    }

    public void setLocalScale(float f10, float f11, float f12) {
        this.localTransform.setScale(f10, f11, f12);
        setTransformRefresh();
    }

    public void setLocalTranslation(float f10, float f11, float f12) {
        this.localTransform.setTranslation(f10, f11, f12);
        setTransformRefresh();
    }

    public Quaternion worldToLocal(Quaternion quaternion, Quaternion quaternion2) {
        checkDoTransformUpdate();
        if (quaternion2 == null) {
            quaternion2 = new Quaternion(quaternion);
        } else {
            quaternion2.set(quaternion);
        }
        TempVars tempVars = TempVars.get();
        Quaternion quaternion3 = tempVars.quat1.set(getWorldRotation());
        quaternion3.inverseLocal();
        quaternion2.multLocal(quaternion3);
        tempVars.release();
        return quaternion2;
    }

    public void setLocalScale(Vector3f vector3f) {
        this.localTransform.setScale(vector3f);
        setTransformRefresh();
    }

    public boolean removeControl(Control control) {
        boolean requiresUpdates = requiresUpdates();
        boolean remove = this.controls.remove(control);
        if (remove) {
            control.setSpatial(null);
        }
        boolean requiresUpdates2 = requiresUpdates();
        Node node = this.parent;
        if (node != null && requiresUpdates != requiresUpdates2) {
            node.invalidateUpdateList();
        }
        return remove;
    }

    @Override
    public Spatial mo1263clone() {
        return clone(true);
    }
}
