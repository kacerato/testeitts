package com.jme3.system;

import com.jme3.light.LightList;
import com.jme3.material.RenderState;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Matrix4f;
import com.jme3.renderer.Caps;
import com.jme3.renderer.Limits;
import com.jme3.renderer.Renderer;
import com.jme3.renderer.Statistics;
import com.jme3.renderer.TextureUnitException;
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

public class NullRenderer implements Renderer {
    private final EnumSet<Caps> caps = EnumSet.allOf(Caps.class);
    private final EnumMap<Limits, Integer> limits = new EnumMap<>(Limits.class);
    private final Statistics stats = new Statistics();

    @Override
    public void applyRenderState(RenderState renderState) {
    }

    @Override
    public void cleanup() {
    }

    @Override
    public void clearBuffers(boolean z10, boolean z11, boolean z12) {
    }

    @Override
    public void clearClipRect() {
    }

    public void copyFrameBuffer(FrameBuffer frameBuffer, FrameBuffer frameBuffer2) {
    }

    @Override
    public void deleteBuffer(VertexBuffer vertexBuffer) {
    }

    @Override
    public void deleteFence(GLFence gLFence) {
    }

    @Override
    public void deleteFrameBuffer(FrameBuffer frameBuffer) {
    }

    @Override
    public void deleteImage(Image image) {
    }

    @Override
    public void deleteShader(Shader shader) {
    }

    @Override
    public void deleteShaderSource(Shader.ShaderSource shaderSource) {
    }

    @Override
    public int[] generateProfilingTasks(int i10) {
        return new int[0];
    }

    @Override
    public boolean getAlphaToCoverage() {
        return false;
    }

    @Override
    public EnumSet<Caps> getCaps() {
        return this.caps;
    }

    @Override
    public FrameBuffer getCurrentFrameBuffer() {
        return null;
    }

    @Override
    public int getDefaultAnisotropicFilter() {
        return 0;
    }

    @Override
    public EnumMap<Limits, Integer> getLimits() {
        return this.limits;
    }

    @Override
    public float getMaxLineWidth() {
        return Float.MAX_VALUE;
    }

    @Override
    public long getProfilingTime(int i10) {
        return 0L;
    }

    @Override
    public Statistics getStatistics() {
        return this.stats;
    }

    @Override
    public void initialize() {
        for (Limits limits : Limits.values()) {
            this.limits.put((EnumMap<Limits, Integer>) limits, (Limits) Integer.MAX_VALUE);
        }
    }

    @Override
    public void invalidateState() {
    }

    @Override
    public boolean isLinearizeSrgbImages() {
        return false;
    }

    @Override
    public boolean isMainFrameBufferSrgb() {
        return false;
    }

    @Override
    public boolean isTaskResultAvailable(int i10) {
        return false;
    }

    @Override
    public void modifyTexture(Texture texture, Image image, int i10, int i11) {
    }

    @Override
    public void postFrame() {
    }

    @Override
    public void readFrameBuffer(FrameBuffer frameBuffer, ByteBuffer byteBuffer) {
    }

    @Override
    public void readFrameBufferWithFormat(FrameBuffer frameBuffer, ByteBuffer byteBuffer, Image.Format format) {
    }

    @Override
    public void registerNativeObject(NativeObject nativeObject) {
    }

    @Override
    public void renderMesh(Mesh mesh, int i10, int i11, VertexBuffer[] vertexBufferArr) {
    }

    @Override
    public void resetGLObjects() {
    }

    @Override
    public void setAlphaToCoverage(boolean z10) {
    }

    @Override
    public void setBackgroundColor(ColorRGBA colorRGBA) {
    }

    @Override
    public void setClipRect(int i10, int i11, int i12, int i13) {
    }

    @Override
    public void setDefaultAnisotropicFilter(int i10) {
    }

    @Override
    public void setDepthRange(float f10, float f11) {
    }

    @Override
    public void setFrameBuffer(FrameBuffer frameBuffer) {
    }

    public void setLighting(LightList lightList) {
    }

    @Override
    public void setLinearizeSrgbImages(boolean z10) {
    }

    @Override
    public void setMainFrameBufferOverride(FrameBuffer frameBuffer) {
    }

    @Override
    public void setMainFrameBufferSrgb(boolean z10) {
    }

    @Override
    public void setShader(Shader shader) {
    }

    @Override
    public void setShaderStorageBufferObject(int i10, BufferObject bufferObject) {
    }

    @Override
    public void setTexture(int i10, Texture texture) throws TextureUnitException {
    }

    @Override
    public void setTextureImage(int i10, TextureImage textureImage) throws TextureUnitException {
    }

    @Override
    public void setUniformBufferObject(int i10, BufferObject bufferObject) {
    }

    @Override
    public void setViewPort(int i10, int i11, int i12, int i13) {
    }

    public void setViewProjectionMatrices(Matrix4f matrix4f, Matrix4f matrix4f2) {
    }

    public void setWorldMatrix(Matrix4f matrix4f) {
    }

    @Override
    public void startProfiling(int i10) {
    }

    @Override
    public void stopProfiling() {
    }

    @Override
    public void updateBufferData(VertexBuffer vertexBuffer) {
    }

    @Override
    public void updateShaderStorageBufferObjectData(BufferObject bufferObject) {
    }

    @Override
    public void updateUniformBufferObjectData(BufferObject bufferObject) {
    }

    @Override
    public void copyFrameBuffer(FrameBuffer frameBuffer, FrameBuffer frameBuffer2, boolean z10) {
    }

    @Override
    public void deleteBuffer(BufferObject bufferObject) {
    }

    @Override
    public void copyFrameBuffer(FrameBuffer frameBuffer, FrameBuffer frameBuffer2, boolean z10, boolean z11) {
    }
}
