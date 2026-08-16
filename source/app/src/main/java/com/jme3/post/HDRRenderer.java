package com.jme3.post;

import androidx.exifinterface.media.ExifInterface;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.asset.AssetManager;
import com.jme3.material.Material;
import com.jme3.math.Vector2f;
import com.jme3.profile.AppProfiler;
import com.jme3.renderer.Camera;
import com.jme3.renderer.Caps;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.Renderer;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.texture.FrameBuffer;
import com.jme3.texture.Image;
import com.jme3.texture.Texture;
import com.jme3.texture.Texture2D;
import com.jme3.ui.Picture;
import java.util.EnumSet;
import java.util.logging.Logger;

@Deprecated
public class HDRRenderer implements SceneProcessor {
    private static final int LUMMODE_DECODE_LUM = 3;
    private static final int LUMMODE_ENCODE_LUM = 2;
    private static final int LUMMODE_NONE = 1;
    private static final Logger logger = Logger.getLogger(HDRRenderer.class.getName());
    private Image.Format bufFormat;
    private boolean enabled;
    private Picture fsQuad;
    private Material hdr1;
    private Material hdr64;
    private Material hdr8;
    private Texture2D mainScene;
    private FrameBuffer mainSceneFB;
    private final AssetManager manager;
    private FrameBuffer msFB;
    private RenderManager renderManager;
    private Renderer renderer;
    private Texture2D scene64;
    private FrameBuffer scene64FB;
    private Texture2D scene8;
    private FrameBuffer scene8FB;
    private Material tone;
    private ViewPort viewPort;
    private Camera fbCam = new Camera(1, 1);
    private FrameBuffer[] scene1FB = new FrameBuffer[2];
    private Texture2D[] scene1 = new Texture2D[2];
    private float time = 0.0f;
    private int curSrc = -1;
    private int oppSrc = -1;
    private float blendFactor = 0.0f;
    private int numSamples = 0;
    private float exposure = 0.18f;
    private float whiteLevel = 100.0f;
    private float throttle = -1.0f;
    private int maxIterations = -1;
    private Texture.MinFilter fbMinFilter = Texture.MinFilter.BilinearNoMipMaps;
    private Texture.MagFilter fbMagFilter = Texture.MagFilter.Bilinear;

    public HDRRenderer(AssetManager assetManager, Renderer renderer) {
        this.bufFormat = Image.Format.RGB8;
        this.enabled = true;
        this.manager = assetManager;
        this.renderer = renderer;
        EnumSet<Caps> caps = renderer.getCaps();
        if (caps.contains(Caps.PackedFloatColorBuffer)) {
            this.bufFormat = Image.Format.RGB111110F;
            return;
        }
        if (caps.contains(Caps.HalfFloatColorBufferRGB)) {
            this.bufFormat = Image.Format.RGB16F;
        } else if (caps.contains(Caps.HalfFloatColorBufferRGBA)) {
            this.bufFormat = Image.Format.RGBA16F;
        } else {
            this.enabled = false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Material createLumShader(int i10, int i11, int i12, int i13, int i14, int i15, Texture texture) {
        float f10;
        Material material = new Material(this.manager, "Common/MatDefs/Hdr/LogLum.j3md");
        Vector2f vector2f = new Vector2f(1.0f / i12, 1.0f / i13);
        Vector2f vector2f2 = new Vector2f(1.0f / i10, 1.0f / i11);
        Vector2f vector2f3 = new Vector2f();
        if (i15 == -1) {
            vector2f3.set(vector2f.f81609x / vector2f2.f81609x, vector2f.f81610y / vector2f2.f81610y);
            f10 = vector2f3.f81609x * vector2f3.f81610y;
            material.setBoolean("Blocks", true);
            if (i14 != 2) {
                material.setBoolean("EncodeLum", true);
            } else if (i14 == 3) {
                material.setBoolean("DecodeLum", true);
            }
            material.setTexture(SerializableShaderEntry.f81152f, texture);
            material.setVector2("BlockSize", vector2f);
            material.setVector2("PixelSize", vector2f2);
            material.setFloat("NumPixels", f10);
            return material;
        }
        do {
            vector2f2.multLocal(2.0f);
            vector2f3.set(vector2f.f81609x / vector2f2.f81609x, vector2f.f81610y / vector2f2.f81610y);
            f10 = vector2f3.f81609x * vector2f3.f81610y;
        } while (f10 > i15);
        material.setBoolean("Blocks", true);
        if (i14 != 2) {
        }
        material.setTexture(SerializableShaderEntry.f81152f, texture);
        material.setVector2("BlockSize", vector2f);
        material.setVector2("PixelSize", vector2f2);
        material.setFloat("NumPixels", f10);
        return material;
    }

    private void createLumShaders() {
        this.hdr64 = createLumShader(this.mainSceneFB.getWidth(), this.mainSceneFB.getHeight(), 64, 64, 2, this.maxIterations, this.mainScene);
        this.hdr8 = createLumShader(64, 64, 8, 8, 1, this.maxIterations, this.scene64);
        this.hdr1 = createLumShader(8, 8, 1, 1, 1, this.maxIterations, this.scene8);
    }

    private int opposite(int i10) {
        return i10 == 1 ? 0 : 1;
    }

    private void renderProcessing(Renderer renderer, FrameBuffer frameBuffer, Material material) {
        if (frameBuffer == null) {
            this.fsQuad.setWidth(this.mainSceneFB.getWidth());
            this.fsQuad.setHeight(this.mainSceneFB.getHeight());
            this.fbCam.resize(this.mainSceneFB.getWidth(), this.mainSceneFB.getHeight(), true);
        } else {
            this.fsQuad.setWidth(frameBuffer.getWidth());
            this.fsQuad.setHeight(frameBuffer.getHeight());
            this.fbCam.resize(frameBuffer.getWidth(), frameBuffer.getHeight(), true);
        }
        this.fsQuad.setMaterial(material);
        this.fsQuad.updateGeometricState();
        this.renderManager.setCamera(this.fbCam, true);
        renderer.setFrameBuffer(frameBuffer);
        renderer.clearBuffers(true, true, true);
        this.renderManager.renderGeometry(this.fsQuad);
    }

    private void renderToneMap(Renderer renderer, FrameBuffer frameBuffer) {
        this.tone.setFloat(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.exposure);
        this.tone.setFloat("White", this.whiteLevel);
        this.tone.setTexture("Lum", this.scene1[this.oppSrc]);
        this.tone.setTexture("Lum2", this.scene1[this.curSrc]);
        this.tone.setFloat("BlendFactor", this.blendFactor);
        renderProcessing(renderer, frameBuffer, this.tone);
    }

    private void updateAverageLuminance(Renderer renderer) {
        renderProcessing(renderer, this.scene64FB, this.hdr64);
        renderProcessing(renderer, this.scene8FB, this.hdr8);
        renderProcessing(renderer, this.scene1FB[this.curSrc], this.hdr1);
    }

    @Override
    public void cleanup() {
        if (this.enabled) {
            FrameBuffer frameBuffer = this.msFB;
            if (frameBuffer != null) {
                this.renderer.deleteFrameBuffer(frameBuffer);
            }
            FrameBuffer frameBuffer2 = this.mainSceneFB;
            if (frameBuffer2 != null) {
                this.renderer.deleteFrameBuffer(frameBuffer2);
            }
            FrameBuffer frameBuffer3 = this.scene64FB;
            if (frameBuffer3 != null) {
                this.renderer.deleteFrameBuffer(frameBuffer3);
                this.renderer.deleteFrameBuffer(this.scene8FB);
                this.renderer.deleteFrameBuffer(this.scene1FB[0]);
                this.renderer.deleteFrameBuffer(this.scene1FB[1]);
            }
        }
    }

    public Picture createDisplayQuad() {
        if (this.scene64 == null) {
            return null;
        }
        Material material = new Material(this.manager, "Common/MatDefs/Hdr/LogLum.j3md");
        material.setBoolean("DecodeLum", true);
        material.setTexture(SerializableShaderEntry.f81152f, this.scene64);
        Picture picture = new Picture("Luminance Display");
        picture.setMaterial(material);
        return picture;
    }

    @Override
    public void initialize(RenderManager renderManager, ViewPort viewPort) {
        if (this.enabled) {
            this.renderer = renderManager.getRenderer();
            this.renderManager = renderManager;
            this.viewPort = viewPort;
            this.fsQuad = new Picture("HDR Fullscreen Quad");
            Image.Format format = Image.Format.RGB8;
            this.scene64FB = new FrameBuffer(64, 64, 1);
            Texture2D texture2D = new Texture2D(64, 64, format);
            this.scene64 = texture2D;
            this.scene64FB.setColorTexture(texture2D);
            this.scene64.setMagFilter(this.fbMagFilter);
            this.scene64.setMinFilter(this.fbMinFilter);
            this.scene8FB = new FrameBuffer(8, 8, 1);
            Texture2D texture2D2 = new Texture2D(8, 8, format);
            this.scene8 = texture2D2;
            this.scene8FB.setColorTexture(texture2D2);
            this.scene8.setMagFilter(this.fbMagFilter);
            this.scene8.setMinFilter(this.fbMinFilter);
            this.scene1FB[0] = new FrameBuffer(1, 1, 1);
            this.scene1[0] = new Texture2D(1, 1, format);
            this.scene1FB[0].setColorTexture(this.scene1[0]);
            this.scene1FB[1] = new FrameBuffer(1, 1, 1);
            this.scene1[1] = new Texture2D(1, 1, format);
            this.scene1FB[1].setColorTexture(this.scene1[1]);
            Material material = new Material(this.manager, "Common/MatDefs/Hdr/ToneMap.j3md");
            this.tone = material;
            material.setFloat(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, 0.18f);
            this.tone.setFloat("White", 100.0f);
            reshape(viewPort, viewPort.getCamera().getWidth(), viewPort.getCamera().getHeight());
        }
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    @Override
    public boolean isInitialized() {
        return this.viewPort != null;
    }

    @Override
    public void postFrame(FrameBuffer frameBuffer) {
        if (this.enabled) {
            FrameBuffer frameBuffer2 = this.msFB;
            if (frameBuffer2 != null) {
                this.renderer.copyFrameBuffer(frameBuffer2, this.mainSceneFB, true, true);
            }
            float f10 = this.throttle;
            if (f10 == -1.0f) {
                this.curSrc = 0;
                this.oppSrc = 0;
                this.blendFactor = 0.0f;
                this.time = 0.0f;
                updateAverageLuminance(this.renderer);
            } else {
                int i10 = this.curSrc;
                if (i10 == -1) {
                    this.curSrc = 0;
                    this.oppSrc = 0;
                    updateAverageLuminance(this.renderer);
                    this.blendFactor = 0.0f;
                    this.time = 0.0f;
                } else if (this.time > f10) {
                    this.oppSrc = i10;
                    this.curSrc = opposite(i10);
                    updateAverageLuminance(this.renderer);
                    this.blendFactor = 0.0f;
                    this.time = 0.0f;
                }
            }
            renderToneMap(this.renderer, null);
            this.renderManager.setCamera(this.viewPort.getCamera(), false);
        }
    }

    @Override
    public void postQueue(RenderQueue renderQueue) {
    }

    @Override
    public void preFrame(float f10) {
        if (this.enabled) {
            float f11 = this.time + f10;
            this.time = f11;
            this.blendFactor = f11 / this.throttle;
        }
    }

    @Override
    public void reshape(ViewPort viewPort, int i10, int i11) {
        FrameBuffer frameBuffer = this.mainSceneFB;
        if (frameBuffer != null) {
            this.renderer.deleteFrameBuffer(frameBuffer);
        }
        this.mainSceneFB = new FrameBuffer(i10, i11, 1);
        this.mainScene = new Texture2D(i10, i11, this.bufFormat);
        FrameBuffer frameBuffer2 = this.mainSceneFB;
        Image.Format format = Image.Format.Depth;
        frameBuffer2.setDepthBuffer(format);
        this.mainSceneFB.setColorTexture(this.mainScene);
        this.mainScene.setMagFilter(this.fbMagFilter);
        this.mainScene.setMinFilter(this.fbMinFilter);
        FrameBuffer frameBuffer3 = this.msFB;
        if (frameBuffer3 != null) {
            this.renderer.deleteFrameBuffer(frameBuffer3);
        }
        this.tone.setTexture(SerializableShaderEntry.f81152f, this.mainScene);
        EnumSet<Caps> caps = this.renderer.getCaps();
        if (this.numSamples <= 1 || !caps.contains(Caps.FrameBufferMultisample)) {
            if (this.numSamples > 1) {
                logger.warning("FBO multisampling not supported on this GPU, request ignored.");
            }
            viewPort.setOutputFrameBuffer(this.mainSceneFB);
        } else {
            FrameBuffer frameBuffer4 = new FrameBuffer(i10, i11, this.numSamples);
            this.msFB = frameBuffer4;
            frameBuffer4.setDepthBuffer(format);
            this.msFB.setColorBuffer(this.bufFormat);
            viewPort.setOutputFrameBuffer(this.msFB);
        }
        createLumShaders();
    }

    public void setExposure(float f10) {
        this.exposure = f10;
    }

    public void setMaxIterations(int i10) {
        this.maxIterations = i10;
        if (this.hdr64 != null) {
            createLumShaders();
        }
    }

    @Override
    public void setProfiler(AppProfiler appProfiler) {
    }

    public void setSamples(int i10) {
        this.numSamples = i10;
    }

    public void setThrottle(float f10) {
        this.throttle = f10;
    }

    public void setUseFastFilter(boolean z10) {
        if (z10) {
            this.fbMagFilter = Texture.MagFilter.Nearest;
            this.fbMinFilter = Texture.MinFilter.NearestNoMipMaps;
        } else {
            this.fbMagFilter = Texture.MagFilter.Bilinear;
            this.fbMinFilter = Texture.MinFilter.BilinearNoMipMaps;
        }
    }

    public void setWhiteLevel(float f10) {
        this.whiteLevel = f10;
    }
}
