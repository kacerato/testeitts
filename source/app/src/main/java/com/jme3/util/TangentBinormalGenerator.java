package com.jme3.util;

import com.jme3.math.ColorRGBA;
import com.jme3.math.FastMath;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.SceneGraphVisitor;
import com.jme3.scene.Spatial;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.mesh.IndexBuffer;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;

@Deprecated
public class TangentBinormalGenerator {
    private static final float ZERO_TOLERANCE = 1.0E-7f;
    private static float toleranceDot;
    private static final Logger log = Logger.getLogger(TangentBinormalGenerator.class.getName());
    public static boolean debug = false;

    public static class AnonymousClass3 {
        static final int[] $SwitchMap$com$jme3$scene$Mesh$Mode;
        static final int[] $SwitchMap$com$jme3$scene$VertexBuffer$Format;

        static {
            int[] iArr = new int[VertexBuffer.Format.values().length];
            $SwitchMap$com$jme3$scene$VertexBuffer$Format = iArr;
            try {
                iArr[VertexBuffer.Format.Byte.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.Half.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.UnsignedByte.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.Short.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.UnsignedShort.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.Int.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.UnsignedInt.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.Float.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$jme3$scene$VertexBuffer$Format[VertexBuffer.Format.Double.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr2 = new int[Mesh.Mode.values().length];
            $SwitchMap$com$jme3$scene$Mesh$Mode = iArr2;
            try {
                iArr2[Mesh.Mode.Triangles.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.TriangleStrip.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.TriangleFan.ordinal()] = 3;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public static class TriangleData {
        public final Vector3f binormal;
        public int[] index = new int[3];
        public final Vector3f normal;
        public final Vector3f tangent;
        public int triangleOffset;

        public TriangleData(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
            this.tangent = vector3f;
            this.binormal = vector3f2;
            this.normal = vector3f3;
        }

        public void setIndex(int[] iArr) {
            for (int i10 = 0; i10 < iArr.length; i10++) {
                this.index[i10] = iArr[i10];
            }
        }
    }

    public static class VertexData {
        public final ArrayList<TriangleData> triangles;

        private VertexData() {
            this.triangles = new ArrayList<>();
        }
    }

    public static class VertexInfo {
        public final ArrayList<Integer> indices = new ArrayList<>();
        public final Vector3f normal;
        public final Vector3f position;
        public final Vector2f texCoord;

        public VertexInfo(Vector3f vector3f, Vector3f vector3f2, Vector2f vector2f) {
            this.position = vector3f;
            this.normal = vector3f2;
            this.texCoord = vector2f;
        }
    }

    static {
        setToleranceAngle(45.0f);
    }

    private TangentBinormalGenerator() {
    }

    private static boolean approxEqual(Vector3f vector3f, Vector3f vector3f2) {
        return FastMath.abs(vector3f.f81611x - vector3f2.f81611x) < 1.0E-4f && FastMath.abs(vector3f.f81612y - vector3f2.f81612y) < 1.0E-4f && FastMath.abs(vector3f.f81613z - vector3f2.f81613z) < 1.0E-4f;
    }

    private static void bulkPut(VertexBuffer.Format format, Buffer buffer, Buffer buffer2) {
        switch (AnonymousClass3.$SwitchMap$com$jme3$scene$VertexBuffer$Format[format.ordinal()]) {
            case 1:
            case 2:
            case 3:
                ((ByteBuffer) buffer).put((ByteBuffer) buffer2);
                return;
            case 4:
            case 5:
                ((ShortBuffer) buffer).put((ShortBuffer) buffer2);
                return;
            case 6:
            case 7:
                ((IntBuffer) buffer).put((IntBuffer) buffer2);
                return;
            case 8:
                ((FloatBuffer) buffer).put((FloatBuffer) buffer2);
                return;
            case 9:
                ((DoubleBuffer) buffer).put((DoubleBuffer) buffer2);
                return;
            default:
                throw new UnsupportedOperationException("Unrecognized buffer format: " + ((Object) format));
        }
    }

    @Deprecated
    public static Mesh genNormalLines(Mesh mesh, float f10) {
        return TangentUtils.genNormalLines(mesh, f10);
    }

    @Deprecated
    public static Mesh genTbnLines(Mesh mesh, float f10) {
        return TangentUtils.genTbnLines(mesh, f10);
    }

    public static void generate(Mesh mesh) {
        generate(mesh, true, false);
    }

    public static void generateParallel(Spatial spatial, ExecutorService executorService) {
        final HashSet<Mesh> hashSet = new HashSet();
        spatial.breadthFirstTraversal(new SceneGraphVisitor() {
            @Override
            public void visit(Spatial spatial2) {
                if (spatial2 instanceof Geometry) {
                    Mesh mesh = ((Geometry) spatial2).getMesh();
                    if (mesh.getBuffer(VertexBuffer.Type.TexCoord) == null || mesh.getBuffer(VertexBuffer.Type.Normal) == null) {
                        return;
                    }
                    Set.this.add(mesh);
                }
            }
        });
        ArrayList arrayList = new ArrayList();
        for (final Mesh mesh : hashSet) {
            arrayList.add(executorService.submit(new Runnable() {
                @Override
                public void run() {
                    TangentBinormalGenerator.generate(Mesh.this, true, false);
                }
            }));
        }
        Iterator<E> it = arrayList.iterator();
        while (it.hasNext()) {
            try {
                ((Future) it.next()).get();
            } catch (Exception e10) {
                log.log(Level.WARNING, "Error while computing tangents", (Throwable) e10);
            }
        }
    }

    private static List<VertexData> initVertexData(int i10) {
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(new VertexData());
        }
        return arrayList;
    }

    private static boolean isDegenerateTriangle(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        return vector3f.subtract(vector3f2).cross(vector3f3.subtract(vector3f2)).lengthSquared() == 0.0f;
    }

    private static ArrayList<VertexInfo> linkVertices(Mesh mesh, boolean z10) {
        ArrayList<VertexInfo> arrayList = new ArrayList<>();
        FloatBuffer floatBuffer = mesh.getFloatBuffer(VertexBuffer.Type.Position);
        FloatBuffer floatBuffer2 = mesh.getFloatBuffer(VertexBuffer.Type.Normal);
        FloatBuffer floatBuffer3 = mesh.getFloatBuffer(VertexBuffer.Type.TexCoord);
        Vector3f vector3f = new Vector3f();
        Vector3f vector3f2 = new Vector3f();
        Vector2f vector2f = new Vector2f();
        int limit = floatBuffer.limit() / 3;
        for (int i10 = 0; i10 < limit; i10++) {
            BufferUtils.populateFromBuffer(vector3f, floatBuffer, i10);
            BufferUtils.populateFromBuffer(vector3f2, floatBuffer2, i10);
            BufferUtils.populateFromBuffer(vector2f, floatBuffer3, i10);
            if (!z10) {
                for (int i11 = 0; i11 < arrayList.size(); i11++) {
                    VertexInfo vertexInfo = arrayList.get(i11);
                    if (approxEqual(vertexInfo.position, vector3f) && approxEqual(vertexInfo.normal, vector3f2) && approxEqual(vertexInfo.texCoord, vector2f)) {
                        vertexInfo.indices.add(Integer.valueOf(i10));
                        break;
                    }
                }
            }
            VertexInfo vertexInfo2 = new VertexInfo(vector3f.m1292clone(), vector3f2.m1292clone(), vector2f.m1291clone());
            vertexInfo2.indices.add(Integer.valueOf(i10));
            arrayList.add(vertexInfo2);
        }
        return arrayList;
    }

    private static int parity(Vector3f vector3f, Vector3f vector3f2) {
        return vector3f.dot(vector3f2) < 0.0f ? -1 : 1;
    }

    public static TriangleData processTriangle(int[] iArr, Vector3f[] vector3fArr, Vector2f[] vector2fArr) {
        boolean z10;
        float f10;
        TempVars tempVars = TempVars.get();
        try {
            Vector3f vector3f = tempVars.vect1;
            Vector3f vector3f2 = tempVars.vect2;
            Vector2f vector2f = tempVars.vect2d;
            Vector2f vector2f2 = tempVars.vect2d2;
            Vector3f vector3f3 = tempVars.vect3;
            Vector3f vector3f4 = tempVars.vect4;
            Vector3f vector3f5 = tempVars.vect5;
            vector2fArr[1].subtract(vector2fArr[0], vector2f);
            vector2fArr[2].subtract(vector2fArr[0], vector2f2);
            float f11 = (vector2f.f81609x * vector2f2.f81610y) - (vector2f.f81610y * vector2f2.f81609x);
            if (Math.abs(f11) < ZERO_TOLERANCE) {
                log.log(Level.WARNING, "Collinear uv coordinates for triangle [{0}, {1}, {2}]; tex0 = [{3}, {4}], tex1 = [{5}, {6}], tex2 = [{7}, {8}]", new Object[]{Integer.valueOf(iArr[0]), Integer.valueOf(iArr[1]), Integer.valueOf(iArr[2]), Float.valueOf(vector2fArr[0].f81609x), Float.valueOf(vector2fArr[0].f81610y), Float.valueOf(vector2fArr[1].f81609x), Float.valueOf(vector2fArr[1].f81610y), Float.valueOf(vector2fArr[2].f81609x), Float.valueOf(vector2fArr[2].f81610y)});
                z10 = true;
                f11 = 1.0f;
            } else {
                z10 = false;
            }
            vector3fArr[1].subtract(vector3fArr[0], vector3f);
            vector3fArr[2].subtract(vector3fArr[0], vector3f2);
            vector3f3.set(vector3f);
            vector3f3.normalizeLocal();
            vector3f4.set(vector3f2);
            vector3f4.normalizeLocal();
            if (Math.abs(Math.abs(vector3f3.dot(vector3f4)) - 1.0f) < ZERO_TOLERANCE) {
                log.log(Level.WARNING, "Vertices are on the same line for triangle [{0}, {1}, {2}].", new Object[]{Integer.valueOf(iArr[0]), Integer.valueOf(iArr[1]), Integer.valueOf(iArr[2])});
                f10 = 1.0f;
            } else {
                f10 = 1.0f;
            }
            float f12 = f10 / f11;
            float f13 = vector2f2.f81610y;
            float f14 = vector3f.f81611x * f13;
            float f15 = vector2f.f81610y;
            vector3f3.f81611x = (f14 - (vector3f2.f81611x * f15)) * f12;
            vector3f3.f81612y = ((vector3f.f81612y * f13) - (vector3f2.f81612y * f15)) * f12;
            vector3f3.f81613z = ((f13 * vector3f.f81613z) - (f15 * vector3f2.f81613z)) * f12;
            if (z10) {
                vector3f3.normalizeLocal();
            }
            float f16 = vector2f.f81609x;
            float f17 = vector3f2.f81611x * f16;
            float f18 = vector2f2.f81609x;
            vector3f4.f81611x = (f17 - (vector3f.f81611x * f18)) * f12;
            vector3f4.f81612y = ((vector3f2.f81612y * f16) - (vector3f.f81612y * f18)) * f12;
            vector3f4.f81613z = ((f16 * vector3f2.f81613z) - (f18 * vector3f.f81613z)) * f12;
            if (z10) {
                vector3f4.normalizeLocal();
            }
            vector3f3.cross(vector3f4, vector3f5);
            vector3f5.normalizeLocal();
            TriangleData triangleData = new TriangleData(vector3f3.m1292clone(), vector3f4.m1292clone(), vector3f5.m1292clone());
            tempVars.release();
            return triangleData;
        } catch (Throwable th2) {
            tempVars.release();
            throw th2;
        }
    }

    private static void processTriangleData(Mesh mesh, List<VertexData> list, boolean z10, boolean z11) {
        List<VertexData> list2 = list;
        ArrayList<VertexInfo> linkVertices = linkVertices(mesh, z11);
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(list.size() * 4);
        ColorRGBA[] colorRGBAArr = debug ? new ColorRGBA[list.size()] : null;
        Vector3f vector3f = new Vector3f();
        Vector3f vector3f2 = new Vector3f();
        Vector3f vector3f3 = new Vector3f();
        Vector3f vector3f4 = new Vector3f();
        Vector3f vector3f5 = new Vector3f();
        int i10 = 0;
        int i11 = 0;
        while (i11 < linkVertices.size()) {
            VertexInfo vertexInfo = linkVertices.get(i11);
            vector3f3.set(vertexInfo.normal);
            vector3f3.normalizeLocal();
            TriangleData triangleData = list2.get(vertexInfo.indices.get(i10).intValue()).triangles.get(i10);
            vector3f.set(triangleData.tangent);
            vector3f.normalizeLocal();
            vector3f2.set(triangleData.binormal);
            vector3f2.normalizeLocal();
            Iterator<Integer> it = vertexInfo.indices.iterator();
            while (it.hasNext()) {
                Integer next = it.next();
                ArrayList<TriangleData> arrayList = list2.get(next.intValue()).triangles;
                ArrayList<VertexInfo> arrayList2 = linkVertices;
                Iterator<Integer> it2 = it;
                int i12 = 0;
                while (true) {
                    if (i12 < arrayList.size()) {
                        TriangleData triangleData2 = arrayList.get(i12);
                        ArrayList<TriangleData> arrayList3 = arrayList;
                        vector3f4.set(triangleData2.tangent);
                        vector3f4.normalizeLocal();
                        if (vector3f.dot(vector3f4) < toleranceDot) {
                            log.log(Level.WARNING, "Angle between tangents exceeds tolerance for vertex {0}.", next);
                            break;
                        }
                        if (!z10) {
                            vector3f5.set(triangleData2.binormal);
                            vector3f5.normalizeLocal();
                            if (vector3f2.dot(vector3f5) < toleranceDot) {
                                log.log(Level.WARNING, "Angle between binormals exceeds tolerance for vertex {0}.", next);
                                break;
                            }
                        }
                        i12++;
                        arrayList = arrayList3;
                    }
                }
                linkVertices = arrayList2;
                it = it2;
            }
            ArrayList<VertexInfo> arrayList4 = linkVertices;
            vector3f.set(0.0f, 0.0f, 0.0f);
            vector3f2.set(0.0f, 0.0f, 0.0f);
            Iterator<Integer> it3 = vertexInfo.indices.iterator();
            int i13 = 0;
            while (it3.hasNext()) {
                int intValue = it3.next().intValue();
                ArrayList<TriangleData> arrayList5 = list2.get(intValue).triangles;
                i13 += arrayList5.size();
                if (debug) {
                    colorRGBAArr[intValue] = ColorRGBA.White;
                }
                Iterator<Integer> it4 = it3;
                int i14 = 0;
                while (i14 < arrayList5.size()) {
                    TriangleData triangleData3 = arrayList5.get(i14);
                    vector3f.addLocal(triangleData3.tangent);
                    vector3f2.addLocal(triangleData3.binormal);
                    i14++;
                    arrayList5 = arrayList5;
                }
                it3 = it4;
            }
            Integer num = vertexInfo.indices.get(0);
            num.intValue();
            if (vector3f.length() < ZERO_TOLERANCE) {
                log.log(Level.WARNING, "Shared tangent is zero for vertex {0}.", num);
                if (vector3f2.length() >= ZERO_TOLERANCE) {
                    vector3f2.cross(vector3f3, vector3f);
                    vector3f.normalizeLocal();
                } else {
                    vector3f.set(triangleData.tangent);
                }
            } else {
                vector3f.divideLocal(i13);
            }
            vector3f4.set(vector3f);
            vector3f4.normalizeLocal();
            if (Math.abs(Math.abs(vector3f4.dot(vector3f3)) - 1.0f) < ZERO_TOLERANCE) {
                log.log(Level.WARNING, "Normal and tangent are parallel for vertex {0}.", num);
            }
            if (!z10) {
                if (vector3f2.length() < ZERO_TOLERANCE) {
                    log.log(Level.WARNING, "Shared binormal is zero for vertex {0}.", num);
                    if (vector3f.length() >= ZERO_TOLERANCE) {
                        vector3f3.cross(vector3f, vector3f2);
                        vector3f2.normalizeLocal();
                    } else {
                        vector3f2.set(triangleData.binormal);
                    }
                } else {
                    vector3f2.divideLocal(i13);
                }
                vector3f5.set(vector3f2);
                vector3f5.normalizeLocal();
                if (Math.abs(Math.abs(vector3f5.dot(vector3f3)) - 1.0f) < ZERO_TOLERANCE) {
                    log.log(Level.WARNING, "Normal and binormal are parallel for vertex {0}.", num);
                }
                if (Math.abs(Math.abs(vector3f5.dot(vector3f4)) - 1.0f) < ZERO_TOLERANCE) {
                    log.log(Level.WARNING, "Tangent and binormal are parallel for vertex {0}.", num);
                }
            }
            Vector3f vector3f6 = new Vector3f();
            Vector3f vector3f7 = new Vector3f();
            Iterator<Integer> it5 = vertexInfo.indices.iterator();
            float f10 = -1.0f;
            while (it5.hasNext()) {
                int intValue2 = it5.next().intValue();
                if (z10) {
                    vector3f6.set(vector3f).subtractLocal(vector3f7.set(vector3f3).multLocal(vector3f3.dot(vector3f)));
                    vector3f6.normalizeLocal();
                    float f11 = vector3f7.set(vector3f3).crossLocal(vector3f).dot(vector3f2) < 0.0f ? -1.0f : 1.0f;
                    int i15 = intValue2 * 4;
                    createFloatBuffer.put(i15, vector3f6.f81611x);
                    createFloatBuffer.put(i15 + 1, vector3f6.f81612y);
                    createFloatBuffer.put(i15 + 2, vector3f6.f81613z);
                    createFloatBuffer.put(i15 + 3, f11);
                    f10 = f11;
                } else {
                    int i16 = intValue2 * 4;
                    createFloatBuffer.put(i16, vector3f.f81611x);
                    createFloatBuffer.put(i16 + 1, vector3f.f81612y);
                    createFloatBuffer.put(i16 + 2, vector3f.f81613z);
                    createFloatBuffer.put(i16 + 3, f10);
                }
            }
            i11++;
            list2 = list;
            linkVertices = arrayList4;
            i10 = 0;
        }
        createFloatBuffer.limit(createFloatBuffer.capacity());
        VertexBuffer.Type type = VertexBuffer.Type.Tangent;
        mesh.clearBuffer(type);
        mesh.setBuffer(type, 4, createFloatBuffer);
        if (mesh.isAnimated()) {
            mesh.clearBuffer(VertexBuffer.Type.BindPoseNormal);
            mesh.clearBuffer(VertexBuffer.Type.BindPosePosition);
            mesh.clearBuffer(VertexBuffer.Type.BindPoseTangent);
            mesh.generateBindPose(true);
        }
        if (debug) {
            writeColorBuffer(list, colorRGBAArr, mesh);
        }
        mesh.updateBound();
        mesh.updateCounts();
    }

    private static List<VertexData> processTriangleFan(Mesh mesh, int[] iArr, Vector3f[] vector3fArr, Vector2f[] vector2fArr) {
        IndexBuffer indexBuffer = mesh.getIndexBuffer();
        FloatBuffer floatBuffer = (FloatBuffer) mesh.getBuffer(VertexBuffer.Type.Position).getData();
        FloatBuffer floatBuffer2 = (FloatBuffer) mesh.getBuffer(VertexBuffer.Type.TexCoord).getData();
        List<VertexData> initVertexData = initVertexData(floatBuffer.limit() / 3);
        iArr[0] = indexBuffer.get(0);
        iArr[1] = indexBuffer.get(1);
        BufferUtils.populateFromBuffer(vector3fArr[0], floatBuffer, iArr[0]);
        BufferUtils.populateFromBuffer(vector3fArr[1], floatBuffer, iArr[1]);
        BufferUtils.populateFromBuffer(vector2fArr[0], floatBuffer2, iArr[0]);
        BufferUtils.populateFromBuffer(vector2fArr[1], floatBuffer2, iArr[1]);
        for (int i10 = 2; i10 < floatBuffer.limit() / 3; i10++) {
            int i11 = indexBuffer.get(i10);
            iArr[2] = i11;
            BufferUtils.populateFromBuffer(vector3fArr[2], floatBuffer, i11);
            BufferUtils.populateFromBuffer(vector2fArr[2], floatBuffer2, iArr[2]);
            TriangleData processTriangle = processTriangle(iArr, vector3fArr, vector2fArr);
            initVertexData.get(iArr[0]).triangles.add(processTriangle);
            initVertexData.get(iArr[1]).triangles.add(processTriangle);
            initVertexData.get(iArr[2]).triangles.add(processTriangle);
            Vector3f vector3f = vector3fArr[1];
            vector3fArr[1] = vector3fArr[2];
            vector3fArr[2] = vector3f;
            Vector2f vector2f = vector2fArr[1];
            vector2fArr[1] = vector2fArr[2];
            vector2fArr[2] = vector2f;
            iArr[1] = iArr[2];
        }
        return initVertexData;
    }

    private static List<VertexData> processTriangleStrip(Mesh mesh, int[] iArr, Vector3f[] vector3fArr, Vector2f[] vector2fArr) {
        IndexBuffer indexBuffer = mesh.getIndexBuffer();
        FloatBuffer floatBuffer = (FloatBuffer) mesh.getBuffer(VertexBuffer.Type.Position).getData();
        FloatBuffer floatBuffer2 = (FloatBuffer) mesh.getBuffer(VertexBuffer.Type.TexCoord).getData();
        List<VertexData> initVertexData = initVertexData(floatBuffer.limit() / 3);
        iArr[0] = indexBuffer.get(0);
        iArr[1] = indexBuffer.get(1);
        BufferUtils.populateFromBuffer(vector3fArr[0], floatBuffer, iArr[0]);
        BufferUtils.populateFromBuffer(vector3fArr[1], floatBuffer, iArr[1]);
        BufferUtils.populateFromBuffer(vector2fArr[0], floatBuffer2, iArr[0]);
        BufferUtils.populateFromBuffer(vector2fArr[1], floatBuffer2, iArr[1]);
        for (int i10 = 2; i10 < indexBuffer.size(); i10++) {
            int i11 = indexBuffer.get(i10);
            iArr[2] = i11;
            BufferUtils.populateFromBuffer(vector3fArr[2], floatBuffer, i11);
            BufferUtils.populateFromBuffer(vector2fArr[2], floatBuffer2, iArr[2]);
            boolean isDegenerateTriangle = isDegenerateTriangle(vector3fArr[0], vector3fArr[1], vector3fArr[2]);
            TriangleData processTriangle = processTriangle(iArr, vector3fArr, vector2fArr);
            if (!isDegenerateTriangle) {
                initVertexData.get(iArr[0]).triangles.add(processTriangle);
                initVertexData.get(iArr[1]).triangles.add(processTriangle);
                initVertexData.get(iArr[2]).triangles.add(processTriangle);
            }
            Vector3f vector3f = vector3fArr[0];
            vector3fArr[0] = vector3fArr[1];
            vector3fArr[1] = vector3fArr[2];
            vector3fArr[2] = vector3f;
            Vector2f vector2f = vector2fArr[0];
            vector2fArr[0] = vector2fArr[1];
            vector2fArr[1] = vector2fArr[2];
            vector2fArr[2] = vector2f;
            iArr[0] = iArr[1];
            iArr[1] = iArr[2];
        }
        return initVertexData;
    }

    private static List<VertexData> processTriangles(Mesh mesh, int[] iArr, Vector3f[] vector3fArr, Vector2f[] vector2fArr, boolean z10) {
        IndexBuffer indexBuffer = mesh.getIndexBuffer();
        FloatBuffer floatBuffer = (FloatBuffer) mesh.getBuffer(VertexBuffer.Type.Position).getData();
        VertexBuffer.Type type = VertexBuffer.Type.TexCoord;
        if (mesh.getBuffer(type) == null) {
            throw new IllegalArgumentException("Can only generate tangents for meshes with texture coordinates");
        }
        FloatBuffer floatBuffer2 = (FloatBuffer) mesh.getBuffer(type).getData();
        List<VertexData> initVertexData = initVertexData(floatBuffer.limit() / 3);
        for (int i10 = 0; i10 < indexBuffer.size() / 3; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                int i12 = indexBuffer.get((i10 * 3) + i11);
                iArr[i11] = i12;
                BufferUtils.populateFromBuffer(vector3fArr[i11], floatBuffer, i12);
                BufferUtils.populateFromBuffer(vector2fArr[i11], floatBuffer2, iArr[i11]);
            }
            TriangleData processTriangle = processTriangle(iArr, vector3fArr, vector2fArr);
            if (z10) {
                processTriangle.setIndex(iArr);
                processTriangle.triangleOffset = i10 * 3;
            }
            initVertexData.get(iArr[0]).triangles.add(processTriangle);
            initVertexData.get(iArr[1]).triangles.add(processTriangle);
            initVertexData.get(iArr[2]).triangles.add(processTriangle);
        }
        return initVertexData;
    }

    private static void putValue(VertexBuffer.Format format, Buffer buffer, Buffer buffer2, int i10) {
        switch (AnonymousClass3.$SwitchMap$com$jme3$scene$VertexBuffer$Format[format.ordinal()]) {
            case 1:
            case 2:
            case 3:
                ((ByteBuffer) buffer).put(((ByteBuffer) buffer2).get(i10));
                return;
            case 4:
            case 5:
                ((ShortBuffer) buffer).put(((ShortBuffer) buffer2).get(i10));
                return;
            case 6:
            case 7:
                ((IntBuffer) buffer).put(((IntBuffer) buffer2).get(i10));
                return;
            case 8:
                ((FloatBuffer) buffer).put(((FloatBuffer) buffer2).get(i10));
                return;
            case 9:
                ((DoubleBuffer) buffer).put(((DoubleBuffer) buffer2).get(i10));
                return;
            default:
                throw new UnsupportedOperationException("Unrecognized buffer format: " + ((Object) format));
        }
    }

    public static void setToleranceAngle(float f10) {
        if (f10 < 0.0f || f10 > 179.0f) {
            throw new IllegalArgumentException("The angle must be between 0 and 179 degrees.");
        }
        toleranceDot = FastMath.cos(f10 * 0.017453292f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static List<VertexData> splitVertices(Mesh mesh, List<VertexData> list, boolean z10) {
        VertexBuffer.Type[] typeArr;
        VertexBuffer buffer;
        VertexBuffer.Type[] typeArr2;
        Mesh mesh2 = mesh;
        int numElements = mesh2.getBuffer(VertexBuffer.Type.Position).getNumElements();
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        FloatBuffer floatBuffer = mesh2.getFloatBuffer(VertexBuffer.Type.Normal);
        for (int i10 = 0; i10 < list.size(); i10++) {
            ArrayList<TriangleData> arrayList2 = list.get(i10).triangles;
            Vector3f vector3f = new Vector3f();
            BufferUtils.populateFromBuffer(vector3f, floatBuffer, i10);
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            for (int i11 = 0; i11 < arrayList2.size(); i11++) {
                TriangleData triangleData = arrayList2.get(i11);
                if (parity(vector3f, triangleData.normal) > 0) {
                    arrayList3.add(triangleData);
                } else {
                    arrayList4.add(triangleData);
                }
            }
            if (!arrayList3.isEmpty() && !arrayList4.isEmpty()) {
                log.log(Level.FINE, "Splitting vertex {0}", Integer.valueOf(i10));
                list.get(i10).triangles.clear();
                list.get(i10).triangles.addAll(arrayList3);
                VertexData vertexData = new VertexData();
                vertexData.triangles.addAll(arrayList4);
                arrayList.add(vertexData);
                hashMap.put(Integer.valueOf(numElements), Integer.valueOf(i10));
                Iterator<TriangleData> it = vertexData.triangles.iterator();
                while (it.hasNext()) {
                    TriangleData next = it.next();
                    int i12 = 0;
                    while (true) {
                        int[] iArr = next.index;
                        if (i12 < iArr.length) {
                            if (iArr[i12] == i10) {
                                iArr[i12] = numElements;
                            }
                            i12++;
                        }
                    }
                }
                numElements++;
            }
        }
        if (!arrayList.isEmpty()) {
            VertexBuffer.Type[] values = VertexBuffer.Type.values();
            int length = values.length;
            int i13 = 0;
            while (i13 < length) {
                VertexBuffer.Type type = values[i13];
                if (type == VertexBuffer.Type.Tangent || type == VertexBuffer.Type.BindPoseTangent || (buffer = mesh2.getBuffer(type)) == null || buffer.getNumComponents() == 0) {
                    typeArr = values;
                } else {
                    Buffer data = buffer.getData();
                    if (type == VertexBuffer.Type.Index) {
                        boolean z11 = buffer.getFormat() == VertexBuffer.Format.UnsignedShort;
                        Iterator<E> it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            Iterator<TriangleData> it3 = ((VertexData) it2.next()).triangles.iterator();
                            while (it3.hasNext()) {
                                TriangleData next2 = it3.next();
                                int i14 = 0;
                                while (true) {
                                    int[] iArr2 = next2.index;
                                    if (i14 < iArr2.length) {
                                        if (z11) {
                                            typeArr2 = values;
                                            ((ShortBuffer) data).put(next2.triangleOffset + i14, (short) iArr2[i14]);
                                        } else {
                                            typeArr2 = values;
                                            ((IntBuffer) data).put(next2.triangleOffset + i14, iArr2[i14]);
                                        }
                                        i14++;
                                        values = typeArr2;
                                    }
                                }
                            }
                        }
                        typeArr = values;
                        buffer.setUpdateNeeded();
                    } else {
                        typeArr = values;
                        Buffer createBuffer = VertexBuffer.createBuffer(buffer.getFormat(), buffer.getNumComponents(), numElements);
                        if (data != null) {
                            data.rewind();
                            bulkPut(buffer.getFormat(), createBuffer, data);
                            int size = list.size();
                            createBuffer.position(list.size() * buffer.getNumComponents());
                            for (int i15 = 0; i15 < arrayList.size(); i15++) {
                                int intValue = ((Integer) hashMap.get(Integer.valueOf(size))).intValue();
                                for (int i16 = 0; i16 < buffer.getNumComponents(); i16++) {
                                    putValue(buffer.getFormat(), createBuffer, data, (buffer.getNumComponents() * intValue) + i16);
                                }
                                size++;
                            }
                            buffer.updateData(createBuffer);
                            BufferUtils.destroyDirectBuffer(data);
                        }
                    }
                }
                i13++;
                mesh2 = mesh;
                values = typeArr;
            }
            list.addAll(arrayList);
            mesh.updateCounts();
        }
        return list;
    }

    private static void writeColorBuffer(List<VertexData> list, ColorRGBA[] colorRGBAArr, Mesh mesh) {
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(list.size() * 4);
        createFloatBuffer.rewind();
        for (ColorRGBA colorRGBA : colorRGBAArr) {
            createFloatBuffer.put(colorRGBA.f81598r);
            createFloatBuffer.put(colorRGBA.f81597g);
            createFloatBuffer.put(colorRGBA.f81596b);
            createFloatBuffer.put(colorRGBA.f81595a);
        }
        VertexBuffer.Type type = VertexBuffer.Type.Color;
        mesh.clearBuffer(type);
        mesh.setBuffer(type, 4, createFloatBuffer);
    }

    public static void generate(Spatial spatial, boolean z10) {
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                generate(it.next(), z10);
            }
        } else {
            Geometry geometry = (Geometry) spatial;
            Mesh mesh = geometry.getMesh();
            if (mesh.getBuffer(VertexBuffer.Type.TexCoord) == null || mesh.getBuffer(VertexBuffer.Type.Normal) == null) {
                return;
            }
            generate(geometry.getMesh(), true, z10);
        }
    }

    private static boolean approxEqual(Vector2f vector2f, Vector2f vector2f2) {
        return FastMath.abs(vector2f.f81609x - vector2f2.f81609x) < 1.0E-4f && FastMath.abs(vector2f.f81610y - vector2f2.f81610y) < 1.0E-4f;
    }

    public static void generate(Spatial spatial) {
        generate(spatial, false);
    }

    public static void generate(Mesh mesh, boolean z10, boolean z11) {
        List<VertexData> processTriangles;
        int[] iArr = new int[3];
        Vector3f[] vector3fArr = new Vector3f[3];
        Vector2f[] vector2fArr = new Vector2f[3];
        for (int i10 = 0; i10 < 3; i10++) {
            vector3fArr[i10] = new Vector3f();
            vector2fArr[i10] = new Vector2f();
        }
        if (mesh.getBuffer(VertexBuffer.Type.Normal) != null) {
            int i11 = AnonymousClass3.$SwitchMap$com$jme3$scene$Mesh$Mode[mesh.getMode().ordinal()];
            if (i11 == 1) {
                processTriangles = processTriangles(mesh, iArr, vector3fArr, vector2fArr, z11);
                if (z11) {
                    splitVertices(mesh, processTriangles, z11);
                }
            } else if (i11 == 2) {
                processTriangles = processTriangleStrip(mesh, iArr, vector3fArr, vector2fArr);
            } else if (i11 == 3) {
                processTriangles = processTriangleFan(mesh, iArr, vector3fArr, vector2fArr);
            } else {
                throw new UnsupportedOperationException(((Object) mesh.getMode()) + " is not supported.");
            }
            processTriangleData(mesh, processTriangles, z10, z11);
            TangentUtils.generateBindPoseTangentsIfNecessary(mesh);
            return;
        }
        throw new IllegalArgumentException("The given mesh has no normal data!");
    }

    public static void generate(Mesh mesh, boolean z10) {
        generate(mesh, z10, false);
    }
}
