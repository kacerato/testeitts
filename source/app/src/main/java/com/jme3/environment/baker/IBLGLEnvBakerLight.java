package com.jme3.environment.baker;

import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.asset.AssetManager;
import com.jme3.environment.util.EnvMapUtils;
import com.jme3.material.Material;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Caps;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.Renderer;
import com.jme3.scene.Geometry;
import com.jme3.scene.shape.Box;
import com.jme3.texture.FrameBuffer;
import com.jme3.texture.Image;
import com.jme3.texture.Texture2D;
import com.jme3.texture.image.ColorSpace;
import com.jme3.texture.image.ImageRaster;
import com.jme3.util.BufferUtils;
import java.nio.ByteBuffer;
import java.util.logging.Logger;

public class IBLGLEnvBakerLight extends IBLHybridEnvBakerLight {
    private static final Logger LOG = Logger.getLogger(IBLGLEnvBakerLight.class.getName());
    private static final int NUM_SH_COEFFICIENT = 9;

    public IBLGLEnvBakerLight(RenderManager renderManager, AssetManager assetManager, Image.Format format, Image.Format format2, int i10, int i11) {
        super(renderManager, assetManager, format, format2, i10, i11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void bakeSphericalHarmonicsCoefficients() {
        Image.Format format;
        float f10;
        int i10;
        Geometry geometry = new Geometry("BakeBox", new Box(1.0f, 1.0f, 1.0f));
        Material material = new Material(this.assetManager, "Common/IBLSphH/IBLSphH.j3md");
        material.setTexture(SerializableShaderEntry.f81152f, this.envMap);
        material.setVector2("Resolution", new Vector2f(this.envMap.getImage().getWidth(), this.envMap.getImage().getHeight()));
        geometry.setMaterial(material);
        Image.Format format2 = Image.Format.RGBA32F;
        float f11 = 0.0f;
        if (this.renderManager.getRenderer().getCaps().contains(Caps.FloatColorBufferRGBA)) {
            format = format2;
            f10 = 0.0f;
        } else {
            LOG.warning("Float textures not supported, using RGB8 instead. This may cause accuracy issues.");
            format = Image.Format.RGBA8;
            f10 = 0.05f;
        }
        if (f10 > 0.0f) {
            material.setFloat("RemapMaxValue", f10);
        } else {
            material.clearParam("RemapMaxValue");
        }
        int i11 = 1;
        Texture2D[] texture2DArr = {new Texture2D(9, 1, 1, format), new Texture2D(9, 1, 1, format)};
        FrameBuffer[] frameBufferArr = {new FrameBuffer(9, 1, 1), new FrameBuffer(9, 1, 1)};
        int i12 = 0;
        frameBufferArr[0].setSrgb(false);
        frameBufferArr[0].addColorTarget(FrameBuffer.FrameBufferTarget.newTarget(texture2DArr[0]));
        frameBufferArr[1].setSrgb(false);
        frameBufferArr[1].addColorTarget(FrameBuffer.FrameBufferTarget.newTarget(texture2DArr[1]));
        int i13 = -1;
        int i14 = -1;
        int i15 = 0;
        while (i15 < 6) {
            if (i14 != i13) {
                int i16 = i14 == 0 ? i11 : i12;
                material.setTexture("ShCoef", texture2DArr[i14]);
                i10 = i16;
            } else {
                i10 = i12;
            }
            material.setInt("FaceId", i15);
            geometry.updateLogicalState(f11);
            geometry.updateGeometricState();
            boolean z10 = i12;
            this.renderManager.setCamera(updateAndGetInternalCamera(0, frameBufferArr[i10].getWidth(), frameBufferArr[i10].getHeight(), Vector3f.ZERO, 1.0f, 1000.0f), z10);
            this.renderManager.getRenderer().setFrameBuffer(frameBufferArr[i10]);
            this.renderManager.renderGeometry(geometry);
            i15++;
            i12 = z10 ? 1 : 0;
            i14 = i10;
            i13 = i13;
            f11 = 0.0f;
            i11 = 1;
        }
        int i17 = i12;
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer((frameBufferArr[i14].getColorTarget().getFormat().getBitsPerPixel() / 8) * 9);
        Renderer renderer = this.renderManager.getRenderer();
        FrameBuffer frameBuffer = frameBufferArr[i14];
        renderer.readFrameBufferWithFormat(frameBuffer, createByteBuffer, frameBuffer.getColorTarget().getFormat());
        createByteBuffer.rewind();
        float f12 = f10;
        Image image = new Image(format, 9, 1, createByteBuffer, ColorSpace.Linear);
        ImageRaster create = ImageRaster.create(image);
        this.shCoef = new Vector3f[9];
        float f13 = 0.0f;
        while (i12 < this.shCoef.length) {
            ColorRGBA pixel = create.getPixel(i12, i17);
            this.shCoef[i12] = new Vector3f(pixel.f81598r, pixel.f81597g, pixel.f81596b);
            if (f13 == 0.0f) {
                f13 = pixel.f81595a;
            } else if (f13 != pixel.f81595a) {
                LOG.warning("SH weight is not uniform, this may cause issues.");
            }
            i12++;
        }
        if (f10 > 0.0f) {
            f13 /= f12;
        }
        for (int i18 = i17; i18 < 9; i18++) {
            if (f10 > 0.0f) {
                this.shCoef[i18].divideLocal(f12);
            }
            this.shCoef[i18].multLocal(12.566371f / f13);
        }
        EnvMapUtils.prepareShCoefs(this.shCoef);
        image.dispose();
    }

    @Override
    public boolean isTexturePulling() {
        return this.texturePulling;
    }
}
