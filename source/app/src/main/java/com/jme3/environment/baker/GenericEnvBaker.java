package com.jme3.environment.baker;

import com.jme3.asset.AssetManager;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Geometry;
import com.jme3.scene.Spatial;
import com.jme3.texture.FrameBuffer;
import com.jme3.texture.Image;
import com.jme3.texture.Texture;
import com.jme3.texture.TextureCubeMap;
import com.jme3.texture.image.ColorSpace;
import com.jme3.util.BufferUtils;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class GenericEnvBaker implements EnvBaker {
    protected static Vector3f[] axisX;
    protected final AssetManager assetManager;
    protected Image.Format colorFormat;
    protected Image.Format depthFormat;
    protected TextureCubeMap envMap;
    protected final RenderManager renderManager;
    private static final Logger LOG = Logger.getLogger(GenericEnvBaker.class.getName());
    protected static Vector3f[] axisY = new Vector3f[6];
    protected static Vector3f[] axisZ = new Vector3f[6];
    protected boolean texturePulling = false;
    protected List<ByteArrayOutputStream> bos = new ArrayList();
    protected final Camera cam = new Camera(128, 128);

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

    public GenericEnvBaker(RenderManager renderManager, AssetManager assetManager, Image.Format format, Image.Format format2, int i10) {
        this.depthFormat = format2;
        this.colorFormat = format;
        this.renderManager = renderManager;
        this.assetManager = assetManager;
        TextureCubeMap textureCubeMap = new TextureCubeMap(i10, i10, getColorFormat());
        this.envMap = textureCubeMap;
        textureCubeMap.setMagFilter(Texture.MagFilter.Bilinear);
        this.envMap.setMinFilter(Texture.MinFilter.BilinearNoMipMaps);
        this.envMap.setWrap(Texture.WrapMode.EdgeClamp);
        this.envMap.getImage().setColorSpace(ColorSpace.Linear);
    }

    @Override
    public void bakeEnvironment(Spatial spatial, Vector3f vector3f, float f10, float f11, Predicate<Geometry> predicate) {
        FrameBuffer[] frameBufferArr = new FrameBuffer[6];
        for (int i10 = 0; i10 < 6; i10++) {
            FrameBuffer frameBuffer = new FrameBuffer(this.envMap.getImage().getWidth(), this.envMap.getImage().getHeight(), 1);
            frameBufferArr[i10] = frameBuffer;
            frameBuffer.setDepthTarget(FrameBuffer.FrameBufferTarget.newTarget(getDepthFormat()));
            frameBufferArr[i10].setSrgb(false);
            frameBufferArr[i10].addColorTarget(FrameBuffer.FrameBufferTarget.newTarget(this.envMap).face(TextureCubeMap.Face.values()[i10]));
        }
        if (isTexturePulling()) {
            startPulling();
        }
        for (int i11 = 0; i11 < 6; i11++) {
            FrameBuffer frameBuffer2 = frameBufferArr[i11];
            ViewPort viewPort = new ViewPort("EnvBaker", updateAndGetInternalCamera(i11, frameBuffer2.getWidth(), frameBuffer2.getHeight(), vector3f, f10, f11));
            viewPort.setClearFlags(true, true, true);
            viewPort.setBackgroundColor(ColorRGBA.Pink);
            viewPort.setOutputFrameBuffer(frameBuffer2);
            viewPort.clearScenes();
            viewPort.attachScene(spatial);
            spatial.updateLogicalState(0.0f);
            spatial.updateGeometricState();
            Predicate<Geometry> renderFilter = this.renderManager.getRenderFilter();
            this.renderManager.setRenderFilter(predicate);
            this.renderManager.renderViewPort(viewPort, 0.16f);
            this.renderManager.setRenderFilter(renderFilter);
            if (isTexturePulling()) {
                pull(frameBuffer2, this.envMap, i11);
            }
        }
        if (isTexturePulling()) {
            endPulling(this.envMap);
        }
        this.envMap.getImage().clearUpdateNeeded();
        for (int i12 = 0; i12 < 6; i12++) {
            frameBufferArr[i12].dispose();
        }
    }

    @Override
    public void clean() {
    }

    public void endPulling(Texture texture) {
        for (int i10 = 0; i10 < this.bos.size(); i10++) {
            ByteArrayOutputStream byteArrayOutputStream = this.bos.get(i10);
            if (byteArrayOutputStream != null) {
                texture.getImage().setData(i10, ByteBuffer.wrap(byteArrayOutputStream.toByteArray()));
            } else {
                LOG.log(Level.SEVERE, "Missing face {0}. Pulling incomplete!", Integer.valueOf(i10));
            }
        }
        this.bos.clear();
        texture.getImage().clearUpdateNeeded();
    }

    public Image.Format getColorFormat() {
        if (this.colorFormat == null) {
            this.colorFormat = this.renderManager.getRenderer().getBestColorTargetFormat(true, false, false);
        }
        return this.colorFormat;
    }

    public Image.Format getDepthFormat() {
        if (this.depthFormat == null) {
            this.depthFormat = this.renderManager.getRenderer().getBestDepthTargetFormat(false, false, false);
        }
        return this.depthFormat;
    }

    @Override
    public TextureCubeMap getEnvMap() {
        return this.envMap;
    }

    @Override
    public boolean isTexturePulling() {
        return this.texturePulling;
    }

    public int limitMips(int i10, int i11, int i12, RenderManager renderManager) {
        if (i10 > 6) {
            return 6;
        }
        return i10;
    }

    public ByteBuffer pull(FrameBuffer frameBuffer, Texture texture, int i10) {
        if (frameBuffer.getColorTarget().getFormat() != texture.getImage().getFormat()) {
            throw new IllegalArgumentException("Format mismatch: " + ((Object) frameBuffer.getColorTarget().getFormat()) + "!=" + ((Object) texture.getImage().getFormat()));
        }
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(frameBuffer.getWidth() * frameBuffer.getHeight() * (frameBuffer.getColorTarget().getFormat().getBitsPerPixel() / 8));
        this.renderManager.getRenderer().readFrameBufferWithFormat(frameBuffer, createByteBuffer, frameBuffer.getColorTarget().getFormat());
        createByteBuffer.rewind();
        while (this.bos.size() <= i10) {
            this.bos.add(null);
        }
        ByteArrayOutputStream byteArrayOutputStream = this.bos.get(i10);
        if (byteArrayOutputStream == null) {
            List<ByteArrayOutputStream> list = this.bos;
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            list.set(i10, byteArrayOutputStream2);
            byteArrayOutputStream = byteArrayOutputStream2;
        }
        try {
            byte[] bArr = new byte[createByteBuffer.limit()];
            createByteBuffer.get(bArr);
            byteArrayOutputStream.write(bArr);
        } catch (Exception e10) {
            LOG.log(Level.SEVERE, (String) null, (Throwable) e10);
        }
        return createByteBuffer;
    }

    @Override
    public void setTexturePulling(boolean z10) {
        this.texturePulling = z10;
    }

    public void startPulling() {
        this.bos.clear();
    }

    public Camera updateAndGetInternalCamera(int i10, int i11, int i12, Vector3f vector3f, float f10, float f11) {
        this.cam.resize(i11, i12, false);
        this.cam.setLocation(vector3f);
        this.cam.setFrustumPerspective(90.0f, 1.0f, f10, f11);
        this.cam.setRotation(new Quaternion().fromAxes(axisX[i10], axisY[i10], axisZ[i10]));
        return this.cam;
    }
}
