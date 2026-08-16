package com.jme3.shadow;

import com.jme3.asset.AssetManager;
import com.jme3.light.LightFilter;
import com.jme3.light.NullLightFilter;
import com.jme3.material.Material;
import com.jme3.math.Vector3f;
import com.jme3.post.SceneProcessor;
import com.jme3.profile.AppProfiler;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.Renderer;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.GeometryList;
import com.jme3.renderer.queue.OpaqueComparator;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Spatial;
import com.jme3.texture.FrameBuffer;
import com.jme3.texture.Image;
import com.jme3.texture.Texture2D;
import com.jme3.ui.Picture;
import java.util.Iterator;

@Deprecated
public class BasicShadowRenderer implements SceneProcessor {
    private static final LightFilter NULL_LIGHT_FILTER = new NullLightFilter();
    private final Vector3f direction;
    private final Picture dispPic;
    protected Texture2D dummyTex;
    protected GeometryList lightReceivers;
    private boolean noOccluders;
    private final Vector3f[] points;
    private final Material postshadowMat;
    private final Material preshadowMat;
    private RenderManager renderManager;
    private final Camera shadowCam;
    private final FrameBuffer shadowFB;
    private final Texture2D shadowMap;
    private final float shadowMapSize;
    protected GeometryList shadowOccluders;
    private ViewPort viewPort;

    public BasicShadowRenderer(AssetManager assetManager, int i10) {
        Picture picture = new Picture("Picture");
        this.dispPic = picture;
        int i11 = 0;
        this.noOccluders = false;
        this.points = new Vector3f[8];
        this.direction = new Vector3f();
        this.lightReceivers = new GeometryList(new OpaqueComparator());
        this.shadowOccluders = new GeometryList(new OpaqueComparator());
        FrameBuffer frameBuffer = new FrameBuffer(i10, i10, 1);
        this.shadowFB = frameBuffer;
        Texture2D texture2D = new Texture2D(i10, i10, Image.Format.Depth);
        this.shadowMap = texture2D;
        frameBuffer.setDepthTexture(texture2D);
        this.shadowCam = new Camera(i10, i10);
        Texture2D texture2D2 = new Texture2D(i10, i10, Image.Format.RGBA8);
        this.dummyTex = texture2D2;
        frameBuffer.setColorTexture(texture2D2);
        this.shadowMapSize = i10;
        this.preshadowMat = new Material(assetManager, "Common/MatDefs/Shadow/PreShadow.j3md");
        Material material = new Material(assetManager, "Common/MatDefs/Shadow/BasicPostShadow.j3md");
        this.postshadowMat = material;
        material.setTexture("ShadowMap", texture2D);
        picture.setTexture(assetManager, texture2D, false);
        while (true) {
            Vector3f[] vector3fArr = this.points;
            if (i11 >= vector3fArr.length) {
                return;
            }
            vector3fArr[i11] = new Vector3f();
            i11++;
        }
    }

    @Override
    public void cleanup() {
    }

    public Vector3f getDirection() {
        return this.direction;
    }

    public Picture getDisplayPicture() {
        return this.dispPic;
    }

    public Vector3f[] getPoints() {
        return this.points;
    }

    public Camera getShadowCamera() {
        return this.shadowCam;
    }

    @Override
    public void initialize(RenderManager renderManager, ViewPort viewPort) {
        this.renderManager = renderManager;
        this.viewPort = viewPort;
        reshape(viewPort, viewPort.getCamera().getWidth(), viewPort.getCamera().getHeight());
    }

    @Override
    public boolean isInitialized() {
        return this.viewPort != null;
    }

    @Override
    public void postFrame(FrameBuffer frameBuffer) {
        if (this.noOccluders) {
            return;
        }
        this.postshadowMat.setMatrix4("LightViewProjectionMatrix", this.shadowCam.getViewProjectionMatrix());
        this.renderManager.setForcedMaterial(this.postshadowMat);
        this.viewPort.getQueue().renderShadowQueue(this.lightReceivers, this.renderManager, this.viewPort.getCamera(), true);
        this.renderManager.setForcedMaterial(null);
    }

    @Override
    public void postQueue(RenderQueue renderQueue) {
        Iterator<Spatial> it = this.viewPort.getScenes().iterator();
        while (it.hasNext()) {
            ShadowUtil.getGeometriesInCamFrustum(it.next(), this.viewPort.getCamera(), RenderQueue.ShadowMode.Receive, this.lightReceivers);
        }
        Camera camera = this.viewPort.getCamera();
        ShadowUtil.updateFrustumPoints(camera, camera.getFrustumNear(), camera.getFrustumFar(), 1.0f, this.points);
        Vector3f vector3f = new Vector3f();
        for (Vector3f vector3f2 : this.points) {
            vector3f.addLocal(vector3f2);
        }
        vector3f.multLocal(0.125f);
        this.shadowCam.setProjectionMatrix(null);
        this.shadowCam.setParallelProjection(true);
        this.shadowCam.lookAtDirection(this.direction, Vector3f.UNIT_Y);
        this.shadowCam.update();
        this.shadowCam.setLocation(vector3f);
        this.shadowCam.update();
        this.shadowCam.updateViewProjection();
        ShadowUtil.updateShadowCamera(this.viewPort, this.lightReceivers, this.shadowCam, this.points, this.shadowOccluders, this.shadowMapSize);
        if (this.shadowOccluders.size() == 0) {
            this.noOccluders = true;
            return;
        }
        this.noOccluders = false;
        Renderer renderer = this.renderManager.getRenderer();
        this.renderManager.setCamera(this.shadowCam, false);
        this.renderManager.setForcedMaterial(this.preshadowMat);
        renderer.setFrameBuffer(this.shadowFB);
        renderer.clearBuffers(true, true, true);
        LightFilter lightFilter = this.renderManager.getLightFilter();
        this.renderManager.setLightFilter(NULL_LIGHT_FILTER);
        this.viewPort.getQueue().renderShadowQueue(this.shadowOccluders, this.renderManager, this.shadowCam, true);
        this.renderManager.setLightFilter(lightFilter);
        renderer.setFrameBuffer(this.viewPort.getOutputFrameBuffer());
        this.renderManager.setForcedMaterial(null);
        this.renderManager.setCamera(camera, false);
    }

    @Override
    public void preFrame(float f10) {
    }

    @Override
    public void reshape(ViewPort viewPort, int i10, int i11) {
        float f10 = i10;
        float f11 = i11;
        this.dispPic.setPosition(f10 / 20.0f, f11 / 20.0f);
        this.dispPic.setWidth(f10 / 5.0f);
        this.dispPic.setHeight(f11 / 5.0f);
    }

    public void setDirection(Vector3f vector3f) {
        this.direction.set(vector3f).normalizeLocal();
    }

    @Override
    public void setProfiler(AppProfiler appProfiler) {
    }
}
