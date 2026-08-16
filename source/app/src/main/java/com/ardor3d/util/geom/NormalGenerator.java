package com.ardor3d.util.geom;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.Vector2;
import com.ardor3d.math.Vector3;
import com.ardor3d.renderer.IndexMode;
import com.ardor3d.scenegraph.IndexBufferData;
import com.ardor3d.scenegraph.IntBufferData;
import com.ardor3d.scenegraph.Mesh;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.logging.Logger;

public class NormalGenerator {
    private static final Logger logger = Logger.getLogger(NormalGenerator.class.getName());
    private boolean[] _borderIndices;
    private final Vector3 _compVect0 = new Vector3();
    private final Vector3 _compVect1 = new Vector3();
    private float _creaseAngle;
    private List<ColorRGBA> _destColors;
    private List<Vector2> _destTexCoords;
    private LinkedList<Triangle> _destTris;
    private List<Vector3> _destVerts;
    private LinkedList<Edge> _edges;
    private ColorRGBA[] _sourceColors;
    private int[] _sourceInds;
    private Vector2[] _sourceTexCoords;
    private Vector3[] _sourceVerts;
    private ColorRGBA[] _splitColors;
    private int[] _splitIndices;
    private LinkedList<LinkedList<Edge>> _splitMeshBorders;
    private LinkedList<LinkedList<Triangle>> _splitMeshes;
    private Vector3[] _splitNormals;
    private Vector2[] _splitTexCoords;
    private Vector3[] _splitVerts;
    private LinkedList<Triangle> _triangles;

    private boolean checkAngle(Triangle triangle, Triangle triangle2) {
        return triangle.normal.smallestAngleBetween(triangle2.normal) <= ((double) this._creaseAngle) + 1.0E-4d;
    }

    private void cleanup() {
        this._creaseAngle = 0.0f;
        Arrays.fill(this._sourceVerts, (Object) null);
        this._sourceVerts = null;
        ColorRGBA[] colorRGBAArr = this._sourceColors;
        if (colorRGBAArr != null) {
            Arrays.fill(colorRGBAArr, (Object) null);
            this._sourceColors = null;
        }
        Vector2[] vector2Arr = this._sourceTexCoords;
        if (vector2Arr != null) {
            Arrays.fill(vector2Arr, (Object) null);
            this._sourceTexCoords = null;
        }
        this._sourceInds = null;
        LinkedList<Triangle> linkedList = this._triangles;
        if (linkedList != null) {
            linkedList.clear();
            this._triangles = null;
        }
        List<Vector3> list = this._destVerts;
        if (list != null) {
            list.clear();
            this._destVerts = null;
        }
        List<ColorRGBA> list2 = this._destColors;
        if (list2 != null) {
            list2.clear();
            this._destColors = null;
        }
        List<Vector2> list3 = this._destTexCoords;
        if (list3 != null) {
            list3.clear();
            this._destTexCoords = null;
        }
        LinkedList<Triangle> linkedList2 = this._destTris;
        if (linkedList2 != null) {
            linkedList2.clear();
            this._destTris = null;
        }
        LinkedList<Edge> linkedList3 = this._edges;
        if (linkedList3 != null) {
            linkedList3.clear();
            this._edges = null;
        }
        LinkedList<LinkedList<Triangle>> linkedList4 = this._splitMeshes;
        if (linkedList4 != null) {
            Iterator<LinkedList<Triangle>> it = linkedList4.iterator();
            while (it.hasNext()) {
                it.next().clear();
            }
            this._splitMeshes.clear();
            this._splitMeshes = null;
        }
        LinkedList<LinkedList<Edge>> linkedList5 = this._splitMeshBorders;
        if (linkedList5 != null) {
            Iterator<LinkedList<Edge>> it2 = linkedList5.iterator();
            while (it2.hasNext()) {
                it2.next().clear();
            }
            this._splitMeshBorders.clear();
            this._splitMeshBorders = null;
        }
        this._splitVerts = null;
        this._splitNormals = null;
        this._splitColors = null;
        this._splitTexCoords = null;
        this._splitIndices = null;
        this._borderIndices = null;
    }

    private void computeNormalsAndIndices() {
        int i10;
        Iterator<LinkedList<Triangle>> it = this._splitMeshes.iterator();
        int i11 = 0;
        int i12 = 0;
        while (it.hasNext()) {
            Iterator<Triangle> it2 = it.next().iterator();
            while (it2.hasNext()) {
                Triangle next = it2.next();
                for (int i13 = 0; i13 < 3; i13++) {
                    Edge edge = next.edges[i13];
                    int i14 = edge.newI0;
                    if (i14 > -1) {
                        this._splitNormals[i14].addLocal(next.normal);
                        i10 = i12 + 1;
                        this._splitIndices[i12] = next.edges[i13].newI0;
                    } else {
                        this._splitNormals[edge.f58744i0].addLocal(next.normal);
                        i10 = i12 + 1;
                        this._splitIndices[i12] = next.edges[i13].f58744i0;
                    }
                    i12 = i10;
                }
            }
        }
        while (true) {
            Vector3[] vector3Arr = this._splitNormals;
            if (i11 >= vector3Arr.length) {
                return;
            }
            if (vector3Arr[i11].distanceSquared(Vector3.ZERO) > 1.0E-4d) {
                this._splitNormals[i11].normalizeLocal();
            }
            i11++;
        }
    }

    private void connectEdge(Triangle triangle, int i10) {
        Edge edge = triangle.edges[i10];
        ListIterator<Edge> listIterator = this._edges.listIterator();
        boolean z10 = false;
        while (!z10 && listIterator.hasNext()) {
            Edge next = listIterator.next();
            if (next.isConnectedTo(edge)) {
                listIterator.remove();
                this._edges.remove(edge);
                if (checkAngle(triangle, next.parent)) {
                    int i11 = next.newI0;
                    if (i11 > -1) {
                        edge.newI1 = i11;
                        triangle.edges[(i10 + 1) % 3].newI0 = i11;
                    }
                    int i12 = next.newI1;
                    if (i12 > -1) {
                        edge.newI0 = i12;
                        triangle.edges[(i10 + 2) % 3].newI1 = i12;
                    }
                } else {
                    duplicateValues(edge.f58744i0);
                    int size = this._destVerts.size() - 1;
                    edge.newI0 = size;
                    triangle.edges[(i10 + 2) % 3].newI1 = size;
                    duplicateValues(edge.f58745i1);
                    int size2 = this._destVerts.size() - 1;
                    edge.newI1 = size2;
                    triangle.edges[(i10 + 1) % 3].newI0 = size2;
                }
                z10 = true;
            }
        }
    }

    private void createMeshSplit() {
        this._destTris = new LinkedList<>();
        this._edges = new LinkedList<>();
        Triangle removeFirst = this._triangles.removeFirst();
        this._destTris.addLast(removeFirst);
        this._edges.addLast(removeFirst.edges[0]);
        this._edges.addLast(removeFirst.edges[1]);
        this._edges.addLast(removeFirst.edges[2]);
        do {
        } while (insertTriangle() != null);
        this._splitMeshes.addLast(this._destTris);
        this._splitMeshBorders.addLast(this._edges);
    }

    private void duplicateCreaseVertices() {
        if (this._splitMeshBorders.size() < 2) {
            return;
        }
        int[] iArr = new int[this._sourceVerts.length];
        ListIterator<LinkedList<Edge>> listIterator = this._splitMeshBorders.listIterator();
        listIterator.next();
        ListIterator<LinkedList<Triangle>> listIterator2 = this._splitMeshes.listIterator();
        listIterator2.next();
        while (listIterator.hasNext()) {
            Arrays.fill(iArr, -1);
            LinkedList<Edge> next = listIterator.next();
            LinkedList<Triangle> next2 = listIterator2.next();
            ListIterator<Edge> listIterator3 = next.listIterator();
            while (listIterator3.hasNext()) {
                Edge next3 = listIterator3.next();
                if (next3.newI0 == -1) {
                    boolean[] zArr = this._borderIndices;
                    int i10 = next3.f58744i0;
                    if (!zArr[i10]) {
                        iArr[i10] = i10;
                    } else if (iArr[i10] == -1) {
                        duplicateValues(i10);
                        iArr[next3.f58744i0] = this._destVerts.size() - 1;
                    }
                }
                if (next3.newI1 == -1) {
                    boolean[] zArr2 = this._borderIndices;
                    int i11 = next3.f58745i1;
                    if (!zArr2[i11]) {
                        iArr[i11] = i11;
                    } else if (iArr[i11] == -1) {
                        duplicateValues(i11);
                        iArr[next3.f58745i1] = this._destVerts.size() - 1;
                    }
                }
            }
            int i12 = 0;
            while (true) {
                boolean[] zArr3 = this._borderIndices;
                if (i12 < zArr3.length) {
                    if (zArr3[i12]) {
                        Iterator<Triangle> it = next2.iterator();
                        while (it.hasNext()) {
                            replaceIndex(it.next(), i12, iArr[i12]);
                        }
                    } else if (iArr[i12] > -1) {
                        zArr3[i12] = true;
                    }
                    i12++;
                }
            }
        }
    }

    private void duplicateValues(int i10) {
        List<Vector3> list = this._destVerts;
        list.add(list.get(i10));
        List<ColorRGBA> list2 = this._destColors;
        if (list2 != null) {
            list2.add(list2.get(i10));
        }
        List<Vector2> list3 = this._destTexCoords;
        if (list3 != null) {
            list3.add(list3.get(i10));
        }
    }

    private void fillBorderIndices() {
        Arrays.fill(this._borderIndices, false);
        Iterator<Edge> it = this._splitMeshBorders.getFirst().iterator();
        while (it.hasNext()) {
            Edge next = it.next();
            boolean[] zArr = this._borderIndices;
            zArr[next.f58744i0] = true;
            zArr[next.f58745i1] = true;
        }
    }

    private void initialize() {
        this._destVerts = new ArrayList(this._sourceVerts.length);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            Vector3[] vector3Arr = this._sourceVerts;
            if (i11 >= vector3Arr.length) {
                break;
            }
            this._destVerts.add(vector3Arr[i11]);
            i11++;
        }
        if (this._sourceColors != null) {
            this._destColors = new ArrayList(this._sourceColors.length);
            int i12 = 0;
            while (true) {
                ColorRGBA[] colorRGBAArr = this._sourceColors;
                if (i12 >= colorRGBAArr.length) {
                    break;
                }
                this._destColors.add(colorRGBAArr[i12]);
                i12++;
            }
        } else {
            this._destColors = null;
        }
        if (this._sourceTexCoords != null) {
            this._destTexCoords = new ArrayList(this._sourceTexCoords.length);
            int i13 = 0;
            while (true) {
                Vector2[] vector2Arr = this._sourceTexCoords;
                if (i13 >= vector2Arr.length) {
                    break;
                }
                this._destTexCoords.add(vector2Arr[i13]);
                i13++;
            }
        } else {
            this._destTexCoords = null;
        }
        this._triangles = new LinkedList<>();
        while (true) {
            int i14 = i10 * 3;
            int[] iArr = this._sourceInds;
            if (i14 >= iArr.length) {
                break;
            }
            Triangle triangle = new Triangle(iArr[i14], iArr[i14 + 1], iArr[i14 + 2]);
            triangle.computeNormal(this._sourceVerts);
            this._triangles.add(triangle);
            i10++;
        }
        LinkedList<LinkedList<Triangle>> linkedList = this._splitMeshes;
        if (linkedList == null) {
            this._splitMeshes = new LinkedList<>();
        } else {
            linkedList.clear();
        }
        LinkedList<LinkedList<Edge>> linkedList2 = this._splitMeshBorders;
        if (linkedList2 == null) {
            this._splitMeshBorders = new LinkedList<>();
        } else {
            linkedList2.clear();
        }
    }

    private Triangle insertTriangle() {
        ListIterator<Triangle> listIterator = this._triangles.listIterator();
        Triangle triangle = null;
        ListIterator<Edge> listIterator2 = null;
        Edge edge = null;
        int i10 = -1;
        while (triangle == null && listIterator.hasNext()) {
            Triangle next = listIterator.next();
            ListIterator<Edge> listIterator3 = this._edges.listIterator();
            while (triangle == null && listIterator3.hasNext()) {
                edge = listIterator3.next();
                int i11 = 0;
                while (true) {
                    Edge[] edgeArr = next.edges;
                    if (i11 < edgeArr.length && triangle == null) {
                        if (edge.isConnectedTo(edgeArr[i11]) && checkAngle(next, edge.parent)) {
                            triangle = next;
                            i10 = i11;
                        }
                        i11++;
                    }
                }
            }
            listIterator2 = listIterator3;
        }
        if (triangle != null) {
            listIterator.remove();
            this._destTris.addLast(triangle);
            edge.connected = triangle;
            Edge edge2 = triangle.edges[i10];
            edge2.connected = edge.parent;
            listIterator2.remove();
            int i12 = i10 + 1;
            int i13 = i12 % 3;
            listIterator2.add(triangle.edges[i13]);
            int i14 = (i10 + 2) % 3;
            listIterator2.add(triangle.edges[i14]);
            int i15 = edge.newI0;
            if (i15 > -1) {
                edge2.newI1 = i15;
                triangle.edges[i13].newI0 = i15;
            }
            int i16 = edge.newI1;
            if (i16 > -1) {
                edge2.newI0 = i16;
                triangle.edges[i14].newI1 = i16;
            }
            while (i12 < i10 + 3) {
                connectEdge(triangle, i12 % 3);
                i12++;
            }
        }
        return triangle;
    }

    private void replaceIndex(Triangle triangle, int i10, int i11) {
        for (int i12 = 0; i12 < 3; i12++) {
            Edge edge = triangle.edges[i12];
            if (edge.newI0 == -1 && edge.f58744i0 == i10) {
                edge.newI0 = i11;
            }
            if (edge.newI1 == -1 && edge.f58745i1 == i10) {
                edge.newI1 = i11;
            }
        }
    }

    public void generateNormals(Mesh mesh, float f10) {
        if (mesh != null) {
            this._creaseAngle = f10;
            generateNormals(mesh);
            cleanup();
        }
    }

    public class Edge {
        public Triangle connected;

        public int f58744i0;

        public int f58745i1;
        public int newI0 = -1;
        public int newI1 = -1;
        public Triangle parent;

        public Edge() {
        }

        public boolean isConnectedTo(Edge edge) {
            return this.f58744i0 == edge.f58745i1 && this.f58745i1 == edge.f58744i0;
        }

        public String toString() {
            String str;
            String str2;
            if (this.newI0 > -1) {
                str = "Edge (" + this.newI0;
            } else {
                str = "Edge (" + this.f58744i0;
            }
            String str3 = str + ", ";
            if (this.newI1 > -1) {
                str2 = str3 + this.newI1;
            } else {
                str2 = str3 + this.f58745i1;
            }
            return str2 + ")";
        }

        public Edge(Triangle triangle, int i10, int i11) {
            this.parent = triangle;
            this.f58744i0 = i10;
            this.f58745i1 = i11;
        }
    }

    public class Triangle {
        public Edge[] edges;
        public Vector3 normal;

        public Triangle() {
            this.edges = new Edge[3];
            this.normal = new Vector3(0.0d, 0.0d, 0.0d);
        }

        public void computeNormal(Vector3[] vector3Arr) {
            Edge[] edgeArr = this.edges;
            int i10 = edgeArr[0].f58744i0;
            int i11 = edgeArr[1].f58744i0;
            vector3Arr[edgeArr[2].f58744i0].subtract(vector3Arr[i11], NormalGenerator.this._compVect0);
            vector3Arr[i10].subtract(vector3Arr[i11], NormalGenerator.this._compVect1);
            this.normal.set(NormalGenerator.this._compVect0.crossLocal(NormalGenerator.this._compVect1)).normalizeLocal();
        }

        public int indexOf(Edge edge) {
            for (int i10 = 0; i10 < 3; i10++) {
                if (this.edges[i10] == edge) {
                    return i10;
                }
            }
            return -1;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("Triangle (");
            for (int i10 = 0; i10 < 3; i10++) {
                Edge edge = this.edges[i10];
                if (edge == null) {
                    sb2.append("?");
                } else {
                    int i11 = edge.newI0;
                    if (i11 > -1) {
                        sb2.append(i11);
                    } else {
                        sb2.append(edge.f58744i0);
                    }
                }
                if (i10 < 2) {
                    sb2.append(", ");
                }
            }
            sb2.append(")");
            return sb2.toString();
        }

        public Triangle(int i10, int i11, int i12) {
            this.edges = new Edge[3];
            this.normal = new Vector3(0.0d, 0.0d, 0.0d);
            this.edges[0] = new Edge(this, i10, i11);
            this.edges[1] = new Edge(this, i11, i12);
            this.edges[2] = new Edge(this, i12, i10);
        }
    }

    /* JADX WARN: Type inference failed for: r6v2, types: [java.nio.Buffer] */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.nio.Buffer] */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.nio.Buffer] */
    private void generateNormals(Mesh mesh) {
        FloatBuffer floatBuffer;
        if (mesh.getMeshData().getIndexMode(0) != IndexMode.Triangles) {
            logger.info("Invalid triangles mode in " + ((Object) mesh));
            return;
        }
        this._sourceInds = BufferUtils.getIntArray(mesh.getMeshData().getIndices());
        this._sourceVerts = BufferUtils.getVector3Array(mesh.getMeshData().getVertexBuffer());
        FloatBuffer floatBuffer2 = null;
        if (mesh.getMeshData().getColorBuffer() != null) {
            this._sourceColors = BufferUtils.getColorArray(mesh.getMeshData().getColorBuffer());
        } else {
            this._sourceColors = null;
        }
        if (mesh.getMeshData().getTextureCoords(0) != null) {
            this._sourceTexCoords = BufferUtils.getVector2Array(mesh.getMeshData().getTextureCoords(0).getBuffer());
        } else {
            this._sourceTexCoords = null;
        }
        initialize();
        while (!this._triangles.isEmpty()) {
            createMeshSplit();
        }
        if (!this._splitMeshes.isEmpty()) {
            this._borderIndices = new boolean[this._sourceVerts.length];
            fillBorderIndices();
            duplicateCreaseVertices();
        }
        List<Vector3> list = this._destVerts;
        this._splitVerts = (Vector3[]) list.toArray(new Vector3[list.size()]);
        List<ColorRGBA> list2 = this._destColors;
        if (list2 != null) {
            this._splitColors = (ColorRGBA[]) list2.toArray(new ColorRGBA[list2.size()]);
        } else {
            this._splitColors = null;
        }
        List<Vector2> list3 = this._destTexCoords;
        if (list3 != null) {
            this._splitTexCoords = (Vector2[]) list3.toArray(new Vector2[list3.size()]);
        } else {
            this._splitTexCoords = null;
        }
        this._splitNormals = new Vector3[this._destVerts.size()];
        int i10 = 0;
        while (true) {
            Vector3[] vector3Arr = this._splitNormals;
            if (i10 >= vector3Arr.length) {
                break;
            }
            vector3Arr[i10] = new Vector3();
            i10++;
        }
        Iterator<LinkedList<Triangle>> it = this._splitMeshes.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            i11 += it.next().size();
        }
        this._splitIndices = new int[i11 * 3];
        computeNormalsAndIndices();
        FloatBuffer vertexBuffer = mesh.getMeshData().getVertexBuffer();
        int capacity = vertexBuffer.capacity();
        Vector3[] vector3Arr2 = this._splitVerts;
        if (capacity < vector3Arr2.length * 3) {
            vertexBuffer = BufferUtils.createFloatBuffer(vector3Arr2);
        } else {
            vertexBuffer.clear();
            for (Vector3 vector3 : this._splitVerts) {
                vertexBuffer.put((float) vector3.getX()).put((float) vector3.getY()).put((float) vector3.getZ());
            }
            vertexBuffer.flip();
        }
        FloatBuffer normalBuffer = mesh.getMeshData().getNormalBuffer();
        if (normalBuffer != null && normalBuffer.capacity() >= this._splitNormals.length * 3) {
            normalBuffer.clear();
            for (Vector3 vector32 : this._splitNormals) {
                normalBuffer.put((float) vector32.getX()).put((float) vector32.getY()).put((float) vector32.getZ());
            }
            normalBuffer.flip();
        } else {
            normalBuffer = BufferUtils.createFloatBuffer(this._splitNormals);
        }
        if (this._splitColors != null) {
            floatBuffer = mesh.getMeshData().getColorBuffer();
            int capacity2 = floatBuffer.capacity();
            ColorRGBA[] colorRGBAArr = this._splitColors;
            if (capacity2 < colorRGBAArr.length * 4) {
                floatBuffer = BufferUtils.createFloatBuffer(colorRGBAArr);
            } else {
                floatBuffer.clear();
                for (ColorRGBA colorRGBA : this._splitColors) {
                    floatBuffer.put(colorRGBA.getRed()).put(colorRGBA.getGreen()).put(colorRGBA.getBlue()).put(colorRGBA.getAlpha());
                }
                floatBuffer.flip();
            }
        } else {
            floatBuffer = null;
        }
        if (this._splitTexCoords != null) {
            floatBuffer2 = mesh.getMeshData().getTextureCoords(0).getBuffer();
            int capacity3 = floatBuffer2.capacity();
            Vector2[] vector2Arr = this._splitTexCoords;
            if (capacity3 < vector2Arr.length * 2) {
                floatBuffer2 = BufferUtils.createFloatBuffer(vector2Arr);
            } else {
                floatBuffer2.clear();
                for (Vector2 vector2 : this._splitTexCoords) {
                    floatBuffer2.put((float) vector2.getX()).put((float) vector2.getY());
                }
                floatBuffer2.flip();
            }
        }
        IndexBufferData<?> indices = mesh.getMeshData().getIndices();
        if (indices.getBuffer().capacity() < this._splitIndices.length) {
            indices = new IntBufferData(BufferUtils.createIntBuffer(this._splitIndices));
        } else {
            indices.getBuffer().clear();
            for (int i12 : this._splitIndices) {
                indices.put2(i12);
            }
            indices.getBuffer().flip();
        }
        mesh.getMeshData().setVertexBuffer(vertexBuffer);
        mesh.getMeshData().setNormalBuffer(normalBuffer);
        mesh.getMeshData().setColorBuffer(floatBuffer);
        mesh.getMeshData().getTextureCoords().clear();
        mesh.getMeshData().setTextureBuffer(floatBuffer2, 0);
        mesh.getMeshData().setIndices(indices);
    }
}
