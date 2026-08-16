package ef;

import com.jme3.material.Material;
import com.jme3.math.Matrix4f;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.mesh.IndexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

public class C13085a {

    public static final Logger f85539a = Logger.getLogger(C13085a.class.getName());

    public static class C1591a {

        public static final int[] f85540a;

        public static final int[] f85541b;

        static {
            int[] iArr = new int[VertexBuffer.Type.values().length];
            f85541b = iArr;
            try {
                iArr[VertexBuffer.Type.Index.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f85541b[VertexBuffer.Type.BoneIndex.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f85541b[VertexBuffer.Type.HWBoneIndex.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f85541b[VertexBuffer.Type.InterleavedData.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[Mesh.Mode.values().length];
            f85540a = iArr2;
            try {
                iArr2[Mesh.Mode.Points.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f85540a[Mesh.Mode.LineLoop.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f85540a[Mesh.Mode.LineStrip.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f85540a[Mesh.Mode.Lines.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f85540a[Mesh.Mode.TriangleFan.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f85540a[Mesh.Mode.TriangleStrip.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f85540a[Mesh.Mode.Triangles.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public enum b {
        RemoveUnalignedBuffers,
        CreateMissingBuffers
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Node node, b bVar) {
        ArrayList<Geometry> arrayList = new ArrayList();
        e(node, arrayList);
        EnumMap enumMap = new EnumMap(VertexBuffer.Type.class);
        EnumMap enumMap2 = new EnumMap(VertexBuffer.Type.class);
        Iterator<E> it = arrayList.iterator();
        while (it.hasNext()) {
            Iterator<VertexBuffer> it2 = ((Geometry) it.next()).getMesh().getBufferList().iterator();
            while (it2.hasNext()) {
                VertexBuffer next = it2.next();
                if (enumMap.get(next.getBufferType()) == null) {
                    enumMap.put((EnumMap) next.getBufferType(), (VertexBuffer.Type) next);
                    Logger logger = f85539a;
                    Level level = Level.FINE;
                    if (logger.isLoggable(level)) {
                        logger.log(level, next.getBufferType().toString());
                    }
                }
                Integer num = (Integer) enumMap2.get(next.getBufferType());
                if (num == null) {
                    num = 0;
                }
                enumMap2.put((EnumMap) next.getBufferType(), (VertexBuffer.Type) Integer.valueOf(num.intValue() + 1));
            }
        }
        int ordinal = bVar.ordinal();
        if (ordinal == 0) {
            for (Geometry geometry : arrayList) {
                Iterator<VertexBuffer> it3 = geometry.getMesh().getBufferList().iterator();
                while (it3.hasNext()) {
                    VertexBuffer next2 = it3.next();
                    Integer num2 = (Integer) enumMap2.get(next2.getBufferType());
                    if (num2 != null && num2.intValue() < arrayList.size()) {
                        geometry.getMesh().clearBuffer(next2.getBufferType());
                        Logger logger2 = f85539a;
                        Level level2 = Level.FINE;
                        if (logger2.isLoggable(level2)) {
                            logger2.log(level2, "removing {0} from {1}", new Object[]{next2.getBufferType(), geometry.getName()});
                        }
                    }
                }
            }
            return;
        }
        if (ordinal != 1) {
            return;
        }
        for (Geometry geometry2 : arrayList) {
            for (VertexBuffer.Type type : enumMap.o()) {
                if (geometry2.getMesh().getBuffer(type) == null) {
                    VertexBuffer vertexBuffer = new VertexBuffer(type);
                    int i10 = C1591a.f85541b[type.ordinal()];
                    vertexBuffer.setupData(((VertexBuffer) enumMap.get(type)).getUsage(), ((VertexBuffer) enumMap.get(type)).getNumComponents(), ((VertexBuffer) enumMap.get(type)).getFormat(), (i10 == 1 || i10 == 2 || i10 == 3) ? BufferUtils.createIntBuffer(geometry2.getMesh().getVertexCount() * ((VertexBuffer) enumMap.get(type)).getNumComponents()) : i10 != 4 ? BufferUtils.createFloatBuffer(geometry2.getMesh().getVertexCount() * ((VertexBuffer) enumMap.get(type)).getNumComponents()) : BufferUtils.createByteBuffer(geometry2.getMesh().getVertexCount() * ((VertexBuffer) enumMap.get(type)).getNumComponents()));
                    geometry2.getMesh().setBuffer(vertexBuffer);
                    Logger logger3 = f85539a;
                    Level level3 = Level.FINE;
                    if (logger3.isLoggable(level3)) {
                        logger3.log(level3, "geom {0} misses buffer {1}. Creating", new Object[]{geometry2.getName(), type});
                    }
                }
            }
        }
    }

    public static void b(FloatBuffer floatBuffer, int i10, FloatBuffer floatBuffer2, Matrix4f matrix4f) {
        Vector3f vector3f = new Vector3f();
        int i11 = i10 * 3;
        for (int i12 = 0; i12 < floatBuffer.limit() / 3; i12++) {
            int i13 = i12 * 3;
            vector3f.f81611x = floatBuffer.get(i13);
            vector3f.f81612y = floatBuffer.get(i13 + 1);
            vector3f.f81613z = floatBuffer.get(i13 + 2);
            matrix4f.multNormal(vector3f, vector3f);
            int i14 = i13 + i11;
            floatBuffer2.put(i14, vector3f.f81611x);
            floatBuffer2.put(i14 + 1, vector3f.f81612y);
            floatBuffer2.put(i14 + 2, vector3f.f81613z);
        }
    }

    public static void c(FloatBuffer floatBuffer, int i10, int i11, FloatBuffer floatBuffer2, Matrix4f matrix4f) {
        Vector3f vector3f = new Vector3f();
        int i12 = i10 * i11;
        for (int i13 = 0; i13 < floatBuffer.limit() / i11; i13++) {
            int i14 = i13 * i11;
            vector3f.f81611x = floatBuffer.get(i14);
            vector3f.f81612y = floatBuffer.get(i14 + 1);
            vector3f.f81613z = floatBuffer.get(i14 + 2);
            matrix4f.multNormal(vector3f, vector3f);
            int i15 = i12 + i14;
            floatBuffer2.put(i15, vector3f.f81611x);
            floatBuffer2.put(i15 + 1, vector3f.f81612y);
            floatBuffer2.put(i15 + 2, vector3f.f81613z);
            if (i11 == 4) {
                floatBuffer2.put(i15 + 3, floatBuffer.get(i14 + 3));
            }
        }
    }

    public static void d(FloatBuffer floatBuffer, int i10, FloatBuffer floatBuffer2, Matrix4f matrix4f) {
        Vector3f vector3f = new Vector3f();
        int i11 = i10 * 3;
        for (int i12 = 0; i12 < floatBuffer.limit() / 3; i12++) {
            int i13 = i12 * 3;
            vector3f.f81611x = floatBuffer.get(i13);
            vector3f.f81612y = floatBuffer.get(i13 + 1);
            vector3f.f81613z = floatBuffer.get(i13 + 2);
            matrix4f.mult(vector3f, vector3f);
            int i14 = i13 + i11;
            floatBuffer2.put(i14, vector3f.f81611x);
            floatBuffer2.put(i14 + 1, vector3f.f81612y);
            floatBuffer2.put(i14 + 2, vector3f.f81613z);
        }
    }

    public static void e(Spatial spatial, List<Geometry> list) {
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                e(it.next(), list);
            }
        } else if (spatial instanceof Geometry) {
            list.add((Geometry) spatial);
        }
    }

    public static void f(String[] strArr) {
        Mesh mesh = new Mesh();
        mesh.setBuffer(VertexBuffer.Type.Position, 3, new float[]{0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f});
        mesh.setBuffer(VertexBuffer.Type.Index, 2, new short[]{0, 1, 1, 2, 2, 3, 3, 0});
        Geometry geometry = new Geometry("g1", mesh);
        ArrayList arrayList = new ArrayList();
        arrayList.add(geometry);
        Mesh mesh2 = new Mesh();
        j(arrayList, mesh2);
        m(mesh2);
    }

    public static List<Geometry> g(Collection<Geometry> collection) {
        return h(collection, false);
    }

    public static List<Geometry> h(Collection<Geometry> collection, boolean z10) {
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (Geometry geometry : collection) {
            List list = (List) hashMap.get(geometry.getMaterial());
            if (list == null) {
                for (Material material : hashMap.o()) {
                    if (geometry.getMaterial().contentEquals(material)) {
                        list = (List) hashMap.get(material);
                    }
                }
            }
            if (list == null) {
                list = new ArrayList();
                hashMap.put(geometry.getMaterial(), list);
            }
            list.add(geometry);
        }
        int i10 = 0;
        for (Map.Entry entry : hashMap.entrySet()) {
            Material material2 = (Material) entry.getKey();
            List list2 = (List) entry.getValue();
            Mesh mesh = new Mesh();
            j(list2, mesh);
            if (z10) {
                i(list2, mesh);
            }
            mesh.updateCounts();
            Geometry geometry2 = new Geometry("batch[" + i10 + "]", mesh);
            geometry2.setMaterial(material2);
            geometry2.updateModelBound();
            arrayList.add(geometry2);
            i10++;
        }
        return arrayList;
    }

    public static void i(Collection<Geometry> collection, Mesh mesh) {
        int i10;
        Iterator<Geometry> it = collection.iterator();
        int i11 = Integer.MAX_VALUE;
        while (it.hasNext()) {
            i11 = Math.min(i11, it.next().getMesh().getNumLodLevels());
        }
        if (i11 == Integer.MAX_VALUE || i11 == 0) {
            return;
        }
        Iterator<Geometry> it2 = collection.iterator();
        int[] iArr = null;
        while (true) {
            i10 = 0;
            if (!it2.hasNext()) {
                break;
            }
            Geometry next = it2.next();
            if (i11 == 0) {
                i11 = next.getMesh().getNumLodLevels();
            }
            if (iArr == null) {
                iArr = new int[i11];
            }
            while (i10 < i11) {
                iArr[i10] = iArr[i10] + next.getMesh().getLodLevel(i10).getData().limit();
                i10++;
            }
        }
        int[][] iArr2 = new int[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            iArr2[i12] = new int[iArr[i12]];
        }
        VertexBuffer[] vertexBufferArr = new VertexBuffer[i11];
        int[] iArr3 = new int[i11];
        int[] iArr4 = new int[i11];
        for (Geometry geometry : collection) {
            int vertexCount = geometry.getVertexCount();
            for (int i13 = 0; i13 < i11; i13++) {
                if (geometry.getMesh().getLodLevel(i13).getFormat() == VertexBuffer.Format.UnsignedShort) {
                    ShortBuffer shortBuffer = (ShortBuffer) geometry.getMesh().getLodLevel(i13).getDataReadOnly();
                    for (int i14 = 0; i14 < shortBuffer.limit(); i14++) {
                        iArr2[i13][iArr3[i13]] = (shortBuffer.get() & 65535) + iArr4[i13];
                        iArr3[i13] = iArr3[i13] + 1;
                    }
                } else {
                    IntBuffer intBuffer = (IntBuffer) geometry.getMesh().getLodLevel(i13).getDataReadOnly();
                    for (int i15 = 0; i15 < intBuffer.limit(); i15++) {
                        iArr2[i13][iArr3[i13]] = intBuffer.get() + iArr4[i13];
                        iArr3[i13] = iArr3[i13] + 1;
                    }
                }
                iArr4[i13] = iArr4[i13] + vertexCount;
            }
        }
        while (i10 < i11) {
            VertexBuffer vertexBuffer = new VertexBuffer(VertexBuffer.Type.Index);
            vertexBufferArr[i10] = vertexBuffer;
            vertexBuffer.setupData(VertexBuffer.Usage.Dynamic, 1, VertexBuffer.Format.UnsignedInt, BufferUtils.createIntBuffer(iArr2[i10]));
            i10++;
        }
        mesh.setLodLevels(vertexBufferArr);
    }

    public static void j(Collection<Geometry> collection, Mesh mesh) {
        int i10;
        Mesh.Mode mode;
        int i11;
        Mesh mesh2 = mesh;
        int length = VertexBuffer.Type.values().length;
        int[] iArr = new int[length];
        VertexBuffer.Format[] formatArr = new VertexBuffer.Format[length];
        boolean[] zArr = new boolean[VertexBuffer.Type.values().length];
        Iterator<Geometry> it = collection.iterator();
        int i12 = -1;
        Mesh.Mode mode2 = null;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (it.hasNext()) {
            Geometry next = it.next();
            int vertexCount = i13 + next.getVertexCount();
            int triangleCount = i14 + next.getTriangleCount();
            i15 = Math.min(i15, next.getMesh().getNumLodLevels());
            switch (C1591a.f85540a[next.getMesh().getMode().ordinal()]) {
                case 1:
                    mode = Mesh.Mode.Points;
                    i11 = 0;
                    break;
                case 2:
                case 3:
                case 4:
                    mode = Mesh.Mode.Lines;
                    i11 = 2;
                    break;
                case 5:
                case 6:
                case 7:
                    mode = Mesh.Mode.Triangles;
                    i11 = 3;
                    break;
                default:
                    throw new UnsupportedOperationException();
            }
            VertexBuffer[] array = next.getMesh().getBufferList().getArray();
            int length2 = array.length;
            Iterator<Geometry> it2 = it;
            int i16 = 0;
            while (i16 < length2) {
                VertexBuffer vertexBuffer = array[i16];
                int i17 = length2;
                int i18 = iArr[vertexBuffer.getBufferType().ordinal()];
                int i19 = vertexCount;
                int i20 = triangleCount;
                if (vertexBuffer.getBufferType() != VertexBuffer.Type.Index && i18 != 0 && i18 != vertexBuffer.getNumComponents()) {
                    throw new UnsupportedOperationException("The geometry " + ((Object) next) + " buffer " + ((Object) vertexBuffer.getBufferType()) + " has different number of components than the rest of the meshes (this: " + vertexBuffer.getNumComponents() + ", expected: " + i18 + ")");
                }
                iArr[vertexBuffer.getBufferType().ordinal()] = vertexBuffer.getNumComponents();
                formatArr[vertexBuffer.getBufferType().ordinal()] = vertexBuffer.getFormat();
                zArr[vertexBuffer.getBufferType().ordinal()] = vertexBuffer.isNormalized();
                i16++;
                vertexCount = i19;
                length2 = i17;
                triangleCount = i20;
            }
            int i21 = vertexCount;
            int i22 = triangleCount;
            i12 = Math.max(i12, next.getMesh().getMaxNumWeights());
            if (mode2 != null && mode2 != mode) {
                throw new UnsupportedOperationException("Cannot combine different primitive types: " + ((Object) mode2) + " != " + ((Object) mode));
            }
            iArr[VertexBuffer.Type.Index.ordinal()] = i11;
            mode2 = mode;
            it = it2;
            i13 = i21;
            i14 = i22;
        }
        mesh2.setMaxNumWeights(i12);
        mesh2.setMode(mode2);
        if (i13 >= 65536) {
            formatArr[VertexBuffer.Type.Index.ordinal()] = VertexBuffer.Format.UnsignedInt;
        } else {
            formatArr[VertexBuffer.Type.Index.ordinal()] = VertexBuffer.Format.UnsignedShort;
        }
        int i23 = 0;
        while (i23 < length) {
            if (iArr[i23] != 0) {
                Buffer createBuffer = i23 == VertexBuffer.Type.Index.ordinal() ? VertexBuffer.createBuffer(formatArr[i23], iArr[i23], i14) : VertexBuffer.createBuffer(formatArr[i23], iArr[i23], i13);
                VertexBuffer vertexBuffer2 = new VertexBuffer(VertexBuffer.Type.values()[i23]);
                vertexBuffer2.setupData(VertexBuffer.Usage.Static, iArr[i23], formatArr[i23], createBuffer);
                vertexBuffer2.setNormalized(zArr[i23]);
                mesh2.setBuffer(vertexBuffer2);
            }
            i23++;
        }
        int i24 = 0;
        int i25 = 0;
        for (Geometry geometry : collection) {
            Mesh mesh3 = geometry.getMesh();
            geometry.computeWorldMatrix();
            Matrix4f worldMatrix = geometry.getWorldMatrix();
            int vertexCount2 = mesh3.getVertexCount();
            int triangleCount2 = mesh3.getTriangleCount();
            int i26 = 0;
            while (i26 < length) {
                VertexBuffer buffer = mesh3.getBuffer(VertexBuffer.Type.values()[i26]);
                VertexBuffer buffer2 = mesh2.getBuffer(VertexBuffer.Type.values()[i26]);
                if (buffer != null && buffer2 != null) {
                    if (VertexBuffer.Type.Index.ordinal() == i26) {
                        int i27 = iArr[i26];
                        IndexBuffer indicesAsList = mesh3.getIndicesAsList();
                        IndexBuffer indexBuffer = mesh.getIndexBuffer();
                        for (int i28 = 0; i28 < triangleCount2; i28++) {
                            int i29 = 0;
                            while (i29 < i27) {
                                indexBuffer.put(((i25 + i28) * i27) + i29, indicesAsList.get((i28 * i27) + i29) + i24);
                                i29++;
                                length = length;
                            }
                        }
                    } else {
                        i10 = length;
                        if (VertexBuffer.Type.Position.ordinal() == i26) {
                            d((FloatBuffer) buffer.getDataReadOnly(), i24, (FloatBuffer) buffer2.getData(), worldMatrix);
                        } else if (VertexBuffer.Type.Normal.ordinal() == i26) {
                            b((FloatBuffer) buffer.getDataReadOnly(), i24, (FloatBuffer) buffer2.getData(), worldMatrix);
                        } else if (VertexBuffer.Type.Tangent.ordinal() == i26) {
                            c((FloatBuffer) buffer.getDataReadOnly(), i24, buffer.getNumComponents(), (FloatBuffer) buffer2.getData(), worldMatrix);
                        } else {
                            buffer.copyElements(0, buffer2, i24, vertexCount2);
                            i26++;
                            mesh2 = mesh;
                            length = i10;
                        }
                        i26++;
                        mesh2 = mesh;
                        length = i10;
                    }
                }
                i10 = length;
                i26++;
                mesh2 = mesh;
                length = i10;
            }
            i24 += vertexCount2;
            i25 += triangleCount2;
            mesh2 = mesh;
        }
    }

    public static Node k(Node node, boolean z10) {
        ArrayList arrayList = new ArrayList();
        e(node, arrayList);
        Iterator<Geometry> it = h(arrayList, z10).iterator();
        while (it.hasNext()) {
            node.attachChild(it.next());
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((Geometry) it2.next()).removeFromParent();
        }
        node.setLocalTransform(Transform.IDENTITY);
        return node;
    }

    public static Spatial l(Node node) {
        return k(node, false);
    }

    public static void m(Mesh mesh) {
        for (int i10 = 0; i10 < VertexBuffer.Type.values().length; i10++) {
            VertexBuffer buffer = mesh.getBuffer(VertexBuffer.Type.values()[i10]);
            if (buffer != null) {
                System.out.println(((Object) buffer.getBufferType()) + ": ");
                for (int i11 = 0; i11 < buffer.getNumElements(); i11++) {
                    String str = "[";
                    for (int i12 = 0; i12 < buffer.getNumComponents(); i12++) {
                        buffer.setElementComponent(i11, i12, buffer.getElementComponent(i11, i12));
                        str = str + buffer.getElementComponent(i11, i12);
                        if (i12 != buffer.getNumComponents() - 1) {
                            str = str + ", ";
                        }
                    }
                    System.out.println(str + "]");
                }
                System.out.println("------");
            }
        }
    }
}
