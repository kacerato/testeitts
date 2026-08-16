package com.jme3.scene.plugins;

import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetKey;
import com.jme3.asset.AssetLoader;
import com.jme3.asset.AssetManager;
import com.jme3.asset.AssetNotFoundException;
import com.jme3.asset.ModelKey;
import com.jme3.material.Material;
import com.jme3.material.MaterialList;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.mesh.IndexBuffer;
import com.jme3.scene.mesh.IndexIntBuffer;
import com.jme3.scene.mesh.IndexShortBuffer;
import com.jme3.util.BufferUtils;
import com.jme3.util.IntMap;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import yd.C16179k;
import yd.C16181m;

public final class OBJLoader implements AssetLoader {
    static final boolean $assertionsDisabled = false;
    private static final Logger logger = Logger.getLogger(OBJLoader.class.getName());
    protected AssetManager assetManager;
    protected String currentMatName;
    protected String currentObjectName;
    protected ModelKey key;
    protected MaterialList matList;
    protected String objName;
    protected Node objNode;
    protected Scanner scan;
    protected final ArrayList<Vector3f> verts = new ArrayList<>();
    protected final ArrayList<Vector2f> texCoords = new ArrayList<>();
    protected final ArrayList<Vector3f> norms = new ArrayList<>();
    private final ArrayList<Group> groups = new ArrayList<>();
    protected final HashMap<Vertex, Integer> vertIndexMap = new HashMap<>(100);
    protected final IntMap<Vertex> indexVertMap = new IntMap<>(100);
    protected int curIndex = 0;
    protected int objectIndex = 0;
    protected int geomIndex = 0;
    private final ArrayList<Vertex> vertList = new ArrayList<>();

    public static class Face {
        Vertex[] verticies;
    }

    public static class Group {
        private final ArrayList<Face> faces = new ArrayList<>();
        private final HashMap<String, ArrayList<Face>> matFaces = new HashMap<>();
        private final String name;

        public Group(String str) {
            this.name = str;
        }
    }

    public class ObjectGroup {
        final String objectName;

        public ObjectGroup(String str) {
            this.objectName = str;
        }

        public Spatial createGeometry() {
            Node node = new Node(this.objectName);
            if (this.objectName == null) {
                node.setName("Model");
            }
            return node;
        }
    }

    public static class Vertex {
        int index;

        Vector3f f81630v;

        Vector3f f81631vn;
        Vector2f vt;

        public boolean equals(Object obj) {
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Vertex vertex = (Vertex) obj;
            Vector3f vector3f = this.f81630v;
            Vector3f vector3f2 = vertex.f81630v;
            if (vector3f != vector3f2 && (vector3f == null || !vector3f.equals(vector3f2))) {
                return false;
            }
            Vector2f vector2f = this.vt;
            Vector2f vector2f2 = vertex.vt;
            if (vector2f != vector2f2 && (vector2f == null || !vector2f.equals(vector2f2))) {
                return false;
            }
            Vector3f vector3f3 = this.f81631vn;
            Vector3f vector3f4 = vertex.f81631vn;
            if (vector3f3 != vector3f4) {
                return vector3f3 != null && vector3f3.equals(vector3f4);
            }
            return true;
        }

        public int hashCode() {
            Vector3f vector3f = this.f81630v;
            int hashCode = (265 + (vector3f != null ? vector3f.hashCode() : 0)) * 53;
            Vector2f vector2f = this.vt;
            int hashCode2 = (hashCode + (vector2f != null ? vector2f.hashCode() : 0)) * 53;
            Vector3f vector3f2 = this.f81631vn;
            return hashCode2 + (vector3f2 != null ? vector3f2.hashCode() : 0);
        }
    }

    private void materializeGroup(Group group, Node node) throws IOException {
        if (group.matFaces.size() <= 0) {
            if (group.faces.size() > 0) {
                node.attachChild(createGeometry(group.faces, null));
            }
        } else {
            for (Map.Entry entry : group.matFaces.entrySet()) {
                ArrayList<Face> arrayList = (ArrayList) entry.getValue();
                if (arrayList.size() > 0) {
                    node.attachChild(createGeometry(arrayList, (String) entry.getKey()));
                }
            }
        }
    }

    public Mesh constructMesh(ArrayList<Face> arrayList) {
        char c10;
        FloatBuffer floatBuffer;
        IndexBuffer indexShortBuffer;
        Mesh mesh = new Mesh();
        mesh.setMode(Mesh.Mode.Triangles);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        char c11 = 0;
        int i10 = 0;
        boolean z10 = false;
        boolean z11 = false;
        while (true) {
            c10 = 1;
            if (i10 >= arrayList.size()) {
                break;
            }
            Face face = arrayList.get(i10);
            for (Vertex vertex : face.verticies) {
                findVertexIndex(vertex);
                if (!z11 && vertex.vt != null) {
                    z11 = true;
                }
                if (!z10 && vertex.f81631vn != null) {
                    z10 = true;
                }
            }
            if (face.verticies.length == 4) {
                Face[] quadToTriangle = quadToTriangle(face);
                arrayList2.add(quadToTriangle[0]);
                arrayList2.add(quadToTriangle[1]);
            } else {
                arrayList2.add(face);
            }
            i10++;
        }
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(this.vertIndexMap.size() * 3);
        FloatBuffer floatBuffer2 = null;
        if (z10) {
            floatBuffer = BufferUtils.createFloatBuffer(this.vertIndexMap.size() * 3);
            mesh.setBuffer(VertexBuffer.Type.Normal, 3, floatBuffer);
        } else {
            floatBuffer = null;
        }
        if (z11) {
            floatBuffer2 = BufferUtils.createFloatBuffer(this.vertIndexMap.size() * 2);
            mesh.setBuffer(VertexBuffer.Type.TexCoord, 2, floatBuffer2);
        }
        if (this.vertIndexMap.size() >= 65536) {
            IntBuffer createIntBuffer = BufferUtils.createIntBuffer(arrayList2.size() * 3);
            mesh.setBuffer(VertexBuffer.Type.Index, 3, createIntBuffer);
            indexShortBuffer = new IndexIntBuffer(createIntBuffer);
        } else {
            ShortBuffer createShortBuffer = BufferUtils.createShortBuffer(arrayList2.size() * 3);
            mesh.setBuffer(VertexBuffer.Type.Index, 3, createShortBuffer);
            indexShortBuffer = new IndexShortBuffer(createShortBuffer);
        }
        int size = arrayList2.size();
        int i11 = 0;
        while (i11 < size) {
            Vertex[] vertexArr = ((Face) arrayList2.get(i11)).verticies;
            if (vertexArr.length == 3) {
                Vertex vertex2 = vertexArr[c11];
                Vertex vertex3 = vertexArr[c10];
                Vertex vertex4 = vertexArr[2];
                createFloatBuffer.position(vertex2.index * 3);
                createFloatBuffer.put(vertex2.f81630v.f81611x).put(vertex2.f81630v.f81612y).put(vertex2.f81630v.f81613z);
                createFloatBuffer.position(vertex3.index * 3);
                createFloatBuffer.put(vertex3.f81630v.f81611x).put(vertex3.f81630v.f81612y).put(vertex3.f81630v.f81613z);
                createFloatBuffer.position(vertex4.index * 3);
                createFloatBuffer.put(vertex4.f81630v.f81611x).put(vertex4.f81630v.f81612y).put(vertex4.f81630v.f81613z);
                if (floatBuffer != null && vertex2.f81631vn != null) {
                    floatBuffer.position(vertex2.index * 3);
                    floatBuffer.put(vertex2.f81631vn.f81611x).put(vertex2.f81631vn.f81612y).put(vertex2.f81631vn.f81613z);
                    floatBuffer.position(vertex3.index * 3);
                    floatBuffer.put(vertex3.f81631vn.f81611x).put(vertex3.f81631vn.f81612y).put(vertex3.f81631vn.f81613z);
                    floatBuffer.position(vertex4.index * 3);
                    floatBuffer.put(vertex4.f81631vn.f81611x).put(vertex4.f81631vn.f81612y).put(vertex4.f81631vn.f81613z);
                }
                if (floatBuffer2 != null && vertex2.vt != null) {
                    floatBuffer2.position(vertex2.index * 2);
                    floatBuffer2.put(vertex2.vt.f81609x).put(vertex2.vt.f81610y);
                    floatBuffer2.position(vertex3.index * 2);
                    floatBuffer2.put(vertex3.vt.f81609x).put(vertex3.vt.f81610y);
                    floatBuffer2.position(vertex4.index * 2);
                    floatBuffer2.put(vertex4.vt.f81609x).put(vertex4.vt.f81610y);
                }
                int i12 = i11 * 3;
                indexShortBuffer.put(i12, vertex2.index);
                indexShortBuffer.put(i12 + 1, vertex3.index);
                indexShortBuffer.put(i12 + 2, vertex4.index);
            }
            i11++;
            c11 = 0;
            c10 = 1;
        }
        mesh.setBuffer(VertexBuffer.Type.Position, 3, createFloatBuffer);
        mesh.setStatic();
        mesh.updateBound();
        mesh.updateCounts();
        this.vertIndexMap.clear();
        this.indexVertMap.clear();
        this.curIndex = 0;
        return mesh;
    }

    public Geometry createGeometry(ArrayList<Face> arrayList, String str) throws IOException {
        MaterialList materialList;
        if (arrayList.isEmpty()) {
            throw new IOException("No geometry data to generate mesh");
        }
        Mesh constructMesh = constructMesh(arrayList);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.objName);
        sb2.append("-geom-");
        int i10 = this.geomIndex;
        this.geomIndex = i10 + 1;
        sb2.append(i10);
        Geometry geometry = new Geometry(sb2.toString(), constructMesh);
        Material material = (str == null || (materialList = this.matList) == null) ? null : materialList.get(str);
        if (material == null) {
            material = new Material(this.assetManager, "Common/MatDefs/Light/Lighting.j3md");
            material.setFloat("Shininess", 64.0f);
        }
        geometry.setMaterial(material);
        if (material.isTransparent()) {
            geometry.setQueueBucket(RenderQueue.Bucket.Transparent);
        } else {
            geometry.setQueueBucket(RenderQueue.Bucket.Opaque);
        }
        if (material.getMaterialDef().getName().contains("Lighting") && constructMesh.getFloatBuffer(VertexBuffer.Type.Normal) == null) {
            logger.log(Level.WARNING, "OBJ mesh {0} doesn't contain normals! It might not display correctly", geometry.getName());
        }
        return geometry;
    }

    public void findVertexIndex(Vertex vertex) {
        Integer num = this.vertIndexMap.get(vertex);
        if (num != null) {
            vertex.index = num.intValue();
            return;
        }
        int i10 = this.curIndex;
        this.curIndex = i10 + 1;
        vertex.index = i10;
        this.vertIndexMap.put(vertex, Integer.valueOf(i10));
        this.indexVertMap.put(vertex.index, vertex);
    }

    @Override
    public Object load(AssetInfo assetInfo) throws IOException {
        reset();
        this.key = (ModelKey) assetInfo.getKey();
        this.assetManager = assetInfo.getManager();
        this.objName = this.key.getName();
        String folder = this.key.getFolder();
        String extension = this.key.getExtension();
        String str = this.objName;
        this.objName = str.substring(0, (str.length() - extension.length()) - 1);
        if (folder != null && folder.length() > 0) {
            this.objName = this.objName.substring(folder.length());
        }
        this.objNode = new Node(this.objName + "-objnode");
        InputStream inputStream = null;
        Group group = new Group(null);
        this.groups.add(group);
        if (!(assetInfo.getKey() instanceof ModelKey)) {
            throw new IllegalArgumentException("Model assets must be loaded using a ModelKey");
        }
        try {
            inputStream = assetInfo.openStream();
            Scanner scanner = new Scanner(inputStream);
            this.scan = scanner;
            scanner.useLocale(Locale.US);
            do {
            } while (readLine());
            Iterator<Group> it = this.groups.iterator();
            while (it.hasNext()) {
                Group next = it.next();
                if (next == group) {
                    materializeGroup(next, this.objNode);
                } else {
                    Node node = new Node(next.name);
                    materializeGroup(next, node);
                    if (node.getQuantity() == 1) {
                        Spatial child = node.getChild(0);
                        child.setName(node.getName());
                        this.objNode.attachChild(child);
                    } else if (node.getQuantity() > 1) {
                        this.objNode.attachChild(node);
                    }
                }
            }
            return this.objNode.getQuantity() == 1 ? this.objNode.getChild(0) : this.objNode;
        } finally {
            if (inputStream != null) {
                inputStream.close();
            }
        }
    }

    public void loadMtlLib(String str) throws IOException {
        if (!str.toLowerCase().endsWith(".mtl")) {
            throw new IOException("Expected .mtl file! Got: " + str);
        }
        String name = new File(str).getName();
        try {
            this.matList = (MaterialList) this.assetManager.loadAsset(new AssetKey(this.key.getFolder() + name));
        } catch (AssetNotFoundException unused) {
            logger.log(Level.WARNING, "Cannot locate {0} for model {1}", new Object[]{name, this.key});
        }
    }

    public boolean nextStatement() {
        try {
            this.scan.skip(".*\r{0,1}\n");
            return true;
        } catch (NoSuchElementException unused) {
            return false;
        }
    }

    public Face[] quadToTriangle(Face face) {
        Face[] faceArr = {new Face(), new Face()};
        faceArr[0].verticies = new Vertex[3];
        faceArr[1].verticies = new Vertex[3];
        Vertex[] vertexArr = face.verticies;
        Vertex vertex = vertexArr[0];
        Vertex vertex2 = vertexArr[1];
        Vertex vertex3 = vertexArr[2];
        Vertex vertex4 = vertexArr[3];
        if (vertex.f81630v.distanceSquared(vertex3.f81630v) < vertex2.f81630v.distanceSquared(vertex4.f81630v)) {
            faceArr[0].verticies[0] = vertex;
            Vertex[] vertexArr2 = faceArr[0].verticies;
            vertexArr2[1] = vertex2;
            vertexArr2[2] = vertex4;
            Vertex[] vertexArr3 = faceArr[1].verticies;
            vertexArr3[0] = vertex2;
            vertexArr3[1] = vertex3;
            faceArr[1].verticies[2] = vertex4;
        } else {
            faceArr[0].verticies[0] = vertex;
            Vertex[] vertexArr4 = faceArr[0].verticies;
            vertexArr4[1] = vertex2;
            vertexArr4[2] = vertex3;
            Vertex[] vertexArr5 = faceArr[1].verticies;
            vertexArr5[0] = vertex;
            vertexArr5[1] = vertex3;
            faceArr[1].verticies[2] = vertex4;
        }
        return faceArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00ec A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void readFace() {
        MaterialList materialList;
        int i10;
        int i11;
        int parseInt;
        int parseInt2;
        int i12;
        Face face = new Face();
        this.vertList.clear();
        for (String str : this.scan.nextLine().trim().split("\\s+")) {
            String[] split = str.split("/");
            if (split.length == 1) {
                i10 = Integer.parseInt(split[0].trim());
                i11 = 0;
            } else {
                if (split.length == 2) {
                    i10 = Integer.parseInt(split[0].trim());
                    i12 = Integer.parseInt(split[1].trim());
                    i11 = 0;
                } else {
                    if (split.length == 3 && !split[1].equals("")) {
                        parseInt = Integer.parseInt(split[0].trim());
                        i12 = Integer.parseInt(split[1].trim());
                        parseInt2 = Integer.parseInt(split[2].trim());
                    } else if (split.length == 3) {
                        parseInt = Integer.parseInt(split[0].trim());
                        parseInt2 = Integer.parseInt(split[2].trim());
                        i12 = 0;
                    } else {
                        i10 = 0;
                        i11 = 0;
                    }
                    i11 = parseInt2;
                    i10 = parseInt;
                }
                if (i10 < 0) {
                    i10 = this.verts.size() + i10 + 1;
                }
                if (i12 < 0) {
                    i12 = this.texCoords.size() + i12 + 1;
                }
                if (i11 < 0) {
                    i11 = this.norms.size() + i11 + 1;
                }
                Vertex vertex = new Vertex();
                vertex.f81630v = this.verts.get(i10 - 1);
                if (i12 > 0) {
                    vertex.vt = this.texCoords.get(i12 - 1);
                }
                if (i11 <= 0) {
                    vertex.f81631vn = this.norms.get(i11 - 1);
                }
                this.vertList.add(vertex);
            }
            i12 = i11;
            if (i10 < 0) {
            }
            if (i12 < 0) {
            }
            if (i11 < 0) {
            }
            Vertex vertex2 = new Vertex();
            vertex2.f81630v = this.verts.get(i10 - 1);
            if (i12 > 0) {
            }
            if (i11 <= 0) {
            }
            this.vertList.add(vertex2);
        }
        if (this.vertList.size() > 4 || this.vertList.size() <= 2) {
            logger.warning("Edge or polygon detected in OBJ. Ignored.");
            return;
        }
        face.verticies = new Vertex[this.vertList.size()];
        for (int i13 = 0; i13 < this.vertList.size(); i13++) {
            face.verticies[i13] = this.vertList.get(i13);
        }
        ArrayList<Group> arrayList = this.groups;
        Group group = arrayList.get(arrayList.size() - 1);
        String str2 = this.currentMatName;
        if (str2 == null || (materialList = this.matList) == null || !materialList.containsKey(str2)) {
            group.faces.add(face);
            return;
        }
        ArrayList arrayList2 = (ArrayList) group.matFaces.get(this.currentMatName);
        if (arrayList2 == null) {
            arrayList2 = new ArrayList();
            group.matFaces.put(this.currentMatName, arrayList2);
        }
        arrayList2.add(face);
    }

    public boolean readLine() throws IOException {
        if (!this.scan.hasNext()) {
            return false;
        }
        String next = this.scan.next();
        if (next.startsWith(C16181m.f130230g)) {
            return nextStatement();
        }
        if (next.equals("v")) {
            this.verts.add(readVector3());
            return true;
        }
        if (next.equals(C16179k.f130220f)) {
            this.norms.add(readVector3());
            return true;
        }
        if (next.equals(C16179k.f130219e)) {
            this.texCoords.add(readVector2());
            return true;
        }
        if (next.equals("f")) {
            readFace();
            return true;
        }
        if (next.equals(C16179k.f130223i)) {
            this.currentMatName = this.scan.next();
            return true;
        }
        if (next.equals(C16179k.f130224j)) {
            loadMtlLib(this.scan.nextLine().trim());
            return true;
        }
        if (next.equals("s")) {
            logger.log(Level.WARNING, "smoothing groups are not supported, statement ignored: {0}", next);
            return nextStatement();
        }
        if (next.equals("mg")) {
            logger.log(Level.WARNING, "merge groups are not supported, statement ignored: {0}", next);
            return nextStatement();
        }
        if (next.equals("g")) {
            this.groups.add(new Group(this.scan.nextLine().trim()));
            return true;
        }
        logger.log(Level.WARNING, "Unknown statement in OBJ! {0}", next);
        return nextStatement();
    }

    public Vector2f readVector2() {
        Vector2f vector2f = new Vector2f();
        String[] split = this.scan.nextLine().trim().split("\\s+");
        vector2f.setX(Float.parseFloat(split[0].trim()));
        vector2f.setY(Float.parseFloat(split[1].trim()));
        return vector2f;
    }

    public Vector3f readVector3() {
        Vector3f vector3f = new Vector3f();
        vector3f.set(Float.parseFloat(this.scan.next()), Float.parseFloat(this.scan.next()), Float.parseFloat(this.scan.next()));
        return vector3f;
    }

    public void reset() {
        this.verts.clear();
        this.texCoords.clear();
        this.norms.clear();
        this.groups.clear();
        this.vertIndexMap.clear();
        this.indexVertMap.clear();
        this.currentMatName = null;
        this.matList = null;
        this.curIndex = 0;
        this.geomIndex = 0;
        this.scan = null;
    }
}
