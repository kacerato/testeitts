package com.ardor3d.renderer;

import com.ardor3d.image.ImageDataFormat;
import com.ardor3d.image.Texture;
import com.ardor3d.image.Texture1D;
import com.ardor3d.image.Texture2D;
import com.ardor3d.image.Texture3D;
import com.ardor3d.image.TextureCubeMap;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.math.type.ReadOnlyTransform;
import com.ardor3d.renderer.queue.RenderQueue;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.scenegraph.AbstractBufferData;
import com.ardor3d.scenegraph.FloatBufferData;
import com.ardor3d.scenegraph.IndexBufferData;
import com.ardor3d.scenegraph.Renderable;
import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.scenegraph.hint.NormalsMode;
import com.ardor3d.util.Ardor3dException;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.Collection;
import java.util.List;

public interface Renderer {
    public static final int BUFFER_ACCUMULATION = 4;
    public static final int BUFFER_COLOR = 1;
    public static final int BUFFER_COLOR_AND_DEPTH = 3;
    public static final int BUFFER_DEPTH = 2;
    public static final int BUFFER_NONE = 0;
    public static final int BUFFER_STENCIL = 8;

    void applyDefaultColor(ReadOnlyColorRGBA readOnlyColorRGBA);

    void applyNormalsMode(NormalsMode normalsMode, ReadOnlyTransform readOnlyTransform);

    void applyState(RenderState.StateType stateType, RenderState renderState);

    boolean checkAndAdd(Spatial spatial);

    void checkCardError() throws Ardor3dException;

    void clearBuffers(int i10);

    void clearBuffers(int i10, boolean z10);

    void clearClips();

    void clearQueue();

    void deleteDisplayLists(Collection<Integer> collection);

    void deleteTexture(Texture texture);

    void deleteTextureIds(Collection<Integer> collection);

    void deleteVBOs(AbstractBufferData<?> abstractBufferData);

    void deleteVBOs(Collection<Integer> collection);

    boolean doTransforms(ReadOnlyTransform readOnlyTransform);

    void draw(Renderable renderable);

    void draw(Spatial spatial);

    void drawArrays(FloatBufferData floatBufferData, int[] iArr, IndexMode[] indexModeArr);

    void drawElements(IndexBufferData<?> indexBufferData, int[] iArr, IndexMode[] indexModeArr);

    void drawElementsVBO(IndexBufferData<?> indexBufferData, int[] iArr, IndexMode[] indexModeArr);

    void endDisplayList();

    void finishGraphics();

    void flushFrame(boolean z10);

    void flushGraphics();

    ReadOnlyColorRGBA getBackgroundColor();

    FloatBuffer getModelViewMatrix(FloatBuffer floatBuffer);

    FloatBuffer getProjectionMatrix(FloatBuffer floatBuffer);

    RenderState getProperRenderState(RenderState.StateType stateType, RenderState renderState);

    RenderQueue getQueue();

    void grabScreenContents(ByteBuffer byteBuffer, ImageDataFormat imageDataFormat, int i10, int i11, int i12, int i13);

    boolean isClipTestEnabled();

    boolean isInOrthoMode();

    boolean isProcessingQueue();

    void loadTexture(Texture texture, int i10);

    void popClip();

    void pushClip(int i10, int i11, int i12, int i13);

    void pushEmptyClip();

    void renderBuckets();

    void renderBuckets(boolean z10, boolean z11);

    void renderDisplayList(int i10);

    void setBackgroundColor(ReadOnlyColorRGBA readOnlyColorRGBA);

    void setClipTestEnabled(boolean z10);

    void setDepthRange(double d10, double d11);

    void setDrawBuffer(DrawBufferTarget drawBufferTarget);

    void setModelViewMatrix(FloatBuffer floatBuffer);

    void setOrtho();

    void setProjectionMatrix(FloatBuffer floatBuffer);

    void setRenderLogic(RenderLogic renderLogic);

    void setViewport(int i10, int i11, int i12, int i13);

    void setupColorData(FloatBufferData floatBufferData);

    void setupColorDataVBO(FloatBufferData floatBufferData);

    void setupFogData(FloatBufferData floatBufferData);

    void setupFogDataVBO(FloatBufferData floatBufferData);

    void setupInterleavedDataVBO(FloatBufferData floatBufferData, FloatBufferData floatBufferData2, FloatBufferData floatBufferData3, FloatBufferData floatBufferData4, List<FloatBufferData> list);

    void setupLineParameters(float f10, int i10, short s10, boolean z10);

    void setupNormalData(FloatBufferData floatBufferData);

    void setupNormalDataVBO(FloatBufferData floatBufferData);

    void setupPointParameters(float f10, boolean z10, boolean z11, boolean z12, FloatBuffer floatBuffer, float f11, float f12);

    void setupTextureData(List<FloatBufferData> list);

    void setupTextureDataVBO(List<FloatBufferData> list);

    void setupVertexData(FloatBufferData floatBufferData);

    void setupVertexDataVBO(FloatBufferData floatBufferData);

    int startDisplayList();

    void unbindVBO();

    void undoTransforms(ReadOnlyTransform readOnlyTransform);

    void unsetOrtho();

    void updateTexture1DSubImage(Texture1D texture1D, int i10, int i11, ByteBuffer byteBuffer, int i12);

    void updateTexture2DSubImage(Texture2D texture2D, int i10, int i11, int i12, int i13, ByteBuffer byteBuffer, int i14, int i15, int i16);

    void updateTexture3DSubImage(Texture3D texture3D, int i10, int i11, int i12, int i13, int i14, int i15, ByteBuffer byteBuffer, int i16, int i17, int i18, int i19, int i20);

    void updateTextureCubeMapSubImage(TextureCubeMap textureCubeMap, TextureCubeMap.Face face, int i10, int i11, int i12, int i13, ByteBuffer byteBuffer, int i14, int i15, int i16);
}
