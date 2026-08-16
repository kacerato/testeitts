package com.threed.jpct;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public final class OcTree implements Serializable {
    public static final boolean COLLISION_DONT_USE = false;
    public static final boolean COLLISION_USE = true;
    public static final int MODE_NORMAL = 0;
    public static final int MODE_OPTIMIZED = 1;
    public static final boolean RENDERING_DONT_USE = false;
    public static final boolean RENDERING_USE = true;
    private static final long serialVersionUID = 1;
    private ArrayList<OcTreeNode> allLeafs;
    private int curLeafs;
    private int[] leafCount;
    private OcTreeNode[] leafList;
    int leafs;
    int maxDepth;
    int maxPoly;
    int mode;
    int nodes;
    private Object[] objArray;
    private Mesh objMesh;
    private float radiusMul;
    OcTreeNode root;
    private OcTreeNode[] threadsBuffer;
    int totalPolys;
    int[] tris;
    boolean useForCollision;
    boolean useForRendering;
    private HashSet<Integer> used;
    private boolean[] visibleLeafs;

    public OcTree(Mesh mesh, int i10, int i11) {
        this.curLeafs = 0;
        this.leafList = null;
        this.visibleLeafs = null;
        this.objMesh = null;
        this.threadsBuffer = null;
        this.allLeafs = null;
        this.used = new HashSet<>();
        this.leafCount = new int[1];
        this.objArray = new Object[2];
        this.leafs = 0;
        this.nodes = 0;
        this.tris = null;
        this.maxPoly = 0;
        this.maxDepth = -1;
        this.totalPolys = 0;
        this.useForCollision = true;
        this.useForRendering = true;
        this.root = null;
        initOcTree(mesh, i10, -1, i11);
    }

    private void buildTree() {
        OcTreeNode.resetNodeID();
        this.root = new OcTreeNode();
        Logger.log("Building octree for " + this.objMesh.anzTri + " triangles!", 2);
        float[] calcBoundingBox = this.objMesh.calcBoundingBox();
        this.root.setDimensions(calcBoundingBox[0], calcBoundingBox[2], calcBoundingBox[4], calcBoundingBox[1], calcBoundingBox[3], calcBoundingBox[5]);
        createChildren(this.root, 0);
        Logger.log("Octree constructed with " + this.nodes + " nodes / " + this.leafs + " leafs.", 2);
    }

    private boolean createChildren(OcTreeNode ocTreeNode, int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16 = 1;
        this.nodes++;
        int i17 = i10 + 1;
        int i18 = 0;
        if (ocTreeNode == null) {
            return false;
        }
        int i19 = 0;
        int i20 = 0;
        while (true) {
            Mesh mesh = this.objMesh;
            if (i19 >= mesh.anzTri) {
                i11 = i20;
                break;
            }
            int[] iArr = mesh.coords;
            int i21 = mesh.points[i19][i18];
            int i22 = iArr[i21];
            if (this.used.contains(Integer.valueOf(i21))) {
                i12 = i16;
                i13 = i17;
                i14 = i18;
            } else {
                Mesh mesh2 = this.objMesh;
                int[] iArr2 = mesh2.coords;
                int[] iArr3 = mesh2.points[i19];
                int i23 = iArr2[iArr3[i16]];
                int i24 = iArr2[iArr3[2]];
                float[] fArr = mesh2.xOrg;
                float f10 = fArr[i22];
                float[] fArr2 = mesh2.yOrg;
                float f11 = fArr2[i22];
                float[] fArr3 = mesh2.zOrg;
                float f12 = fArr3[i22];
                float f13 = fArr[i23];
                float f14 = fArr2[i23];
                float f15 = fArr3[i23];
                float f16 = fArr[i24];
                float f17 = fArr2[i24];
                float f18 = fArr3[i24];
                int[] iArr4 = this.tris;
                int i25 = i20 + 1;
                if (iArr4.length < i25) {
                    int[] iArr5 = new int[iArr4.length * 2];
                    System.arraycopy(iArr4, i18, iArr5, i18, iArr4.length);
                    this.tris = iArr5;
                }
                if (!ocTreeNode.completeFit(f10, f11, f12, f13, f14, f15, f16, f17, f18)) {
                    if (!ocTreeNode.partialFit(f10, f11, f12, f13, f14, f15, f16, f17, f18)) {
                        i15 = i20;
                        if (i15 <= this.maxPoly && i17 != this.maxDepth + i16) {
                            i11 = i15;
                            break;
                        }
                        i12 = i16;
                        i13 = i17;
                        i14 = i18;
                        i20 = i15;
                    } else {
                        this.tris[i20] = i19;
                    }
                } else {
                    this.tris[i20] = i19;
                }
                i15 = i25;
                if (i15 <= this.maxPoly) {
                }
                i12 = i16;
                i13 = i17;
                i14 = i18;
                i20 = i15;
            }
            i19++;
            i17 = i13;
            i16 = i12;
            i18 = i14;
        }
        if (i11 <= this.maxPoly || i17 == this.maxDepth + i16) {
            int i26 = i16;
            if (i11 != 0) {
                int i27 = 0;
                while (i27 < i11) {
                    int i28 = this.tris[i27];
                    Mesh mesh3 = this.objMesh;
                    int[] iArr6 = mesh3.coords;
                    int[] iArr7 = mesh3.points[i28];
                    int i29 = iArr6[iArr7[0]];
                    int i30 = iArr6[iArr7[i26]];
                    int i31 = iArr6[iArr7[2]];
                    float[] fArr4 = mesh3.xOrg;
                    float f19 = fArr4[i29];
                    float[] fArr5 = mesh3.yOrg;
                    float f20 = fArr5[i29];
                    float[] fArr6 = mesh3.zOrg;
                    float f21 = fArr6[i29];
                    float f22 = fArr4[i30];
                    float f23 = fArr5[i30];
                    float f24 = fArr6[i30];
                    float f25 = fArr4[i31];
                    float f26 = fArr5[i31];
                    float f27 = fArr6[i31];
                    if (ocTreeNode.partialFit(f19, f20, f21, f22, f23, f24, f25, f26, f27)) {
                        ocTreeNode.extendDimensions(f19, f20, f21, f22, f23, f24, f25, f26, f27);
                    }
                    ocTreeNode.addTriangle(i11, i28, i29, i30, i31);
                    this.used.add(Integer.valueOf(this.objMesh.points[i28][0]));
                    this.used.add(Integer.valueOf(this.objMesh.points[i28][1]));
                    this.used.add(Integer.valueOf(this.objMesh.points[i28][2]));
                    i27++;
                    i26 = 1;
                }
                if (this.mode == i26) {
                    ocTreeNode.packPoints();
                }
                this.totalPolys += ocTreeNode.getPolyCount();
                this.leafs += i26;
            }
        } else {
            float f28 = ocTreeNode.xLow;
            float f29 = ocTreeNode.yLow;
            float f30 = ocTreeNode.zLow;
            float f31 = ocTreeNode.xHigh;
            float f32 = ocTreeNode.yHigh;
            float f33 = ocTreeNode.zHigh;
            float f34 = ((f31 - f28) / 2.0f) + f28;
            float f35 = ((f32 - f29) / 2.0f) + f29;
            float f36 = ((f33 - f30) / 2.0f) + f30;
            OcTreeNode ocTreeNode2 = new OcTreeNode();
            OcTreeNode ocTreeNode3 = new OcTreeNode();
            OcTreeNode ocTreeNode4 = new OcTreeNode();
            OcTreeNode ocTreeNode5 = new OcTreeNode();
            OcTreeNode ocTreeNode6 = new OcTreeNode();
            OcTreeNode ocTreeNode7 = new OcTreeNode();
            OcTreeNode ocTreeNode8 = new OcTreeNode();
            OcTreeNode ocTreeNode9 = new OcTreeNode();
            int i32 = i17;
            ocTreeNode2.setDimensions(f28, f35, f30, f34, f32, f36);
            ocTreeNode3.setDimensions(f28, f35, f36, f34, f32, f33);
            ocTreeNode4.setDimensions(f34, f35, f30, f31, f32, f36);
            ocTreeNode5.setDimensions(f34, f35, f36, f31, f32, f33);
            ocTreeNode6.setDimensions(f28, f29, f30, f34, f35, f36);
            ocTreeNode7.setDimensions(f28, f29, f36, f34, f35, f33);
            ocTreeNode8.setDimensions(f34, f29, f30, f31, f35, f36);
            ocTreeNode9.setDimensions(f34, f29, f36, f31, f35, f33);
            ocTreeNode.addChild(ocTreeNode2);
            if (!createChildren(ocTreeNode2, i32) && ocTreeNode2.getChildCount() == 0) {
                ocTreeNode.removeChild(ocTreeNode2);
                this.nodes--;
            }
            ocTreeNode.addChild(ocTreeNode4);
            if (!createChildren(ocTreeNode4, i32) && ocTreeNode4.getChildCount() == 0) {
                ocTreeNode.removeChild(ocTreeNode4);
                this.nodes--;
            }
            ocTreeNode.addChild(ocTreeNode3);
            if (!createChildren(ocTreeNode3, i32) && ocTreeNode3.getChildCount() == 0) {
                ocTreeNode.removeChild(ocTreeNode3);
                this.nodes--;
            }
            ocTreeNode.addChild(ocTreeNode5);
            if (!createChildren(ocTreeNode5, i32) && ocTreeNode5.getChildCount() == 0) {
                ocTreeNode.removeChild(ocTreeNode5);
                this.nodes--;
            }
            ocTreeNode.addChild(ocTreeNode6);
            if (!createChildren(ocTreeNode6, i32) && ocTreeNode6.getChildCount() == 0) {
                ocTreeNode.removeChild(ocTreeNode6);
                this.nodes--;
            }
            ocTreeNode.addChild(ocTreeNode8);
            if (!createChildren(ocTreeNode8, i32) && ocTreeNode8.getChildCount() == 0) {
                ocTreeNode.removeChild(ocTreeNode8);
                this.nodes--;
            }
            ocTreeNode.addChild(ocTreeNode7);
            if (!createChildren(ocTreeNode7, i32) && ocTreeNode7.getChildCount() == 0) {
                ocTreeNode.removeChild(ocTreeNode7);
                this.nodes--;
            }
            ocTreeNode.addChild(ocTreeNode9);
            if (!createChildren(ocTreeNode9, i32) && ocTreeNode9.getChildCount() == 0) {
                ocTreeNode.removeChild(ocTreeNode9);
                this.nodes--;
            }
        }
        return ocTreeNode.getPolyCount() != 0;
    }

    private void fillLeafs(OcTreeNode ocTreeNode) {
        if (ocTreeNode.getPolyCount() > 0) {
            this.allLeafs.add(ocTreeNode);
        }
        for (int i10 = 0; i10 < ocTreeNode.getChildCount(); i10++) {
            fillLeafs(ocTreeNode.getChildren()[i10]);
        }
    }

    private void initOcTree(Mesh mesh, int i10, int i11, int i12) {
        this.leafs = 0;
        this.nodes = 0;
        this.maxDepth = i11;
        this.maxPoly = i10;
        this.tris = new int[i10 + 1];
        this.objMesh = mesh;
        buildTree();
        this.used = null;
        this.tris = null;
        this.mode = i12;
        this.useForCollision = false;
        postConstruct();
    }

    private void markAllLeafsAsVisible(OcTreeNode ocTreeNode, int[] iArr) {
        if (ocTreeNode.getPolyCount() == 0 || ocTreeNode.getChildCount() != 0) {
            OcTreeNode[] children = ocTreeNode.getChildren();
            int childCount = ocTreeNode.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                markAllLeafsAsVisible(children[i10], iArr);
            }
            return;
        }
        OcTreeNode[] ocTreeNodeArr = this.leafList;
        int i11 = iArr[0];
        ocTreeNodeArr[i11] = ocTreeNode;
        this.visibleLeafs[i11] = true;
        iArr[0] = i11 + 1;
    }

    public List<OcTreeNode> getAffectedLeafs(float f10, float f11, float f12, float f13) {
        Object[] colliderLeafs = getColliderLeafs(f10, f11, f12, f13);
        ArrayList arrayList = new ArrayList();
        if (colliderLeafs != null) {
            Integer num = (Integer) colliderLeafs[0];
            for (int i10 = 0; i10 < num.intValue(); i10++) {
                arrayList.add(((OcTreeNode[]) colliderLeafs[1])[i10]);
            }
        }
        return arrayList;
    }

    public Object[] getColliderLeafs(float f10, float f11, float f12, float f13) {
        int[] iArr = this.leafCount;
        iArr[0] = 0;
        return getColliderLeafs(this.root, f10, f11, f12, f13, iArr, null);
    }

    public boolean getCollisionUse() {
        return this.useForCollision;
    }

    public ArrayList<OcTreeNode> getFilledLeafs() {
        if (this.allLeafs == null) {
            this.allLeafs = new ArrayList<>();
            fillLeafs(this.root);
        }
        return this.allLeafs;
    }

    public int getLeafCount() {
        return this.curLeafs;
    }

    public OcTreeNode[] getLeafList() {
        return this.leafList;
    }

    public float getRadiusMultiplier() {
        return this.radiusMul;
    }

    public boolean getRenderingUse() {
        return this.useForRendering;
    }

    public int getTotalLeafs() {
        return this.leafs;
    }

    public int getTotalPolyCount() {
        return this.totalPolys;
    }

    public int getVisibleLeafs(Matrix matrix, float f10, float f11) {
        int[] iArr = this.leafCount;
        iArr[0] = 0;
        this.curLeafs = 0;
        getVisibleLeafs(this.root, matrix, f10, f11, iArr);
        int i10 = this.leafCount[0];
        this.curLeafs = i10;
        return i10;
    }

    public boolean isCompletelyVisible(int i10) {
        return this.visibleLeafs[i10];
    }

    public boolean isOfOrderZero() {
        return this.root.isLeaf();
    }

    public void postConstruct() {
        int i10 = this.leafs;
        this.leafList = new OcTreeNode[i10];
        this.visibleLeafs = new boolean[i10];
        this.radiusMul = 1.5f;
    }

    public void setCollisionUse(boolean z10) {
        this.useForCollision = z10;
    }

    public void setRadiusMultiplier(float f10) {
        if (f10 > 0.0f) {
            this.radiusMul = f10;
        }
    }

    public void setRenderingUse(boolean z10) {
        this.useForRendering = z10;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x007c A[LOOP:0: B:34:0x0079->B:35:0x007c, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Object[] getColliderLeafs(OcTreeNode ocTreeNode, float f10, float f11, float f12, float f13, int[] iArr, OcTreeNode[] ocTreeNodeArr) {
        OcTreeNode[] ocTreeNodeArr2;
        int childCount;
        int i10;
        boolean sphereIntersectsNode = (ocTreeNode.getChildCount() == 0 && ocTreeNode.getPolyCount() == 0) ? false : ocTreeNode.sphereIntersectsNode(f10, f11, f12, f13);
        Thread thread = World.defaultThread;
        if (thread == null) {
            World.setDefaultThread(Thread.currentThread());
            thread = World.defaultThread;
        }
        if (sphereIntersectsNode && ocTreeNodeArr == null) {
            if (thread != null && Thread.currentThread() == thread && (thread != Thread.currentThread() || this.threadsBuffer != null)) {
                OcTreeNode[] ocTreeNodeArr3 = this.threadsBuffer;
                if (ocTreeNodeArr3 != null) {
                    ocTreeNodeArr2 = ocTreeNodeArr3;
                }
            } else {
                OcTreeNode[] ocTreeNodeArr4 = new OcTreeNode[this.leafs];
                if (thread != null && thread == Thread.currentThread()) {
                    this.threadsBuffer = ocTreeNodeArr4;
                }
                ocTreeNodeArr2 = ocTreeNodeArr4;
            }
            if (ocTreeNode.getPolyCount() == 0 && ocTreeNode.getChildCount() == 0 && sphereIntersectsNode) {
                int i11 = iArr[0];
                ocTreeNodeArr2[i11] = ocTreeNode;
                iArr[0] = i11 + 1;
            } else if (sphereIntersectsNode && ocTreeNode.getChildCount() != 0) {
                childCount = ocTreeNode.getChildCount();
                OcTreeNode[] children = ocTreeNode.getChildren();
                for (i10 = 0; i10 < childCount; i10++) {
                    getColliderLeafs(children[i10], f10, f11, f12, f13, iArr, ocTreeNodeArr2);
                }
            }
            this.objArray[0] = IntegerC.valueOf(iArr[0]);
            Object[] objArr = this.objArray;
            objArr[1] = ocTreeNodeArr2;
            return objArr;
        }
        ocTreeNodeArr2 = ocTreeNodeArr;
        if (ocTreeNode.getPolyCount() == 0) {
        }
        if (sphereIntersectsNode) {
            childCount = ocTreeNode.getChildCount();
            OcTreeNode[] children2 = ocTreeNode.getChildren();
            while (i10 < childCount) {
            }
        }
        this.objArray[0] = IntegerC.valueOf(iArr[0]);
        Object[] objArr2 = this.objArray;
        objArr2[1] = ocTreeNodeArr2;
        return objArr2;
    }

    private void getVisibleLeafs(OcTreeNode ocTreeNode, Matrix matrix, float f10, float f11, int[] iArr) {
        boolean z10;
        boolean z11;
        int childCount = ocTreeNode.getChildCount();
        if (childCount == 0 && ocTreeNode.getPolyCount() == 0) {
            z11 = false;
            z10 = false;
        } else {
            int isVisible = ocTreeNode.isVisible(matrix, f10, f11);
            if (isVisible != 999) {
                z10 = false;
            } else if (childCount != 0) {
                markAllLeafsAsVisible(ocTreeNode, iArr);
                z10 = true;
                isVisible = 0;
            } else {
                isVisible = 1;
                z10 = true;
            }
            z11 = isVisible == 1;
        }
        if (z11 && ocTreeNode.getPolyCount() != 0 && childCount == 0) {
            OcTreeNode[] ocTreeNodeArr = this.leafList;
            int i10 = iArr[0];
            ocTreeNodeArr[i10] = ocTreeNode;
            this.visibleLeafs[i10] = z10;
            iArr[0] = i10 + 1;
            return;
        }
        if (!z11 || childCount == 0) {
            return;
        }
        OcTreeNode[] children = ocTreeNode.getChildren();
        for (int i11 = 0; i11 < childCount; i11++) {
            getVisibleLeafs(children[i11], matrix, f10, f11, iArr);
        }
    }

    public OcTree(Mesh mesh, int i10, int i11, int i12) {
        this.curLeafs = 0;
        this.leafList = null;
        this.visibleLeafs = null;
        this.objMesh = null;
        this.threadsBuffer = null;
        this.allLeafs = null;
        this.used = new HashSet<>();
        this.leafCount = new int[1];
        this.objArray = new Object[2];
        this.leafs = 0;
        this.nodes = 0;
        this.tris = null;
        this.maxPoly = 0;
        this.maxDepth = -1;
        this.totalPolys = 0;
        this.useForCollision = true;
        this.useForRendering = true;
        this.root = null;
        initOcTree(mesh, i10, i11, i12);
    }

    public OcTree(Object3D object3D, int i10, int i11) {
        this.curLeafs = 0;
        this.leafList = null;
        this.visibleLeafs = null;
        this.objMesh = null;
        this.threadsBuffer = null;
        this.allLeafs = null;
        this.used = new HashSet<>();
        this.leafCount = new int[1];
        this.objArray = new Object[2];
        this.leafs = 0;
        this.nodes = 0;
        this.tris = null;
        this.maxPoly = 0;
        this.maxDepth = -1;
        this.totalPolys = 0;
        this.useForCollision = true;
        this.useForRendering = true;
        this.root = null;
        initOcTree(object3D.getMesh(), i10, -1, i11);
    }

    public OcTree(Object3D object3D, int i10, int i11, int i12) {
        this.curLeafs = 0;
        this.leafList = null;
        this.visibleLeafs = null;
        this.objMesh = null;
        this.threadsBuffer = null;
        this.allLeafs = null;
        this.used = new HashSet<>();
        this.leafCount = new int[1];
        this.objArray = new Object[2];
        this.leafs = 0;
        this.nodes = 0;
        this.tris = null;
        this.maxPoly = 0;
        this.maxDepth = -1;
        this.totalPolys = 0;
        this.useForCollision = true;
        this.useForRendering = true;
        this.root = null;
        initOcTree(object3D.getMesh(), i10, i11, i12);
    }

    public OcTree() {
        this.curLeafs = 0;
        this.leafList = null;
        this.visibleLeafs = null;
        this.objMesh = null;
        this.threadsBuffer = null;
        this.allLeafs = null;
        this.used = new HashSet<>();
        this.leafCount = new int[1];
        this.objArray = new Object[2];
        this.leafs = 0;
        this.nodes = 0;
        this.tris = null;
        this.maxPoly = 0;
        this.maxDepth = -1;
        this.totalPolys = 0;
        this.useForCollision = true;
        this.useForRendering = true;
        this.root = null;
    }
}
