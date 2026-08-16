package com.jme3.bullet.debug;

import F2.i;
import com.jme3.app.Application;
import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.debug.BulletDebugAppState;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Spatial;
import java.util.logging.Logger;
import p000if.C13702E;

public class DebugConfiguration {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(DebugConfiguration.class.getName());
    private BulletDebugAppState.DebugAppStateFilter angularVelocityFilter;
    private BulletDebugAppState.DebugAppStateFilter boundingBoxFilter;
    private Camera camera;
    private BulletDebugAppState.DebugAppStateFilter filter;
    private BulletDebugAppState.DebugAppStateFilter gravityVectorFilter;
    private DebugInitListener initListener;
    private PhysicsSpace space;
    private BulletDebugAppState.DebugAppStateFilter sweptSphereFilter;
    private Spatial transformSpatial;
    private BulletDebugAppState.DebugAppStateFilter velocityVectorFilter;
    private ViewPort[] viewPorts;
    private boolean isEnabled = false;
    private float axisArrowLength = 0.0f;
    private float axisLineWidth = 1.0f;
    private float jointLineWidth = 1.0f;
    private RenderQueue.ShadowMode shadowMode = RenderQueue.ShadowMode.Off;

    public float axisArrowLength() {
        return this.axisArrowLength;
    }

    public float axisLineWidth() {
        return this.axisLineWidth;
    }

    public BulletDebugAppState.DebugAppStateFilter getAngularVelocityFilter() {
        return this.angularVelocityFilter;
    }

    public BulletDebugAppState.DebugAppStateFilter getBoundingBoxFilter() {
        return this.boundingBoxFilter;
    }

    public Camera getCamera() {
        return this.camera;
    }

    public BulletDebugAppState.DebugAppStateFilter getFilter() {
        return this.filter;
    }

    public BulletDebugAppState.DebugAppStateFilter getGravityVectorFilter() {
        return this.gravityVectorFilter;
    }

    public DebugInitListener getInitListener() {
        return this.initListener;
    }

    public PhysicsSpace getSpace() {
        return this.space;
    }

    public BulletDebugAppState.DebugAppStateFilter getSweptSphereFilter() {
        return this.sweptSphereFilter;
    }

    public Spatial getTransformSpatial() {
        return this.transformSpatial;
    }

    public BulletDebugAppState.DebugAppStateFilter getVelocityVectorFilter() {
        return this.velocityVectorFilter;
    }

    public void initialize(Application application) {
        C13702E.t(application, i.f6413l);
        if (this.camera == null) {
            this.camera = application.getCamera();
        }
        if (this.viewPorts == null) {
            this.viewPorts = r0;
            ViewPort[] viewPortArr = {application.getViewPort()};
        }
    }

    public boolean isEnabled() {
        return this.isEnabled;
    }

    public float jointLineWidth() {
        return this.jointLineWidth;
    }

    public ViewPort[] listViewPorts() {
        ViewPort[] viewPortArr = this.viewPorts;
        int length = viewPortArr.length;
        ViewPort[] viewPortArr2 = new ViewPort[length];
        System.arraycopy(viewPortArr, 0, viewPortArr2, 0, length);
        return viewPortArr2;
    }

    public void renderAllViewPorts(RenderManager renderManager, Spatial spatial) {
        for (ViewPort viewPort : this.viewPorts) {
            if (viewPort.isEnabled()) {
                renderManager.renderScene(spatial, viewPort);
            }
        }
    }

    public void setAngularVelocityFilter(BulletDebugAppState.DebugAppStateFilter debugAppStateFilter) {
        this.angularVelocityFilter = debugAppStateFilter;
    }

    public void setAxisArrowLength(float f10) {
        C13702E.p(f10, "length");
        this.axisArrowLength = f10;
    }

    public void setAxisLineWidth(float f10) {
        C13702E.h(f10, "width", 0.0f, Float.MAX_VALUE);
        this.axisLineWidth = f10;
    }

    public void setBoundingBoxFilter(BulletDebugAppState.DebugAppStateFilter debugAppStateFilter) {
        this.boundingBoxFilter = debugAppStateFilter;
    }

    public void setCamera(Camera camera) {
        this.camera = camera;
    }

    public void setEnabled(boolean z10) {
        this.isEnabled = z10;
    }

    public void setFilter(BulletDebugAppState.DebugAppStateFilter debugAppStateFilter) {
        this.filter = debugAppStateFilter;
    }

    public void setGravityVectorFilter(BulletDebugAppState.DebugAppStateFilter debugAppStateFilter) {
        this.gravityVectorFilter = debugAppStateFilter;
    }

    public void setInitListener(DebugInitListener debugInitListener) {
        this.initListener = debugInitListener;
    }

    public void setJointLineWidth(float f10) {
        this.jointLineWidth = f10;
    }

    public void setShadowMode(RenderQueue.ShadowMode shadowMode) {
        C13702E.t(shadowMode, "mode");
        this.shadowMode = shadowMode;
    }

    public void setSpace(PhysicsSpace physicsSpace) {
        this.space = physicsSpace;
    }

    public void setSweptSphereFilter(BulletDebugAppState.DebugAppStateFilter debugAppStateFilter) {
        this.sweptSphereFilter = debugAppStateFilter;
    }

    public void setTransformSpatial(Spatial spatial) {
        this.transformSpatial = spatial;
    }

    public void setVelocityVectorFilter(BulletDebugAppState.DebugAppStateFilter debugAppStateFilter) {
        this.velocityVectorFilter = debugAppStateFilter;
    }

    public void setViewPorts(ViewPort... viewPortArr) {
        C13702E.t(viewPortArr, "view ports");
        int length = viewPortArr.length;
        ViewPort[] viewPortArr2 = new ViewPort[length];
        this.viewPorts = viewPortArr2;
        System.arraycopy(viewPortArr, 0, viewPortArr2, 0, length);
    }

    public RenderQueue.ShadowMode shadowMode() {
        return this.shadowMode;
    }
}
