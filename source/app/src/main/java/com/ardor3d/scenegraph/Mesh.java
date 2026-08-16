package com.ardor3d.scenegraph;

import android.provider.CalendarContract;
import com.ardor3d.bounding.BoundingSphere;
import com.ardor3d.bounding.BoundingVolume;
import com.ardor3d.bounding.CollisionTree;
import com.ardor3d.bounding.CollisionTreeManager;
import com.ardor3d.intersection.IntersectionRecord;
import com.ardor3d.intersection.Pickable;
import com.ardor3d.intersection.PrimitiveKey;
import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.MathUtils;
import com.ardor3d.math.Ray3;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.renderer.ContextCapabilities;
import com.ardor3d.renderer.ContextManager;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.renderer.state.GLSLShaderObjectsState;
import com.ardor3d.renderer.state.LightState;
import com.ardor3d.renderer.state.LightUtil;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.scenegraph.event.DirtyType;
import com.ardor3d.scenegraph.hint.DataMode;
import com.ardor3d.scenegraph.hint.NormalsMode;
import com.ardor3d.util.Constants;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import com.ardor3d.util.geom.BufferUtils;
import com.ardor3d.util.scenegraph.RenderDelegate;
import com.ardor3d.util.stat.StatCollector;
import com.ardor3d.util.stat.StatType;
import com.google.common.collect.M1;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Map;
import java.util.Stack;

public class Mesh extends Spatial implements Renderable, Pickable {
    public static boolean RENDER_VERTEX_ONLY = false;
    protected ColorRGBA _defaultColor;
    protected boolean _isVisible;
    protected transient LightState _lightState;
    protected MeshData _meshData;
    protected BoundingVolume _modelBound;
    protected final EnumMap<RenderState.StateType, RenderState> _states;

    public Mesh() {
        this._meshData = new MeshData();
        this._modelBound = new BoundingSphere(Double.POSITIVE_INFINITY, Vector3.ZERO);
        this._states = new EnumMap<>(RenderState.StateType.class);
        this._defaultColor = new ColorRGBA(ColorRGBA.WHITE);
        this._isVisible = true;
    }

    @Override
    public void applyWorldRenderStates(boolean z10, Map<RenderState.StateType, Stack<RenderState>> map) {
        this._states.clear();
        for (Stack<RenderState> stack : map.values()) {
            if (!stack.isEmpty()) {
                RenderState extract = stack.peek().extract(stack, this);
                this._states.put((EnumMap<RenderState.StateType, RenderState>) extract.getType(), (RenderState.StateType) extract);
            }
        }
    }

    @Override
    public void draw(Renderer renderer) {
        if (renderer.isProcessingQueue() || !renderer.checkAndAdd(this)) {
            RenderDelegate currentRenderDelegate = getCurrentRenderDelegate();
            if (currentRenderDelegate == null) {
                renderer.draw((Renderable) this);
            } else {
                currentRenderDelegate.render(this, renderer);
            }
        }
    }

    @Override
    public Class<? extends Mesh> getClassTag() {
        return getClass();
    }

    public ReadOnlyColorRGBA getDefaultColor() {
        return this._defaultColor;
    }

    public LightState getLightState() {
        return this._lightState;
    }

    public MeshData getMeshData() {
        return this._meshData;
    }

    public BoundingVolume getModelBound() {
        return this._modelBound;
    }

    public FloatBuffer getWorldNormals(FloatBuffer floatBuffer) {
        FloatBuffer normalBuffer = this._meshData.getNormalBuffer();
        if (floatBuffer == null || floatBuffer.capacity() != normalBuffer.limit()) {
            floatBuffer = BufferUtils.createFloatBuffer(normalBuffer.limit());
        }
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        int capacity = floatBuffer.capacity() / 3;
        for (int i10 = 0; i10 < capacity; i10++) {
            BufferUtils.populateFromBuffer(fetchTempInstance, normalBuffer, i10);
            this._worldTransform.applyForwardVector(fetchTempInstance);
            BufferUtils.setInBuffer(fetchTempInstance, floatBuffer, i10);
        }
        Vector3.releaseTempInstance(fetchTempInstance);
        return floatBuffer;
    }

    public RenderState getWorldRenderState(RenderState.StateType stateType) {
        return this._states.get(stateType);
    }

    public FloatBuffer getWorldVectors(FloatBuffer floatBuffer) {
        FloatBuffer vertexBuffer = this._meshData.getVertexBuffer();
        if (floatBuffer == null || floatBuffer.capacity() != vertexBuffer.limit()) {
            floatBuffer = BufferUtils.createFloatBuffer(vertexBuffer.limit());
        }
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        int capacity = floatBuffer.capacity() / 3;
        for (int i10 = 0; i10 < capacity; i10++) {
            BufferUtils.populateFromBuffer(fetchTempInstance, vertexBuffer, i10);
            this._worldTransform.applyForward(fetchTempInstance);
            BufferUtils.setInBuffer(fetchTempInstance, floatBuffer, i10);
        }
        Vector3.releaseTempInstance(fetchTempInstance);
        return floatBuffer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public IntersectionRecord intersectsPrimitivesWhere(Ray3 ray3) {
        ArrayList q10 = M1.q();
        CollisionTree collisionTree = CollisionTreeManager.getInstance().getCollisionTree(this);
        if (collisionTree != null) {
            collisionTree.getBounds().transform(getWorldTransform(), collisionTree.getWorldBounds());
            collisionTree.intersect(ray3, q10);
        }
        Vector3[] vector3Arr = null;
        if (q10.isEmpty()) {
            return null;
        }
        int size = q10.size();
        double[] dArr = new double[size];
        for (int i10 = 0; i10 < q10.size(); i10++) {
            PrimitiveKey primitiveKey = (PrimitiveKey) q10.get(i10);
            vector3Arr = getMeshData().getPrimitive(primitiveKey.getPrimitiveIndex(), primitiveKey.getSection(), vector3Arr);
            int vertexCount = getMeshData().getIndexMode(primitiveKey.getSection()).getVertexCount();
            for (int i11 = 0; i11 < vertexCount; i11++) {
                if (vector3Arr[i11] != null) {
                    getWorldTransform().applyForward(vector3Arr[i11]);
                }
            }
            dArr[i10] = ray3.getDistanceToPrimitive(vector3Arr);
        }
        boolean z10 = false;
        while (!z10) {
            z10 = true;
            int i12 = 0;
            while (i12 < size - 1) {
                double d10 = dArr[i12];
                int i13 = i12 + 1;
                double d11 = dArr[i13];
                if (d10 > d11) {
                    dArr[i13] = d10;
                    dArr[i12] = d11;
                    PrimitiveKey primitiveKey2 = (PrimitiveKey) q10.get(i13);
                    q10.set(i13, q10.get(i12));
                    q10.set(i12, primitiveKey2);
                    z10 = false;
                }
                i12 = i13;
            }
        }
        Vector3[] vector3Arr2 = new Vector3[size];
        for (int i14 = 0; i14 < size; i14++) {
            vector3Arr2[i14] = ray3.getDirection().multiply(dArr[0], new Vector3()).addLocal(ray3.getOrigin());
        }
        return new IntersectionRecord(dArr, vector3Arr2, q10);
    }

    @Override
    public boolean intersectsWorldBound(Ray3 ray3) {
        return getWorldBound().intersects(ray3);
    }

    @Override
    public IntersectionRecord intersectsWorldBoundsWhere(Ray3 ray3) {
        return getWorldBound().intersectsWhere(ray3);
    }

    public boolean isVisible() {
        return this._isVisible;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._meshData = (MeshData) inputCapsule.readSavable("meshData", null);
        this._modelBound = (BoundingVolume) inputCapsule.readSavable("modelBound", null);
        this._defaultColor = (ColorRGBA) inputCapsule.readSavable("defaultColor", new ColorRGBA(ColorRGBA.WHITE));
        this._isVisible = inputCapsule.readBoolean(CalendarContract.CalendarColumns.VISIBLE, true);
    }

    public void render(Renderer renderer) {
        if (isVisible()) {
            render(renderer, getMeshData());
        }
    }

    public void setDefaultColor(ReadOnlyColorRGBA readOnlyColorRGBA) {
        this._defaultColor.set(readOnlyColorRGBA);
    }

    public void setLightState(LightState lightState) {
        this._lightState = lightState;
    }

    public void setMeshData(MeshData meshData) {
        CollisionTreeManager.INSTANCE.removeCollisionTree(this);
        this._meshData = meshData;
    }

    public void setModelBound(BoundingVolume boundingVolume) {
        this._modelBound = boundingVolume != null ? boundingVolume.clone(this._modelBound) : null;
        updateModelBound();
    }

    public void setRandomColors() {
        FloatBuffer colorBuffer = this._meshData.getColorBuffer();
        if (colorBuffer == null) {
            colorBuffer = BufferUtils.createColorBuffer(this._meshData.getVertexCount());
            this._meshData.setColorBuffer(colorBuffer);
        }
        int limit = colorBuffer.limit();
        for (int i10 = 0; i10 < limit; i10 += 4) {
            colorBuffer.put(MathUtils.nextRandomFloat());
            colorBuffer.put(MathUtils.nextRandomFloat());
            colorBuffer.put(MathUtils.nextRandomFloat());
            colorBuffer.put(1.0f);
        }
        colorBuffer.flip();
    }

    public void setSolidColor(ReadOnlyColorRGBA readOnlyColorRGBA) {
        FloatBuffer colorBuffer = this._meshData.getColorBuffer();
        if (colorBuffer == null) {
            colorBuffer = BufferUtils.createColorBuffer(this._meshData.getVertexCount());
            this._meshData.setColorBuffer(colorBuffer);
        }
        colorBuffer.rewind();
        int remaining = colorBuffer.remaining();
        for (int i10 = 0; i10 < remaining; i10 += 4) {
            colorBuffer.put(readOnlyColorRGBA.getRed());
            colorBuffer.put(readOnlyColorRGBA.getGreen());
            colorBuffer.put(readOnlyColorRGBA.getBlue());
            colorBuffer.put(readOnlyColorRGBA.getAlpha());
        }
        colorBuffer.flip();
    }

    public void setVisible(boolean z10) {
        this._isVisible = z10;
    }

    @Override
    public void sortLights() {
        LightState lightState = this._lightState;
        if (lightState == null || lightState.getLightList().size() <= 8) {
            return;
        }
        LightUtil.sort(this, this._lightState.getLightList());
    }

    public void updateModelBound() {
        if (this._modelBound == null || this._meshData.getVertexBuffer() == null) {
            return;
        }
        this._modelBound.computeFromPoints(this._meshData.getVertexBuffer().duplicate());
        markDirty(DirtyType.Bounding);
    }

    @Override
    public void updateWorldBound(boolean z10) {
        BoundingVolume boundingVolume = this._modelBound;
        if (boundingVolume != null) {
            this._worldBound = boundingVolume.transform(this._worldTransform, this._worldBound);
        } else {
            this._worldBound = null;
        }
        clearDirty(DirtyType.Bounding);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._meshData, "meshData", (Savable) null);
        outputCapsule.write(this._modelBound, "modelBound", (Savable) null);
        outputCapsule.write(this._defaultColor, "defaultColor", new ColorRGBA(ColorRGBA.WHITE));
        outputCapsule.write(this._isVisible, CalendarContract.CalendarColumns.VISIBLE, true);
    }

    public BoundingVolume getModelBound(BoundingVolume boundingVolume) {
        BoundingVolume boundingVolume2 = this._modelBound;
        if (boundingVolume2 == null) {
            return null;
        }
        return boundingVolume2.clone(boundingVolume);
    }

    @Override
    public Mesh makeCopy(boolean z10) {
        Mesh mesh = (Mesh) super.makeCopy(z10);
        if (z10) {
            mesh.setMeshData(this._meshData);
        } else {
            mesh.setMeshData(this._meshData.makeCopy());
        }
        mesh.setModelBound(this._modelBound.clone(null));
        mesh.setDefaultColor(this._defaultColor);
        mesh.setVisible(this._isVisible);
        return mesh;
    }

    public void render(Renderer renderer, MeshData meshData) {
        RenderState.StateType stateType = RenderState.StateType.GLSLShader;
        GLSLShaderObjectsState gLSLShaderObjectsState = (GLSLShaderObjectsState) renderer.getProperRenderState(stateType, this._states.get(stateType));
        if (gLSLShaderObjectsState != null && gLSLShaderObjectsState.getShaderDataLogic() != null) {
            gLSLShaderObjectsState.setMesh(this);
            gLSLShaderObjectsState.setNeedsRefresh(true);
        }
        for (RenderState.StateType stateType2 : RenderState.StateType.values) {
            if (stateType2 != RenderState.StateType.GLSLShader && stateType2 != RenderState.StateType.FragmentProgram && stateType2 != RenderState.StateType.VertexProgram) {
                renderer.applyState(stateType2, this._states.get(stateType2));
            }
        }
        boolean doTransforms = renderer.doTransforms(this._worldTransform);
        RenderState.StateType stateType3 = RenderState.StateType.GLSLShader;
        renderer.applyState(stateType3, this._states.get(stateType3));
        RenderState.StateType stateType4 = RenderState.StateType.FragmentProgram;
        renderer.applyState(stateType4, this._states.get(stateType4));
        RenderState.StateType stateType5 = RenderState.StateType.VertexProgram;
        renderer.applyState(stateType5, this._states.get(stateType5));
        ContextCapabilities capabilities = ContextManager.getCurrentContext().getCapabilities();
        if ((getSceneHints().getDataMode() == DataMode.VBO || getSceneHints().getDataMode() == DataMode.VBOInterleaved) && capabilities.isVBOSupported()) {
            if (getSceneHints().getDataMode() == DataMode.VBOInterleaved) {
                if (meshData.getColorCoords() == null) {
                    renderer.applyDefaultColor(this._defaultColor);
                }
                renderer.applyNormalsMode(getSceneHints().getNormalsMode(), this._worldTransform);
                if (meshData.getInterleavedData() == null) {
                    meshData.setInterleavedData(new FloatBufferData(FloatBuffer.allocate(0), 1));
                }
                renderer.setupInterleavedDataVBO(meshData.getInterleavedData(), meshData.getVertexCoords(), meshData.getNormalCoords(), meshData.getColorCoords(), meshData.getTextureCoords());
            } else {
                if (RENDER_VERTEX_ONLY) {
                    renderer.applyNormalsMode(NormalsMode.Off, null);
                    renderer.setupNormalDataVBO(null);
                    renderer.applyDefaultColor(null);
                    renderer.setupColorDataVBO(null);
                    renderer.setupTextureDataVBO(null);
                } else {
                    renderer.applyNormalsMode(getSceneHints().getNormalsMode(), this._worldTransform);
                    if (getSceneHints().getNormalsMode() != NormalsMode.Off) {
                        renderer.setupNormalDataVBO(meshData.getNormalCoords());
                    } else {
                        renderer.setupNormalDataVBO(null);
                    }
                    if (meshData.getColorCoords() != null) {
                        renderer.setupColorDataVBO(meshData.getColorCoords());
                    } else {
                        renderer.applyDefaultColor(this._defaultColor);
                        renderer.setupColorDataVBO(null);
                    }
                    renderer.setupTextureDataVBO(meshData.getTextureCoords());
                }
                renderer.setupVertexDataVBO(meshData.getVertexCoords());
            }
            if (meshData.getIndexBuffer() != null) {
                renderer.drawElementsVBO(meshData.getIndices(), meshData.getIndexLengths(), meshData.getIndexModes());
            } else {
                renderer.drawArrays(meshData.getVertexCoords(), meshData.getIndexLengths(), meshData.getIndexModes());
            }
            if (Constants.stats) {
                StatCollector.addStat(StatType.STAT_VERTEX_COUNT, meshData.getVertexCount());
                StatCollector.addStat(StatType.STAT_MESH_COUNT, 1.0d);
            }
        } else {
            if (capabilities.isVBOSupported()) {
                renderer.unbindVBO();
            }
            if (RENDER_VERTEX_ONLY) {
                renderer.applyNormalsMode(NormalsMode.Off, null);
                renderer.setupNormalData(null);
                renderer.applyDefaultColor(null);
                renderer.setupColorData(null);
                renderer.setupTextureData(null);
            } else {
                renderer.applyNormalsMode(getSceneHints().getNormalsMode(), this._worldTransform);
                if (getSceneHints().getNormalsMode() != NormalsMode.Off) {
                    renderer.setupNormalData(meshData.getNormalCoords());
                } else {
                    renderer.setupNormalData(null);
                }
                if (meshData.getColorCoords() != null) {
                    renderer.setupColorData(meshData.getColorCoords());
                } else {
                    renderer.applyDefaultColor(this._defaultColor);
                    renderer.setupColorData(null);
                }
                renderer.setupTextureData(meshData.getTextureCoords());
            }
            renderer.setupVertexData(meshData.getVertexCoords());
            if (meshData.getIndexBuffer() != null) {
                renderer.drawElements(meshData.getIndices(), meshData.getIndexLengths(), meshData.getIndexModes());
            } else {
                renderer.drawArrays(meshData.getVertexCoords(), meshData.getIndexLengths(), meshData.getIndexModes());
            }
            if (Constants.stats) {
                StatCollector.addStat(StatType.STAT_VERTEX_COUNT, meshData.getVertexCount());
                StatCollector.addStat(StatType.STAT_MESH_COUNT, 1.0d);
            }
        }
        if (doTransforms) {
            renderer.undoTransforms(this._worldTransform);
        }
    }

    public Mesh(String str) {
        super(str);
        this._meshData = new MeshData();
        this._modelBound = new BoundingSphere(Double.POSITIVE_INFINITY, Vector3.ZERO);
        this._states = new EnumMap<>(RenderState.StateType.class);
        this._defaultColor = new ColorRGBA(ColorRGBA.WHITE);
        this._isVisible = true;
    }
}
