package com.jme3.bullet.debug;

import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.asset.AssetManager;
import com.jme3.bullet.PhysicsSoftSpace;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.debug.BulletDebugAppState;
import com.jme3.bullet.objects.PhysicsSoftBody;
import com.jme3.material.Material;
import com.jme3.material.RenderState;
import com.jme3.math.ColorRGBA;
import com.jme3.scene.Node;
import com.jme3.scene.control.Control;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import p000if.C13716l;

public class SoftDebugAppState extends BulletDebugAppState {
    static final boolean $assertionsDisabled = false;
    private Material anchorMaterial;
    private BulletDebugAppState.DebugAppStateFilter clusterFilter;
    private Material clusterMaterial;
    private final Material[] faceMaterials;
    private Material linkMaterial;
    private Material pinMaterial;
    private Map<PhysicsSoftBody, Node> softBodies;
    private BulletDebugAppState.DebugAppStateFilter windVelocityFilter;
    private Material windVelocityMaterial;
    private static final ColorRGBA whiteColor = new ColorRGBA(1.0f, 1.0f, 1.0f, 1.0f);
    public static final Logger logger2 = Logger.getLogger(SoftDebugAppState.class.getName());

    public SoftDebugAppState(DebugConfiguration debugConfiguration) {
        super(debugConfiguration);
        this.softBodies = new HashMap(64);
        this.faceMaterials = new Material[3];
    }

    private void updateSoftBodies() {
        Map<PhysicsSoftBody, Node> map = this.softBodies;
        this.softBodies = new HashMap(map.size());
        for (PhysicsSoftBody physicsSoftBody : ((PhysicsSoftSpace) getConfiguration().getSpace()).getSoftBodyList()) {
            Node remove = map.remove(physicsSoftBody);
            if (remove == null) {
                remove = new Node(physicsSoftBody.toString());
                attachChild(remove);
            }
            this.softBodies.put(physicsSoftBody, remove);
        }
        Iterator<Node> it = map.values().iterator();
        while (it.hasNext()) {
            it.next().removeFromParent();
        }
        BulletDebugAppState.DebugAppStateFilter filter = getConfiguration().getFilter();
        for (Map.Entry<PhysicsSoftBody, Node> entry : this.softBodies.entrySet()) {
            PhysicsSoftBody key = entry.getKey();
            boolean z10 = filter == null || filter.displayObject(key);
            Node value = entry.getValue();
            Control control = value.getControl((Class<Control>) SoftBodyDebugControl.class);
            if (control == null && z10) {
                BulletDebugAppState.logger.log(Level.FINE, "Create new SoftBodyDebugControl");
                value.addControl(new SoftBodyDebugControl(this, key));
            } else if (control != null && !z10) {
                value.removeControl(control);
            }
            updateAxes(value, z10);
        }
    }

    private void updateWindVelocities() {
        if (this.windVelocityFilter == null) {
            return;
        }
        for (Map.Entry<PhysicsCollisionObject, Node> entry : getPcoMap().entrySet()) {
            PhysicsCollisionObject key = entry.getKey();
            boolean z10 = (key instanceof PhysicsSoftBody) && this.windVelocityFilter.displayObject(key);
            Node parent = entry.getValue().getParent();
            Control control = parent.getControl((Class<Control>) WindVelocityDebugControl.class);
            if (control == null && z10) {
                BulletDebugAppState.logger.log(Level.FINE, "Create new WindVelocityDebugControl");
                parent.addControl(new WindVelocityDebugControl(this, key));
            } else if (control != null && !z10) {
                parent.removeControl(control);
            }
        }
    }

    public Material getAnchorMaterial() {
        return this.anchorMaterial;
    }

    public BulletDebugAppState.DebugAppStateFilter getClusterFilter() {
        return this.clusterFilter;
    }

    public Material getClusterMaterial() {
        return this.clusterMaterial;
    }

    public Material getFaceMaterial(int i10) {
        return this.faceMaterials[i10];
    }

    public Material getLinkMaterial() {
        return this.linkMaterial;
    }

    public Material getPinMaterial() {
        return this.pinMaterial;
    }

    public Material getWindVelocityMaterial() {
        return this.windVelocityMaterial;
    }

    public void setClusterFilter(BulletDebugAppState.DebugAppStateFilter debugAppStateFilter) {
        this.clusterFilter = debugAppStateFilter;
    }

    public void setWindVelocityFilter(BulletDebugAppState.DebugAppStateFilter debugAppStateFilter) {
        this.windVelocityFilter = debugAppStateFilter;
    }

    @Override
    public void setupMaterials(AssetManager assetManager) {
        super.setupMaterials(assetManager);
        this.anchorMaterial = createWireMaterial(assetManager, ColorRGBA.Green, "anchorMaterial", 1);
        this.clusterMaterial = new Material(assetManager, C13716l.f92121d);
        this.clusterMaterial.setColor(SerializableShaderEntry.f81153g, new ColorRGBA(1.0f, 0.0f, 0.0f, 1.0f));
        this.clusterMaterial.setFloat("PointSize", 10.0f);
        this.clusterMaterial.setName("clusterMaterial");
        this.clusterMaterial.setTexture("PointShape", C13716l.t(assetManager, "Textures/shapes/lozenge.png", false));
        RenderState additionalRenderState = this.clusterMaterial.getAdditionalRenderState();
        RenderState.BlendMode blendMode = RenderState.BlendMode.Alpha;
        additionalRenderState.setBlendMode(blendMode);
        additionalRenderState.setDepthTest(false);
        this.faceMaterials[0] = C13716l.e(assetManager);
        Material[] materialArr = this.faceMaterials;
        ColorRGBA colorRGBA = ColorRGBA.Red;
        materialArr[1] = createWireMaterial(assetManager, colorRGBA, "debug red ss", 1);
        this.faceMaterials[2] = createWireMaterial(assetManager, colorRGBA, "debug red ds", 2);
        this.linkMaterial = createWireMaterial(assetManager, ColorRGBA.Orange, "linkMaterial", 1);
        this.pinMaterial = new Material(assetManager, C13716l.f92121d);
        this.pinMaterial.setColor(SerializableShaderEntry.f81153g, new ColorRGBA(1.0f, 0.0f, 0.0f, 1.0f));
        this.pinMaterial.setFloat("PointSize", 24.0f);
        this.pinMaterial.setName("pinMaterial");
        this.pinMaterial.setTexture("PointShape", C13716l.t(assetManager, "Textures/shapes/pin.png", false));
        RenderState additionalRenderState2 = this.pinMaterial.getAdditionalRenderState();
        additionalRenderState2.setBlendMode(blendMode);
        additionalRenderState2.setDepthTest(false);
        this.windVelocityMaterial = createWireMaterial(assetManager, whiteColor, "wind velocity", 2);
    }

    @Override
    public void updateShapes() {
        super.updateShapes();
        updateSoftBodies();
    }

    @Override
    public void updateVelocities() {
        super.updateVelocities();
        updateWindVelocities();
    }
}
