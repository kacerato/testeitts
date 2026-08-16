package com.jme3.scene;

import com.jme3.bounding.BoundingBox;
import com.jme3.bounding.BoundingVolume;
import com.jme3.collision.Collidable;
import com.jme3.collision.CollisionResults;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.light.Light;
import com.jme3.light.LightList;
import com.jme3.material.Material;
import com.jme3.scene.Spatial;
import com.jme3.util.SafeArrayList;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Node extends Spatial {
    static final boolean $assertionsDisabled = false;
    private static final Logger logger = Logger.getLogger(Node.class.getName());
    protected SafeArrayList<Spatial> children;
    private SafeArrayList<Spatial> updateList;
    private boolean updateListValid;

    public Node() {
        this(null);
    }

    private void addUpdateChildren(SafeArrayList<Spatial> safeArrayList) {
        for (Spatial spatial : this.children.getArray()) {
            if (spatial.requiresUpdates()) {
                safeArrayList.add(spatial);
            }
            if (spatial instanceof Node) {
                ((Node) spatial).addUpdateChildren(safeArrayList);
            }
        }
    }

    private void findGlobalLights(Spatial spatial, LightList lightList) {
        Iterator<Light> it = spatial.getLocalLightList().iterator();
        while (it.hasNext()) {
            Light next = it.next();
            if (next.isGlobal()) {
                lightList.add(next);
            }
        }
        if (spatial instanceof Node) {
            List<Spatial> children = ((Node) spatial).getChildren();
            for (int i10 = 0; i10 < children.size(); i10++) {
                Spatial spatial2 = children.get(i10);
                if ((spatial2.refreshFlags & 32) != 0) {
                    findGlobalLights(spatial2, lightList);
                }
            }
        }
    }

    private SafeArrayList<Spatial> getUpdateList() {
        if (this.updateListValid) {
            return this.updateList;
        }
        SafeArrayList<Spatial> safeArrayList = this.updateList;
        if (safeArrayList == null) {
            this.updateList = new SafeArrayList<>(Spatial.class);
        } else {
            safeArrayList.clear();
        }
        addUpdateChildren(this.updateList);
        this.updateListValid = true;
        return this.updateList;
    }

    public int attachChild(Spatial spatial) {
        return attachChildAt(spatial, this.children.size());
    }

    public int attachChildAt(Spatial spatial, int i10) {
        if (spatial == null) {
            throw new IllegalArgumentException("child cannot be null");
        }
        if (spatial == this) {
            throw new IllegalArgumentException("Cannot add child to itself");
        }
        if (spatial.getParent() != this) {
            if (spatial.getParent() != null) {
                spatial.getParent().detachChild(spatial);
            }
            spatial.setParent(this);
            this.children.add(i10, spatial);
            spatial.setTransformRefresh();
            spatial.setLightListRefresh();
            spatial.setMatParamOverrideRefresh();
            Logger logger2 = logger;
            Level level = Level.FINE;
            if (logger2.isLoggable(level)) {
                logger2.log(level, "Child ({0}) attached to this node ({1})", new Object[]{spatial.getName(), getName()});
            }
            invalidateUpdateList();
        }
        return this.children.size();
    }

    @Override
    public void breadthFirstTraversal(SceneGraphVisitor sceneGraphVisitor, Queue<Spatial> queue) {
        queue.addAll(this.children);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.children = (SafeArrayList) cloner.clone(this.children);
        this.updateList = (SafeArrayList) cloner.clone(this.updateList);
    }

    public int collideWith(Collidable collidable, CollisionResults collisionResults) {
        int i10 = 0;
        for (Spatial spatial : this.children.getArray()) {
            i10 += spatial.collideWith(collidable, collisionResults);
        }
        return i10;
    }

    @Override
    public Spatial deepClone() {
        Node node = (Node) super.deepClone();
        node.updateList = null;
        node.updateListValid = false;
        return node;
    }

    @Override
    public void depthFirstTraversal(SceneGraphVisitor sceneGraphVisitor, Spatial.DFSMode dFSMode) {
        int i10 = 0;
        if (dFSMode == Spatial.DFSMode.POST_ORDER) {
            Spatial[] array = this.children.getArray();
            int length = array.length;
            while (i10 < length) {
                array[i10].depthFirstTraversal(sceneGraphVisitor, dFSMode);
                i10++;
            }
            sceneGraphVisitor.visit(this);
            return;
        }
        sceneGraphVisitor.visit(this);
        Spatial[] array2 = this.children.getArray();
        int length2 = array2.length;
        while (i10 < length2) {
            array2[i10].depthFirstTraversal(sceneGraphVisitor, dFSMode);
            i10++;
        }
    }

    public <T extends Spatial> List<T> descendantMatches(Class<T> cls, String str) {
        ArrayList arrayList = new ArrayList();
        if (getQuantity() < 1) {
            return arrayList;
        }
        for (Spatial spatial : getChildren()) {
            if (spatial.matches(cls, str)) {
                arrayList.add(spatial);
            }
            if (spatial instanceof Node) {
                arrayList.addAll(((Node) spatial).descendantMatches(cls, str));
            }
        }
        return arrayList;
    }

    public void detachAllChildren() {
        for (int size = this.children.size() - 1; size >= 0; size--) {
            detachChildAt(size);
        }
        logger.log(Level.FINE, "{0}: All children removed.", this);
    }

    public int detachChild(Spatial spatial) {
        if (spatial == null) {
            throw new IllegalArgumentException("child cannot be null");
        }
        if (spatial.getParent() != this) {
            return -1;
        }
        int indexOf = this.children.indexOf(spatial);
        if (indexOf != -1) {
            detachChildAt(indexOf);
        }
        return indexOf;
    }

    public Spatial detachChildAt(int i10) {
        Spatial remove = this.children.remove(i10);
        if (remove != null) {
            remove.setParent(null);
            logger.log(Level.FINE, "{0}: Child removed.", this);
            setBoundRefresh();
            remove.setTransformRefresh();
            remove.setLightListRefresh();
            remove.setMatParamOverrideRefresh();
            invalidateUpdateList();
        }
        return remove;
    }

    public int detachChildNamed(String str) {
        if (str == null) {
            throw new IllegalArgumentException("childName cannot be null");
        }
        int size = this.children.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (str.equals(this.children.get(i10).getName())) {
                detachChildAt(i10);
                return i10;
            }
        }
        return -1;
    }

    public Spatial getChild(int i10) {
        return this.children.get(i10);
    }

    public int getChildIndex(Spatial spatial) {
        return this.children.indexOf(spatial);
    }

    public List<Spatial> getChildren() {
        return this.children;
    }

    public int getQuantity() {
        return this.children.size();
    }

    @Override
    public int getTriangleCount() {
        if (this.children == null) {
            return 0;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.children.size(); i11++) {
            i10 += this.children.get(i11).getTriangleCount();
        }
        return i10;
    }

    @Override
    public int getVertexCount() {
        if (this.children == null) {
            return 0;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.children.size(); i11++) {
            i10 += this.children.get(i11).getVertexCount();
        }
        return i10;
    }

    public boolean hasChild(Spatial spatial) {
        if (this.children.contains(spatial)) {
            return true;
        }
        for (Spatial spatial2 : this.children.getArray()) {
            if ((spatial2 instanceof Node) && ((Node) spatial2).hasChild(spatial)) {
                return true;
            }
        }
        return false;
    }

    public void invalidateUpdateList() {
        this.updateListValid = false;
        Node node = this.parent;
        if (node != null) {
            node.invalidateUpdateList();
        }
    }

    public Spatial oldDeepClone() {
        Node node = (Node) super.m1305clone();
        node.children = new SafeArrayList<>(Spatial.class);
        Iterator<Spatial> it = this.children.iterator();
        while (it.hasNext()) {
            Spatial deepClone = it.next().deepClone();
            deepClone.parent = node;
            node.children.add(deepClone);
        }
        return node;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        SafeArrayList<Spatial> safeArrayList = new SafeArrayList<>((Class<Spatial>) Spatial.class, jmeImporter.getCapsule(this).readSavableArrayList("children", null));
        this.children = safeArrayList;
        for (Spatial spatial : safeArrayList.getArray()) {
            spatial.parent = this;
        }
        super.read(jmeImporter);
    }

    @Override
    public void setLightListRefresh() {
        super.setLightListRefresh();
        boolean z10 = false;
        for (Spatial spatial : this.children.getArray()) {
            int i10 = spatial.refreshFlags;
            if ((i10 & 4) == 0) {
                spatial.setLightListRefresh();
            } else if (!z10 && (i10 & 32) != 0) {
                z10 = true;
            }
        }
        if (z10) {
            this.refreshFlags |= 32;
            for (Node node = this.parent; node != null; node = node.parent) {
                int i11 = node.refreshFlags;
                if ((i11 & 32) != 0) {
                    return;
                }
                node.refreshFlags = i11 | 32;
            }
        }
    }

    @Override
    public void setLodLevel(int i10) {
        super.setLodLevel(i10);
        for (Spatial spatial : this.children.getArray()) {
            spatial.setLodLevel(i10);
        }
    }

    @Override
    public void setMatParamOverrideRefresh() {
        super.setMatParamOverrideRefresh();
        for (Spatial spatial : this.children.getArray()) {
            if ((spatial.refreshFlags & 16) == 0) {
                spatial.setMatParamOverrideRefresh();
            }
        }
    }

    @Override
    public void setMaterial(Material material) {
        for (int i10 = 0; i10 < this.children.size(); i10++) {
            this.children.get(i10).setMaterial(material);
        }
    }

    @Override
    public void setModelBound(BoundingVolume boundingVolume) {
        SafeArrayList<Spatial> safeArrayList = this.children;
        if (safeArrayList != null) {
            for (Spatial spatial : safeArrayList.getArray()) {
                BoundingVolume boundingVolume2 = null;
                if (boundingVolume != null) {
                    boundingVolume2 = boundingVolume.clone(null);
                }
                spatial.setModelBound(boundingVolume2);
            }
        }
    }

    @Override
    public void setParent(Node node) {
        if (this.parent == null && node != null) {
            this.updateList = null;
            this.updateListValid = false;
        }
        super.setParent(node);
    }

    @Override
    public void setTransformRefresh() {
        super.setTransformRefresh();
        for (Spatial spatial : this.children.getArray()) {
            if ((spatial.refreshFlags & 1) == 0) {
                spatial.setTransformRefresh();
            }
        }
    }

    public void swapChildren(int i10, int i11) {
        Spatial spatial = this.children.get(i11);
        Spatial remove = this.children.remove(i10);
        this.children.add(i10, spatial);
        this.children.remove(i11);
        this.children.add(i11, remove);
    }

    @Override
    public void updateGeometricState() {
        int i10 = this.refreshFlags;
        if (i10 == 0) {
            return;
        }
        if ((i10 & 4) != 0) {
            updateWorldLightList();
        }
        boolean z10 = (this.refreshFlags & 32) != 0;
        if (z10) {
            if (getParent() == null) {
                findGlobalLights(this, this.worldLights);
            }
            this.refreshFlags &= -33;
        }
        if ((1 & this.refreshFlags) != 0) {
            updateWorldTransforms();
        }
        if ((this.refreshFlags & 16) != 0) {
            updateMatParamOverrides();
        }
        this.refreshFlags &= -9;
        if (!this.children.isEmpty()) {
            for (Spatial spatial : this.children.getArray()) {
                if (z10) {
                    spatial.refreshFlags |= 36;
                }
                spatial.updateGeometricState();
            }
        }
        if ((this.refreshFlags & 2) != 0) {
            updateWorldBound();
        }
    }

    @Override
    public void updateLogicalState(float f10) {
        super.updateLogicalState(f10);
        if (this.parent != null) {
            return;
        }
        for (Spatial spatial : getUpdateList().getArray()) {
            spatial.updateLogicalState(f10);
        }
    }

    @Override
    public void updateModelBound() {
        SafeArrayList<Spatial> safeArrayList = this.children;
        if (safeArrayList != null) {
            for (Spatial spatial : safeArrayList.getArray()) {
                spatial.updateModelBound();
            }
        }
    }

    @Override
    public void updateWorldBound() {
        super.updateWorldBound();
        BoundingVolume boundingVolume = null;
        for (Spatial spatial : this.children.getArray()) {
            if (boundingVolume != null) {
                boundingVolume.mergeLocal(spatial.getWorldBound());
            } else if (spatial.getWorldBound() != null) {
                boundingVolume = spatial.getWorldBound().clone(this.worldBound);
            }
        }
        if (boundingVolume == null) {
            boundingVolume = new BoundingBox(getWorldTranslation(), 0.0f, 0.0f, 0.0f);
        }
        this.worldBound = boundingVolume;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).writeSavableArrayList(new ArrayList(this.children), "children", null);
    }

    public Node(String str) {
        super(str);
        this.children = new SafeArrayList<>(Spatial.class);
        this.updateList = null;
        this.updateListValid = false;
        setRequiresUpdates(Node.class != getClass());
    }

    @Override
    public Node clone(boolean z10) {
        Node node = (Node) super.clone(z10);
        node.updateList = null;
        node.updateListValid = false;
        return node;
    }

    public Spatial getChild(String str) {
        Spatial child;
        if (str == null) {
            return null;
        }
        for (Spatial spatial : this.children.getArray()) {
            if (str.equals(spatial.getName())) {
                return spatial;
            }
            if ((spatial instanceof Node) && (child = ((Node) spatial).getChild(str)) != null) {
                return child;
            }
        }
        return null;
    }

    public <T extends Spatial> List<T> descendantMatches(Class<T> cls) {
        return descendantMatches(cls, null);
    }

    public <T extends Spatial> List<T> descendantMatches(String str) {
        return descendantMatches(null, str);
    }
}
