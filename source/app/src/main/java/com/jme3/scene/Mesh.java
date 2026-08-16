package com.jme3.scene;

import com.jme3.bounding.BoundingBox;
import com.jme3.bounding.BoundingVolume;
import com.jme3.collision.Collidable;
import com.jme3.collision.CollisionResults;
import com.jme3.collision.bih.BIHTree;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Matrix4f;
import com.jme3.math.Triangle;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.mesh.IndexBuffer;
import com.jme3.scene.mesh.IndexIntBuffer;
import com.jme3.scene.mesh.IndexShortBuffer;
import com.jme3.scene.mesh.MorphTarget;
import com.jme3.scene.mesh.VirtualIndexBuffer;
import com.jme3.scene.mesh.WrappedIndexBuffer;
import com.jme3.util.BufferUtils;
import com.jme3.util.IntMap;
import com.jme3.util.SafeArrayList;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.Iterator;

public class Mesh implements Savable, Cloneable, JmeCloneable {
    static final boolean $assertionsDisabled = false;
    private static final CollisionData DEFAULT_COLLISION_TREE = null;
    private static final int DEFAULT_ELEMENT_COUNT = -1;
    private static final int DEFAULT_INSTANCE_COUNT = -1;
    private static final float DEFAULT_LINE_WIDTH = 1.0f;
    private static final int DEFAULT_MAX_NUM_WEIGHTS = -1;
    private static final int DEFAULT_PATCH_VERTEX_COUNT = 3;
    private static final float DEFAULT_POINT_SIZE = 1.0f;
    private static final int DEFAULT_VERTEX_ARRAY_ID = -1;
    private static final int DEFAULT_VERT_COUNT = -1;
    private int[] elementLengths;
    private VertexBuffer[] lodLevels;
    private int[] modeStart;
    private SafeArrayList<MorphTarget> morphTargets;
    private BoundingVolume meshBound = new BoundingBox();
    private CollisionData collisionTree = DEFAULT_COLLISION_TREE;
    private SafeArrayList<VertexBuffer> buffersList = new SafeArrayList<>(VertexBuffer.class);
    private IntMap<VertexBuffer> buffers = new IntMap<>();
    private float pointSize = 1.0f;
    private float lineWidth = 1.0f;
    private transient int vertexArrayID = -1;
    private int vertCount = -1;
    private int elementCount = -1;
    private int instanceCount = -1;
    private int patchVertexCount = 3;
    private int maxNumWeights = -1;
    private Mode mode = Mode.Triangles;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$scene$VertexBuffer$Format;

        static {
            int[] iArr = new int[VertexBuffer.Format.values().length];
            $SwitchMap$com$jme3$scene$VertexBuffer$Format = iArr;
            try {
                iArr[VertexBuffer.Format.Float.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.Byte.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.UnsignedByte.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.Half.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.Short.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.UnsignedShort.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.Int.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.UnsignedInt.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.Double.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public enum Mode {
        Points(true),
        Lines(true),
        LineStrip(false),
        LineLoop(false),
        Triangles(true),
        TriangleStrip(false),
        TriangleFan(false),
        Hybrid(false),
        Patch(true);

        private boolean listMode;

        Mode(boolean z10) {
            this.listMode = z10;
        }

        public boolean isListMode() {
            return this.listMode;
        }
    }

    private int computeInstanceCount() {
        Iterator<VertexBuffer> it = this.buffersList.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            VertexBuffer next = it.next();
            if (next.getBaseInstanceCount() > i10) {
                i10 = next.getBaseInstanceCount();
            }
        }
        return i10;
    }

    private int computeNumElements(int i10) {
        switch (this.mode) {
            case Points:
                return i10;
            case Lines:
                return i10 / 2;
            case LineStrip:
                return i10 - 1;
            case LineLoop:
                return i10;
            case Triangles:
                return i10 / 3;
            case TriangleStrip:
            case TriangleFan:
                return i10 - 2;
            case Hybrid:
            default:
                throw new UnsupportedOperationException();
            case Patch:
                return i10 / this.patchVertexCount;
        }
    }

    public void addMorphTarget(MorphTarget morphTarget) {
        if (this.morphTargets == null) {
            this.morphTargets = new SafeArrayList<>(MorphTarget.class);
        }
        this.morphTargets.add(morphTarget);
    }

    public void clearBuffer(VertexBuffer.Type type) {
        VertexBuffer remove = this.buffers.remove(type.ordinal());
        if (remove != null) {
            this.buffersList.remove(remove);
            updateCounts();
        }
    }

    public void clearCollisionData() {
        this.collisionTree = DEFAULT_COLLISION_TREE;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.collisionTree = DEFAULT_COLLISION_TREE;
        this.meshBound = (BoundingVolume) cloner.clone(this.meshBound);
        this.buffersList = (SafeArrayList) cloner.clone(this.buffersList);
        this.buffers = (IntMap) cloner.clone(this.buffers);
        this.lodLevels = (VertexBuffer[]) cloner.clone(this.lodLevels);
        this.elementLengths = (int[]) cloner.clone(this.elementLengths);
        this.modeStart = (int[]) cloner.clone(this.modeStart);
    }

    public Mesh cloneForAnim() {
        Mesh mo1295clone = mo1295clone();
        if (getBuffer(VertexBuffer.Type.BindPosePosition) != null) {
            VertexBuffer.Type type = VertexBuffer.Type.Position;
            VertexBuffer mo1296clone = getBuffer(type).mo1296clone();
            mo1295clone.clearBuffer(type);
            mo1295clone.setBuffer(mo1296clone);
            if (getBuffer(VertexBuffer.Type.BindPoseNormal) != null) {
                VertexBuffer.Type type2 = VertexBuffer.Type.Normal;
                VertexBuffer mo1296clone2 = getBuffer(type2).mo1296clone();
                mo1295clone.clearBuffer(type2);
                mo1295clone.setBuffer(mo1296clone2);
                if (getBuffer(VertexBuffer.Type.BindPoseTangent) != null) {
                    VertexBuffer.Type type3 = VertexBuffer.Type.Tangent;
                    VertexBuffer mo1296clone3 = getBuffer(type3).mo1296clone();
                    mo1295clone.clearBuffer(type3);
                    mo1295clone.setBuffer(mo1296clone3);
                }
            }
        }
        return mo1295clone;
    }

    public int collideWith(Collidable collidable, Matrix4f matrix4f, BoundingVolume boundingVolume, CollisionResults collisionResults) {
        int ordinal = this.mode.ordinal();
        if (ordinal == 0 || ordinal == 1 || ordinal == 2 || ordinal == 3 || getVertexCount() == 0) {
            return 0;
        }
        if (this.collisionTree == null) {
            createCollisionData();
        }
        return this.collisionTree.collideWith(collidable, matrix4f, boundingVolume, collisionResults);
    }

    public void createCollisionData() {
        BIHTree bIHTree = new BIHTree(this);
        bIHTree.construct();
        this.collisionTree = bIHTree;
    }

    public Mesh deepClone() {
        try {
            Mesh mesh = (Mesh) super.clone();
            BoundingVolume boundingVolume = this.meshBound;
            mesh.meshBound = boundingVolume != null ? boundingVolume.m1264clone() : null;
            mesh.collisionTree = DEFAULT_COLLISION_TREE;
            mesh.buffers = new IntMap<>();
            mesh.buffersList = new SafeArrayList<>(VertexBuffer.class);
            for (VertexBuffer vertexBuffer : this.buffersList.getArray()) {
                VertexBuffer mo1296clone = vertexBuffer.mo1296clone();
                mesh.buffers.put(vertexBuffer.getBufferType().ordinal(), mo1296clone);
                mesh.buffersList.add(mo1296clone);
            }
            mesh.vertexArrayID = -1;
            mesh.vertCount = this.vertCount;
            mesh.elementCount = this.elementCount;
            mesh.instanceCount = this.instanceCount;
            mesh.maxNumWeights = this.maxNumWeights;
            int[] iArr = this.elementLengths;
            mesh.elementLengths = iArr != null ? (int[]) iArr.clone() : null;
            int[] iArr2 = this.modeStart;
            mesh.modeStart = iArr2 != null ? (int[]) iArr2.clone() : null;
            return mesh;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public void extractVertexData(Mesh mesh) {
        VertexBuffer buffer = getBuffer(VertexBuffer.Type.Index);
        IndexBuffer indexBuffer = getIndexBuffer();
        int size = indexBuffer.size();
        IntMap intMap = new IntMap(size);
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            int i12 = indexBuffer.get(i11);
            if (!intMap.containsKey(i12)) {
                intMap.put(i12, Integer.valueOf(i10));
                arrayList.add(Integer.valueOf(i12));
                i10++;
            }
        }
        int size2 = arrayList.size();
        if (i10 != size2) {
            throw new AssertionError();
        }
        IndexBuffer indexIntBuffer = size2 >= 65536 ? new IndexIntBuffer(BufferUtils.createIntBuffer(size)) : new IndexShortBuffer(BufferUtils.createShortBuffer(size));
        for (int i13 = 0; i13 < size; i13++) {
            indexIntBuffer.put(i13, ((Integer) intMap.get(indexBuffer.get(i13))).intValue());
        }
        VertexBuffer.Type type = VertexBuffer.Type.Index;
        VertexBuffer vertexBuffer = new VertexBuffer(type);
        vertexBuffer.setupData(buffer.getUsage(), buffer.getNumComponents(), indexIntBuffer instanceof IndexIntBuffer ? VertexBuffer.Format.UnsignedInt : VertexBuffer.Format.UnsignedShort, indexIntBuffer.getBuffer());
        clearBuffer(type);
        setBuffer(vertexBuffer);
        Iterator<VertexBuffer> it = mesh.getBufferList().iterator();
        while (it.hasNext()) {
            VertexBuffer next = it.next();
            if (next.getBufferType() != VertexBuffer.Type.Index) {
                VertexBuffer vertexBuffer2 = new VertexBuffer(next.getBufferType());
                vertexBuffer2.setNormalized(next.isNormalized());
                if (next.getData() != null) {
                    vertexBuffer2.setupData(next.getUsage(), next.getNumComponents(), next.getFormat(), VertexBuffer.createBuffer(next.getFormat(), next.getNumComponents(), size2));
                    for (int i14 = 0; i14 < size2; i14++) {
                        next.copyElement(((Integer) arrayList.get(i14)).intValue(), vertexBuffer2, i14);
                    }
                }
                clearBuffer(vertexBuffer2.getBufferType());
                setBuffer(vertexBuffer2);
            }
        }
        setMaxNumWeights(mesh.getMaxNumWeights());
        updateCounts();
        updateBound();
    }

    @Deprecated
    public void generateBindPose(boolean z10) {
        generateBindPose();
    }

    public BoundingVolume getBound() {
        return this.meshBound;
    }

    public VertexBuffer getBuffer(VertexBuffer.Type type) {
        return this.buffers.get(type.ordinal());
    }

    public SafeArrayList<VertexBuffer> getBufferList() {
        return this.buffersList;
    }

    public IntMap<VertexBuffer> getBuffers() {
        return this.buffers;
    }

    public int[] getElementLengths() {
        return this.elementLengths;
    }

    public FloatBuffer getFloatBuffer(VertexBuffer.Type type) {
        VertexBuffer buffer = getBuffer(type);
        if (buffer == null) {
            return null;
        }
        return (FloatBuffer) buffer.getData();
    }

    public int getId() {
        return this.vertexArrayID;
    }

    public IndexBuffer getIndexBuffer() {
        VertexBuffer buffer = getBuffer(VertexBuffer.Type.Index);
        if (buffer == null) {
            return null;
        }
        return IndexBuffer.wrapIndexBuffer(buffer.getData());
    }

    public IndexBuffer getIndicesAsList() {
        if (this.mode == Mode.Hybrid) {
            throw new UnsupportedOperationException("Hybrid mode not supported");
        }
        IndexBuffer indexBuffer = getIndexBuffer();
        return indexBuffer != null ? this.mode.isListMode() ? indexBuffer : new WrappedIndexBuffer(this) : new VirtualIndexBuffer(this.vertCount, this.mode);
    }

    public int getInstanceCount() {
        return this.instanceCount;
    }

    @Deprecated
    public float getLineWidth() {
        return this.lineWidth;
    }

    public VertexBuffer getLodLevel(int i10) {
        return this.lodLevels[i10];
    }

    public int getMaxNumWeights() {
        return this.maxNumWeights;
    }

    public Mode getMode() {
        return this.mode;
    }

    public int[] getModeStart() {
        return this.modeStart;
    }

    public int getMorphIndex(String str) {
        MorphTarget[] morphTargets = getMorphTargets();
        for (int i10 = 0; i10 < morphTargets.length; i10++) {
            if (morphTargets[i10].getName().equals(str)) {
                return i10;
            }
        }
        return -1;
    }

    public MorphTarget getMorphTarget(int i10) {
        SafeArrayList<MorphTarget> safeArrayList = this.morphTargets;
        if (safeArrayList != null) {
            return safeArrayList.get(i10);
        }
        throw new IndexOutOfBoundsException("Index:" + i10 + ", Size:0");
    }

    public String[] getMorphTargetNames() {
        MorphTarget[] morphTargets = getMorphTargets();
        if (morphTargets.length == 0) {
            return new String[0];
        }
        String[] strArr = new String[morphTargets.length];
        for (int i10 = 0; i10 < morphTargets.length; i10++) {
            strArr[i10] = morphTargets[i10].getName();
        }
        return strArr;
    }

    public MorphTarget[] getMorphTargets() {
        SafeArrayList<MorphTarget> safeArrayList = this.morphTargets;
        return safeArrayList == null ? new MorphTarget[0] : safeArrayList.getArray();
    }

    public int getNumLodLevels() {
        VertexBuffer[] vertexBufferArr = this.lodLevels;
        if (vertexBufferArr != null) {
            return vertexBufferArr.length;
        }
        return 0;
    }

    public int getPatchVertexCount() {
        return this.patchVertexCount;
    }

    @Deprecated
    public float getPointSize() {
        return 1.0f;
    }

    public ShortBuffer getShortBuffer(VertexBuffer.Type type) {
        VertexBuffer buffer = getBuffer(type);
        if (buffer == null) {
            return null;
        }
        return (ShortBuffer) buffer.getData();
    }

    public void getTriangle(int i10, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        VertexBuffer buffer = getBuffer(VertexBuffer.Type.Position);
        IndexBuffer indicesAsList = getIndicesAsList();
        if (buffer != null && buffer.getFormat() == VertexBuffer.Format.Float && buffer.getNumComponents() == 3) {
            FloatBuffer floatBuffer = (FloatBuffer) buffer.getData();
            int i11 = i10 * 3;
            int i12 = indicesAsList.get(i11);
            int i13 = indicesAsList.get(i11 + 1);
            int i14 = indicesAsList.get(i11 + 2);
            BufferUtils.populateFromBuffer(vector3f, floatBuffer, i12);
            BufferUtils.populateFromBuffer(vector3f2, floatBuffer, i13);
            BufferUtils.populateFromBuffer(vector3f3, floatBuffer, i14);
            return;
        }
        throw new UnsupportedOperationException("Position buffer not set or  has incompatible format");
    }

    public int getTriangleCount(int i10) {
        VertexBuffer[] vertexBufferArr = this.lodLevels;
        if (vertexBufferArr == null) {
            if (i10 == 0) {
                return this.elementCount;
            }
            throw new IllegalArgumentException("There are no LOD levels on the mesh!");
        }
        if (i10 >= 0) {
            if (i10 < vertexBufferArr.length) {
                return computeNumElements(vertexBufferArr[i10].getData().limit());
            }
            throw new IllegalArgumentException("LOD level " + i10 + " does not exist!");
        }
        throw new IllegalArgumentException("LOD level cannot be < 0");
    }

    public int getVertexCount() {
        return this.vertCount;
    }

    public boolean hasMorphTargets() {
        SafeArrayList<MorphTarget> safeArrayList = this.morphTargets;
        return (safeArrayList == null || safeArrayList.isEmpty()) ? false : true;
    }

    public boolean isAnimated() {
        return (getBuffer(VertexBuffer.Type.BoneIndex) == null && getBuffer(VertexBuffer.Type.HWBoneIndex) == null) ? false : true;
    }

    @Deprecated
    public boolean isAnimatedByBone(int i10) {
        return isAnimatedByJoint(i10);
    }

    public boolean isAnimatedByJoint(int i10) {
        VertexBuffer buffer = getBuffer(VertexBuffer.Type.BoneIndex);
        VertexBuffer buffer2 = getBuffer(VertexBuffer.Type.BoneWeight);
        if (buffer != null && buffer2 != null) {
            IndexBuffer wrapIndexBuffer = IndexBuffer.wrapIndexBuffer(buffer.getData());
            wrapIndexBuffer.rewind();
            wrapIndexBuffer.remaining();
            int remaining = wrapIndexBuffer.remaining() / 4;
            FloatBuffer floatBuffer = (FloatBuffer) buffer2.getData();
            floatBuffer.rewind();
            floatBuffer.remaining();
            for (int i11 = 0; i11 < remaining; i11++) {
                for (int i12 = 0; i12 < 4; i12++) {
                    int i13 = wrapIndexBuffer.get();
                    float f10 = floatBuffer.get();
                    if (i12 < this.maxNumWeights && i13 == i10 && f10 != 0.0f) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void prepareForAnim(boolean z10) {
        ShortBuffer shortBuffer;
        if (z10) {
            VertexBuffer buffer = getBuffer(VertexBuffer.Type.BoneIndex);
            if (!buffer.getData().hasArray()) {
                if (buffer.getFormat() == VertexBuffer.Format.UnsignedByte) {
                    ByteBuffer byteBuffer = (ByteBuffer) buffer.getData();
                    ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.capacity());
                    byteBuffer.clear();
                    allocate.put(byteBuffer);
                    buffer.updateData(allocate);
                } else {
                    ShortBuffer shortBuffer2 = (ShortBuffer) buffer.getData();
                    ShortBuffer allocate2 = ShortBuffer.allocate(shortBuffer2.capacity());
                    shortBuffer2.clear();
                    allocate2.put(shortBuffer2);
                    buffer.updateData(allocate2);
                }
            }
            VertexBuffer.Usage usage = VertexBuffer.Usage.CpuOnly;
            buffer.setUsage(usage);
            VertexBuffer buffer2 = getBuffer(VertexBuffer.Type.BoneWeight);
            if (!buffer2.getData().hasArray()) {
                FloatBuffer floatBuffer = (FloatBuffer) buffer2.getData();
                FloatBuffer allocate3 = FloatBuffer.allocate(floatBuffer.capacity());
                floatBuffer.clear();
                allocate3.put(floatBuffer);
                buffer2.updateData(allocate3);
            }
            buffer2.setUsage(usage);
            VertexBuffer buffer3 = getBuffer(VertexBuffer.Type.Position);
            VertexBuffer buffer4 = getBuffer(VertexBuffer.Type.Normal);
            VertexBuffer buffer5 = getBuffer(VertexBuffer.Type.Tangent);
            VertexBuffer.Usage usage2 = VertexBuffer.Usage.Stream;
            buffer3.setUsage(usage2);
            if (buffer4 != null) {
                buffer4.setUsage(usage2);
            }
            if (buffer5 != null) {
                buffer5.setUsage(usage2);
                return;
            }
            return;
        }
        VertexBuffer buffer6 = getBuffer(VertexBuffer.Type.HWBoneIndex);
        if (buffer6.getData() == null) {
            VertexBuffer buffer7 = getBuffer(VertexBuffer.Type.BoneIndex);
            if (buffer7.getFormat() == VertexBuffer.Format.UnsignedByte) {
                ByteBuffer byteBuffer2 = (ByteBuffer) buffer7.getData();
                ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(byteBuffer2.capacity());
                byteBuffer2.clear();
                createByteBuffer.put(byteBuffer2);
                shortBuffer = createByteBuffer;
            } else {
                ShortBuffer shortBuffer3 = (ShortBuffer) buffer7.getData();
                ShortBuffer createShortBuffer = BufferUtils.createShortBuffer(shortBuffer3.capacity());
                shortBuffer3.clear();
                createShortBuffer.put(shortBuffer3);
                shortBuffer = createShortBuffer;
            }
            buffer6.setupData(VertexBuffer.Usage.Static, buffer7.getNumComponents(), buffer7.getFormat(), shortBuffer);
        }
        VertexBuffer buffer8 = getBuffer(VertexBuffer.Type.HWBoneWeight);
        if (buffer8.getData() == null) {
            VertexBuffer buffer9 = getBuffer(VertexBuffer.Type.BoneWeight);
            FloatBuffer floatBuffer2 = (FloatBuffer) buffer9.getData();
            FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(floatBuffer2.capacity());
            floatBuffer2.clear();
            createFloatBuffer.put(floatBuffer2);
            buffer8.setupData(VertexBuffer.Usage.Static, buffer9.getNumComponents(), buffer9.getFormat(), createFloatBuffer);
        }
        VertexBuffer buffer10 = getBuffer(VertexBuffer.Type.Position);
        VertexBuffer buffer11 = getBuffer(VertexBuffer.Type.Normal);
        VertexBuffer buffer12 = getBuffer(VertexBuffer.Type.Tangent);
        VertexBuffer buffer13 = getBuffer(VertexBuffer.Type.BindPosePosition);
        VertexBuffer buffer14 = getBuffer(VertexBuffer.Type.BindPoseNormal);
        VertexBuffer buffer15 = getBuffer(VertexBuffer.Type.BindPoseTangent);
        VertexBuffer.Usage usage3 = VertexBuffer.Usage.Static;
        buffer10.setUsage(usage3);
        buffer13.copyElements(0, buffer10, 0, buffer13.getNumElements());
        buffer10.setUpdateNeeded();
        if (buffer11 != null) {
            buffer11.setUsage(usage3);
            buffer14.copyElements(0, buffer11, 0, buffer14.getNumElements());
            buffer11.setUpdateNeeded();
        }
        if (buffer12 != null) {
            buffer12.setUsage(usage3);
            buffer15.copyElements(0, buffer12, 0, buffer15.getNumElements());
            buffer12.setUpdateNeeded();
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.meshBound = (BoundingVolume) capsule.readSavable("modelBound", null);
        this.vertCount = capsule.readInt("vertCount", -1);
        this.elementCount = capsule.readInt("elementCount", -1);
        this.instanceCount = capsule.readInt("instanceCount", -1);
        this.maxNumWeights = capsule.readInt("max_num_weights", -1);
        this.mode = (Mode) capsule.readEnum("mode", Mode.class, Mode.Triangles);
        this.elementLengths = capsule.readIntArray("elementLengths", null);
        this.modeStart = capsule.readIntArray("modeStart", null);
        this.collisionTree = (BIHTree) capsule.readSavable("collisionTree", DEFAULT_COLLISION_TREE);
        this.elementLengths = capsule.readIntArray("elementLengths", null);
        this.modeStart = capsule.readIntArray("modeStart", null);
        this.pointSize = capsule.readFloat("pointSize", 1.0f);
        IntMap readIntSavableMap = capsule.readIntSavableMap("buffers", null);
        this.buffers = readIntSavableMap;
        Iterator it = readIntSavableMap.iterator();
        while (it.hasNext()) {
            this.buffersList.add((VertexBuffer) ((IntMap.Entry) it.next()).getValue());
        }
        if (isAnimated()) {
            VertexBuffer vertexBuffer = new VertexBuffer(VertexBuffer.Type.HWBoneIndex);
            VertexBuffer.Usage usage = VertexBuffer.Usage.CpuOnly;
            vertexBuffer.setUsage(usage);
            setBuffer(vertexBuffer);
            VertexBuffer vertexBuffer2 = new VertexBuffer(VertexBuffer.Type.HWBoneWeight);
            vertexBuffer2.setUsage(usage);
            setBuffer(vertexBuffer2);
        }
        Savable[] readSavableArray = capsule.readSavableArray("lodLevels", null);
        if (readSavableArray != null) {
            VertexBuffer[] vertexBufferArr = new VertexBuffer[readSavableArray.length];
            this.lodLevels = vertexBufferArr;
            System.arraycopy(readSavableArray, 0, vertexBufferArr, 0, vertexBufferArr.length);
        }
        ArrayList readSavableArrayList = capsule.readSavableArrayList("morphTargets", null);
        if (readSavableArrayList != null) {
            this.morphTargets = new SafeArrayList<>(MorphTarget.class, readSavableArrayList);
        }
    }

    public boolean removeMorphTarget(MorphTarget morphTarget) {
        SafeArrayList<MorphTarget> safeArrayList = this.morphTargets;
        if (safeArrayList != null) {
            return safeArrayList.remove(morphTarget);
        }
        return false;
    }

    public void scaleTextureCoordinates(Vector2f vector2f) {
        VertexBuffer buffer = getBuffer(VertexBuffer.Type.TexCoord);
        if (buffer == null) {
            throw new IllegalStateException("The mesh has no texture coordinates");
        }
        if (buffer.getFormat() != VertexBuffer.Format.Float) {
            throw new UnsupportedOperationException("Only float texture coord format is supported");
        }
        if (buffer.getNumComponents() != 2) {
            throw new UnsupportedOperationException("Only 2D texture coords are supported");
        }
        FloatBuffer floatBuffer = (FloatBuffer) buffer.getData();
        floatBuffer.clear();
        for (int i10 = 0; i10 < floatBuffer.limit() / 2; i10++) {
            float f10 = floatBuffer.get();
            float f11 = floatBuffer.get();
            floatBuffer.position(floatBuffer.position() - 2);
            float x10 = f10 * vector2f.getX();
            floatBuffer.put(x10).put(f11 * vector2f.getY());
        }
        floatBuffer.clear();
        buffer.updateData(floatBuffer);
    }

    public void setBound(BoundingVolume boundingVolume) {
        this.meshBound = boundingVolume;
    }

    public void setBuffer(VertexBuffer vertexBuffer) {
        if (!this.buffers.containsKey(vertexBuffer.getBufferType().ordinal())) {
            this.buffers.put(vertexBuffer.getBufferType().ordinal(), vertexBuffer);
            this.buffersList.add(vertexBuffer);
            updateCounts();
        } else {
            throw new IllegalArgumentException("Buffer type already set: " + ((Object) vertexBuffer.getBufferType()));
        }
    }

    public void setDynamic() {
        for (VertexBuffer vertexBuffer : this.buffersList.getArray()) {
            vertexBuffer.setUsage(VertexBuffer.Usage.Dynamic);
        }
    }

    public void setElementLengths(int[] iArr) {
        this.elementLengths = iArr;
    }

    public void setId(int i10) {
        if (this.vertexArrayID != -1) {
            throw new IllegalStateException("ID has already been set.");
        }
        this.vertexArrayID = i10;
    }

    @Deprecated
    public void setInterleaved() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.buffersList);
        arrayList.remove(getBuffer(VertexBuffer.Type.Index));
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            VertexBuffer vertexBuffer = (VertexBuffer) arrayList.get(i12);
            i11 += vertexBuffer.componentsLength;
            vertexBuffer.getData().clear();
        }
        VertexBuffer.Type type = VertexBuffer.Type.InterleavedData;
        VertexBuffer vertexBuffer2 = new VertexBuffer(type);
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(getVertexCount() * i11);
        vertexBuffer2.setupData(VertexBuffer.Usage.Static, 1, VertexBuffer.Format.UnsignedByte, createByteBuffer);
        this.buffers.put(type.ordinal(), vertexBuffer2);
        this.buffersList.add(vertexBuffer2);
        for (int i13 = 0; i13 < getVertexCount(); i13++) {
            for (int i14 = 0; i14 < arrayList.size(); i14++) {
                VertexBuffer vertexBuffer3 = (VertexBuffer) arrayList.get(i14);
                switch (AnonymousClass1.$SwitchMap$com$jme3$scene$VertexBuffer$Format[vertexBuffer3.getFormat().ordinal()]) {
                    case 1:
                        FloatBuffer floatBuffer = (FloatBuffer) vertexBuffer3.getData();
                        for (int i15 = 0; i15 < vertexBuffer3.components; i15++) {
                            createByteBuffer.putFloat(floatBuffer.get());
                        }
                        break;
                    case 2:
                    case 3:
                        ByteBuffer byteBuffer = (ByteBuffer) vertexBuffer3.getData();
                        for (int i16 = 0; i16 < vertexBuffer3.components; i16++) {
                            createByteBuffer.put(byteBuffer.get());
                        }
                        break;
                    case 4:
                    case 5:
                    case 6:
                        ShortBuffer shortBuffer = (ShortBuffer) vertexBuffer3.getData();
                        for (int i17 = 0; i17 < vertexBuffer3.components; i17++) {
                            createByteBuffer.putShort(shortBuffer.get());
                        }
                        break;
                    case 7:
                    case 8:
                        IntBuffer intBuffer = (IntBuffer) vertexBuffer3.getData();
                        for (int i18 = 0; i18 < vertexBuffer3.components; i18++) {
                            createByteBuffer.putInt(intBuffer.get());
                        }
                        break;
                    case 9:
                        DoubleBuffer doubleBuffer = (DoubleBuffer) vertexBuffer3.getData();
                        for (int i19 = 0; i19 < vertexBuffer3.components; i19++) {
                            createByteBuffer.putDouble(doubleBuffer.get());
                        }
                        break;
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            VertexBuffer vertexBuffer4 = (VertexBuffer) it.next();
            vertexBuffer4.setOffset(i10);
            vertexBuffer4.setStride(i11);
            vertexBuffer4.updateData(null);
            i10 += vertexBuffer4.componentsLength;
        }
    }

    @Deprecated
    public void setLineWidth(float f10) {
        if (f10 < 1.0f) {
            throw new IllegalArgumentException("lineWidth must be greater than or equal to 1.0");
        }
        this.lineWidth = f10;
    }

    public void setLodLevels(VertexBuffer[] vertexBufferArr) {
        this.lodLevels = vertexBufferArr;
    }

    public void setMaxNumWeights(int i10) {
        this.maxNumWeights = i10;
    }

    public void setMode(Mode mode) {
        this.mode = mode;
        updateCounts();
    }

    public void setModeStart(int[] iArr) {
        this.modeStart = iArr;
    }

    public void setPatchVertexCount(int i10) {
        this.patchVertexCount = i10;
    }

    public void setStatic() {
        for (VertexBuffer vertexBuffer : this.buffersList.getArray()) {
            vertexBuffer.setUsage(VertexBuffer.Usage.Static);
        }
    }

    public void setStreamed() {
        for (VertexBuffer vertexBuffer : this.buffersList.getArray()) {
            vertexBuffer.setUsage(VertexBuffer.Usage.Stream);
        }
    }

    public void updateBound() {
        VertexBuffer buffer = getBuffer(VertexBuffer.Type.Position);
        BoundingVolume boundingVolume = this.meshBound;
        if (boundingVolume == null || buffer == null) {
            return;
        }
        boundingVolume.computeFromPoints((FloatBuffer) buffer.getData());
    }

    public void updateCounts() {
        if (getBuffer(VertexBuffer.Type.InterleavedData) != null) {
            throw new IllegalStateException("Should update counts before interleave");
        }
        VertexBuffer buffer = getBuffer(VertexBuffer.Type.Position);
        VertexBuffer buffer2 = getBuffer(VertexBuffer.Type.Index);
        if (buffer != null) {
            this.vertCount = buffer.getData().limit() / buffer.getNumComponents();
        }
        if (buffer2 != null) {
            this.elementCount = computeNumElements(buffer2.getData().limit());
        } else {
            this.elementCount = computeNumElements(this.vertCount);
        }
        this.instanceCount = computeInstanceCount();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.meshBound, "modelBound", (Savable) null);
        capsule.write(this.vertCount, "vertCount", -1);
        capsule.write(this.elementCount, "elementCount", -1);
        capsule.write(this.instanceCount, "instanceCount", -1);
        capsule.write(this.maxNumWeights, "max_num_weights", -1);
        capsule.write(this.mode, "mode", Mode.Triangles);
        capsule.write(this.collisionTree, "collisionTree", DEFAULT_COLLISION_TREE);
        capsule.write(this.elementLengths, "elementLengths", (int[]) null);
        capsule.write(this.modeStart, "modeStart", (int[]) null);
        capsule.write(this.pointSize, "pointSize", 1.0f);
        VertexBuffer.Type type = VertexBuffer.Type.HWBoneIndex;
        VertexBuffer buffer = getBuffer(type);
        if (buffer != null) {
            this.buffers.remove(type.ordinal());
        }
        VertexBuffer.Type type2 = VertexBuffer.Type.HWBoneWeight;
        VertexBuffer buffer2 = getBuffer(type2);
        if (buffer2 != null) {
            this.buffers.remove(type2.ordinal());
        }
        capsule.writeIntSavableMap(this.buffers, "buffers", null);
        if (buffer != null) {
            this.buffers.put(buffer.getBufferType().ordinal(), buffer);
        }
        if (buffer2 != null) {
            this.buffers.put(buffer2.getBufferType().ordinal(), buffer2);
        }
        capsule.write(this.lodLevels, "lodLevels", (Savable[]) null);
        if (this.morphTargets != null) {
            capsule.writeSavableArrayList(new ArrayList(this.morphTargets), "morphTargets", null);
        }
    }

    @Override
    public Mesh mo1295clone() {
        try {
            Mesh mesh = (Mesh) super.clone();
            mesh.meshBound = this.meshBound.m1264clone();
            CollisionData collisionData = this.collisionTree;
            if (collisionData == null) {
                collisionData = null;
            }
            mesh.collisionTree = collisionData;
            mesh.buffers = this.buffers.m1306clone();
            mesh.buffersList = new SafeArrayList<>(VertexBuffer.class, this.buffersList);
            mesh.vertexArrayID = -1;
            int[] iArr = this.elementLengths;
            if (iArr != null) {
                mesh.elementLengths = (int[]) iArr.clone();
            }
            int[] iArr2 = this.modeStart;
            if (iArr2 != null) {
                mesh.modeStart = (int[]) iArr2.clone();
            }
            return mesh;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public void generateBindPose() {
        VertexBuffer buffer = getBuffer(VertexBuffer.Type.Position);
        if (buffer == null || getBuffer(VertexBuffer.Type.BoneIndex) == null) {
            return;
        }
        VertexBuffer vertexBuffer = new VertexBuffer(VertexBuffer.Type.BindPosePosition);
        VertexBuffer.Usage usage = VertexBuffer.Usage.CpuOnly;
        vertexBuffer.setupData(usage, buffer.getNumComponents(), buffer.getFormat(), BufferUtils.clone(buffer.getData()));
        clearBuffer(vertexBuffer.getBufferType());
        setBuffer(vertexBuffer);
        VertexBuffer.Usage usage2 = VertexBuffer.Usage.Stream;
        buffer.setUsage(usage2);
        VertexBuffer buffer2 = getBuffer(VertexBuffer.Type.Normal);
        if (buffer2 != null) {
            VertexBuffer vertexBuffer2 = new VertexBuffer(VertexBuffer.Type.BindPoseNormal);
            vertexBuffer2.setupData(usage, buffer2.getNumComponents(), buffer2.getFormat(), BufferUtils.clone(buffer2.getData()));
            clearBuffer(vertexBuffer2.getBufferType());
            setBuffer(vertexBuffer2);
            buffer2.setUsage(usage2);
        }
        VertexBuffer buffer3 = getBuffer(VertexBuffer.Type.Tangent);
        if (buffer3 != null) {
            VertexBuffer vertexBuffer3 = new VertexBuffer(VertexBuffer.Type.BindPoseTangent);
            vertexBuffer3.setupData(usage, buffer3.getNumComponents(), buffer3.getFormat(), BufferUtils.clone(buffer3.getData()));
            clearBuffer(vertexBuffer3.getBufferType());
            setBuffer(vertexBuffer3);
            buffer3.setUsage(usage2);
        }
    }

    @Override
    public Mesh jmeClone() {
        try {
            Mesh mesh = (Mesh) super.clone();
            mesh.vertexArrayID = -1;
            return mesh;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public MorphTarget removeMorphTarget(int i10) {
        SafeArrayList<MorphTarget> safeArrayList = this.morphTargets;
        if (safeArrayList != null) {
            return safeArrayList.remove(i10);
        }
        throw new IndexOutOfBoundsException("Index:" + i10 + ", Size:0");
    }

    public void setBuffer(VertexBuffer.Type type, int i10, VertexBuffer.Format format, Buffer buffer) {
        VertexBuffer vertexBuffer = this.buffers.get(type.ordinal());
        if (vertexBuffer == null) {
            VertexBuffer vertexBuffer2 = new VertexBuffer(type);
            vertexBuffer2.setupData(VertexBuffer.Usage.Dynamic, i10, format, buffer);
            setBuffer(vertexBuffer2);
        } else {
            if (vertexBuffer.getNumComponents() == i10 && vertexBuffer.getFormat() == format) {
                vertexBuffer.updateData(buffer);
                updateCounts();
                return;
            }
            throw new UnsupportedOperationException("The buffer already set is incompatible with the given parameters");
        }
    }

    public int getTriangleCount() {
        return this.elementCount;
    }

    public void getTriangle(int i10, Triangle triangle) {
        getTriangle(i10, triangle.get1(), triangle.get2(), triangle.get3());
        triangle.setIndex(i10);
        triangle.setCenter(null);
        triangle.setNormal(null);
    }

    public void setBuffer(VertexBuffer.Type type, int i10, FloatBuffer floatBuffer) {
        setBuffer(type, i10, VertexBuffer.Format.Float, floatBuffer);
    }

    public void setBuffer(VertexBuffer.Type type, int i10, float[] fArr) {
        setBuffer(type, i10, BufferUtils.createFloatBuffer(fArr));
    }

    public void getTriangle(int i10, int[] iArr) {
        IndexBuffer indicesAsList = getIndicesAsList();
        int i11 = i10 * 3;
        iArr[0] = indicesAsList.get(i11);
        iArr[1] = indicesAsList.get(i11 + 1);
        iArr[2] = indicesAsList.get(i11 + 2);
    }

    public void setBuffer(VertexBuffer.Type type, int i10, IntBuffer intBuffer) {
        setBuffer(type, i10, VertexBuffer.Format.UnsignedInt, intBuffer);
    }

    public void setBuffer(VertexBuffer.Type type, int i10, int[] iArr) {
        setBuffer(type, i10, BufferUtils.createIntBuffer(iArr));
    }

    public void setBuffer(VertexBuffer.Type type, int i10, ShortBuffer shortBuffer) {
        setBuffer(type, i10, VertexBuffer.Format.UnsignedShort, shortBuffer);
    }

    public void setBuffer(VertexBuffer.Type type, int i10, byte[] bArr) {
        setBuffer(type, i10, BufferUtils.createByteBuffer(bArr));
    }

    public void setBuffer(VertexBuffer.Type type, int i10, ByteBuffer byteBuffer) {
        setBuffer(type, i10, VertexBuffer.Format.UnsignedByte, byteBuffer);
    }

    public void setBuffer(VertexBuffer.Type type, int i10, short[] sArr) {
        setBuffer(type, i10, BufferUtils.createShortBuffer(sArr));
    }
}
