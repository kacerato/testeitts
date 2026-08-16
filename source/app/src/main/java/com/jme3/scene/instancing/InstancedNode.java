package com.jme3.scene.instancing;

import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.material.MatParam;
import com.jme3.material.Material;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.GeometryGroupNode;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.UserData;
import com.jme3.scene.control.Control;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class InstancedNode extends GeometryGroupNode {
    private InstancedNodeControl control;
    protected HashMap<Geometry, InstancedGeometry> igByGeom;
    private HashMap<InstanceTypeKey, InstancedGeometry> instancesMap;
    private InstanceTypeKey lookUp;

    public static final class InstanceTypeKey implements Cloneable, JmeCloneable {
        int lodLevel;
        Material material;
        Mesh mesh;

        public InstanceTypeKey(Mesh mesh, Material material, int i10) {
            this.mesh = mesh;
            this.material = material;
            this.lodLevel = i10;
        }

        @Override
        public void cloneFields(Cloner cloner, Object obj) {
            this.mesh = (Mesh) cloner.clone(this.mesh);
            this.material = (Material) cloner.clone(this.material);
        }

        public boolean equals(Object obj) {
            InstanceTypeKey instanceTypeKey = (InstanceTypeKey) obj;
            return this.mesh == instanceTypeKey.mesh && this.material == instanceTypeKey.material && this.lodLevel == instanceTypeKey.lodLevel;
        }

        public int hashCode() {
            return ((((123 + this.mesh.hashCode()) * 41) + this.material.hashCode()) * 41) + this.lodLevel;
        }

        @Override
        public Object jmeClone() {
            try {
                return super.clone();
            } catch (CloneNotSupportedException unused) {
                throw new AssertionError();
            }
        }

        public InstanceTypeKey m1297clone() {
            try {
                return (InstanceTypeKey) super.clone();
            } catch (CloneNotSupportedException unused) {
                throw new AssertionError();
            }
        }

        public InstanceTypeKey() {
        }
    }

    public static class InstancedNodeControl implements Control, JmeCloneable {
        private InstancedNode node;

        public InstancedNodeControl() {
        }

        @Override
        public void cloneFields(Cloner cloner, Object obj) {
            this.node = (InstancedNode) cloner.clone(this.node);
        }

        @Override
        @Deprecated
        public Control cloneForSpatial(Spatial spatial) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Object jmeClone() {
            try {
                return super.clone();
            } catch (CloneNotSupportedException e10) {
                throw new RuntimeException("Error cloning control", e10);
            }
        }

        @Override
        public void read(JmeImporter jmeImporter) throws IOException {
        }

        @Override
        public void render(RenderManager renderManager, ViewPort viewPort) {
            this.node.renderFromControl(viewPort.getCamera());
        }

        @Override
        public void setSpatial(Spatial spatial) {
        }

        @Override
        public void update(float f10) {
        }

        @Override
        public void write(JmeExporter jmeExporter) throws IOException {
        }

        public InstancedNodeControl(InstancedNode instancedNode) {
            this.node = instancedNode;
        }
    }

    public InstancedNode() {
        this.igByGeom = new HashMap<>();
        this.lookUp = new InstanceTypeKey();
        this.instancesMap = new HashMap<>();
    }

    private void addToInstancedGeometry(Geometry geometry) {
        MatParam param = geometry.getMaterial().getParam("UseInstancing");
        if (param == null || !((Boolean) param.getValue()).booleanValue()) {
            throw new IllegalStateException("You must set the 'UseInstancing' parameter to true on the material prior to adding it to InstancedNode");
        }
        InstancedGeometry lookUpByGeometry = lookUpByGeometry(geometry);
        this.igByGeom.put(geometry, lookUpByGeometry);
        geometry.associateWithGroupNode(this, 0);
        lookUpByGeometry.addInstance(geometry);
    }

    public static int getGeometryStartIndex2(Geometry geometry) {
        return GeometryGroupNode.getGeometryStartIndex(geometry);
    }

    private void instance(Spatial spatial) {
        if (spatial instanceof Geometry) {
            Geometry geometry = (Geometry) spatial;
            if (geometry.isGrouped() || geometry.getBatchHint() == Spatial.BatchHint.Never) {
                return;
            }
            addToInstancedGeometry(geometry);
            return;
        }
        if (spatial instanceof Node) {
            for (Spatial spatial2 : ((Node) spatial).getChildren()) {
                if (!(spatial2 instanceof GeometryGroupNode)) {
                    instance(spatial2);
                }
            }
        }
    }

    private InstancedGeometry lookUpByGeometry(Geometry geometry) {
        this.lookUp.mesh = geometry.getMesh();
        this.lookUp.material = geometry.getMaterial();
        this.lookUp.lodLevel = geometry.getLodLevel();
        InstancedGeometry instancedGeometry = this.instancesMap.get(this.lookUp);
        if (instancedGeometry == null) {
            instancedGeometry = new InstancedGeometry("mesh-" + System.identityHashCode(this.lookUp.mesh) + ",material-" + this.lookUp.material.getMaterialDef().getName() + ",lod-" + this.lookUp.lodLevel);
            instancedGeometry.setMaterial(this.lookUp.material);
            instancedGeometry.setMesh(this.lookUp.mesh);
            int i10 = this.lookUp.lodLevel;
            if (i10 > 0) {
                instancedGeometry.setLodLevel(i10);
            }
            instancedGeometry.setUserData(UserData.JME_PHYSICSIGNORE, Boolean.TRUE);
            instancedGeometry.setCullHint(Spatial.CullHint.Never);
            instancedGeometry.setShadowMode(RenderQueue.ShadowMode.Inherit);
            this.instancesMap.put(this.lookUp.m1297clone(), instancedGeometry);
            attachChild(instancedGeometry);
        }
        return instancedGeometry;
    }

    private void relocateInInstancedGeometry(Geometry geometry) {
        InstancedGeometry instancedGeometry = this.igByGeom.get(geometry);
        InstancedGeometry lookUpByGeometry = lookUpByGeometry(geometry);
        if (instancedGeometry != lookUpByGeometry) {
            if (instancedGeometry == null) {
                throw new AssertionError();
            }
            instancedGeometry.deleteInstance(geometry);
            if (instancedGeometry.isEmpty()) {
                detachChild(instancedGeometry);
            }
            lookUpByGeometry.addInstance(geometry);
            this.igByGeom.put(geometry, lookUpByGeometry);
        }
    }

    private void removeFromInstancedGeometry(Geometry geometry) {
        InstancedGeometry remove = this.igByGeom.remove(geometry);
        if (remove != null) {
            remove.deleteInstance(geometry);
            if (remove.isEmpty()) {
                detachChild(remove);
            }
        }
    }

    public void renderFromControl(Camera camera) {
        Iterator<InstancedGeometry> it = this.instancesMap.values().iterator();
        while (it.hasNext()) {
            it.next().updateInstances(camera);
        }
    }

    public static void setGeometryStartIndex2(Geometry geometry, int i10) {
        GeometryGroupNode.setGeometryStartIndex(geometry, i10);
    }

    private void ungroupSceneGraph(Spatial spatial) {
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                ungroupSceneGraph(it.next());
            }
        } else if (spatial instanceof Geometry) {
            Geometry geometry = (Geometry) spatial;
            if (geometry.isGrouped()) {
                geometry.unassociateFromGroupNode();
                if (GeometryGroupNode.getGeometryStartIndex(geometry) != -1) {
                    throw new AssertionError();
                }
            }
        }
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.control = (InstancedNodeControl) cloner.clone(this.control);
        this.lookUp = (InstanceTypeKey) cloner.clone(this.lookUp);
        HashMap<Geometry, InstancedGeometry> hashMap = new HashMap<>();
        for (Map.Entry<Geometry, InstancedGeometry> entry : this.igByGeom.entrySet()) {
            hashMap.put((Geometry) cloner.clone(entry.getKey()), (InstancedGeometry) cloner.clone(entry.getValue()));
        }
        this.igByGeom = hashMap;
        HashMap<InstanceTypeKey, InstancedGeometry> hashMap2 = new HashMap<>();
        for (Map.Entry<InstanceTypeKey, InstancedGeometry> entry2 : this.instancesMap.entrySet()) {
            hashMap2.put((InstanceTypeKey) cloner.clone(entry2.getKey()), (InstancedGeometry) cloner.clone(entry2.getValue()));
        }
        this.instancesMap = hashMap2;
    }

    @Override
    public Spatial detachChildAt(int i10) {
        Spatial detachChildAt = super.detachChildAt(i10);
        if (detachChildAt instanceof Node) {
            ungroupSceneGraph(detachChildAt);
        } else if (detachChildAt instanceof InstancedGeometry) {
            InstancedGeometry instancedGeometry = (InstancedGeometry) detachChildAt;
            this.lookUp.mesh = instancedGeometry.getMesh();
            this.lookUp.material = instancedGeometry.getMaterial();
            this.lookUp.lodLevel = instancedGeometry.getLodLevel();
            this.instancesMap.remove(this.lookUp, instancedGeometry);
            instancedGeometry.cleanup();
        }
        return detachChildAt;
    }

    @Override
    public void onGeometryUnassociated(Geometry geometry) {
        removeFromInstancedGeometry(geometry);
    }

    @Override
    public void onMaterialChange(Geometry geometry) {
        relocateInInstancedGeometry(geometry);
    }

    @Override
    public void onMeshChange(Geometry geometry) {
        relocateInInstancedGeometry(geometry);
    }

    @Override
    public void onTransformChange(Geometry geometry) {
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        this.control = (InstancedNodeControl) jmeImporter.getCapsule(this).readSavable("control", null);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.control, "control", (Savable) null);
    }

    public InstancedNode(String str) {
        super(str);
        this.igByGeom = new HashMap<>();
        this.lookUp = new InstanceTypeKey();
        this.instancesMap = new HashMap<>();
        InstancedNodeControl instancedNodeControl = new InstancedNodeControl(this);
        this.control = instancedNodeControl;
        addControl(instancedNodeControl);
    }

    @Override
    public InstancedNode mo1263clone() {
        return clone(true);
    }

    @Override
    public InstancedNode clone(boolean z10) {
        InstancedNode instancedNode = (InstancedNode) super.clone(z10);
        if (this.instancesMap.size() > 0) {
            for (int i10 = 0; i10 < instancedNode.children.size(); i10++) {
                if (instancedNode.children.get(i10) instanceof InstancedGeometry) {
                    instancedNode.children.remove(i10);
                } else if ((instancedNode.children.get(i10) instanceof Geometry) && ((Geometry) instancedNode.children.get(i10)).isGrouped()) {
                    throw new AssertionError();
                }
            }
        }
        instancedNode.controls.remove(this.control);
        InstancedNodeControl instancedNodeControl = new InstancedNodeControl(instancedNode);
        instancedNode.control = instancedNodeControl;
        instancedNode.controls.add(instancedNodeControl);
        instancedNode.lookUp = new InstanceTypeKey();
        instancedNode.igByGeom = new HashMap<>();
        instancedNode.instancesMap = new HashMap<>();
        instancedNode.instance();
        return instancedNode;
    }

    public void instance() {
        instance(this);
    }
}
