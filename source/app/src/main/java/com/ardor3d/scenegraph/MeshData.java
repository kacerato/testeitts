package com.ardor3d.scenegraph;

import com.ardor3d.math.MathUtils;
import com.ardor3d.math.Quaternion;
import com.ardor3d.math.Transform;
import com.ardor3d.math.Vector3;
import com.ardor3d.renderer.IndexMode;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import com.ardor3d.util.geom.BufferUtils;
import com.google.common.collect.O1;
import java.io.IOException;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

public class MeshData implements Savable {
    private static final Logger logger = Logger.getLogger(MeshData.class.getName());
    protected FloatBufferData _colorCoords;
    protected FloatBufferData _fogCoords;
    protected IndexBufferData<?> _indexBuffer;
    protected int[] _indexLengths;
    protected FloatBufferData _interleaved;
    protected FloatBufferData _normalCoords;
    protected FloatBufferData _tangentCoords;
    protected FloatBufferData _vertexCoords;
    protected int _vertexCount;
    private transient Map<Object, Integer> _vboIdCache = null;
    protected transient int[] _primitiveCounts = new int[1];
    protected List<FloatBufferData> _textureCoords = new ArrayList(1);
    protected IndexMode[] _indexModes = {IndexMode.Triangles};

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$renderer$IndexMode;

        static {
            int[] iArr = new int[IndexMode.values().length];
            $SwitchMap$com$ardor3d$renderer$IndexMode = iArr;
            try {
                iArr[IndexMode.Triangles.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.TriangleStrip.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.TriangleFan.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.Quads.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.QuadStrip.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.Points.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.Lines.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.LineStrip.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.LineLoop.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    private void refreshInterleaved() {
        FloatBufferData floatBufferData = this._interleaved;
        if (floatBufferData != null) {
            floatBufferData.setNeedsRefresh(true);
        }
    }

    private void updatePrimitiveCounts() {
        IndexBufferData<?> indexBufferData = this._indexBuffer;
        int bufferLimit = indexBufferData != null ? indexBufferData.getBufferLimit() : this._vertexCount;
        int[] iArr = this._indexLengths;
        int length = iArr != null ? iArr.length : 1;
        if (this._primitiveCounts.length != length) {
            this._primitiveCounts = new int[length];
        }
        for (int i10 = 0; i10 < length; i10++) {
            int[] iArr2 = this._indexLengths;
            this._primitiveCounts[i10] = IndexMode.getPrimitiveCount(getIndexMode(i10), iArr2 != null ? iArr2[i10] : bufferLimit);
        }
    }

    public void copyTextureCoordinates(int i10, int i11, float f10) {
        List<FloatBufferData> list = this._textureCoords;
        if (list != null && i10 >= 0 && i10 < list.size() && this._textureCoords.get(i10) != null && i11 >= 0 && i11 != i10) {
            while (i11 >= this._textureCoords.size()) {
                this._textureCoords.add(null);
            }
            FloatBufferData floatBufferData = this._textureCoords.get(i11);
            FloatBufferData floatBufferData2 = this._textureCoords.get(i10);
            if (floatBufferData == null || floatBufferData.getBuffer().capacity() != floatBufferData2.getBuffer().limit()) {
                floatBufferData = new FloatBufferData(BufferUtils.createFloatBuffer(floatBufferData2.getBuffer().capacity()), floatBufferData2.getValuesPerTuple());
                this._textureCoords.set(i11, floatBufferData);
            }
            floatBufferData.getBuffer().clear();
            int limit = floatBufferData2.getBuffer().limit();
            floatBufferData2.getBuffer().clear();
            int capacity = floatBufferData.getBuffer().capacity();
            for (int i12 = 0; i12 < capacity; i12++) {
                floatBufferData.getBuffer().put(floatBufferData2.getBuffer().get() * f10);
            }
            floatBufferData2.getBuffer().limit(limit);
            floatBufferData.getBuffer().limit(limit);
        }
    }

    @Override
    public Class<? extends MeshData> getClassTag() {
        return getClass();
    }

    public FloatBuffer getColorBuffer() {
        FloatBufferData floatBufferData = this._colorCoords;
        if (floatBufferData == null) {
            return null;
        }
        return floatBufferData.getBuffer();
    }

    public FloatBufferData getColorCoords() {
        return this._colorCoords;
    }

    public FloatBuffer getFogBuffer() {
        FloatBufferData floatBufferData = this._fogCoords;
        if (floatBufferData == null) {
            return null;
        }
        return floatBufferData.getBuffer();
    }

    public FloatBufferData getFogCoords() {
        return this._fogCoords;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.nio.Buffer] */
    public Buffer getIndexBuffer() {
        IndexBufferData<?> indexBufferData = this._indexBuffer;
        if (indexBufferData == null) {
            return null;
        }
        return indexBufferData.getBuffer();
    }

    public int[] getIndexLengths() {
        return this._indexLengths;
    }

    @Deprecated
    public IndexMode getIndexMode() {
        return getIndexMode(0);
    }

    public IndexMode[] getIndexModes() {
        return this._indexModes;
    }

    public IndexBufferData<?> getIndices() {
        return this._indexBuffer;
    }

    public FloatBuffer getInterleavedBuffer() {
        FloatBufferData floatBufferData = this._interleaved;
        if (floatBufferData == null) {
            return null;
        }
        return floatBufferData.getBuffer();
    }

    public FloatBufferData getInterleavedData() {
        return this._interleaved;
    }

    public FloatBuffer getNormalBuffer() {
        FloatBufferData floatBufferData = this._normalCoords;
        if (floatBufferData == null) {
            return null;
        }
        return floatBufferData.getBuffer();
    }

    public FloatBufferData getNormalCoords() {
        return this._normalCoords;
    }

    public int getNumberOfUnits() {
        List<FloatBufferData> list = this._textureCoords;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public int[] getPrimitive(int i10, int i11, int[] iArr) {
        int primitiveCount = getPrimitiveCount(i11);
        if (i10 < primitiveCount && i10 >= 0) {
            int vertexCount = getIndexMode(i11).getVertexCount();
            if (iArr == null || iArr.length < vertexCount) {
                iArr = new int[vertexCount];
            }
            for (int i12 = 0; i12 < vertexCount; i12++) {
                if (getIndexBuffer() != null) {
                    iArr[i12] = getIndices().get(getVertexIndex(i10, i12, i11));
                } else {
                    iArr[i12] = getVertexIndex(i10, i12, i11);
                }
            }
            return iArr;
        }
        throw new IndexOutOfBoundsException("Invalid primitiveIndex '" + i10 + "'.  Count is " + primitiveCount);
    }

    public int getPrimitiveCount(int i10) {
        return this._primitiveCounts[i10];
    }

    public int getSectionCount() {
        int[] iArr = this._indexLengths;
        if (iArr != null) {
            return iArr.length;
        }
        return 1;
    }

    public FloatBuffer getTangentBuffer() {
        FloatBufferData floatBufferData = this._tangentCoords;
        if (floatBufferData == null) {
            return null;
        }
        return floatBufferData.getBuffer();
    }

    public FloatBufferData getTangentCoords() {
        return this._tangentCoords;
    }

    public FloatBuffer getTextureBuffer(int i10) {
        FloatBufferData floatBufferData;
        if (this._textureCoords.size() > i10 && (floatBufferData = this._textureCoords.get(i10)) != null) {
            return floatBufferData.getBuffer();
        }
        return null;
    }

    public List<FloatBufferData> getTextureCoords() {
        return this._textureCoords;
    }

    public int getTotalPrimitiveCount() {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int[] iArr = this._primitiveCounts;
            if (i10 >= iArr.length) {
                return i11;
            }
            i11 += iArr[i10];
            i10++;
        }
    }

    public int getVBOInterleavedID(Object obj) {
        Map<Object, Integer> map = this._vboIdCache;
        if (map == null || !map.containsKey(obj)) {
            return 0;
        }
        return this._vboIdCache.get(obj).intValue();
    }

    public FloatBuffer getVertexBuffer() {
        FloatBufferData floatBufferData = this._vertexCoords;
        if (floatBufferData == null) {
            return null;
        }
        return floatBufferData.getBuffer();
    }

    public FloatBufferData getVertexCoords() {
        return this._vertexCoords;
    }

    public int getVertexCount() {
        return this._vertexCount;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0019. Please report as an issue. */
    public int getVertexIndex(int i10, int i11, int i12) {
        int i13 = 0;
        for (int i14 = 0; i14 < i12; i14++) {
            i13 += this._indexLengths[i14];
        }
        switch (AnonymousClass1.$SwitchMap$com$ardor3d$renderer$IndexMode[getIndexMode(i12).ordinal()]) {
            case 1:
                i10 *= 3;
                i10 += i11;
                return i13 + i10;
            case 2:
            case 8:
            case 9:
                i10 += i11;
                return i13 + i10;
            case 3:
                if (i11 == 0) {
                    return i13;
                }
                i10 += i11;
                return i13 + i10;
            case 4:
                i10 *= 4;
                i10 += i11;
                return i13 + i10;
            case 5:
            case 7:
                i10 *= 2;
                i10 += i11;
                return i13 + i10;
            case 6:
                return i13 + i10;
            default:
                logger.warning("unimplemented index mode: " + ((Object) getIndexMode(0)));
                return -1;
        }
    }

    /* JADX WARN: Type inference failed for: r1v18, types: [com.ardor3d.scenegraph.FloatBufferData] */
    /* JADX WARN: Type inference failed for: r1v19, types: [com.ardor3d.scenegraph.FloatBufferData] */
    /* JADX WARN: Type inference failed for: r1v20, types: [com.ardor3d.scenegraph.FloatBufferData] */
    /* JADX WARN: Type inference failed for: r1v21, types: [com.ardor3d.scenegraph.FloatBufferData] */
    public MeshData makeCopy() {
        MeshData meshData = new MeshData();
        meshData._vertexCount = this._vertexCount;
        int[] iArr = new int[this._primitiveCounts.length];
        meshData._primitiveCounts = iArr;
        int[] iArr2 = this._primitiveCounts;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        FloatBufferData floatBufferData = this._vertexCoords;
        if (floatBufferData != null) {
            meshData._vertexCoords = floatBufferData.makeCopy();
        }
        FloatBufferData floatBufferData2 = this._normalCoords;
        if (floatBufferData2 != null) {
            meshData._normalCoords = floatBufferData2.makeCopy();
        }
        FloatBufferData floatBufferData3 = this._fogCoords;
        if (floatBufferData3 != null) {
            meshData._fogCoords = floatBufferData3.makeCopy();
        }
        FloatBufferData floatBufferData4 = this._tangentCoords;
        if (floatBufferData4 != null) {
            meshData._tangentCoords = floatBufferData4.makeCopy();
        }
        Iterator<FloatBufferData> it = this._textureCoords.iterator();
        while (it.hasNext()) {
            meshData._textureCoords.add(it.next().makeCopy());
        }
        IndexBufferData<?> indexBufferData = this._indexBuffer;
        if (indexBufferData != null) {
            meshData._indexBuffer = indexBufferData.makeCopy();
        }
        int[] iArr3 = this._indexLengths;
        if (iArr3 != null) {
            int[] iArr4 = new int[iArr3.length];
            meshData._indexLengths = iArr4;
            int[] iArr5 = this._indexLengths;
            System.arraycopy(iArr5, 0, iArr4, 0, iArr5.length);
        }
        IndexMode[] indexModeArr = new IndexMode[this._indexModes.length];
        meshData._indexModes = indexModeArr;
        IndexMode[] indexModeArr2 = this._indexModes;
        System.arraycopy(indexModeArr2, 0, indexModeArr, 0, indexModeArr2.length);
        return meshData;
    }

    public Vector3 randomPointOnPrimitives(Vector3 vector3) {
        if (this._vertexCoords == null || this._indexBuffer == null) {
            return null;
        }
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        int nextRandomInt = MathUtils.nextRandomInt(0, getSectionCount() - 1);
        int nextRandomInt2 = MathUtils.nextRandomInt(0, getPrimitiveCount(nextRandomInt) - 1);
        IndexMode indexMode = getIndexMode(nextRandomInt);
        boolean z10 = getIndexBuffer() != null;
        switch (AnonymousClass1.$SwitchMap$com$ardor3d$renderer$IndexMode[indexMode.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                int vertexIndex = getVertexIndex(nextRandomInt2, 0, nextRandomInt);
                int vertexIndex2 = getVertexIndex(nextRandomInt2, 1, nextRandomInt);
                int vertexIndex3 = getVertexIndex(nextRandomInt2, 2, nextRandomInt);
                if (z10) {
                    vertexIndex = getIndices().get(vertexIndex);
                    vertexIndex2 = getIndices().get(vertexIndex2);
                    vertexIndex3 = getIndices().get(vertexIndex3);
                }
                double nextRandomDouble = MathUtils.nextRandomDouble();
                double nextRandomDouble2 = MathUtils.nextRandomDouble();
                if (indexMode != IndexMode.Quads && indexMode != IndexMode.QuadStrip && nextRandomDouble + nextRandomDouble2 > 1.0d) {
                    nextRandomDouble = 1.0d - nextRandomDouble;
                    nextRandomDouble2 = 1.0d - nextRandomDouble2;
                }
                Vector3 fetchTempInstance = Vector3.fetchTempInstance();
                BufferUtils.populateFromBuffer(fetchTempInstance, getVertexBuffer(), vertexIndex);
                fetchTempInstance.multiplyLocal((1.0d - nextRandomDouble) - nextRandomDouble2);
                vector3.set(fetchTempInstance);
                BufferUtils.populateFromBuffer(fetchTempInstance, getVertexBuffer(), vertexIndex2);
                fetchTempInstance.multiplyLocal(nextRandomDouble);
                vector3.addLocal(fetchTempInstance);
                BufferUtils.populateFromBuffer(fetchTempInstance, getVertexBuffer(), vertexIndex3);
                fetchTempInstance.multiplyLocal(nextRandomDouble2);
                vector3.addLocal(fetchTempInstance);
                Vector3.releaseTempInstance(fetchTempInstance);
                break;
            case 6:
                int vertexIndex4 = getVertexIndex(nextRandomInt2, 0, nextRandomInt);
                if (z10) {
                    vertexIndex4 = getIndices().get(vertexIndex4);
                }
                BufferUtils.populateFromBuffer(vector3, getVertexBuffer(), vertexIndex4);
                break;
            case 7:
            case 8:
            case 9:
                int vertexIndex5 = getVertexIndex(nextRandomInt2, 0, nextRandomInt);
                int vertexIndex6 = getVertexIndex(nextRandomInt2, 1, nextRandomInt);
                if (z10) {
                    vertexIndex5 = getIndices().get(vertexIndex5);
                    vertexIndex6 = getIndices().get(vertexIndex6);
                }
                Vector3 fetchTempInstance2 = Vector3.fetchTempInstance();
                BufferUtils.populateFromBuffer(vector3, getVertexBuffer(), vertexIndex5);
                BufferUtils.populateFromBuffer(fetchTempInstance2, getVertexBuffer(), vertexIndex6);
                Vector3.lerp(vector3, fetchTempInstance2, MathUtils.nextRandomDouble(), vector3);
                Vector3.releaseTempInstance(fetchTempInstance2);
                break;
        }
        return vector3;
    }

    public Vector3 randomVertex(Vector3 vector3) {
        if (this._vertexCoords == null) {
            return null;
        }
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        BufferUtils.populateFromBuffer(vector3, this._vertexCoords.getBuffer(), MathUtils.nextRandomInt(0, getVertexCount() - 1));
        return vector3;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        this._vertexCount = inputCapsule.readInt("vertexCount", 0);
        this._vertexCoords = (FloatBufferData) inputCapsule.readSavable("vertexBuffer", null);
        this._normalCoords = (FloatBufferData) inputCapsule.readSavable("normalBuffer", null);
        this._colorCoords = (FloatBufferData) inputCapsule.readSavable("colorBuffer", null);
        this._fogCoords = (FloatBufferData) inputCapsule.readSavable("fogBuffer", null);
        this._tangentCoords = (FloatBufferData) inputCapsule.readSavable("tangentBuffer", null);
        this._textureCoords = inputCapsule.readSavableList("textureCoords", new ArrayList(1));
        this._indexBuffer = (IndexBufferData) inputCapsule.readSavable("indexBuffer", null);
        this._interleaved = (FloatBufferData) inputCapsule.readSavable("interleaved", null);
        this._indexLengths = inputCapsule.readIntArray("indexLengths", null);
        this._indexModes = (IndexMode[]) inputCapsule.readEnumArray("indexModes", IndexMode.class, new IndexMode[]{IndexMode.Triangles});
        updatePrimitiveCounts();
    }

    public void rotateNormals(Quaternion quaternion) {
        Vector3 vector3 = new Vector3();
        for (int i10 = 0; i10 < this._vertexCount; i10++) {
            BufferUtils.populateFromBuffer(vector3, this._normalCoords.getBuffer(), i10);
            quaternion.apply(vector3, vector3);
            BufferUtils.setInBuffer(vector3, this._normalCoords.getBuffer(), i10);
        }
    }

    public void rotatePoints(Quaternion quaternion) {
        Vector3 vector3 = new Vector3();
        for (int i10 = 0; i10 < this._vertexCount; i10++) {
            BufferUtils.populateFromBuffer(vector3, this._vertexCoords.getBuffer(), i10);
            quaternion.apply(vector3, vector3);
            BufferUtils.setInBuffer(vector3, this._vertexCoords.getBuffer(), i10);
        }
    }

    public void setColorBuffer(FloatBuffer floatBuffer) {
        if (floatBuffer == null) {
            this._colorCoords = null;
        } else {
            this._colorCoords = new FloatBufferData(floatBuffer, 4);
        }
        refreshInterleaved();
    }

    public void setColorCoords(FloatBufferData floatBufferData) {
        this._colorCoords = floatBufferData;
        refreshInterleaved();
    }

    public void setFogBuffer(FloatBuffer floatBuffer) {
        if (floatBuffer == null) {
            this._fogCoords = null;
        } else {
            this._fogCoords = new FloatBufferData(floatBuffer, 3);
        }
    }

    public void setFogCoords(FloatBufferData floatBufferData) {
        this._fogCoords = floatBufferData;
    }

    public void setIndexBuffer(IntBuffer intBuffer) {
        if (intBuffer == null) {
            this._indexBuffer = null;
        } else {
            this._indexBuffer = new IntBufferData(intBuffer);
        }
        updatePrimitiveCounts();
        refreshInterleaved();
    }

    public void setIndexLengths(int[] iArr) {
        this._indexLengths = iArr;
        updatePrimitiveCounts();
        refreshInterleaved();
    }

    public void setIndexMode(IndexMode indexMode) {
        this._indexModes[0] = indexMode;
        updatePrimitiveCounts();
        refreshInterleaved();
    }

    public void setIndexModes(IndexMode[] indexModeArr) {
        this._indexModes = indexModeArr;
        updatePrimitiveCounts();
        refreshInterleaved();
    }

    public void setIndices(IndexBufferData<?> indexBufferData) {
        this._indexBuffer = indexBufferData;
        updatePrimitiveCounts();
        refreshInterleaved();
    }

    public void setInterleavedData(FloatBufferData floatBufferData) {
        this._interleaved = floatBufferData;
        refreshInterleaved();
    }

    public void setNormalBuffer(FloatBuffer floatBuffer) {
        if (floatBuffer == null) {
            this._normalCoords = null;
        } else {
            this._normalCoords = new FloatBufferData(floatBuffer, 3);
        }
        refreshInterleaved();
    }

    public void setNormalCoords(FloatBufferData floatBufferData) {
        this._normalCoords = floatBufferData;
        refreshInterleaved();
    }

    public void setTangentBuffer(FloatBuffer floatBuffer) {
        if (floatBuffer == null) {
            this._tangentCoords = null;
        } else {
            this._tangentCoords = new FloatBufferData(floatBuffer, 3);
        }
    }

    public void setTangentCoords(FloatBufferData floatBufferData) {
        this._tangentCoords = floatBufferData;
    }

    public void setTextureBuffer(FloatBuffer floatBuffer, int i10) {
        while (this._textureCoords.size() <= i10) {
            this._textureCoords.add(null);
        }
        this._textureCoords.set(i10, new FloatBufferData(floatBuffer, 2));
        refreshInterleaved();
    }

    public void setTextureCoords(List<FloatBufferData> list) {
        this._textureCoords = list;
        refreshInterleaved();
    }

    public void setVBOInterleavedID(Object obj, int i10) {
        if (i10 == 0) {
            throw new IllegalArgumentException("vboId must != 0");
        }
        if (this._vboIdCache == null) {
            this._vboIdCache = new O1().g(1).l().i();
        }
        this._vboIdCache.put(obj, Integer.valueOf(i10));
    }

    public void setVertexBuffer(FloatBuffer floatBuffer) {
        if (floatBuffer == null) {
            setVertexCoords(null);
        } else {
            setVertexCoords(new FloatBufferData(floatBuffer, 3));
        }
        refreshInterleaved();
    }

    public void setVertexCoords(FloatBufferData floatBufferData) {
        this._vertexCoords = floatBufferData;
        updateVertexCount();
        refreshInterleaved();
    }

    public void transformNormals(Transform transform, boolean z10) {
        Vector3 vector3 = new Vector3();
        for (int i10 = 0; i10 < this._vertexCount; i10++) {
            BufferUtils.populateFromBuffer(vector3, this._normalCoords.getBuffer(), i10);
            transform.applyForwardVector(vector3, vector3);
            if (z10) {
                vector3.normalizeLocal();
            }
            BufferUtils.setInBuffer(vector3, this._normalCoords.getBuffer(), i10);
        }
    }

    public void transformVertices(Transform transform) {
        Vector3 vector3 = new Vector3();
        for (int i10 = 0; i10 < this._vertexCount; i10++) {
            BufferUtils.populateFromBuffer(vector3, this._vertexCoords.getBuffer(), i10);
            transform.applyForward(vector3, vector3);
            BufferUtils.setInBuffer(vector3, this._vertexCoords.getBuffer(), i10);
        }
    }

    public void translatePoints(double d10, double d11, double d12) {
        translatePoints(new Vector3(d10, d11, d12));
    }

    public void updateVertexCount() {
        FloatBufferData floatBufferData = this._vertexCoords;
        if (floatBufferData == null) {
            this._vertexCount = 0;
        } else {
            this._vertexCount = floatBufferData.getTupleCount();
        }
        if (this._indexBuffer == null) {
            updatePrimitiveCounts();
        }
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(this._vertexCount, "vertexCount", 0);
        outputCapsule.write(this._vertexCoords, "vertexBuffer", (Savable) null);
        outputCapsule.write(this._normalCoords, "normalBuffer", (Savable) null);
        outputCapsule.write(this._colorCoords, "colorBuffer", (Savable) null);
        outputCapsule.write(this._fogCoords, "fogBuffer", (Savable) null);
        outputCapsule.write(this._tangentCoords, "tangentBuffer", (Savable) null);
        outputCapsule.writeSavableList(this._textureCoords, "textureCoords", new ArrayList(1));
        outputCapsule.write((Savable) this._indexBuffer, "indexBuffer", (Savable) null);
        outputCapsule.write(this._interleaved, "interleaved", (Savable) null);
        outputCapsule.write(this._indexLengths, "indexLengths", (int[]) null);
        outputCapsule.write(this._indexModes, "indexModes");
    }

    public IndexMode getIndexMode(int i10) {
        if (i10 >= 0 && i10 < getSectionCount()) {
            IndexMode[] indexModeArr = this._indexModes;
            return indexModeArr.length > i10 ? indexModeArr[i10] : indexModeArr[indexModeArr.length - 1];
        }
        throw new IllegalArgumentException("invalid section index: " + i10);
    }

    public FloatBufferData getTextureCoords(int i10) {
        if (this._textureCoords.size() <= i10) {
            return null;
        }
        return this._textureCoords.get(i10);
    }

    public void translatePoints(Vector3 vector3) {
        for (int i10 = 0; i10 < this._vertexCount; i10++) {
            BufferUtils.addInBuffer(vector3, this._vertexCoords.getBuffer(), i10);
        }
    }

    public void setTextureCoords(FloatBufferData floatBufferData, int i10) {
        while (this._textureCoords.size() <= i10) {
            this._textureCoords.add(null);
        }
        this._textureCoords.set(i10, floatBufferData);
        refreshInterleaved();
    }

    public void setIndexBuffer(ShortBuffer shortBuffer) {
        if (shortBuffer == null) {
            this._indexBuffer = null;
        } else {
            this._indexBuffer = new ShortBufferData(shortBuffer);
        }
        updatePrimitiveCounts();
        refreshInterleaved();
    }

    public void setIndexBuffer(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            this._indexBuffer = null;
        } else {
            this._indexBuffer = new ByteBufferData(byteBuffer);
        }
        updatePrimitiveCounts();
        refreshInterleaved();
    }

    public Vector3[] getPrimitive(int i10, int i11, Vector3[] vector3Arr) {
        int primitiveCount = getPrimitiveCount(i11);
        if (i10 < primitiveCount && i10 >= 0) {
            int vertexCount = getIndexMode(i11).getVertexCount();
            if (vector3Arr == null || vector3Arr.length < vertexCount) {
                vector3Arr = new Vector3[vertexCount];
            }
            for (int i12 = 0; i12 < vertexCount; i12++) {
                if (vector3Arr[i12] == null) {
                    vector3Arr[i12] = new Vector3();
                }
                if (getIndexBuffer() != null) {
                    BufferUtils.populateFromBuffer(vector3Arr[i12], getVertexBuffer(), getIndices().get(getVertexIndex(i10, i12, i11)));
                } else {
                    BufferUtils.populateFromBuffer(vector3Arr[i12], getVertexBuffer(), getVertexIndex(i10, i12, i11));
                }
            }
            return vector3Arr;
        }
        throw new IndexOutOfBoundsException("Invalid primitiveIndex '" + i10 + "'.  Count is " + primitiveCount);
    }

    public void copyTextureCoordinates(int i10, int i11, float f10, float f11) {
        List<FloatBufferData> list = this._textureCoords;
        if (list != null && i10 >= 0 && i10 < list.size() && this._textureCoords.get(i10) != null && i11 >= 0 && i11 != i10) {
            while (i11 >= this._textureCoords.size()) {
                this._textureCoords.add(null);
            }
            FloatBufferData floatBufferData = this._textureCoords.get(i11);
            FloatBufferData floatBufferData2 = this._textureCoords.get(i10);
            if (floatBufferData == null || floatBufferData.getBuffer().capacity() != floatBufferData2.getBuffer().limit()) {
                floatBufferData = new FloatBufferData(BufferUtils.createFloatBuffer(floatBufferData2.getBuffer().capacity()), floatBufferData2.getValuesPerTuple());
                this._textureCoords.set(i11, floatBufferData);
            }
            floatBufferData.getBuffer().clear();
            int limit = floatBufferData2.getBuffer().limit();
            floatBufferData2.getBuffer().clear();
            int capacity = floatBufferData.getBuffer().capacity();
            for (int i12 = 0; i12 < capacity; i12++) {
                if (i12 % 2 == 0) {
                    floatBufferData.getBuffer().put(floatBufferData2.getBuffer().get() * f10);
                } else {
                    floatBufferData.getBuffer().put(floatBufferData2.getBuffer().get() * f11);
                }
            }
            floatBufferData2.getBuffer().limit(limit);
            floatBufferData.getBuffer().limit(limit);
        }
    }
}
