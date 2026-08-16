package com.jme3.scene.debug.custom;

import com.jme3.anim.Armature;
import com.jme3.anim.Joint;
import com.jme3.anim.SkinningControl;
import com.jme3.app.Application;
import com.jme3.app.state.BaseAppState;
import com.jme3.collision.CollisionResults;
import com.jme3.input.InputManager;
import com.jme3.input.controls.ActionListener;
import com.jme3.input.controls.KeyTrigger;
import com.jme3.input.controls.MouseButtonTrigger;
import com.jme3.math.Ray;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.SceneGraphVisitorAdapter;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.AbstractControl;
import com.jme3.util.TempVars;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ArmatureDebugAppState extends BaseAppState {
    public static final float CLICK_MAX_DELAY = 0.2f;
    private static final String PICK_JOINT = "ArmatureDebugAppState_PickJoint";
    private static final String TOGGLE_JOINTS = "ArmatureDebugAppState_DisplayAllJoints";
    private static final Logger logger = Logger.getLogger(ArmatureDebugAppState.class.getName());
    private Camera cam;
    private InputManager inputManager;
    private ViewPort vp;
    private Node debugNode = new Node("ArmaturesDebugNode");
    private final Map<Armature, ArmatureDebugger> armatures = new HashMap();
    private final List<Consumer<Joint>> selectionListeners = new ArrayList();
    private boolean displayNonDeformingJoints = false;
    private float clickDelay = -1.0f;
    private boolean showOnTop = true;
    private boolean enableJointInfoLogging = true;
    private final ActionListener actionListener = new ActionListener() {
        private final CollisionResults results = new CollisionResults();

        private void printJointInfo(Joint joint, ArmatureDebugger armatureDebugger) {
            if (ArmatureDebugAppState.this.enableJointInfoLogging) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("\n-----------------------\nSelected Joint : ");
                sb2.append(joint.getName());
                sb2.append(" in armature ");
                sb2.append(armatureDebugger.getName());
                sb2.append("\nRoot Bone : ");
                sb2.append(joint.getParent() == null);
                sb2.append("\n-----------------------\nLocal translation: ");
                sb2.append((Object) joint.getLocalTranslation());
                sb2.append("\nLocal rotation: ");
                sb2.append((Object) joint.getLocalRotation());
                sb2.append("\nLocal scale: ");
                sb2.append((Object) joint.getLocalScale());
                sb2.append("\n---\nModel translation: ");
                sb2.append((Object) joint.getModelTransform().getTranslation());
                sb2.append("\nModel rotation: ");
                sb2.append((Object) joint.getModelTransform().getRotation());
                sb2.append("\nModel scale: ");
                sb2.append((Object) joint.getModelTransform().getScale());
                sb2.append("\n---\nBind inverse Transform: \n");
                sb2.append((Object) joint.getInverseModelBindMatrix());
                ArmatureDebugAppState.logger.log(Level.INFO, sb2.toString());
            }
        }

        private Ray screenPointToRay(Camera camera, Vector2f vector2f) {
            TempVars tempVars = TempVars.get();
            Vector3f vector3f = tempVars.vect1;
            Vector3f vector3f2 = tempVars.vect2;
            camera.getWorldCoordinates(vector2f, 0.0f, vector3f);
            camera.getWorldCoordinates(vector2f, 1.0f, vector3f2);
            Ray ray = new Ray(vector3f, vector3f2.subtractLocal(vector3f).normalizeLocal());
            tempVars.release();
            return ray;
        }

        @Override
        public void onAction(String str, boolean z10, float f10) {
            if (ArmatureDebugAppState.this.isEnabled()) {
                if (!str.equals(ArmatureDebugAppState.PICK_JOINT)) {
                    if (str.equals(ArmatureDebugAppState.TOGGLE_JOINTS) && z10) {
                        ArmatureDebugAppState.this.displayNonDeformingJoints = !r2.displayNonDeformingJoints;
                        Iterator it = ArmatureDebugAppState.this.armatures.values().iterator();
                        while (it.hasNext()) {
                            ((ArmatureDebugger) it.next()).displayNonDeformingJoint(ArmatureDebugAppState.this.displayNonDeformingJoints);
                        }
                        return;
                    }
                    return;
                }
                if (z10) {
                    ArmatureDebugAppState.this.clickDelay = 0.0f;
                    return;
                }
                if (ArmatureDebugAppState.this.clickDelay < 0.2f) {
                    Ray screenPointToRay = screenPointToRay(ArmatureDebugAppState.this.cam, ArmatureDebugAppState.this.inputManager.getCursorPosition());
                    this.results.clear();
                    ArmatureDebugAppState.this.debugNode.collideWith(screenPointToRay, this.results);
                    if (this.results.size() == 0) {
                        Iterator it2 = ArmatureDebugAppState.this.armatures.values().iterator();
                        while (it2.hasNext()) {
                            ((ArmatureDebugger) it2.next()).select(null);
                        }
                        return;
                    }
                    Geometry geometry = this.results.getClosestCollision().getGeometry();
                    ArmatureDebugAppState.logger.log(Level.INFO, "Pick: {0}", geometry);
                    for (ArmatureDebugger armatureDebugger : ArmatureDebugAppState.this.armatures.values()) {
                        Joint select = armatureDebugger.select(geometry);
                        if (select != null) {
                            ArmatureDebugAppState.this.notifySelectionListeners(select);
                            printJointInfo(select, armatureDebugger);
                            return;
                        }
                    }
                }
            }
        }
    };

    public static class ArmatureDebuggerLink extends AbstractControl {
        private final Spatial target;

        public ArmatureDebuggerLink(Spatial spatial) {
            this.target = spatial;
        }

        @Override
        public void controlRender(RenderManager renderManager, ViewPort viewPort) {
        }

        @Override
        public void controlUpdate(float f10) {
            this.spatial.setLocalTransform(this.target.getWorldTransform());
        }
    }

    public static class JointInfoVisitor extends SceneGraphVisitorAdapter {
        private final Armature armature;
        private final List<Joint> deformingJoints = new ArrayList();

        public JointInfoVisitor(Armature armature) {
            this.armature = armature;
        }

        @Override
        public void visit(Geometry geometry) {
            for (Joint joint : this.armature.getJointList()) {
                if (geometry.getMesh().isAnimatedByJoint(this.armature.getJointIndex(joint))) {
                    this.deformingJoints.add(joint);
                }
            }
        }
    }

    private void collectGeometries(Node node, List<Geometry> list) {
        for (Spatial spatial : node.getChildren()) {
            if (spatial instanceof Geometry) {
                list.add((Geometry) spatial);
            } else if (spatial instanceof Node) {
                collectGeometries((Node) spatial, list);
            }
        }
    }

    public void notifySelectionListeners(Joint joint) {
        Iterator<Consumer<Joint>> it = this.selectionListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(joint);
        }
    }

    private void registerInput() {
        this.inputManager.addMapping(PICK_JOINT, new MouseButtonTrigger(0));
        this.inputManager.addMapping(TOGGLE_JOINTS, new KeyTrigger(68));
        this.inputManager.addListener(this.actionListener, PICK_JOINT, TOGGLE_JOINTS);
    }

    private void unregisterInput() {
        this.inputManager.deleteMapping(PICK_JOINT);
        this.inputManager.deleteMapping(TOGGLE_JOINTS);
        this.inputManager.removeListener(this.actionListener);
    }

    public ArmatureDebugger addArmatureFrom(SkinningControl skinningControl) {
        return addArmatureFrom(skinningControl.getArmature(), skinningControl.getSpatial());
    }

    public void addSelectionListener(Consumer<Joint> consumer) {
        this.selectionListeners.add(consumer);
    }

    @Override
    public void cleanup(Application application) {
        unregisterInput();
        application.getRenderManager().removeMainView(this.vp);
        this.armatures.clear();
        this.selectionListeners.clear();
        this.debugNode.detachAllChildren();
    }

    public void clearSelectionListeners() {
        this.selectionListeners.clear();
    }

    @Override
    public void initialize(Application application) {
        this.inputManager = application.getInputManager();
        this.cam = application.getCamera();
        ViewPort createMainView = application.getRenderManager().createMainView("ArmatureDebugView", this.cam);
        this.vp = createMainView;
        createMainView.attachScene(this.debugNode);
        this.vp.setClearDepth(this.showOnTop);
        Iterator<ArmatureDebugger> it = this.armatures.values().iterator();
        while (it.hasNext()) {
            it.next().initialize(application.getAssetManager(), this.cam);
        }
        this.vp.setEnabled(false);
        registerInput();
    }

    public boolean isJointInfoLoggingEnabled() {
        return this.enableJointInfoLogging;
    }

    public boolean isShowOnTop() {
        return this.showOnTop;
    }

    @Override
    public void onDisable() {
        this.vp.setEnabled(false);
    }

    @Override
    public void onEnable() {
        this.vp.setEnabled(true);
    }

    public void removeSelectionListener(Consumer<Joint> consumer) {
        this.selectionListeners.remove(consumer);
    }

    @Override
    public void render(RenderManager renderManager) {
        this.debugNode.updateGeometricState();
    }

    public void setJointInfoLoggingEnabled(boolean z10) {
        this.enableJointInfoLogging = z10;
    }

    public void setShowOnTop(boolean z10) {
        this.showOnTop = z10;
        ViewPort viewPort = this.vp;
        if (viewPort != null) {
            viewPort.setClearDepth(z10);
        }
    }

    @Override
    public void update(float f10) {
        float f11 = this.clickDelay;
        if (f11 > -1.0f) {
            this.clickDelay = f11 + f10;
        }
        this.debugNode.updateLogicalState(f10);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ArmatureDebugger addArmatureFrom(Armature armature, Spatial spatial) {
        Geometry geometry;
        ArmatureDebugger armatureDebugger = this.armatures.get(armature);
        if (armatureDebugger != null) {
            return armatureDebugger;
        }
        JointInfoVisitor jointInfoVisitor = new JointInfoVisitor(armature);
        spatial.depthFirstTraversal(jointInfoVisitor);
        if (spatial instanceof Node) {
            ArrayList arrayList = new ArrayList();
            collectGeometries((Node) spatial, arrayList);
            if (arrayList.size() == 1) {
                geometry = arrayList.get(0);
                ArmatureDebugger armatureDebugger2 = new ArmatureDebugger(spatial.getName() + "_ArmatureDebugger", armature, jointInfoVisitor.deformingJoints);
                armatureDebugger2.addControl(new ArmatureDebuggerLink(geometry));
                this.armatures.put(armature, armatureDebugger2);
                this.debugNode.attachChild(armatureDebugger2);
                if (isInitialized()) {
                    armatureDebugger2.initialize(getApplication().getAssetManager(), this.cam);
                }
                return armatureDebugger2;
            }
        }
        geometry = spatial;
        ArmatureDebugger armatureDebugger22 = new ArmatureDebugger(spatial.getName() + "_ArmatureDebugger", armature, jointInfoVisitor.deformingJoints);
        armatureDebugger22.addControl(new ArmatureDebuggerLink(geometry));
        this.armatures.put(armature, armatureDebugger22);
        this.debugNode.attachChild(armatureDebugger22);
        if (isInitialized()) {
        }
        return armatureDebugger22;
    }
}
