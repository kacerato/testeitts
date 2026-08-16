package com.jme3.environment.baker;

import com.jme3.asset.AssetManager;
import com.jme3.material.Material;
import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.scene.Geometry;
import com.jme3.scene.shape.Box;
import com.jme3.texture.FrameBuffer;
import com.jme3.texture.Image;
import com.jme3.texture.Texture;
import com.jme3.texture.Texture2D;
import com.jme3.texture.TextureCubeMap;
import com.jme3.texture.image.ColorSpace;
import com.jme3.ui.Picture;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;

public class IBLGLEnvBaker extends GenericEnvBaker implements IBLEnvBaker {
    private static final Logger LOGGER = Logger.getLogger(IBLGLEnvBakerLight.class.getName());
    protected Texture2D brtf;
    protected TextureCubeMap irradiance;
    protected TextureCubeMap specular;

    public IBLGLEnvBaker(RenderManager renderManager, AssetManager assetManager, Image.Format format, Image.Format format2, int i10, int i11, int i12, int i13) {
        super(renderManager, assetManager, format, format2, i10);
        TextureCubeMap textureCubeMap = new TextureCubeMap(i12, i12, format);
        this.irradiance = textureCubeMap;
        Texture.MagFilter magFilter = Texture.MagFilter.Bilinear;
        textureCubeMap.setMagFilter(magFilter);
        this.irradiance.setMinFilter(Texture.MinFilter.BilinearNoMipMaps);
        TextureCubeMap textureCubeMap2 = this.irradiance;
        Texture.WrapMode wrapMode = Texture.WrapMode.EdgeClamp;
        textureCubeMap2.setWrap(wrapMode);
        Image image = this.irradiance.getImage();
        ColorSpace colorSpace = ColorSpace.Linear;
        image.setColorSpace(colorSpace);
        TextureCubeMap textureCubeMap3 = new TextureCubeMap(i11, i11, format);
        this.specular = textureCubeMap3;
        textureCubeMap3.setMagFilter(magFilter);
        this.specular.setMinFilter(Texture.MinFilter.Trilinear);
        this.specular.setWrap(wrapMode);
        this.specular.getImage().setColorSpace(colorSpace);
        int limitMips = limitMips((int) ((Math.log(i11) / Math.log(2.0d)) + 1.0d), this.specular.getImage().getWidth(), this.specular.getImage().getHeight(), renderManager);
        int[] iArr = new int[limitMips];
        for (int i14 = 0; i14 < limitMips; i14++) {
            int pow = (int) FastMath.pow(2.0f, (limitMips - 1) - i14);
            iArr[i14] = pow * pow * (this.specular.getImage().getFormat().getBitsPerPixel() / 8);
        }
        this.specular.getImage().setMipMapSizes(iArr);
        Texture2D texture2D = new Texture2D(i13, i13, format);
        this.brtf = texture2D;
        texture2D.setMagFilter(Texture.MagFilter.Bilinear);
        this.brtf.setMinFilter(Texture.MinFilter.BilinearNoMipMaps);
        this.brtf.setWrap(Texture.WrapMode.EdgeClamp);
        this.brtf.getImage().setColorSpace(ColorSpace.Linear);
    }

    private void bakeSpecularIBL(int i10, float f10, Material material, Geometry geometry) throws Exception {
        material.setFloat("Roughness", f10);
        float f11 = i10;
        int width = (int) (this.specular.getImage().getWidth() * FastMath.pow(0.5f, f11));
        int height = (int) (this.specular.getImage().getHeight() * FastMath.pow(0.5f, f11));
        FrameBuffer[] frameBufferArr = new FrameBuffer[6];
        for (int i11 = 0; i11 < 6; i11++) {
            FrameBuffer frameBuffer = new FrameBuffer(width, height, 1);
            frameBufferArr[i11] = frameBuffer;
            frameBuffer.setSrgb(false);
            frameBufferArr[i11].addColorTarget(FrameBuffer.FrameBufferTarget.newTarget(this.specular).level(i10).face(i11));
            frameBufferArr[i11].setMipMapsGenerationHint(Boolean.FALSE);
        }
        for (int i12 = 0; i12 < 6; i12++) {
            FrameBuffer frameBuffer2 = frameBufferArr[i12];
            material.setInt("FaceId", i12);
            geometry.updateLogicalState(0.0f);
            geometry.updateGeometricState();
            this.renderManager.setCamera(updateAndGetInternalCamera(i12, frameBuffer2.getWidth(), frameBuffer2.getHeight(), Vector3f.ZERO, 1.0f, 1000.0f), false);
            this.renderManager.getRenderer().setFrameBuffer(frameBuffer2);
            this.renderManager.renderGeometry(geometry);
            if (isTexturePulling()) {
                pull(frameBuffer2, this.specular, i12);
            }
        }
        for (int i13 = 0; i13 < 6; i13++) {
            frameBufferArr[i13].dispose();
        }
    }

    private float roughnessFromMip(int i10) {
        if (this.specular.getImage().getMipMapSizes().length <= 1) {
            return 0.0f;
        }
        float f10 = i10 / (r0 - 1);
        return f10 * f10;
    }

    @Override
    public void bakeIrradiance() {
        Geometry geometry = new Geometry("BakeBox", new Box(1.0f, 1.0f, 1.0f));
        FrameBuffer frameBuffer = new FrameBuffer(this.irradiance.getImage().getWidth(), this.irradiance.getImage().getHeight(), 1);
        frameBuffer.setSrgb(false);
        if (isTexturePulling()) {
            startPulling();
        }
        for (int i10 = 0; i10 < 6; i10++) {
            frameBuffer.addColorTarget(FrameBuffer.FrameBufferTarget.newTarget(this.irradiance).face(TextureCubeMap.Face.values()[i10]));
        }
        Material material = new Material(this.assetManager, "Common/IBL/IBLKernels.j3md");
        material.setBoolean("UseIrradiance", true);
        material.setTexture("EnvMap", this.envMap);
        geometry.setMaterial(material);
        for (int i11 = 0; i11 < 6; i11++) {
            frameBuffer.setTargetIndex(i11);
            material.setInt("FaceId", i11);
            geometry.updateLogicalState(0.0f);
            geometry.updateGeometricState();
            this.renderManager.setCamera(updateAndGetInternalCamera(i11, frameBuffer.getWidth(), frameBuffer.getHeight(), Vector3f.ZERO, 1.0f, 1000.0f), false);
            this.renderManager.getRenderer().setFrameBuffer(frameBuffer);
            this.renderManager.renderGeometry(geometry);
            if (isTexturePulling()) {
                pull(frameBuffer, this.irradiance, i11);
            }
        }
        frameBuffer.dispose();
        if (isTexturePulling()) {
            endPulling(this.irradiance);
        }
        this.irradiance.getImage().clearUpdateNeeded();
    }

    @Override
    public Texture2D genBRTF() {
        Picture picture = new Picture("BakeScreen", true);
        picture.setWidth(1.0f);
        picture.setHeight(1.0f);
        FrameBuffer frameBuffer = new FrameBuffer(this.brtf.getImage().getWidth(), this.brtf.getImage().getHeight(), 1);
        frameBuffer.setSrgb(false);
        frameBuffer.addColorTarget(FrameBuffer.FrameBufferTarget.newTarget(this.brtf));
        if (isTexturePulling()) {
            startPulling();
        }
        Camera updateAndGetInternalCamera = updateAndGetInternalCamera(0, this.brtf.getImage().getWidth(), this.brtf.getImage().getHeight(), Vector3f.ZERO, 1.0f, 1000.0f);
        Material material = new Material(this.assetManager, "Common/IBL/IBLKernels.j3md");
        material.setBoolean("UseBRDF", true);
        picture.setMaterial(material);
        this.renderManager.getRenderer().setFrameBuffer(frameBuffer);
        this.renderManager.setCamera(updateAndGetInternalCamera, false);
        picture.updateLogicalState(0.0f);
        picture.updateGeometricState();
        this.renderManager.renderGeometry(picture);
        if (isTexturePulling()) {
            pull(frameBuffer, this.brtf, 0);
        }
        frameBuffer.dispose();
        if (isTexturePulling()) {
            endPulling(this.brtf);
        }
        this.brtf.getImage().clearUpdateNeeded();
        return this.brtf;
    }

    @Override
    public TextureCubeMap getIrradiance() {
        return this.irradiance;
    }

    @Override
    public TextureCubeMap getSpecularIBL() {
        return this.specular;
    }

    @Override
    public void bakeSpecularIBL() {
        Geometry geometry = new Geometry("BakeBox", new Box(1.0f, 1.0f, 1.0f));
        Material material = new Material(this.assetManager, "Common/IBL/IBLKernels.j3md");
        material.setBoolean("UseSpecularIBL", true);
        material.setTexture("EnvMap", this.envMap);
        geometry.setMaterial(material);
        if (isTexturePulling()) {
            startPulling();
        }
        int i10 = 0;
        while (i10 < this.specular.getImage().getMipMapSizes().length) {
            try {
                bakeSpecularIBL(i10, roughnessFromMip(i10), material, geometry);
                i10++;
            } catch (Exception e10) {
                LOGGER.log(Level.WARNING, "Error while computing mip level " + i10, (Throwable) e10);
            }
        }
        if (i10 < this.specular.getImage().getMipMapSizes().length) {
            int[] copyOf = Arrays.copyOf(this.specular.getImage().getMipMapSizes(), i10);
            this.specular.getImage().setMipMapSizes(copyOf);
            this.specular.getImage().setMipmapsGenerated(true);
            if (copyOf.length <= 1) {
                try {
                    LOGGER.log(Level.WARNING, "Workaround driver BUG: only one mip level is usable, regenerate mip 0 with roughness 1 to avoid an overly shiny fallback");
                    bakeSpecularIBL(0, 1.0f, material, geometry);
                } catch (Exception e11) {
                    LOGGER.log(Level.FINE, "Error while recomputing mip level 0", (Throwable) e11);
                }
            }
        }
        if (isTexturePulling()) {
            endPulling(this.specular);
        }
        this.specular.getImage().clearUpdateNeeded();
    }
}
