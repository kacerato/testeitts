package com.ardor3d.scenegraph;

import com.ardor3d.bounding.BoundingVolume;
import com.ardor3d.math.Transform;
import com.ardor3d.math.ValidatingTransform;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyMatrix3;
import com.ardor3d.math.type.ReadOnlyQuaternion;
import com.ardor3d.math.type.ReadOnlyTransform;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.renderer.Camera;
import com.ardor3d.renderer.ContextManager;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.scenegraph.controller.SpatialController;
import com.ardor3d.scenegraph.event.DirtyEventListener;
import com.ardor3d.scenegraph.event.DirtyType;
import com.ardor3d.scenegraph.hint.CullHint;
import com.ardor3d.scenegraph.hint.Hintable;
import com.ardor3d.scenegraph.hint.SceneHints;
import com.ardor3d.scenegraph.visitor.Visitor;
import com.ardor3d.util.Constants;
import com.ardor3d.util.export.CapsuleUtils;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import com.ardor3d.util.scenegraph.RenderDelegate;
import com.google.common.collect.O1;
import com.google.common.collect.Q1;
import java.io.IOException;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class Spatial implements Savable, Hintable {
    protected List<SpatialController<?>> _controllers;
    protected transient Map<Object, RenderDelegate> _delegateMap;
    protected EnumSet<DirtyType> _dirtyMark;
    protected Camera.FrustumIntersect _frustumIntersects;
    protected DirtyEventListener _listener;
    protected final Transform _localTransform;
    protected String _name;
    protected Node _parent;
    protected final EnumMap<RenderState.StateType, RenderState> _renderStateList;
    protected final SceneHints _sceneHints;
    protected Object _userData;
    protected BoundingVolume _worldBound;
    protected final Transform _worldTransform;
    private static final Logger logger = Logger.getLogger(Spatial.class.getName());
    private static final Object defaultDelegateRef = new Object();

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$scenegraph$event$DirtyType;

        static {
            int[] iArr = new int[DirtyType.values().length];
            $SwitchMap$com$ardor3d$scenegraph$event$DirtyType = iArr;
            try {
                iArr[DirtyType.Transform.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$scenegraph$event$DirtyType[DirtyType.RenderState.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$scenegraph$event$DirtyType[DirtyType.Bounding.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ardor3d$scenegraph$event$DirtyType[DirtyType.Attached.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$ardor3d$scenegraph$event$DirtyType[DirtyType.Detached.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$ardor3d$scenegraph$event$DirtyType[DirtyType.Destroyed.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public Spatial() {
        this._renderStateList = new EnumMap<>(RenderState.StateType.class);
        this._dirtyMark = EnumSet.of(DirtyType.Bounding, DirtyType.RenderState, DirtyType.Transform);
        this._userData = null;
        this._frustumIntersects = Camera.FrustumIntersect.Intersects;
        this._delegateMap = null;
        this._localTransform = Constants.useValidatingTransform ? new ValidatingTransform() : new Transform();
        this._worldTransform = Constants.useValidatingTransform ? new ValidatingTransform() : new Transform();
        this._sceneHints = new SceneHints(this);
    }

    public void acceptVisitor(Visitor visitor, boolean z10) {
        visitor.visit(this);
    }

    public void addController(SpatialController<?> spatialController) {
        if (this._controllers == null) {
            this._controllers = new ArrayList(1);
        }
        this._controllers.add(spatialController);
    }

    public void addTranslation(ReadOnlyVector3 readOnlyVector3) {
        addTranslation(readOnlyVector3.getX(), readOnlyVector3.getY(), readOnlyVector3.getZ());
    }

    public void applyWorldRenderStates(boolean z10, Map<RenderState.StateType, Stack<RenderState>> map) {
    }

    public void clearControllers() {
        List<SpatialController<?>> list = this._controllers;
        if (list != null) {
            list.clear();
        }
    }

    public void clearDirty(DirtyType dirtyType) {
        this._dirtyMark.remove(dirtyType);
    }

    public void clearRenderState(RenderState.StateType stateType) {
        this._renderStateList.remove(stateType);
        markDirty(DirtyType.RenderState);
    }

    public abstract void draw(Renderer renderer);

    @Override
    public Class<? extends Spatial> getClassTag() {
        return getClass();
    }

    public SpatialController<?> getController(int i10) {
        if (this._controllers == null) {
            this._controllers = new ArrayList(1);
        }
        return this._controllers.get(i10);
    }

    public int getControllerCount() {
        List<SpatialController<?>> list = this._controllers;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<SpatialController<?>> getControllers() {
        if (this._controllers == null) {
            this._controllers = new ArrayList(1);
        }
        return this._controllers;
    }

    public RenderDelegate getCurrentRenderDelegate() {
        Map<Object, RenderDelegate> map = this._delegateMap;
        if (map == null || map.isEmpty()) {
            return null;
        }
        RenderDelegate renderDelegate = getRenderDelegate(ContextManager.getCurrentContext().getGlContextRep());
        return renderDelegate == null ? getRenderDelegate(null) : renderDelegate;
    }

    public Camera.FrustumIntersect getLastFrustumIntersection() {
        Node node = this._parent;
        if (node != null) {
            Camera.FrustumIntersect frustumIntersect = this._frustumIntersects;
            Camera.FrustumIntersect frustumIntersect2 = Camera.FrustumIntersect.Outside;
            if (frustumIntersect != frustumIntersect2 && node.getLastFrustumIntersection() == frustumIntersect2) {
                return frustumIntersect2;
            }
        }
        return this._frustumIntersects;
    }

    public DirtyEventListener getListener() {
        return this._listener;
    }

    public Camera.FrustumIntersect getLocalLastFrustumIntersection() {
        return this._frustumIntersects;
    }

    public RenderState getLocalRenderState(RenderState.StateType stateType) {
        return this._renderStateList.get(stateType);
    }

    public EnumMap<RenderState.StateType, RenderState> getLocalRenderStates() {
        return this._renderStateList;
    }

    public String getName() {
        return this._name;
    }

    public Node getParent() {
        return this._parent;
    }

    @Override
    public Hintable getParentHintable() {
        return this._parent;
    }

    public RenderDelegate getRenderDelegate(Object obj) {
        Map<Object, RenderDelegate> map = this._delegateMap;
        if (map == null) {
            return null;
        }
        return obj == null ? map.get(defaultDelegateRef) : map.get(obj);
    }

    public ReadOnlyMatrix3 getRotation() {
        return this._localTransform.getMatrix();
    }

    public ReadOnlyVector3 getScale() {
        return this._localTransform.getScale();
    }

    @Override
    public SceneHints getSceneHints() {
        return this._sceneHints;
    }

    public ReadOnlyTransform getTransform() {
        return this._localTransform;
    }

    public ReadOnlyVector3 getTranslation() {
        return this._localTransform.getTranslation();
    }

    public Object getUserData() {
        return this._userData;
    }

    public BoundingVolume getWorldBound() {
        return this._worldBound;
    }

    public ReadOnlyMatrix3 getWorldRotation() {
        return this._worldTransform.getMatrix();
    }

    public ReadOnlyVector3 getWorldScale() {
        return this._worldTransform.getScale();
    }

    public ReadOnlyTransform getWorldTransform() {
        return this._worldTransform;
    }

    public ReadOnlyVector3 getWorldTranslation() {
        return this._worldTransform.getTranslation();
    }

    public boolean hasAncestor(Node node) {
        Node node2 = this._parent;
        if (node2 == null) {
            return false;
        }
        if (node2.equals(node)) {
            return true;
        }
        return this._parent.hasAncestor(node);
    }

    public boolean isDirty(DirtyType dirtyType) {
        return this._dirtyMark.contains(dirtyType);
    }

    public Vector3 localToWorld(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        return this._worldTransform.applyForward(readOnlyVector3, vector3);
    }

    public Spatial makeCopy(boolean z10) {
        try {
            Spatial spatial = (Spatial) getClass().newInstance();
            spatial.setName(getName());
            spatial.getSceneHints().set(this._sceneHints);
            spatial.setTransform(this._localTransform);
            Iterator<RenderState.StateType> it = this._renderStateList.o().iterator();
            while (it.hasNext()) {
                RenderState renderState = this._renderStateList.get(it.next());
                if (renderState != null) {
                    spatial.setRenderState(renderState);
                }
            }
            List<SpatialController<?>> list = this._controllers;
            if (list != null) {
                Iterator<SpatialController<?>> it2 = list.iterator();
                while (it2.hasNext()) {
                    spatial.addController(it2.next());
                }
            }
            return spatial;
        } catch (IllegalAccessException e10) {
            logger.log(Level.SEVERE, "Could not access final constructor of class " + getClass().getCanonicalName(), (Throwable) e10);
            throw new RuntimeException(e10);
        } catch (InstantiationException e11) {
            logger.log(Level.SEVERE, "Could not access final constructor of class " + getClass().getCanonicalName(), (Throwable) e11);
            throw new RuntimeException(e11);
        }
    }

    public void markDirty(DirtyType dirtyType) {
        markDirty(this, dirtyType);
    }

    public void onDraw(Renderer renderer) {
        CullHint cullHint = this._sceneHints.getCullHint();
        if (cullHint == CullHint.Always) {
            setLastFrustumIntersection(Camera.FrustumIntersect.Outside);
            return;
        }
        if (cullHint == CullHint.Never) {
            setLastFrustumIntersection(Camera.FrustumIntersect.Intersects);
            draw(renderer);
            return;
        }
        Camera currentCamera = Camera.getCurrentCamera();
        int planeState = currentCamera.getPlaneState();
        Node node = this._parent;
        Camera.FrustumIntersect frustumIntersect = node != null ? node._frustumIntersects : Camera.FrustumIntersect.Intersects;
        this._frustumIntersects = frustumIntersect;
        if (cullHint == CullHint.Dynamic && frustumIntersect == Camera.FrustumIntersect.Intersects) {
            this._frustumIntersects = currentCamera.contains(this._worldBound);
        }
        if (this._frustumIntersects != Camera.FrustumIntersect.Outside) {
            draw(renderer);
        }
        currentCamera.setPlaneState(planeState);
    }

    public void propagateBoundToRoot() {
        Node node = this._parent;
        if (node != null) {
            node.updateWorldBound(false);
            this._parent.propagateBoundToRoot();
        }
    }

    public void propagateDirtyDown(DirtyType... dirtyTypeArr) {
        for (DirtyType dirtyType : dirtyTypeArr) {
            this._dirtyMark.add(dirtyType);
        }
    }

    public void propagateDirtyUp(DirtyType... dirtyTypeArr) {
        for (DirtyType dirtyType : dirtyTypeArr) {
            this._dirtyMark.add(dirtyType);
        }
        Node node = this._parent;
        if (node != null) {
            node.propagateDirtyUp(dirtyTypeArr);
        }
    }

    public void propagateStatesFromRoot(Map<RenderState.StateType, Stack<RenderState>> map) {
        Node node = this._parent;
        if (node != null) {
            node.propagateStatesFromRoot(map);
        }
        for (RenderState renderState : this._renderStateList.values()) {
            Stack<RenderState> stack = map.get(renderState.getType());
            if (stack == null) {
                stack = new Stack<>();
                map.put(renderState.getType(), stack);
            }
            stack.push(renderState);
        }
    }

    public void propageEventUp(Spatial spatial, DirtyType dirtyType) {
        Node node;
        DirtyEventListener dirtyEventListener = this._listener;
        if ((dirtyEventListener != null ? dirtyEventListener.spatialDirty(spatial, dirtyType) : false) || (node = this._parent) == null) {
            return;
        }
        node.propageEventUp(spatial, dirtyType);
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        this._name = inputCapsule.readString("name", null);
        RenderState[] renderStateArr = (RenderState[]) CapsuleUtils.asArray(inputCapsule.readSavableArray("renderStateList", null), RenderState.class);
        this._renderStateList.clear();
        if (renderStateArr != null) {
            for (RenderState renderState : renderStateArr) {
                this._renderStateList.put((EnumMap<RenderState.StateType, RenderState>) renderState.getType(), (RenderState.StateType) renderState);
            }
        }
        Transform transform = this._localTransform;
        ReadOnlyTransform readOnlyTransform = Transform.IDENTITY;
        transform.set((Transform) inputCapsule.readSavable("localTransform", new Transform(readOnlyTransform)));
        this._worldTransform.set((Transform) inputCapsule.readSavable("worldTransform", new Transform(readOnlyTransform)));
        Savable readSavable = inputCapsule.readSavable("userData", null);
        if (readSavable != null) {
            this._userData = readSavable;
        }
        List<Savable> readSavableList = inputCapsule.readSavableList("controllers", null);
        if (readSavableList != null) {
            for (Savable savable : readSavableList) {
                if (savable instanceof SpatialController) {
                    addController((SpatialController) savable);
                }
            }
        }
    }

    public boolean removeController(SpatialController<?> spatialController) {
        List<SpatialController<?>> list = this._controllers;
        if (list == null) {
            return false;
        }
        return list.remove(spatialController);
    }

    public boolean removeFromParent() {
        Node node = this._parent;
        if (node == null) {
            return false;
        }
        node.detachChild(this);
        return true;
    }

    public void setLastFrustumIntersection(Camera.FrustumIntersect frustumIntersect) {
        this._frustumIntersects = frustumIntersect;
    }

    public void setListener(DirtyEventListener dirtyEventListener) {
        this._listener = dirtyEventListener;
    }

    public void setMatrix(ReadOnlyMatrix3 readOnlyMatrix3) {
        this._localTransform.setMatrix(readOnlyMatrix3);
        markDirty(DirtyType.Transform);
    }

    public void setName(String str) {
        this._name = str;
    }

    public void setParent(Node node) {
        this._parent = node;
    }

    public void setRenderDelegate(RenderDelegate renderDelegate, Object obj) {
        if (this._delegateMap == null) {
            if (renderDelegate == null) {
                return;
            } else {
                this._delegateMap = new O1().l().i();
            }
        }
        if (renderDelegate != null) {
            if (obj == null) {
                this._delegateMap.put(defaultDelegateRef, renderDelegate);
                return;
            } else {
                this._delegateMap.put(obj, renderDelegate);
                return;
            }
        }
        if (obj == null) {
            this._delegateMap.remove(defaultDelegateRef);
        } else {
            this._delegateMap.remove(obj);
        }
        if (this._delegateMap.isEmpty()) {
            this._delegateMap = null;
        }
    }

    public RenderState setRenderState(RenderState renderState) {
        if (renderState == null) {
            return null;
        }
        RenderState.StateType type = renderState.getType();
        RenderState renderState2 = this._renderStateList.get(type);
        this._renderStateList.put((EnumMap<RenderState.StateType, RenderState>) type, (RenderState.StateType) renderState);
        markDirty(DirtyType.RenderState);
        return renderState2;
    }

    public void setRotation(ReadOnlyMatrix3 readOnlyMatrix3) {
        this._localTransform.setRotation(readOnlyMatrix3);
        markDirty(DirtyType.Transform);
    }

    public void setScale(ReadOnlyVector3 readOnlyVector3) {
        this._localTransform.setScale(readOnlyVector3);
        markDirty(DirtyType.Transform);
    }

    public void setTransform(ReadOnlyTransform readOnlyTransform) {
        this._localTransform.set(readOnlyTransform);
        markDirty(DirtyType.Transform);
    }

    public void setTranslation(ReadOnlyVector3 readOnlyVector3) {
        this._localTransform.setTranslation(readOnlyVector3);
        markDirty(DirtyType.Transform);
    }

    public void setUserData(Object obj) {
        this._userData = obj;
    }

    public void setWorldRotation(ReadOnlyMatrix3 readOnlyMatrix3) {
        this._worldTransform.setRotation(readOnlyMatrix3);
    }

    public void setWorldScale(ReadOnlyVector3 readOnlyVector3) {
        this._worldTransform.setScale(readOnlyVector3);
    }

    public void setWorldTransform(ReadOnlyTransform readOnlyTransform) {
        this._worldTransform.set(readOnlyTransform);
    }

    public void setWorldTranslation(ReadOnlyVector3 readOnlyVector3) {
        this._worldTransform.setTranslation(readOnlyVector3);
    }

    public void sortLights() {
    }

    public String toString() {
        return this._name + " (" + getClass().getName() + ')';
    }

    public void updateChildren(double d10) {
    }

    public void updateControllers(double d10) {
        List<SpatialController<?>> list = this._controllers;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                try {
                    SpatialController<?> spatialController = this._controllers.get(i10);
                    if (spatialController != null) {
                        spatialController.update(d10, this);
                    }
                } catch (IndexOutOfBoundsException unused) {
                    return;
                }
            }
        }
    }

    public void updateGeometricState(double d10) {
        updateGeometricState(d10, true);
    }

    public abstract void updateWorldBound(boolean z10);

    public void updateWorldRenderStates(boolean z10) {
        updateWorldRenderStates(z10, null);
    }

    public void updateWorldTransform(boolean z10) {
        Node node = this._parent;
        if (node != null) {
            node._worldTransform.multiply(this._localTransform, this._worldTransform);
        } else {
            this._worldTransform.set(this._localTransform);
        }
        clearDirty(DirtyType.Transform);
    }

    public Vector3 worldToLocal(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        return this._worldTransform.applyInverse(readOnlyVector3, vector3);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(this._name, "name", (String) null);
        outputCapsule.write((Savable[]) this._renderStateList.values().toArray(new RenderState[0]), "renderStateList", (Savable[]) null);
        Transform transform = this._localTransform;
        ReadOnlyTransform readOnlyTransform = Transform.IDENTITY;
        outputCapsule.write(transform, "localTransform", new Transform(readOnlyTransform));
        outputCapsule.write(this._worldTransform, "worldTransform", new Transform(readOnlyTransform));
        Object obj = this._userData;
        if (obj instanceof Savable) {
            outputCapsule.write((Savable) obj, "userData", (Savable) null);
        }
        if (this._controllers != null) {
            ArrayList arrayList = new ArrayList();
            for (SpatialController<?> spatialController : this._controllers) {
                if (spatialController instanceof Savable) {
                    arrayList.add((Savable) spatialController);
                }
            }
            outputCapsule.writeSavableList(arrayList, "controllers", null);
        }
    }

    public void addTranslation(double d10, double d11, double d12) {
        this._localTransform.translate(d10, d11, d12);
        markDirty(DirtyType.Transform);
    }

    public void markDirty(Spatial spatial, DirtyType dirtyType) {
        switch (AnonymousClass1.$SwitchMap$com$ardor3d$scenegraph$event$DirtyType[dirtyType.ordinal()]) {
            case 1:
                DirtyType dirtyType2 = DirtyType.Transform;
                DirtyType dirtyType3 = DirtyType.Bounding;
                propagateDirtyUp(dirtyType2, dirtyType3);
                propagateDirtyDown(dirtyType2, dirtyType3);
                break;
            case 2:
                DirtyType dirtyType4 = DirtyType.RenderState;
                propagateDirtyUp(dirtyType4);
                propagateDirtyDown(dirtyType4);
                break;
            case 3:
                propagateDirtyUp(DirtyType.Bounding);
                break;
            case 4:
                DirtyType dirtyType5 = DirtyType.Transform;
                DirtyType dirtyType6 = DirtyType.RenderState;
                DirtyType dirtyType7 = DirtyType.Bounding;
                propagateDirtyDown(dirtyType5, dirtyType6, dirtyType7);
                propagateDirtyUp(dirtyType7);
                break;
            case 5:
            case 6:
                propagateDirtyUp(DirtyType.Bounding);
                break;
        }
        propageEventUp(spatial, dirtyType);
    }

    public void setWorldRotation(ReadOnlyQuaternion readOnlyQuaternion) {
        this._worldTransform.setRotation(readOnlyQuaternion);
    }

    public void setWorldScale(double d10, double d11, double d12) {
        this._worldTransform.setScale(d10, d11, d12);
    }

    public void setWorldTranslation(double d10, double d11, double d12) {
        this._worldTransform.setTranslation(d10, d11, d12);
    }

    public void updateGeometricState(double d10, boolean z10) {
        updateControllers(d10);
        if (this._dirtyMark.isEmpty()) {
            updateChildren(d10);
            return;
        }
        if (isDirty(DirtyType.Transform)) {
            updateWorldTransform(false);
        }
        DirtyType dirtyType = DirtyType.RenderState;
        if (isDirty(dirtyType)) {
            updateWorldRenderStates(false);
            clearDirty(dirtyType);
        }
        updateChildren(d10);
        if (isDirty(DirtyType.Bounding)) {
            updateWorldBound(false);
            if (z10) {
                propagateBoundToRoot();
            }
        }
    }

    public void updateWorldRenderStates(boolean z10, Map<RenderState.StateType, Stack<RenderState>> map) {
        boolean z11 = map == null;
        if (z11) {
            map = Q1.Y();
            propagateStatesFromRoot(map);
        } else {
            for (RenderState renderState : this._renderStateList.values()) {
                Stack<RenderState> stack = map.get(renderState.getType());
                if (stack == null) {
                    stack = new Stack<>();
                    map.put(renderState.getType(), stack);
                }
                stack.push(renderState);
            }
        }
        applyWorldRenderStates(z10, map);
        if (z11) {
            return;
        }
        Iterator<RenderState> it = this._renderStateList.values().iterator();
        while (it.hasNext()) {
            map.get(it.next().getType()).pop();
        }
    }

    public SpatialController<?> removeController(int i10) {
        List<SpatialController<?>> list = this._controllers;
        if (list == null) {
            return null;
        }
        return list.remove(i10);
    }

    public void setRotation(ReadOnlyQuaternion readOnlyQuaternion) {
        this._localTransform.setRotation(readOnlyQuaternion);
        markDirty(DirtyType.Transform);
    }

    public void setScale(double d10) {
        this._localTransform.setScale(d10);
        markDirty(DirtyType.Transform);
    }

    public void setTranslation(double d10, double d11, double d12) {
        this._localTransform.setTranslation(d10, d11, d12);
        markDirty(DirtyType.Transform);
    }

    public void setWorldScale(double d10) {
        this._worldTransform.setScale(d10);
    }

    public void setScale(double d10, double d11, double d12) {
        this._localTransform.setScale(d10, d11, d12);
        markDirty(DirtyType.Transform);
    }

    public Spatial(String str) {
        this();
        this._name = str;
    }
}
