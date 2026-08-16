package com.jme3.bullet.debug;

import com.jme3.app.Application;
import com.jme3.app.state.BaseAppState;
import com.jme3.asset.AssetManager;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.joints.Anchor;
import com.jme3.bullet.joints.Constraint;
import com.jme3.bullet.joints.JointEnd;
import com.jme3.bullet.joints.PhysicsJoint;
import com.jme3.bullet.joints.SoftPhysicsJoint;
import com.jme3.bullet.objects.PhysicsBody;
import com.jme3.bullet.objects.PhysicsCharacter;
import com.jme3.bullet.objects.PhysicsGhostObject;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.bullet.objects.PhysicsVehicle;
import com.jme3.material.Material;
import com.jme3.material.RenderState;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Transform;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.Control;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import jf.f;
import jme3utilities.debug.a;
import p000if.C13702E;
import p000if.C13716l;

public class BulletDebugAppState extends BaseAppState {
    static final boolean $assertionsDisabled = false;
    private AssetManager assetManager;
    private final DebugConfiguration configuration;
    private Material gravity;
    private Material jointMaterialA;
    private Material jointMaterialB;
    private Material white;
    private static final ColorRGBA blueColor = new ColorRGBA(0.0f, 0.0f, 1.0f, 1.0f);
    private static final ColorRGBA brownColor = new ColorRGBA(0.25490198f, 0.15686275f, 0.09803922f, 1.0f);
    private static final ColorRGBA cyanColor = new ColorRGBA(0.0f, 1.0f, 1.0f, 1.0f);
    private static final ColorRGBA greenColor = new ColorRGBA(0.0f, 1.0f, 0.0f, 1.0f);
    private static final ColorRGBA magentaColor = new ColorRGBA(1.0f, 0.0f, 1.0f, 1.0f);
    private static final ColorRGBA orangeColor = new ColorRGBA(0.9843137f, 0.50980395f, 0.0f, 1.0f);
    private static final ColorRGBA pinkColor = new ColorRGBA(1.0f, 0.68f, 0.68f, 1.0f);
    private static final ColorRGBA redColor = new ColorRGBA(1.0f, 0.0f, 0.0f, 1.0f);
    private static final ColorRGBA whiteColor = new ColorRGBA(1.0f, 1.0f, 1.0f, 1.0f);
    private static final ColorRGBA yellowColor = new ColorRGBA(1.0f, 1.0f, 0.0f, 1.0f);
    public static final Logger logger = Logger.getLogger(BulletDebugAppState.class.getName());
    public static final Material enableChildColoring = new Material();
    private static final Transform transformIdentity = new Transform();
    private HashMap<PhysicsCollisionObject, Node> pcoMap = new HashMap<>(64);
    private Map<PhysicsJoint, Node> jointMap = new HashMap(64);
    private final Material[] blues = new Material[3];
    private final Material[] childMaterials = new Material[10];
    private final Material[] magentas = new Material[3];
    private final Material[] pink = new Material[3];
    private final Material[] yellows = new Material[3];
    private final Node root = new Node("Physics Debug Root Node");

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$bullet$joints$JointEnd;

        static {
            int[] iArr = new int[JointEnd.values().length];
            $SwitchMap$com$jme3$bullet$joints$JointEnd = iArr;
            try {
                iArr[JointEnd.A.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$bullet$joints$JointEnd[JointEnd.B.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public interface DebugAppStateFilter {
        boolean displayObject(Object obj);
    }

    public BulletDebugAppState(DebugConfiguration debugConfiguration) {
        C13702E.t(debugConfiguration, "configuration");
        this.configuration = debugConfiguration;
    }

    private void updateAngularVelocities() {
        DebugAppStateFilter angularVelocityFilter = this.configuration.getAngularVelocityFilter();
        if (angularVelocityFilter == null) {
            return;
        }
        for (Map.Entry<PhysicsCollisionObject, Node> entry : this.pcoMap.entrySet()) {
            PhysicsCollisionObject key = entry.getKey();
            boolean z10 = (key instanceof PhysicsRigidBody) && ((PhysicsRigidBody) key).isDynamic() && angularVelocityFilter.displayObject(key);
            Node parent = entry.getValue().getParent();
            Control control = parent.getControl((Class<Control>) AngularVelocityDebugControl.class);
            if (control == null && z10) {
                logger.log(Level.FINE, "Create AngularVelocityDebugControl");
                parent.addControl(new AngularVelocityDebugControl(this, key));
            } else if (control != null && !z10) {
                parent.removeControl(control);
            }
        }
    }

    private void updateBoundingBoxes() {
        DebugAppStateFilter boundingBoxFilter = this.configuration.getBoundingBoxFilter();
        if (boundingBoxFilter == null) {
            return;
        }
        for (Map.Entry<PhysicsCollisionObject, Node> entry : this.pcoMap.entrySet()) {
            PhysicsCollisionObject key = entry.getKey();
            boolean displayObject = boundingBoxFilter.displayObject(key);
            Node parent = entry.getValue().getParent();
            Control control = parent.getControl((Class<Control>) BoundingBoxDebugControl.class);
            if (control == null && displayObject) {
                logger.log(Level.FINE, "Create new BoundingBoxDebugControl");
                parent.addControl(new BoundingBoxDebugControl(this, key));
            } else if (control != null && !displayObject) {
                parent.removeControl(control);
            }
        }
    }

    private void updateGravityVectors() {
        DebugAppStateFilter gravityVectorFilter = this.configuration.getGravityVectorFilter();
        if (gravityVectorFilter == null) {
            return;
        }
        for (Map.Entry<PhysicsCollisionObject, Node> entry : this.pcoMap.entrySet()) {
            PhysicsCollisionObject key = entry.getKey();
            boolean z10 = false;
            boolean z11 = (key instanceof PhysicsRigidBody) && ((PhysicsRigidBody) key).isKinematic();
            if ((key instanceof PhysicsBody) && !key.isStatic() && !z11 && gravityVectorFilter.displayObject(key)) {
                z10 = true;
            }
            Node parent = entry.getValue().getParent();
            Control control = parent.getControl((Class<Control>) GravityVectorDebugControl.class);
            if (control == null && z10) {
                logger.log(Level.FINE, "Create new GravityVectorDebugControl");
                parent.addControl(new GravityVectorDebugControl(this, key));
            } else if (control != null && !z10) {
                parent.removeControl(control);
            }
        }
    }

    private void updateJoints() {
        Control softJointDebugControl;
        DebugAppStateFilter filter = this.configuration.getFilter();
        Map<PhysicsJoint, Node> map = this.jointMap;
        this.jointMap = new HashMap(map.size());
        for (PhysicsJoint physicsJoint : this.configuration.getSpace().getJointList()) {
            if (filter == null || filter.displayObject(physicsJoint)) {
                Node remove = map.remove(physicsJoint);
                if (remove == null) {
                    remove = new Node(physicsJoint.toString());
                    attachChild(remove);
                    if (physicsJoint instanceof Anchor) {
                        logger.log(Level.FINE, "Create new AnchorDebugControl");
                        softJointDebugControl = new AnchorDebugControl(this, (Anchor) physicsJoint);
                    } else if (physicsJoint instanceof Constraint) {
                        logger.log(Level.FINE, "Create new ConstraintDebugControl");
                        softJointDebugControl = new ConstraintDebugControl(this, (Constraint) physicsJoint);
                    } else {
                        logger.log(Level.FINE, "Create new SoftJointDebugControl");
                        softJointDebugControl = new SoftJointDebugControl(this, (SoftPhysicsJoint) physicsJoint);
                    }
                    remove.addControl(softJointDebugControl);
                }
                this.jointMap.put(physicsJoint, remove);
            }
        }
        Iterator<Node> it = map.values().iterator();
        while (it.hasNext()) {
            it.next().removeFromParent();
        }
    }

    private void updatePcoMap() {
        HashMap<PhysicsCollisionObject, Node> hashMap = this.pcoMap;
        this.pcoMap = new HashMap<>(hashMap.size());
        for (PhysicsCollisionObject physicsCollisionObject : this.configuration.getSpace().getPcoList()) {
            Node remove = hashMap.remove(physicsCollisionObject);
            if (remove == null) {
                Node node = new Node(physicsCollisionObject.toString());
                attachChild(node);
                Node node2 = new Node(((Object) physicsCollisionObject) + " transformed");
                node.attachChild(node2);
                remove = node2;
            }
            this.pcoMap.put(physicsCollisionObject, remove);
        }
        Iterator<Node> it = hashMap.values().iterator();
        while (it.hasNext()) {
            it.next().getParent().removeFromParent();
        }
    }

    private void updateSweptSpheres() {
        DebugAppStateFilter sweptSphereFilter = this.configuration.getSweptSphereFilter();
        if (sweptSphereFilter == null) {
            return;
        }
        for (Map.Entry<PhysicsCollisionObject, Node> entry : this.pcoMap.entrySet()) {
            PhysicsCollisionObject key = entry.getKey();
            boolean z10 = sweptSphereFilter.displayObject(key) && key.getCcdMotionThreshold() > 0.0f && key.getCcdSweptSphereRadius() > 0.0f;
            Node parent = entry.getValue().getParent();
            Control control = parent.getControl((Class<Control>) SweptSphereDebugControl.class);
            if (control == null && z10) {
                logger.log(Level.FINE, "Create new SweptSphereDebugControl");
                parent.addControl(new SweptSphereDebugControl(this, key));
            } else if (control != null && !z10) {
                parent.removeControl(control);
            }
        }
    }

    private void updateVehicles() {
        DebugAppStateFilter filter = this.configuration.getFilter();
        for (PhysicsVehicle physicsVehicle : this.configuration.getSpace().getVehicleList()) {
            boolean z10 = filter == null || filter.displayObject(physicsVehicle);
            Node node = this.pcoMap.get(physicsVehicle);
            Control control = node.getControl((Class<Control>) BulletVehicleDebugControl.class);
            if (control == null && z10) {
                logger.log(Level.FINE, "Create new BulletVehicleDebugControl");
                node.addControl(new BulletVehicleDebugControl(this, physicsVehicle));
            } else if (control != null && !z10) {
                node.removeControl(control);
            }
        }
    }

    private void updateVelocityVectors() {
        DebugAppStateFilter velocityVectorFilter = this.configuration.getVelocityVectorFilter();
        if (velocityVectorFilter == null) {
            return;
        }
        for (Map.Entry<PhysicsCollisionObject, Node> entry : this.pcoMap.entrySet()) {
            PhysicsCollisionObject key = entry.getKey();
            boolean z10 = (key instanceof PhysicsRigidBody) && ((PhysicsRigidBody) key).isDynamic() && velocityVectorFilter.displayObject(key);
            Node parent = entry.getValue().getParent();
            Control control = parent.getControl((Class<Control>) VelocityVectorDebugControl.class);
            if (control == null && z10) {
                logger.log(Level.FINE, "Create new VelocityVectorDebugControl");
                parent.addControl(new VelocityVectorDebugControl(this, key));
            } else if (control != null && !z10) {
                parent.removeControl(control);
            }
        }
    }

    public void attachChild(Spatial spatial) {
        this.root.attachChild(spatial);
    }

    @Override
    public void cleanup(Application application) {
    }

    public Material createWireMaterial(AssetManager assetManager, ColorRGBA colorRGBA, String str, int i10) {
        C13702E.t(assetManager, "asset manager");
        C13702E.t(colorRGBA, "color");
        C13702E.i(i10, "number of sides", 1, 2);
        Material q10 = C13716l.q(assetManager, colorRGBA);
        q10.setName(str);
        RenderState additionalRenderState = q10.getAdditionalRenderState();
        if (i10 > 1) {
            additionalRenderState.setFaceCullMode(RenderState.FaceCullMode.Off);
        }
        return q10;
    }

    public Material getActiveMaterial(int i10) {
        return this.magentas[i10];
    }

    public Material getAngularVelocityMaterial() {
        return this.magentas[2];
    }

    public Material getBoundingBoxMaterial() {
        return this.white;
    }

    public Material getCharacterMaterial(int i10) {
        return this.pink[i10];
    }

    public Material getChildMaterial(int i10) {
        return this.childMaterials[f.K(i10, this.childMaterials.length)];
    }

    public DebugConfiguration getConfiguration() {
        return this.configuration;
    }

    public Material getGhostMaterial(int i10) {
        return this.yellows[i10];
    }

    public Material getGravityVectorMaterial() {
        return this.gravity;
    }

    public Material getInactiveMaterial(int i10) {
        return this.blues[i10];
    }

    public Material getJointMaterial(JointEnd jointEnd) {
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$bullet$joints$JointEnd[jointEnd.ordinal()];
        if (i10 == 1) {
            return this.jointMaterialA;
        }
        if (i10 == 2) {
            return this.jointMaterialB;
        }
        throw new IllegalArgumentException(jointEnd.toString());
    }

    public HashMap<PhysicsCollisionObject, Node> getPcoMap() {
        return this.pcoMap;
    }

    public Node getRootNode() {
        return this.root;
    }

    public Material getSweptSphereMaterial() {
        return this.white;
    }

    public Material getVelocityVectorMaterial() {
        return this.white;
    }

    @Override
    public void initialize(Application application) {
        AssetManager assetManager = application.getAssetManager();
        this.assetManager = assetManager;
        setupMaterials(assetManager);
        DebugInitListener initListener = this.configuration.getInitListener();
        if (initListener != null) {
            initListener.bulletDebugInit(this.root);
        }
        this.root.setShadowMode(this.configuration.shadowMode());
    }

    @Override
    public void onDisable() {
        for (ViewPort viewPort : this.configuration.listViewPorts()) {
            viewPort.detachScene(this.root);
        }
    }

    @Override
    public void onEnable() {
        for (ViewPort viewPort : this.configuration.listViewPorts()) {
            viewPort.attachScene(this.root);
        }
    }

    @Override
    public void render(RenderManager renderManager) {
        super.render(renderManager);
        this.configuration.renderAllViewPorts(renderManager, this.root);
    }

    public void setAngularVelocityFilter(DebugAppStateFilter debugAppStateFilter) {
        this.configuration.setAngularVelocityFilter(debugAppStateFilter);
        Iterator<Node> it = this.pcoMap.values().iterator();
        while (it.hasNext()) {
            Node parent = it.next().getParent();
            parent.removeControl(parent.getControl(AngularVelocityDebugControl.class));
        }
    }

    public void setBoundingBoxFilter(DebugAppStateFilter debugAppStateFilter) {
        this.configuration.setBoundingBoxFilter(debugAppStateFilter);
        Iterator<Node> it = this.pcoMap.values().iterator();
        while (it.hasNext()) {
            Node parent = it.next().getParent();
            parent.removeControl(parent.getControl(BoundingBoxDebugControl.class));
        }
    }

    public void setFilter(DebugAppStateFilter debugAppStateFilter) {
        this.configuration.setFilter(debugAppStateFilter);
    }

    public void setGravityVectorFilter(DebugAppStateFilter debugAppStateFilter) {
        this.configuration.setGravityVectorFilter(debugAppStateFilter);
        Iterator<Node> it = this.pcoMap.values().iterator();
        while (it.hasNext()) {
            Node parent = it.next().getParent();
            parent.removeControl(parent.getControl(GravityVectorDebugControl.class));
        }
    }

    public void setJointLineWidth(float f10) {
        C13702E.h(f10, "width", 1.0f, Float.MAX_VALUE);
        this.configuration.setJointLineWidth(f10);
        Material material = this.jointMaterialA;
        if (material != null) {
            material.getAdditionalRenderState().setLineWidth(f10);
            this.jointMaterialB.getAdditionalRenderState().setLineWidth(f10);
        }
    }

    public void setSweptSphereFilter(DebugAppStateFilter debugAppStateFilter) {
        this.configuration.setSweptSphereFilter(debugAppStateFilter);
        Iterator<Node> it = this.pcoMap.values().iterator();
        while (it.hasNext()) {
            Node parent = it.next().getParent();
            parent.removeControl(parent.getControl(SweptSphereDebugControl.class));
        }
    }

    public void setVelocityVectorFilter(DebugAppStateFilter debugAppStateFilter) {
        this.configuration.setVelocityVectorFilter(debugAppStateFilter);
        Iterator<Node> it = this.pcoMap.values().iterator();
        while (it.hasNext()) {
            Node parent = it.next().getParent();
            parent.removeControl(parent.getControl(VelocityVectorDebugControl.class));
        }
    }

    public void setupMaterials(AssetManager assetManager) {
        Material e10 = C13716l.e(assetManager);
        Material[] materialArr = this.blues;
        materialArr[0] = e10;
        ColorRGBA colorRGBA = blueColor;
        materialArr[1] = createWireMaterial(assetManager, colorRGBA, "debug blue ss", 1);
        this.blues[1].getAdditionalRenderState().setWireframe(true);
        this.blues[1].setName("debug blue ss");
        this.blues[2] = createWireMaterial(assetManager, colorRGBA, "debug blue ds", 2);
        this.childMaterials[0] = C13716l.n(assetManager, whiteColor);
        this.childMaterials[1] = C13716l.n(assetManager, redColor);
        this.childMaterials[2] = C13716l.n(assetManager, greenColor);
        this.childMaterials[3] = C13716l.n(assetManager, colorRGBA);
        this.childMaterials[4] = C13716l.n(assetManager, yellowColor);
        this.childMaterials[5] = C13716l.n(assetManager, cyanColor);
        this.childMaterials[6] = C13716l.n(assetManager, orangeColor);
        this.childMaterials[7] = C13716l.n(assetManager, magentaColor);
        this.childMaterials[8] = C13716l.n(assetManager, pinkColor);
        this.childMaterials[9] = C13716l.n(assetManager, brownColor);
        int i10 = 0;
        while (true) {
            Material[] materialArr2 = this.childMaterials;
            if (i10 >= materialArr2.length) {
                this.gravity = createWireMaterial(assetManager, cyanColor, "debug gravity", 2);
                this.jointMaterialA = createWireMaterial(assetManager, greenColor, "debug joint A wire", 2);
                this.jointMaterialB = createWireMaterial(assetManager, redColor, "debug joint B wire", 2);
                setJointLineWidth(this.configuration.jointLineWidth());
                Material[] materialArr3 = this.magentas;
                materialArr3[0] = e10;
                ColorRGBA colorRGBA2 = magentaColor;
                materialArr3[1] = createWireMaterial(assetManager, colorRGBA2, "debug magenta ss", 1);
                this.magentas[2] = createWireMaterial(assetManager, colorRGBA2, "debug magenta ds", 2);
                Material[] materialArr4 = this.pink;
                materialArr4[0] = e10;
                ColorRGBA colorRGBA3 = pinkColor;
                materialArr4[1] = createWireMaterial(assetManager, colorRGBA3, "debug pink ss", 1);
                this.pink[2] = createWireMaterial(assetManager, colorRGBA3, "debug pink ds", 2);
                this.white = createWireMaterial(assetManager, whiteColor, "debug white", 2);
                Material[] materialArr5 = this.yellows;
                materialArr5[0] = e10;
                ColorRGBA colorRGBA4 = yellowColor;
                materialArr5[1] = createWireMaterial(assetManager, colorRGBA4, "debug yellow ss", 1);
                this.yellows[2] = createWireMaterial(assetManager, colorRGBA4, "debug yellow ds", 2);
                return;
            }
            materialArr2[i10].setName("debug child " + i10);
            i10++;
        }
    }

    @Override
    public void update(float f10) {
        super.update(f10);
        updatePcoMap();
        updateShapes();
        updateVehicles();
        updateBoundingBoxes();
        updateGravityVectors();
        updateSweptSpheres();
        updateVelocities();
        updateJoints();
        this.root.updateLogicalState(f10);
        Spatial transformSpatial = this.configuration.getTransformSpatial();
        if (transformSpatial == null) {
            this.root.setLocalTransform(transformIdentity);
        } else {
            this.root.setLocalTransform(transformSpatial.getWorldTransform());
        }
        this.root.updateGeometricState();
    }

    public void updateAxes(Node node, boolean z10) {
        float axisArrowLength = this.configuration.axisArrowLength();
        float axisLineWidth = this.configuration.axisLineWidth();
        boolean z11 = z10 && axisArrowLength > 0.0f;
        a aVar = (a) node.getControl(a.class);
        if (aVar == null) {
            if (z11) {
                a aVar2 = new a(this.assetManager, axisArrowLength, axisLineWidth);
                node.addControl(aVar2);
                aVar2.setEnabled(true);
                return;
            }
            return;
        }
        if (z11) {
            aVar.m(axisArrowLength);
            aVar.o(axisLineWidth);
        } else {
            aVar.setEnabled(false);
            node.removeControl(aVar);
        }
    }

    public void updateShapes() {
        for (Map.Entry<PhysicsCollisionObject, Node> entry : this.pcoMap.entrySet()) {
            DebugAppStateFilter filter = this.configuration.getFilter();
            PhysicsCollisionObject key = entry.getKey();
            boolean z10 = filter == null || filter.displayObject(key);
            Node value = entry.getValue();
            if (key instanceof PhysicsCharacter) {
                Control control = value.getControl((Class<Control>) BulletCharacterDebugControl.class);
                if (control == null && z10) {
                    logger.log(Level.FINE, "Create new BulletCharacterDebugControl");
                    value.addControl(new BulletCharacterDebugControl(this, (PhysicsCharacter) key));
                } else if (control != null && !z10) {
                    value.removeControl(control);
                }
                updateAxes(value, z10);
            } else if (key instanceof PhysicsGhostObject) {
                Control control2 = value.getControl((Class<Control>) BulletGhostObjectDebugControl.class);
                if (control2 == null && z10) {
                    logger.log(Level.FINE, "Create new BulletGhostObjectDebugControl");
                    value.addControl(new BulletGhostObjectDebugControl(this, (PhysicsGhostObject) key));
                } else if (control2 != null && !z10) {
                    value.removeControl(control2);
                }
                updateAxes(value, z10);
            } else if (key instanceof PhysicsRigidBody) {
                Control control3 = value.getControl((Class<Control>) BulletRigidBodyDebugControl.class);
                if (control3 == null && z10) {
                    logger.log(Level.FINE, "Create new BulletRigidBodyDebugControl");
                    value.addControl(new BulletRigidBodyDebugControl(this, (PhysicsRigidBody) key));
                } else if (control3 != null && !z10) {
                    value.removeControl(control3);
                }
                updateAxes(value, z10);
            }
        }
    }

    public void updateVelocities() {
        updateAngularVelocities();
        updateVelocityVectors();
    }
}
