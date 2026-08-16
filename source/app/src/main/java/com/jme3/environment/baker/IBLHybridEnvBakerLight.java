package com.jme3.environment.baker;

import com.jme3.asset.AssetManager;
import com.jme3.environment.util.EnvMapUtils;
import com.jme3.material.Material;
import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;
import com.jme3.renderer.RenderManager;
import com.jme3.scene.Geometry;
import com.jme3.scene.shape.Box;
import com.jme3.texture.FrameBuffer;
import com.jme3.texture.Image;
import com.jme3.texture.Texture;
import com.jme3.texture.TextureCubeMap;
import com.jme3.texture.image.ColorSpace;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;

public class IBLHybridEnvBakerLight extends GenericEnvBaker implements IBLEnvBakerLight {
    private static final Logger LOGGER = Logger.getLogger(IBLHybridEnvBakerLight.class.getName());
    protected Vector3f[] shCoef;
    protected TextureCubeMap specular;

    public IBLHybridEnvBakerLight(RenderManager renderManager, AssetManager assetManager, Image.Format format, Image.Format format2, int i10, int i11) {
        super(renderManager, assetManager, format, format2, i10);
        TextureCubeMap textureCubeMap = new TextureCubeMap(i11, i11, getColorFormat());
        this.specular = textureCubeMap;
        textureCubeMap.setWrap(Texture.WrapMode.EdgeClamp);
        this.specular.setMagFilter(Texture.MagFilter.Bilinear);
        this.specular.setMinFilter(Texture.MinFilter.Trilinear);
        this.specular.getImage().setColorSpace(ColorSpace.Linear);
        int limitMips = limitMips((int) ((Math.log(i11) / Math.log(2.0d)) + 1.0d), this.specular.getImage().getWidth(), this.specular.getImage().getHeight(), renderManager);
        int[] iArr = new int[limitMips];
        for (int i12 = 0; i12 < limitMips; i12++) {
            int pow = (int) FastMath.pow(2.0f, (limitMips - 1) - i12);
            iArr[i12] = pow * pow * (this.specular.getImage().getFormat().getBitsPerPixel() / 8);
        }
        this.specular.getImage().setMipMapSizes(iArr);
        this.specular.getImage().setMipmapsGenerated(true);
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

    public void bakeSphericalHarmonicsCoefficients() {
        Vector3f[] sphericalHarmonicsCoefficents = EnvMapUtils.getSphericalHarmonicsCoefficents(getEnvMap());
        this.shCoef = sphericalHarmonicsCoefficents;
        EnvMapUtils.prepareShCoefs(sphericalHarmonicsCoefficents);
    }

    @Override
    public TextureCubeMap getSpecularIBL() {
        return this.specular;
    }

    @Override
    public Vector3f[] getSphericalHarmonicsCoefficients() {
        return this.shCoef;
    }

    @Override
    public boolean isTexturePulling() {
        return true;
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
