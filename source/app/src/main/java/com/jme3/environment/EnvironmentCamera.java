package com.jme3.environment;

import com.jme3.app.Application;
import com.jme3.app.state.BaseAppState;
import com.jme3.environment.generation.JobProgressListener;
import com.jme3.environment.util.EnvMapUtils;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.Renderer;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Spatial;
import com.jme3.texture.FrameBuffer;
import com.jme3.texture.Image;
import com.jme3.texture.Texture2D;
import com.jme3.texture.TextureCubeMap;
import com.jme3.texture.image.ColorSpace;
import com.jme3.util.BufferUtils;
import com.jme3.util.MipMapGenerator;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

public class EnvironmentCamera extends BaseAppState {
    protected static Vector3f[] axisX;
    protected static Vector3f[] axisY = new Vector3f[6];
    protected static Vector3f[] axisZ = new Vector3f[6];
    protected ColorRGBA backGroundColor;
    protected ByteBuffer[] buffers;
    public TextureCubeMap debugEnv;
    protected FrameBuffer[] framebuffers;
    protected Image.Format imageFormat;
    protected Image[] images;
    private final List<SnapshotJob> jobs;
    protected Vector3f position;
    protected int size;
    protected ViewPort[] viewports;

    public class SnapshotJob {
        JobProgressListener<TextureCubeMap> callback;
        Spatial scene;

        public SnapshotJob(JobProgressListener jobProgressListener, Spatial spatial) {
            this.callback = jobProgressListener;
            this.scene = spatial;
        }
    }

    static {
        Vector3f[] vector3fArr = new Vector3f[6];
        axisX = vector3fArr;
        Vector3f vector3f = Vector3f.UNIT_Z;
        vector3fArr[0] = vector3f.mult(1.0f);
        Vector3f[] vector3fArr2 = axisY;
        Vector3f vector3f2 = Vector3f.UNIT_Y;
        vector3fArr2[0] = vector3f2.mult(-1.0f);
        Vector3f[] vector3fArr3 = axisZ;
        Vector3f vector3f3 = Vector3f.UNIT_X;
        vector3fArr3[0] = vector3f3.mult(1.0f);
        axisX[1] = vector3f.mult(-1.0f);
        axisY[1] = vector3f2.mult(-1.0f);
        axisZ[1] = vector3f3.mult(-1.0f);
        axisX[2] = vector3f3.mult(-1.0f);
        axisY[2] = vector3f.mult(1.0f);
        axisZ[2] = vector3f2.mult(1.0f);
        axisX[3] = vector3f3.mult(-1.0f);
        axisY[3] = vector3f.mult(-1.0f);
        axisZ[3] = vector3f2.mult(-1.0f);
        axisX[4] = vector3f3.mult(-1.0f);
        axisY[4] = vector3f2.mult(-1.0f);
        axisZ[4] = vector3f;
        axisX[5] = vector3f3.mult(1.0f);
        axisY[5] = vector3f2.mult(-1.0f);
        axisZ[5] = vector3f.mult(-1.0f);
    }

    public EnvironmentCamera() {
        this.imageFormat = null;
        this.position = new Vector3f();
        this.size = 256;
        this.jobs = new ArrayList();
    }

    @Override
    public void cleanup(Application application) {
        this.backGroundColor = null;
        for (FrameBuffer frameBuffer : this.framebuffers) {
            frameBuffer.dispose();
        }
        for (Image image : this.images) {
            if (image != null) {
                image.dispose();
            }
        }
    }

    public Camera createOffCamera(int i10, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4) {
        Camera camera = new Camera(i10, i10);
        camera.setLocation(vector3f);
        camera.setAxes(vector3f2, vector3f3, vector3f4);
        camera.setFrustumPerspective(90.0f, 1.0f, 0.1f, 1000.0f);
        camera.setLocation(this.position);
        return camera;
    }

    public FrameBuffer createOffScreenFrameBuffer(int i10, ViewPort viewPort) {
        return createOffScreenFrameBuffer(i10, viewPort, getDepthFormat(getApplication().getRenderManager().getRenderer()));
    }

    public ViewPort createOffViewPort(String str, Camera camera) {
        ViewPort viewPort = new ViewPort(str, camera);
        viewPort.setClearFlags(true, true, true);
        viewPort.setBackgroundColor(this.backGroundColor);
        return viewPort;
    }

    public Image.Format getDepthFormat(Renderer renderer) {
        return renderer.getBestDepthTargetFormat(false, false, false);
    }

    public Image.Format getImageFormat(Renderer renderer) {
        if (this.imageFormat == null) {
            this.imageFormat = renderer.getBestColorTargetFormat(true, false, false);
        }
        return this.imageFormat;
    }

    public Vector3f getPosition() {
        return this.position;
    }

    public int getSize() {
        return this.size;
    }

    public ViewPort[] getViewPorts() {
        return this.viewports;
    }

    @Override
    public void initialize(Application application) {
        this.backGroundColor = application.getViewPort().getBackgroundColor().m1279clone();
        Image.Format imageFormat = getImageFormat(application.getRenderManager().getRenderer());
        Camera[] cameraArr = new Camera[6];
        Texture2D[] texture2DArr = new Texture2D[6];
        this.viewports = new ViewPort[6];
        this.framebuffers = new FrameBuffer[6];
        this.buffers = new ByteBuffer[6];
        this.images = new Image[6];
        for (int i10 = 0; i10 < 6; i10++) {
            cameraArr[i10] = createOffCamera(this.size, this.position, axisX[i10], axisY[i10], axisZ[i10]);
            this.viewports[i10] = createOffViewPort("EnvView" + i10, cameraArr[i10]);
            this.framebuffers[i10] = createOffScreenFrameBuffer(this.size, this.viewports[i10]);
            int i11 = this.size;
            Texture2D texture2D = new Texture2D(i11, i11, imageFormat);
            texture2DArr[i10] = texture2D;
            this.framebuffers[i10].setColorTexture(texture2D);
        }
    }

    public boolean isBusy() {
        return !this.jobs.isEmpty();
    }

    @Override
    public void onDisable() {
    }

    @Override
    public void onEnable() {
    }

    public void rebuild() {
        if (isInitialized()) {
            cleanup(getApplication());
            initialize(getApplication());
        }
    }

    @Override
    public void render(RenderManager renderManager) {
        if (isBusy()) {
            SnapshotJob snapshotJob = this.jobs.get(0);
            Image.Format imageFormat = getImageFormat(renderManager.getRenderer());
            for (int i10 = 0; i10 < 6; i10++) {
                this.viewports[i10].clearScenes();
                this.viewports[i10].attachScene(snapshotJob.scene);
                renderManager.renderViewPort(this.viewports[i10], 0.16f);
                ByteBuffer[] byteBufferArr = this.buffers;
                int i11 = this.size;
                byteBufferArr[i10] = BufferUtils.createByteBuffer(((i11 * i11) * imageFormat.getBitsPerPixel()) / 8);
                renderManager.getRenderer().readFrameBufferWithFormat(this.framebuffers[i10], this.buffers[i10], imageFormat);
                Image[] imageArr = this.images;
                int i12 = this.size;
                imageArr[i10] = new Image(imageFormat, i12, i12, this.buffers[i10], ColorSpace.Linear);
                MipMapGenerator.generateMipMaps(this.images[i10]);
            }
            Image[] imageArr2 = this.images;
            TextureCubeMap makeCubeMap = EnvMapUtils.makeCubeMap(imageArr2[0], imageArr2[1], imageArr2[2], imageArr2[3], imageArr2[4], imageArr2[5], imageFormat);
            this.debugEnv = makeCubeMap;
            snapshotJob.callback.done(makeCubeMap);
            makeCubeMap.getImage().dispose();
            this.jobs.remove(0);
        }
    }

    public void setBackGroundColor(ColorRGBA colorRGBA) {
        if (!isInitialized()) {
            throw new IllegalStateException("The EnvironmentCamera is uninitialized.");
        }
        this.backGroundColor.set(colorRGBA);
        for (int i10 = 0; i10 < 6; i10++) {
            this.viewports[i10].setBackgroundColor(colorRGBA);
        }
    }

    public void setPosition(Vector3f vector3f) {
        this.position.set(vector3f);
        ViewPort[] viewPortArr = this.viewports;
        if (viewPortArr == null) {
            return;
        }
        for (ViewPort viewPort : viewPortArr) {
            viewPort.getCamera().setLocation(vector3f);
        }
    }

    public void setSize(int i10) {
        this.size = i10;
        rebuild();
    }

    public void snapshot(final Spatial spatial, final JobProgressListener<TextureCubeMap> jobProgressListener) {
        getApplication().enqueue(new Callable<Void>(this) {
            final EnvironmentCamera this$0;

            {
                this.this$0 = this;
            }

            @Override
            public Void call() throws Exception {
                this.this$0.jobs.add(new SnapshotJob(jobProgressListener, spatial));
                return null;
            }
        });
    }

    public FrameBuffer createOffScreenFrameBuffer(int i10, ViewPort viewPort, Image.Format format) {
        FrameBuffer frameBuffer = new FrameBuffer(i10, i10, 1);
        frameBuffer.setDepthBuffer(format);
        viewPort.setOutputFrameBuffer(frameBuffer);
        return frameBuffer;
    }

    public Image.Format getImageFormat() {
        if (this.imageFormat == null && getApplication() != null) {
            return getImageFormat(getApplication().getRenderManager().getRenderer());
        }
        return this.imageFormat;
    }

    public EnvironmentCamera(int i10) {
        this.imageFormat = null;
        this.position = new Vector3f();
        this.size = 256;
        this.jobs = new ArrayList();
        this.size = i10;
    }

    public EnvironmentCamera(int i10, Vector3f vector3f) {
        this.imageFormat = null;
        this.position = new Vector3f();
        this.size = 256;
        this.jobs = new ArrayList();
        this.size = i10;
        this.position.set(vector3f);
    }

    public EnvironmentCamera(int i10, Vector3f vector3f, Image.Format format) {
        this.imageFormat = null;
        this.position = new Vector3f();
        this.size = 256;
        this.jobs = new ArrayList();
        this.size = i10;
        this.position.set(vector3f);
        this.imageFormat = format;
    }
}
