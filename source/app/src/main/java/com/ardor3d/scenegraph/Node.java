package com.ardor3d.scenegraph;

import com.ardor3d.bounding.BoundingVolume;
import com.ardor3d.math.Vector3;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.scenegraph.event.DirtyType;
import com.ardor3d.scenegraph.visitor.Visitor;
import com.ardor3d.util.Ardor3dException;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.scenegraph.RenderDelegate;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Node extends Spatial {
    private static final Logger logger = Logger.getLogger(Node.class.getName());
    protected final List<Spatial> _children;

    public Node() {
        this._children = Collections.synchronizedList(new ArrayList(1));
    }

    @Override
    public void acceptVisitor(Visitor visitor, boolean z10) {
        if (z10) {
            visitor.visit(this);
        }
        for (int numberOfChildren = getNumberOfChildren() - 1; numberOfChildren >= 0; numberOfChildren--) {
            Spatial spatial = this._children.get(numberOfChildren);
            if (spatial != null) {
                spatial.acceptVisitor(visitor, z10);
            }
        }
        if (z10) {
            return;
        }
        visitor.visit(this);
    }

    public int attachChild(Spatial spatial) {
        if (spatial != null && spatial.getParent() != this) {
            if (spatial.getParent() != null) {
                spatial.getParent().detachChild(spatial);
            }
            spatial.setParent(this);
            this._children.add(spatial);
            spatial.markDirty(DirtyType.Attached);
            Logger logger2 = logger;
            if (logger2.isLoggable(Level.FINE)) {
                logger2.fine("Child (" + spatial.getName() + ") attached to this node (" + getName() + ")");
            }
        }
        return this._children.size();
    }

    public int attachChildAt(Spatial spatial, int i10) {
        if (spatial != null && spatial.getParent() != this) {
            if (spatial.getParent() != null) {
                spatial.getParent().detachChild(spatial);
            }
            spatial.setParent(this);
            this._children.add(i10, spatial);
            spatial.markDirty(DirtyType.Attached);
            Logger logger2 = logger;
            if (logger2.isLoggable(Level.FINE)) {
                logger2.fine("Child (" + spatial.getName() + ") attached to this node (" + getName() + ")");
            }
        }
        return this._children.size();
    }

    public void detachAllChildren() {
        for (int numberOfChildren = getNumberOfChildren() - 1; numberOfChildren >= 0; numberOfChildren--) {
            detachChildAt(numberOfChildren);
        }
        logger.fine("All children removed.");
    }

    public int detachChild(Spatial spatial) {
        if (spatial == null || spatial.getParent() != this) {
            return -1;
        }
        int indexOf = this._children.indexOf(spatial);
        if (indexOf != -1) {
            detachChildAt(indexOf);
        }
        return indexOf;
    }

    public Spatial detachChildAt(int i10) {
        Spatial remove = this._children.remove(i10);
        if (remove != null) {
            remove.setParent(null);
            markDirty(remove, DirtyType.Detached);
            if (remove.getListener() != null) {
                remove.setListener(null);
            }
            Logger logger2 = logger;
            if (logger2.isLoggable(Level.INFO)) {
                logger2.fine("Child removed.");
            }
        }
        return remove;
    }

    public int detachChildNamed(String str) {
        if (str == null) {
            return -1;
        }
        for (int numberOfChildren = getNumberOfChildren() - 1; numberOfChildren >= 0; numberOfChildren--) {
            if (str.equals(this._children.get(numberOfChildren).getName())) {
                detachChildAt(numberOfChildren);
                return numberOfChildren;
            }
        }
        return -1;
    }

    @Override
    public void draw(Renderer renderer) {
        RenderDelegate currentRenderDelegate = getCurrentRenderDelegate();
        if (currentRenderDelegate != null) {
            if (renderer.isProcessingQueue() || !renderer.checkAndAdd(this)) {
                currentRenderDelegate.render(this, renderer);
                return;
            }
            return;
        }
        for (int numberOfChildren = getNumberOfChildren() - 1; numberOfChildren >= 0; numberOfChildren--) {
            Spatial spatial = this._children.get(numberOfChildren);
            if (spatial != null) {
                spatial.onDraw(renderer);
            }
        }
    }

    public Spatial getChild(int i10) {
        return this._children.get(i10);
    }

    public int getChildIndex(Spatial spatial) {
        return this._children.indexOf(spatial);
    }

    public List<Spatial> getChildren() {
        return this._children;
    }

    @Override
    public Class<? extends Node> getClassTag() {
        return getClass();
    }

    public int getNumberOfChildren() {
        return this._children.size();
    }

    public boolean hasChild(Spatial spatial) {
        if (this._children.contains(spatial)) {
            return true;
        }
        for (int numberOfChildren = getNumberOfChildren() - 1; numberOfChildren >= 0; numberOfChildren--) {
            Spatial spatial2 = this._children.get(numberOfChildren);
            if ((spatial2 instanceof Node) && ((Node) spatial2).hasChild(spatial)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void propagateDirtyDown(DirtyType... dirtyTypeArr) {
        super.propagateDirtyDown(dirtyTypeArr);
        for (int numberOfChildren = getNumberOfChildren() - 1; numberOfChildren >= 0; numberOfChildren--) {
            this._children.get(numberOfChildren).propagateDirtyDown(dirtyTypeArr);
        }
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        List readSavableList = inputCapsule.readSavableList("children", null);
        this._children.clear();
        if (readSavableList != null) {
            this._children.addAll(readSavableList);
        }
        for (int numberOfChildren = getNumberOfChildren() - 1; numberOfChildren >= 0; numberOfChildren--) {
            this._children.get(numberOfChildren)._parent = this;
        }
    }

    @Override
    public void sortLights() {
        for (int numberOfChildren = getNumberOfChildren() - 1; numberOfChildren >= 0; numberOfChildren--) {
            Spatial child = getChild(numberOfChildren);
            if (child != null) {
                child.sortLights();
            }
        }
    }

    public void swapChildren(int i10, int i11) {
        Spatial spatial = this._children.get(i11);
        Spatial remove = this._children.remove(i10);
        this._children.add(i10, spatial);
        this._children.remove(i11);
        this._children.add(i11, remove);
    }

    @Override
    public void updateChildren(double d10) {
        for (int numberOfChildren = getNumberOfChildren() - 1; numberOfChildren >= 0; numberOfChildren--) {
            Spatial child = getChild(numberOfChildren);
            if (child != null) {
                child.updateGeometricState(d10, false);
            }
        }
    }

    @Override
    public void updateWorldBound(boolean z10) {
        BoundingVolume boundingVolume = null;
        for (int numberOfChildren = getNumberOfChildren() - 1; numberOfChildren >= 0; numberOfChildren--) {
            Spatial spatial = this._children.get(numberOfChildren);
            if (spatial != null) {
                if (z10) {
                    spatial.updateWorldBound(true);
                }
                if (boundingVolume != null) {
                    boundingVolume.mergeLocal(spatial.getWorldBound());
                    if (!Vector3.isValid(boundingVolume.getCenter())) {
                        throw new Ardor3dException("WorldBound center is invalid after merge between " + ((Object) this) + " and " + ((Object) spatial));
                    }
                } else if (spatial.getWorldBound() != null) {
                    boundingVolume = spatial.getWorldBound().clone(this._worldBound);
                }
            }
        }
        this._worldBound = boundingVolume;
        clearDirty(DirtyType.Bounding);
    }

    @Override
    public void updateWorldRenderStates(boolean z10, Map<RenderState.StateType, Stack<RenderState>> map) {
        super.updateWorldRenderStates(z10, map);
        if (z10) {
            for (int numberOfChildren = getNumberOfChildren() - 1; numberOfChildren >= 0; numberOfChildren--) {
                this._children.get(numberOfChildren).updateWorldRenderStates(true, map);
            }
        }
    }

    @Override
    public void updateWorldTransform(boolean z10) {
        super.updateWorldTransform(z10);
        if (z10) {
            for (int numberOfChildren = getNumberOfChildren() - 1; numberOfChildren >= 0; numberOfChildren--) {
                this._children.get(numberOfChildren).updateWorldTransform(true);
            }
        }
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.writeSavableList(new ArrayList(this._children), "children", null);
    }

    public Spatial getChild(String str) {
        Spatial child;
        if (str == null) {
            return null;
        }
        for (int numberOfChildren = getNumberOfChildren() - 1; numberOfChildren >= 0; numberOfChildren--) {
            Spatial spatial = this._children.get(numberOfChildren);
            if (str.equals(spatial.getName())) {
                return spatial;
            }
            if ((spatial instanceof Node) && (child = ((Node) spatial).getChild(str)) != null) {
                return child;
            }
        }
        return null;
    }

    @Override
    public Node makeCopy(boolean z10) {
        Node node = (Node) super.makeCopy(z10);
        Iterator<Spatial> it = getChildren().iterator();
        while (it.hasNext()) {
            node.attachChild(it.next().makeCopy(z10));
        }
        return node;
    }

    public Node(String str) {
        this(str, Collections.synchronizedList(new ArrayList(1)));
    }

    public Node(String str, List<Spatial> list) {
        super(str);
        this._children = list;
    }
}
