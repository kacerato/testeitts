package com.threed.jpct;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class DeSerializer {
    private static final int FLOATS = 1;
    private static final int FLOAT_FLOATS = 3;
    private static final int INTS = 0;
    private static final int INT_INTS = 2;
    private static final int VERSION = 5;
    private byte[] buffer = new byte[256];
    private int index = 0;
    private int length = 0;

    private int createTexture(String str) {
        int indexOf = str.indexOf("__obj-Color:");
        int indexOf2 = str.indexOf("__3ds-Color:");
        if (indexOf != 0 && indexOf2 != 0) {
            return -1;
        }
        String[] split = str.substring(12).split("/");
        if (split.length != 3) {
            return -1;
        }
        if (TextureManager.getInstance().containsTexture(str)) {
            return TextureManager.getInstance().getTextureID(str);
        }
        TextureManager.getInstance().addTexture(str, new Texture(8, 8, new RGBColor(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]))));
        return TextureManager.getInstance().getTextureID(str);
    }

    private int read(InputStream inputStream) throws Exception {
        int i10 = this.index;
        int i11 = this.length;
        if (i10 >= i11 || i11 == 0) {
            this.length = 0;
            int i12 = 0;
            while (true) {
                if (this.length % 4 == 0 && i12 != 0) {
                    break;
                }
                this.index = 0;
                if (inputStream.available() == 0) {
                    throw new Exception("Premature end of file!");
                }
                int i13 = this.length;
                byte[] bArr = this.buffer;
                i12 = inputStream.read(bArr, i12, bArr.length - i12) + i13;
                this.length = i12;
            }
        }
        byte[] bArr2 = this.buffer;
        int i14 = this.index;
        int i15 = ((bArr2[i14] & 255) << 24) + ((bArr2[i14 + 1] & 255) << 16) + ((bArr2[i14 + 2] & 255) << 8) + (bArr2[i14 + 3] & 255);
        this.index = i14 + 4;
        return i15;
    }

    private Animation readAnimation(Object3D object3D, InputStream inputStream) throws Exception {
        int i10;
        try {
            i10 = readInt(inputStream);
        } catch (Exception unused) {
            i10 = 0;
        }
        if (i10 == 0) {
            return null;
        }
        Animation animation = new Animation(i10);
        animation.aktFrames = readInt(inputStream);
        for (int i11 = 0; i11 < animation.aktFrames; i11++) {
            animation.keyFrames[i11] = readMesh(inputStream);
            Mesh mesh = animation.keyFrames[i11];
            if (mesh != null) {
                mesh.strip();
            }
        }
        animation.endFrame = readInt(inputStream);
        animation.mode = readInt(inputStream);
        animation.anzAnim = readInt(inputStream);
        animation.wrapMode = readInt(inputStream);
        animation.startFrames = readIntArray(inputStream);
        animation.endFrames = readIntArray(inputStream);
        for (int i12 = 0; i12 < animation.startFrames.length; i12++) {
            animation.seqNames[i12] = readString(inputStream);
        }
        return animation;
    }

    private boolean readBoolean(InputStream inputStream) throws Exception {
        return read(inputStream) != 0;
    }

    private float readFloat(InputStream inputStream) throws Exception {
        return Float.intBitsToFloat(read(inputStream));
    }

    private float[] readFloatArray(InputStream inputStream) throws Exception {
        int readInt = readInt(inputStream);
        if (readInt != 1) {
            throw new Exception("float[] array expected (" + readInt + ")!");
        }
        int readInt2 = readInt(inputStream);
        if (readInt2 == -1) {
            return null;
        }
        if (readInt2 < 0) {
            return new float[-readInt2];
        }
        float[] fArr = new float[readInt2];
        for (int i10 = 0; i10 < readInt2; i10++) {
            fArr[i10] = readFloat(inputStream);
        }
        return fArr;
    }

    private float[][] readFloatFloatArray(InputStream inputStream) throws Exception {
        return readFloatFloatArray(inputStream, 999999);
    }

    private int readInt(InputStream inputStream) throws Exception {
        return read(inputStream);
    }

    private int[] readIntArray(InputStream inputStream) throws Exception {
        int readInt = readInt(inputStream);
        if (readInt != 0) {
            throw new Exception("int[] array expected (" + readInt + ")!");
        }
        int readInt2 = readInt(inputStream);
        if (readInt2 == -1) {
            return null;
        }
        if (readInt2 < 0) {
            return new int[-readInt2];
        }
        int[] iArr = new int[readInt2];
        for (int i10 = 0; i10 < readInt2; i10++) {
            iArr[i10] = readInt(inputStream);
        }
        return iArr;
    }

    private int[][] readIntIntArray(InputStream inputStream) throws Exception {
        return readIntIntArray(inputStream, 999999);
    }

    private Mesh readMesh(InputStream inputStream) throws Exception {
        int readInt = readInt(inputStream);
        if (readInt == 0) {
            return null;
        }
        int readInt2 = readInt(inputStream);
        int readInt3 = readInt(inputStream);
        int readInt4 = readInt(inputStream);
        Mesh mesh = new Mesh(1);
        mesh.anzCoords = readInt;
        mesh.anzTri = readInt2;
        mesh.anzVectors = readInt3;
        mesh.maxVectors = readInt4;
        mesh.normalsCalculated = readBoolean(inputStream);
        mesh.xOrg = readFloatArray(inputStream);
        mesh.yOrg = readFloatArray(inputStream);
        mesh.zOrg = readFloatArray(inputStream);
        mesh.nxOrg = readFloatArray(inputStream);
        mesh.nyOrg = readFloatArray(inputStream);
        mesh.nzOrg = readFloatArray(inputStream);
        mesh.coords = readIntArray(inputStream);
        mesh.obbStart = readInt(inputStream);
        mesh.obbEnd = readInt(inputStream);
        mesh.points = readIntIntArray(inputStream);
        return mesh;
    }

    private OcTree readOcTree(InputStream inputStream) throws Exception {
        if (!readBoolean(inputStream)) {
            Logger.log("No octree found in serialized data!");
            return null;
        }
        Logger.log("Octree found in serialized data!");
        OcTree ocTree = new OcTree();
        ocTree.leafs = readInt(inputStream);
        ocTree.nodes = readInt(inputStream);
        ocTree.maxPoly = readInt(inputStream);
        ocTree.maxDepth = readInt(inputStream);
        ocTree.totalPolys = readInt(inputStream);
        ocTree.useForCollision = readBoolean(inputStream);
        ocTree.useForRendering = readBoolean(inputStream);
        ocTree.mode = readInt(inputStream);
        ocTree.tris = readIntArray(inputStream);
        readOcTreeNodes(inputStream, ocTree, new HashMap());
        return ocTree;
    }

    private OcTreeNode readOcTreeNodes(InputStream inputStream, OcTree ocTree, Map<Integer, OcTreeNode> map) throws Exception {
        OcTreeNode ocTreeNode = new OcTreeNode();
        if (map.size() == 0) {
            ocTree.root = ocTreeNode;
        }
        int readInt = readInt(inputStream);
        ocTreeNode.f83624id = readInt;
        map.put(IntegerC.valueOf(readInt), ocTreeNode);
        ocTreeNode.parent = map.get(Integer.valueOf(readInt(inputStream)));
        ocTreeNode.xLow = readFloat(inputStream);
        ocTreeNode.yLow = readFloat(inputStream);
        ocTreeNode.zLow = readFloat(inputStream);
        ocTreeNode.xHigh = readFloat(inputStream);
        ocTreeNode.yHigh = readFloat(inputStream);
        ocTreeNode.zHigh = readFloat(inputStream);
        ocTreeNode.childCnt = readInt(inputStream);
        ocTreeNode.polyCnt = readInt(inputStream);
        ocTreeNode.pointCnt = readInt(inputStream);
        ocTreeNode.polyList = readIntArray(inputStream);
        ocTreeNode.pointList = readIntArray(inputStream);
        for (int i10 = 0; i10 < 8; i10++) {
            ocTreeNode.pList[i10] = readVector(inputStream);
        }
        ocTreeNode.children = new OcTreeNode[ocTreeNode.childCnt];
        for (int i11 = 0; i11 < ocTreeNode.childCnt; i11++) {
            ocTreeNode.children[i11] = readOcTreeNodes(inputStream, ocTree, map);
        }
        return ocTreeNode;
    }

    private String readString(InputStream inputStream) throws Exception {
        int[] readIntArray = readIntArray(inputStream);
        byte[] bArr = new byte[readIntArray.length];
        for (int i10 = 0; i10 < readIntArray.length; i10++) {
            bArr[i10] = (byte) readIntArray[i10];
        }
        String str = new String(bArr, "UTF-8");
        if (str.equals("*null*")) {
            return null;
        }
        return str;
    }

    private SimpleVector readVector(InputStream inputStream) throws Exception {
        return SimpleVector.create(readFloat(inputStream), readFloat(inputStream), readFloat(inputStream));
    }

    public Object3D[] deserialize(InputStream inputStream) {
        OcTree readOcTree;
        String str = null;
        int i10 = 0;
        try {
            try {
                int readInt = readInt(inputStream);
                int i11 = 5;
                if (readInt > 5) {
                    Logger.log("Unsupported version: " + readInt, 0);
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                    return null;
                }
                boolean z10 = true;
                int readInt2 = readInt >= 2 ? readInt(inputStream) : 1;
                Object3D[] object3DArr = new Object3D[readInt2];
                int i12 = 0;
                while (i12 < readInt2) {
                    boolean readBoolean = readBoolean(inputStream);
                    String readString = readInt >= 4 ? readString(inputStream) : str;
                    SimpleVector simpleVector = readInt >= i11 ? new SimpleVector(readFloatArray(inputStream)) : str;
                    Mesh readMesh = readMesh(inputStream);
                    int i13 = readMesh.anzTri;
                    Object3D object3D = new Object3D(10);
                    if (readString != null) {
                        object3D.setName(readString);
                    }
                    if (simpleVector != null) {
                        object3D.setRotationPivot(simpleVector);
                        object3D.skipPivot = z10;
                    }
                    Mesh mesh = object3D.getMesh();
                    Vectors vectors = object3D.objVectors;
                    mesh.anzCoords = readMesh.anzCoords;
                    mesh.anzTri = i13;
                    mesh.anzVectors = readMesh.anzVectors;
                    mesh.maxVectors = readMesh.maxVectors;
                    mesh.normalsCalculated = readMesh.normalsCalculated;
                    mesh.xOrg = readMesh.xOrg;
                    mesh.yOrg = readMesh.yOrg;
                    mesh.zOrg = readMesh.zOrg;
                    mesh.nxOrg = readMesh.nxOrg;
                    mesh.nyOrg = readMesh.nyOrg;
                    mesh.nzOrg = readMesh.nzOrg;
                    mesh.coords = readMesh.coords;
                    mesh.obbStart = readMesh.obbStart;
                    mesh.obbEnd = readMesh.obbEnd;
                    mesh.points = readMesh.points;
                    vectors.nuOrg = readFloatArray(inputStream);
                    vectors.nvOrg = readFloatArray(inputStream);
                    vectors.uMul = readFloatFloatArray(inputStream);
                    vectors.vMul = readFloatFloatArray(inputStream);
                    vectors.alpha = readFloatArray(inputStream);
                    vectors.maxVectors = readInt(inputStream);
                    readBoolean(inputStream);
                    if (!readBoolean) {
                        readFloatArray(inputStream);
                        readFloatArray(inputStream);
                        readFloatArray(inputStream);
                        readFloatArray(inputStream);
                        readFloatArray(inputStream);
                        readFloatArray(inputStream);
                        readFloatArray(inputStream);
                        readIntArray(inputStream);
                    }
                    SimpleVector readVector = readVector(inputStream);
                    SimpleVector readVector2 = readVector(inputStream);
                    object3D.centerX = readVector.f83625x;
                    object3D.centerY = readVector.f83626y;
                    object3D.centerZ = readVector.f83627z;
                    object3D.xRotationCenter = readVector2.f83625x;
                    object3D.yRotationCenter = readVector2.f83626y;
                    object3D.zRotationCenter = readVector2.f83627z;
                    object3D.hasBeenBuild = readBoolean(inputStream);
                    object3D.texture = readIntArray(inputStream);
                    object3D.multiMode = readIntIntArray(inputStream);
                    object3D.multiTex = readIntIntArray(inputStream);
                    int readInt3 = readInt(inputStream);
                    HashMap hashMap = new HashMap();
                    HashMap hashMap2 = new HashMap();
                    TextureManager textureManager = TextureManager.getInstance();
                    Iterator<String> it = textureManager.getNames().iterator();
                    while (it.hasNext()) {
                        String next = it.next();
                        hashMap2.put(next, IntegerC.valueOf(textureManager.getTextureID(next)));
                        i10 = 0;
                    }
                    int i14 = i10;
                    while (i14 < readInt3) {
                        hashMap.put(IntegerC.valueOf(readInt(inputStream)), readString(inputStream));
                        i14++;
                        i10 = 0;
                    }
                    int length = object3D.texture.length;
                    int i15 = i10;
                    int i16 = -12345789;
                    int i17 = -12345789;
                    while (i15 < length) {
                        int[] iArr = object3D.texture;
                        int i18 = iArr[i15];
                        if (i16 == i18) {
                            iArr[i15] = i17;
                        } else {
                            String str2 = (String) hashMap.get(IntegerC.valueOf(i18));
                            if (str2 != null) {
                                Integer num = (Integer) hashMap2.get(str2);
                                if (num != null) {
                                    iArr[i15] = num.intValue();
                                } else {
                                    int createTexture = createTexture(str2);
                                    if (createTexture != -1) {
                                        iArr[i15] = createTexture;
                                    } else {
                                        iArr[i15] = textureManager.getTextureID("--dummy--");
                                    }
                                }
                                i17 = iArr[i15];
                                i16 = i18;
                            }
                        }
                        i15++;
                        i10 = 0;
                    }
                    int[][] iArr2 = object3D.multiTex;
                    if (iArr2 != null) {
                        int length2 = iArr2.length;
                        int i19 = i10;
                        int i20 = -12345789;
                        int i21 = -12345789;
                        while (i19 < length2) {
                            int[] iArr3 = object3D.multiTex[i19];
                            int length3 = iArr3.length;
                            while (i10 < length3) {
                                int i22 = iArr3[i10];
                                if (i21 == i22) {
                                    iArr3[i10] = i20;
                                } else {
                                    String str3 = (String) hashMap.get(IntegerC.valueOf(i22));
                                    if (str3 != null) {
                                        Integer num2 = (Integer) hashMap2.get(str3);
                                        if (num2 != null) {
                                            iArr3[i10] = num2.intValue();
                                        } else {
                                            int createTexture2 = createTexture(str3);
                                            if (createTexture2 > -1) {
                                                iArr3[i10] = createTexture2;
                                            } else {
                                                iArr3[i10] = -1;
                                            }
                                        }
                                    }
                                    i20 = iArr3[i10];
                                    i21 = i22;
                                }
                                i10++;
                            }
                            i19++;
                            i10 = 0;
                        }
                    }
                    object3D.usesMultiTexturing = readBoolean(inputStream);
                    object3D.maxStagesUsed = Math.min(readInt(inputStream), Config.maxTextureLayers);
                    try {
                        Animation readAnimation = readAnimation(object3D, inputStream);
                        if (readAnimation != null) {
                            object3D.setAnimationSequence(readAnimation);
                        }
                        if (readInt >= 3 && (readOcTree = readOcTree(inputStream)) != null) {
                            readOcTree.postConstruct();
                            object3D.setOcTree(readOcTree);
                        }
                        object3DArr[i12] = object3D;
                        i12++;
                        str = null;
                        i10 = 0;
                        i11 = 5;
                        z10 = true;
                    } catch (Exception e10) {
                        e = e10;
                        e.printStackTrace();
                        Logger.log("Can't deserialize object: " + e.getMessage(), 0);
                        try {
                            inputStream.close();
                            return null;
                        } catch (IOException unused2) {
                            return null;
                        }
                    }
                }
                try {
                    inputStream.close();
                } catch (IOException unused3) {
                }
                return object3DArr;
            } catch (Throwable th2) {
                th = th2;
                try {
                    inputStream.close();
                } catch (IOException unused4) {
                }
                throw th;
            }
        } catch (Exception e11) {
            e = e11;
        } catch (Throwable th3) {
            th = th3;
            inputStream.close();
            throw th;
        }
    }

    private float[][] readFloatFloatArray(InputStream inputStream, int i10) throws Exception {
        int readInt = readInt(inputStream);
        if (readInt == 3) {
            int readInt2 = readInt(inputStream);
            if (readInt2 == -1) {
                return null;
            }
            int min = Math.min(i10, readInt2);
            float[][] fArr = new float[min];
            for (int i11 = 0; i11 < min; i11++) {
                int readInt3 = readInt(inputStream);
                float[] fArr2 = new float[readInt3];
                for (int i12 = 0; i12 < readInt3; i12++) {
                    fArr2[i12] = readFloat(inputStream);
                }
                fArr[i11] = fArr2;
            }
            return fArr;
        }
        throw new Exception("float[][] array expected (" + readInt + ")!");
    }

    private int[][] readIntIntArray(InputStream inputStream, int i10) throws Exception {
        int readInt = readInt(inputStream);
        if (readInt == 2) {
            int readInt2 = readInt(inputStream);
            if (readInt2 == -1) {
                return null;
            }
            int min = Math.min(i10, readInt2);
            int[][] iArr = new int[min];
            for (int i11 = 0; i11 < min; i11++) {
                int readInt3 = readInt(inputStream);
                int[] iArr2 = new int[readInt3];
                for (int i12 = 0; i12 < readInt3; i12++) {
                    iArr2[i12] = readInt(inputStream);
                }
                iArr[i11] = iArr2;
            }
            return iArr;
        }
        throw new Exception("int[][] array expected (" + readInt + ")!");
    }
}
