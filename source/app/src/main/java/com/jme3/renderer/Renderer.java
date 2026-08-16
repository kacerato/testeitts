package com.jme3.renderer;

import com.jme3.material.RenderState;
import com.jme3.math.ColorRGBA;
import com.jme3.renderer.opengl.GLFence;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.shader.Shader;
import com.jme3.shader.bufferobject.BufferObject;
import com.jme3.texture.FrameBuffer;
import com.jme3.texture.Image;
import com.jme3.texture.Texture;
import com.jme3.texture.TextureImage;
import com.jme3.util.NativeObject;
import java.nio.ByteBuffer;
import java.util.EnumMap;
import java.util.EnumSet;

public interface Renderer {
    void applyRenderState(RenderState renderState);

    void cleanup();

    void clearBuffers(boolean z10, boolean z11, boolean z12);

    void clearClipRect();

    @Deprecated
    void copyFrameBuffer(FrameBuffer frameBuffer, FrameBuffer frameBuffer2, boolean z10);

    void copyFrameBuffer(FrameBuffer frameBuffer, FrameBuffer frameBuffer2, boolean z10, boolean z11);

    void deleteBuffer(VertexBuffer vertexBuffer);

    void deleteBuffer(BufferObject bufferObject);

    void deleteFence(GLFence gLFence);

    void deleteFrameBuffer(FrameBuffer frameBuffer);

    void deleteImage(Image image);

    void deleteShader(Shader shader);

    void deleteShaderSource(Shader.ShaderSource shaderSource);

    int[] generateProfilingTasks(int i10);

    boolean getAlphaToCoverage();

    default Image.Format getBestColorTargetFormat(boolean z10) {
        return getBestColorTargetFormat(z10, true, false);
    }

    default Image.Format getBestDepthTargetFormat() {
        return getBestDepthTargetFormat(false, false, false);
    }

    EnumSet<Caps> getCaps();

    FrameBuffer getCurrentFrameBuffer();

    int getDefaultAnisotropicFilter();

    EnumMap<Limits, Integer> getLimits();

    float getMaxLineWidth();

    long getProfilingTime(int i10);

    Statistics getStatistics();

    void initialize();

    void invalidateState();

    boolean isLinearizeSrgbImages();

    boolean isMainFrameBufferSrgb();

    boolean isTaskResultAvailable(int i10);

    void modifyTexture(Texture texture, Image image, int i10, int i11);

    default void popDebugGroup() {
    }

    void postFrame();

    default void pushDebugGroup(String str) {
    }

    void readFrameBuffer(FrameBuffer frameBuffer, ByteBuffer byteBuffer);

    void readFrameBufferWithFormat(FrameBuffer frameBuffer, ByteBuffer byteBuffer, Image.Format format);

    void registerNativeObject(NativeObject nativeObject);

    void renderMesh(Mesh mesh, int i10, int i11, VertexBuffer[] vertexBufferArr);

    void resetGLObjects();

    void setAlphaToCoverage(boolean z10);

    void setBackgroundColor(ColorRGBA colorRGBA);

    void setClipRect(int i10, int i11, int i12, int i13);

    void setDefaultAnisotropicFilter(int i10);

    void setDepthRange(float f10, float f11);

    void setFrameBuffer(FrameBuffer frameBuffer);

    void setLinearizeSrgbImages(boolean z10);

    void setMainFrameBufferOverride(FrameBuffer frameBuffer);

    void setMainFrameBufferSrgb(boolean z10);

    void setShader(Shader shader);

    void setShaderStorageBufferObject(int i10, BufferObject bufferObject);

    void setTexture(int i10, Texture texture) throws TextureUnitException;

    void setTextureImage(int i10, TextureImage textureImage) throws TextureUnitException;

    void setUniformBufferObject(int i10, BufferObject bufferObject);

    void setViewPort(int i10, int i11, int i12, int i13);

    void startProfiling(int i10);

    void stopProfiling();

    void updateBufferData(VertexBuffer vertexBuffer);

    void updateShaderStorageBufferObjectData(BufferObject bufferObject);

    void updateUniformBufferObjectData(BufferObject bufferObject);

    default Image.Format getBestColorTargetFormat(boolean z10, boolean z11, boolean z12) {
        if (!z10) {
            return Image.Format.RGBA8;
        }
        if (!z11 && getCaps().contains(Caps.PackedFloatTexture) && getCaps().contains(Caps.PackedFloatColorBuffer)) {
            return Image.Format.RGB111110F;
        }
        if (z12) {
            if (getCaps().contains(Caps.HalfFloatTexture) && getCaps().contains(Caps.HalfFloatColorBufferRGBA)) {
                return Image.Format.RGBA16F;
            }
        } else {
            if (getCaps().contains(Caps.PackedFloatTexture) && getCaps().contains(Caps.PackedFloatColorBuffer)) {
                return Image.Format.RGB111110F;
            }
            EnumSet<Caps> caps = getCaps();
            Caps caps2 = Caps.HalfFloatTexture;
            if (caps.contains(caps2) && getCaps().contains(Caps.HalfFloatColorBufferRGB)) {
                return Image.Format.RGB16F;
            }
            if (getCaps().contains(caps2) && getCaps().contains(Caps.HalfFloatColorBufferRGBA)) {
                return Image.Format.RGBA16F;
            }
        }
        return Image.Format.RGBA8;
    }

    default Image.Format getBestDepthTargetFormat(boolean z10, boolean z11, boolean z12) {
        if (z12) {
            if (getCaps().contains(Caps.PackedDepthStencilBuffer)) {
                return Image.Format.Depth24Stencil8;
            }
        } else {
            if (z10 && getCaps().contains(Caps.FloatDepthBuffer)) {
                return Image.Format.Depth32F;
            }
            if (z11) {
                if (getCaps().contains(Caps.Depth32)) {
                    return Image.Format.Depth32;
                }
                if (getCaps().contains(Caps.FloatDepthBuffer)) {
                    return Image.Format.Depth32F;
                }
            }
            if (getCaps().contains(Caps.Depth24)) {
                return Image.Format.Depth24;
            }
        }
        return Image.Format.Depth;
    }
}
