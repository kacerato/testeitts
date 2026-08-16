package com.jme3.environment.util;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping.Billboard;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.app.Application;
import com.jme3.app.state.BaseAppState;
import com.jme3.asset.AssetManager;
import com.jme3.light.DirectionalLight;
import com.jme3.light.Light;
import com.jme3.light.LightProbe;
import com.jme3.light.PointLight;
import com.jme3.light.SpotLight;
import com.jme3.material.Material;
import com.jme3.material.RenderState;
import com.jme3.math.ColorRGBA;
import com.jme3.math.FastMath;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.BillboardControl;
import com.jme3.scene.debug.Arrow;
import com.jme3.scene.shape.Quad;
import com.jme3.scene.shape.Sphere;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.function.Predicate;

public class LightsDebugState extends BaseAppState {
    private static final String LIGHT_DIR_ARROW_NAME = "LightDirection";
    private static final String POINT_LIGHT_RADIUS_NAME = "PointLightRadius";
    private static final String PROBE_BOUNDS_NAME = "DebugProbeBounds";
    private static final String PROBE_GEOMETRY_NAME = "DebugProbeGeometry";
    private static final String SPOT_LIGHT_INNER_RADIUS_NAME = "SpotLightInnerRadius";
    private static final String SPOT_LIGHT_OUTER_RADIUS_NAME = "SpotLightOuterRadius";
    private static final String SPOT_LIGHT_RADIUS_NAME = "RadiusNode";
    private AssetManager assetManager;
    private Material debugMaterial;
    private Node debugNode;
    private Spatial scene;
    private ViewPort viewPort;
    private final Map<Light, Spatial> lightGizmoMap = new WeakHashMap();
    private final ArrayDeque<Light> lightDeque = new ArrayDeque<>();
    private Predicate<Light> lightFilter = new Predicate() {
        @Override
        public final boolean test(Object obj) {
            boolean lambda$new$0;
            lambda$new$0 = LightsDebugState.lambda$new$0((Light) obj);
            return lambda$new$0;
        }
    };
    private boolean showOnTop = true;
    private float lightProbeScale = 1.0f;
    private final ColorRGBA debugColor = ColorRGBA.DarkGray;
    private final Quaternion tempRotation = new Quaternion();

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$light$Light$Type;

        static {
            int[] iArr = new int[Light.Type.values().length];
            $SwitchMap$com$jme3$light$Light$Type = iArr;
            try {
                iArr[Light.Type.Probe.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$light$Light$Type[Light.Type.Point.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$light$Light$Type[Light.Type.Directional.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$light$Light$Type[Light.Type.Spot.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private void cleanUpRemovedLights() {
        Iterator<Map.Entry<Light, Spatial>> it = this.lightGizmoMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Light, Spatial> next = it.next();
            if (!this.lightDeque.contains(next.getKey())) {
                next.getValue().removeFromParent();
                it.remove();
            }
        }
        this.lightDeque.clear();
    }

    private Spatial createBulb() {
        Quad quad = new Quad(0.5f, 0.5f);
        Geometry geometry = new Geometry("LightBulb", quad);
        geometry.move((-quad.getHeight()) / 2.0f, (-quad.getWidth()) / 2.0f, 0.0f);
        Material material = new Material(this.assetManager, "Common/MatDefs/Misc/Unshaded.j3md");
        material.setTexture("ColorMap", this.assetManager.loadTexture("Common/Textures/lightbulb32.png"));
        material.getAdditionalRenderState().setBlendMode(RenderState.BlendMode.Alpha);
        geometry.setMaterial(material);
        geometry.setQueueBucket(RenderQueue.Bucket.Transparent);
        Node node = new Node(Billboard.f76177G);
        node.addControl(new BillboardControl());
        node.attachChild(geometry);
        return node;
    }

    private Spatial createDirectionalGizmo() {
        Node node = new Node("DirectionalLightNode");
        node.move(0.0f, 5.0f, 0.0f);
        node.attachChild(createBulb());
        Geometry geometry = new Geometry(LIGHT_DIR_ARROW_NAME, new Arrow(Vector3f.UNIT_Z.mult(5.0f)));
        geometry.setMaterial(this.debugMaterial);
        node.attachChild(geometry);
        return node;
    }

    private Spatial createLightGizmo(Light light) {
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$light$Light$Type[light.getType().ordinal()];
        if (i10 == 1) {
            return createLightProbeGizmo();
        }
        if (i10 == 2) {
            return createPointGizmo();
        }
        if (i10 == 3) {
            return createDirectionalGizmo();
        }
        if (i10 != 4) {
            return null;
        }
        return createSpotGizmo();
    }

    private Spatial createLightProbeGizmo() {
        Node node = new Node("LightProbeNode");
        Geometry geometry = new Geometry(PROBE_GEOMETRY_NAME, new Sphere(32, 32, this.lightProbeScale));
        geometry.setMaterial(new Material(this.assetManager, "Common/MatDefs/Misc/reflect.j3md"));
        node.attachChild(geometry);
        Geometry createDebugSphere = BoundingSphereDebug.createDebugSphere(this.assetManager);
        createDebugSphere.setName(PROBE_BOUNDS_NAME);
        node.attachChild(createDebugSphere);
        return node;
    }

    private Spatial createPointGizmo() {
        Node node = new Node("PointLightNode");
        node.attachChild(createBulb());
        Geometry geometry = new Geometry(POINT_LIGHT_RADIUS_NAME, new BoundingSphereDebug());
        geometry.setMaterial(this.debugMaterial);
        node.attachChild(geometry);
        return node;
    }

    private Geometry createRadiusShape(String str, float f10) {
        Geometry createShape = Circle.createShape(this.assetManager, str);
        Material material = createShape.getMaterial();
        material.setColor(SerializableShaderEntry.f81153g, this.debugColor);
        material.setFloat("DashSize", f10);
        return createShape;
    }

    private Spatial createSpotGizmo() {
        Node node = new Node("SpotLightNode");
        node.attachChild(createBulb());
        Node node2 = new Node(SPOT_LIGHT_RADIUS_NAME);
        node.attachChild(node2);
        node2.attachChild(createRadiusShape(SPOT_LIGHT_INNER_RADIUS_NAME, 0.725f));
        node2.attachChild(createRadiusShape(SPOT_LIGHT_OUTER_RADIUS_NAME, 0.325f));
        Geometry geometry = new Geometry(LIGHT_DIR_ARROW_NAME, new Arrow(Vector3f.UNIT_Z));
        geometry.setMaterial(this.debugMaterial);
        node.attachChild(geometry);
        return node;
    }

    public static boolean lambda$new$0(Light light) {
        return true;
    }

    private void updateGizmoProperties(Light light, Spatial spatial) {
        Node node = (Node) spatial;
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$light$Light$Type[light.getType().ordinal()];
        if (i10 == 1) {
            LightProbe lightProbe = (LightProbe) light;
            Geometry geometry = (Geometry) node.getChild(PROBE_GEOMETRY_NAME);
            Geometry geometry2 = (Geometry) node.getChild(PROBE_BOUNDS_NAME);
            if (lightProbe.isReady()) {
                Material material = geometry.getMaterial();
                if (material.getTextureParam("CubeMap") == null) {
                    material.setTexture("CubeMap", lightProbe.getPrefilteredEnvMap());
                }
            }
            geometry.setLocalScale(this.lightProbeScale);
            geometry2.setLocalScale(lightProbe.getArea().getRadius());
            spatial.setLocalTranslation(lightProbe.getPosition());
            return;
        }
        if (i10 == 2) {
            PointLight pointLight = (PointLight) light;
            ((Geometry) node.getChild(POINT_LIGHT_RADIUS_NAME)).setLocalScale(pointLight.getRadius());
            spatial.setLocalTranslation(pointLight.getPosition());
            return;
        }
        if (i10 == 3) {
            this.tempRotation.lookAt(((DirectionalLight) light).getDirection(), Vector3f.UNIT_Y);
            spatial.setLocalRotation(this.tempRotation);
            return;
        }
        if (i10 != 4) {
            return;
        }
        SpotLight spotLight = (SpotLight) light;
        spatial.setLocalTranslation(spotLight.getPosition());
        this.tempRotation.lookAt(spotLight.getDirection(), Vector3f.UNIT_Y);
        spatial.setLocalRotation(this.tempRotation);
        float spotRange = spotLight.getSpotRange();
        float spotInnerAngle = spotLight.getSpotInnerAngle();
        float spotOuterAngle = spotLight.getSpotOuterAngle();
        float tan = FastMath.tan(spotInnerAngle) * spotRange;
        float tan2 = FastMath.tan(spotOuterAngle) * spotRange;
        node.getChild(SPOT_LIGHT_INNER_RADIUS_NAME).setLocalScale(tan);
        node.getChild(SPOT_LIGHT_OUTER_RADIUS_NAME).setLocalScale(tan2);
        node.getChild(SPOT_LIGHT_RADIUS_NAME).setLocalTranslation(0.0f, 0.0f, spotRange);
        node.getChild(LIGHT_DIR_ARROW_NAME).setLocalScale(spotRange);
    }

    private void updateLightGizmos(Spatial spatial) {
        Iterator<Light> it = spatial.getLocalLightList().iterator();
        while (it.hasNext()) {
            Light next = it.next();
            if (this.lightFilter.test(next)) {
                this.lightDeque.add(next);
                Spatial spatial2 = this.lightGizmoMap.get(next);
                if (spatial2 == null) {
                    Spatial createLightGizmo = createLightGizmo(next);
                    if (createLightGizmo != null) {
                        this.debugNode.attachChild(createLightGizmo);
                        this.lightGizmoMap.put(next, createLightGizmo);
                        updateGizmoProperties(next, createLightGizmo);
                    }
                } else {
                    updateGizmoProperties(next, spatial2);
                }
            }
        }
        if (spatial instanceof Node) {
            Iterator<Spatial> it2 = ((Node) spatial).getChildren().iterator();
            while (it2.hasNext()) {
                updateLightGizmos(it2.next());
            }
        }
    }

    @Override
    public void cleanup(Application application) {
        this.debugNode.detachAllChildren();
        this.lightGizmoMap.clear();
        this.lightDeque.clear();
        this.debugMaterial = null;
        application.getRenderManager().removeMainView(this.viewPort);
    }

    public float getLightProbeScale() {
        return this.lightProbeScale;
    }

    @Override
    public void initialize(Application application) {
        ViewPort createMainView = application.getRenderManager().createMainView("LightsDebugView", application.getCamera());
        this.viewPort = createMainView;
        createMainView.setClearFlags(false, this.showOnTop, true);
        this.assetManager = application.getAssetManager();
        this.debugNode = new Node("LightsDebugNode");
        Material material = new Material(this.assetManager, "Common/MatDefs/Misc/Unshaded.j3md");
        this.debugMaterial = material;
        material.setColor(SerializableShaderEntry.f81153g, this.debugColor);
        this.debugMaterial.getAdditionalRenderState().setWireframe(true);
        if (this.scene == null) {
            this.scene = application.getViewPort().getScenes().get(0);
        }
    }

    public boolean isShowOnTop() {
        return this.showOnTop;
    }

    @Override
    public void onDisable() {
        this.viewPort.detachScene(this.debugNode);
    }

    @Override
    public void onEnable() {
        this.viewPort.attachScene(this.debugNode);
    }

    @Override
    public void render(RenderManager renderManager) {
        this.debugNode.updateGeometricState();
    }

    public void setLightFilter(Predicate<Light> predicate) {
        this.lightFilter = predicate;
    }

    public void setLightProbeScale(float f10) {
        this.lightProbeScale = f10;
    }

    public void setScene(Spatial spatial) {
        this.scene = spatial;
        this.debugNode.detachAllChildren();
        this.lightGizmoMap.clear();
        this.lightDeque.clear();
    }

    public void setShowOnTop(boolean z10) {
        this.showOnTop = z10;
        ViewPort viewPort = this.viewPort;
        if (viewPort != null) {
            viewPort.setClearDepth(z10);
        }
    }

    @Override
    public void update(float f10) {
        updateLightGizmos(this.scene);
        this.debugNode.updateLogicalState(f10);
        cleanUpRemovedLights();
    }
}
