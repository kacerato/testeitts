package com.jme3.util.mikktspace;

import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.TangentUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MikktspaceTangentGenerator {
    static final boolean $assertionsDisabled = false;
    static final int CELLS = 2048;
    private static final int GROUP_WITH_ANY = 4;
    private static final long INTERNAL_RND_SORT_SEED = 39871946;
    private static final int MARK_DEGENERATE = 1;
    private static final int ORIENT_PRESERVING = 8;
    private static final int QUAD_ONE_DEGEN_TRI = 2;
    private static final Logger logger = Logger.getLogger(MikktspaceTangentGenerator.class.getName());

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$scene$Mesh$Mode;

        static {
            int[] iArr = new int[Mesh.Mode.values().length];
            $SwitchMap$com$jme3$scene$Mesh$Mode = iArr;
            try {
                iArr[Mesh.Mode.Points.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.Lines.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.LineStrip.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.LineLoop.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.Triangles.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.TriangleFan.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.TriangleStrip.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$jme3$scene$Mesh$Mode[Mesh.Mode.Patch.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static class SubGroup {
        int nrFaces;
        int[] triMembers;

        private SubGroup() {
        }

        public SubGroup(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    private MikktspaceTangentGenerator() {
    }

    public static void DegenEpilogue(TSpace[] tSpaceArr, TriInfo[] triInfoArr, int[] iArr, MikkTSpaceContext mikkTSpaceContext, int i10, int i11) {
        for (int i12 = i10; i12 < i11; i12++) {
            if ((2 & triInfoArr[i12].flag) == 0) {
                for (int i13 = 0; i13 < 3; i13++) {
                    int i14 = iArr[(i12 * 3) + i13];
                    int i15 = 0;
                    boolean z10 = true;
                    while (z10 && i15 < i10 * 3) {
                        if (i14 == iArr[i15]) {
                            z10 = false;
                        } else {
                            i15++;
                        }
                    }
                    if (!z10) {
                        TriInfo triInfo = triInfoArr[i15 / 3];
                        byte b10 = triInfo.vertNum[i15 % 3];
                        int i16 = triInfo.tSpacesOffs;
                        TriInfo triInfo2 = triInfoArr[i12];
                        tSpaceArr[triInfo2.tSpacesOffs + triInfo2.vertNum[i13]] = tSpaceArr[i16 + b10];
                    }
                }
            }
        }
        for (int i17 = 0; i17 < i10; i17++) {
            TriInfo triInfo3 = triInfoArr[i17];
            if ((triInfo3.flag & 2) != 0) {
                byte[] bArr = triInfo3.vertNum;
                int i18 = (1 << bArr[0]) | (1 << bArr[1]) | (1 << bArr[2]);
                int i19 = (i18 & 2) == 0 ? 1 : (i18 & 4) == 0 ? 2 : (i18 & 8) == 0 ? 3 : 0;
                int i20 = triInfo3.orgFaceNumber;
                Vector3f position = getPosition(mikkTSpaceContext, makeIndex(i20, i19));
                int i21 = 0;
                boolean z11 = true;
                while (z11 && i21 < 3) {
                    byte b11 = bArr[i21];
                    if (getPosition(mikkTSpaceContext, makeIndex(i20, b11)).equals(position)) {
                        int i22 = triInfoArr[i17].tSpacesOffs;
                        tSpaceArr[i22 + i19] = tSpaceArr[i22 + b11];
                        z11 = false;
                    } else {
                        i21++;
                    }
                }
            }
        }
    }

    public static void MergeVertsFast(int[] iArr, TmpVert[] tmpVertArr, MikkTSpaceContext mikkTSpaceContext, int i10, int i11) {
        TmpVert[] tmpVertArr2 = tmpVertArr;
        MikkTSpaceContext mikkTSpaceContext2 = mikkTSpaceContext;
        float[] fArr = new float[3];
        float[] fArr2 = new float[3];
        for (int i12 = 0; i12 < 3; i12++) {
            float f10 = tmpVertArr2[i10].vert[i12];
            fArr[i12] = f10;
            fArr2[i12] = f10;
        }
        for (int i13 = i10 + 1; i13 <= i11; i13++) {
            for (int i14 = 0; i14 < 3; i14++) {
                float f11 = fArr[i14];
                float f12 = tmpVertArr2[i13].vert[i14];
                if (f11 > f12) {
                    fArr[i14] = f12;
                } else if (fArr2[i14] < f12) {
                    fArr2[i14] = f12;
                }
            }
        }
        float f13 = fArr2[0] - fArr[0];
        boolean z10 = true;
        float f14 = fArr2[1] - fArr[1];
        char c10 = 2;
        float f15 = fArr2[2] - fArr[2];
        if (f14 > f13 && f14 > f15) {
            c10 = 1;
        } else if (f15 <= f13) {
            c10 = 0;
        }
        float f16 = fArr2[c10];
        float f17 = fArr[c10];
        float f18 = (f16 + f17) * 0.5f;
        if (f18 < f16 && f18 > f17) {
            int i15 = i10;
            int i16 = i11;
            while (i15 < i16) {
                boolean z11 = false;
                while (!z11 && i15 < i16) {
                    z11 = tmpVertArr2[i15].vert[c10] >= f18;
                    if (!z11) {
                        i15++;
                    }
                }
                boolean z12 = false;
                while (!z12 && i15 < i16) {
                    z12 = tmpVertArr2[i16].vert[c10] < f18;
                    if (!z12) {
                        i16--;
                    }
                }
                if (z11 && z12) {
                    TmpVert tmpVert = tmpVertArr2[i15];
                    tmpVertArr2[i15] = tmpVertArr2[i16];
                    tmpVertArr2[i16] = tmpVert;
                    i15++;
                    i16--;
                }
            }
            if (i15 == i16) {
                if (tmpVertArr2[i16].vert[c10] < f18) {
                    i15++;
                } else {
                    i16--;
                }
            }
            if (i10 < i16) {
                MergeVertsFast(iArr, tmpVertArr2, mikkTSpaceContext2, i10, i16);
            }
            if (i15 < i11) {
                MergeVertsFast(iArr, tmpVertArr2, mikkTSpaceContext2, i15, i11);
                return;
            }
            return;
        }
        int i17 = i10;
        while (i17 <= i11) {
            int i18 = tmpVertArr2[i17].index;
            int i19 = iArr[i18];
            Vector3f position = getPosition(mikkTSpaceContext2, i19);
            Vector3f normal = getNormal(mikkTSpaceContext2, i19);
            Vector3f texCoord = getTexCoord(mikkTSpaceContext2, i19);
            int i20 = -1;
            int i21 = i10;
            boolean z13 = z10;
            while (i21 < i17 && z13) {
                i20 = tmpVertArr2[i21].index;
                int i22 = iArr[i20];
                Vector3f position2 = getPosition(mikkTSpaceContext2, i22);
                Vector3f normal2 = getNormal(mikkTSpaceContext2, i22);
                Vector3f texCoord2 = getTexCoord(mikkTSpaceContext2, i22);
                if (position.f81611x == position2.f81611x && position.f81612y == position2.f81612y && position.f81613z == position2.f81613z && normal.f81611x == normal2.f81611x && normal.f81612y == normal2.f81612y && normal.f81613z == normal2.f81613z && texCoord.f81611x == texCoord2.f81611x && texCoord.f81612y == texCoord2.f81612y && texCoord.f81613z == texCoord2.f81613z) {
                    z13 = false;
                } else {
                    i21++;
                }
                tmpVertArr2 = tmpVertArr;
                mikkTSpaceContext2 = mikkTSpaceContext;
            }
            if (!z13) {
                iArr[i18] = iArr[i20];
            }
            i17++;
            tmpVertArr2 = tmpVertArr;
            mikkTSpaceContext2 = mikkTSpaceContext;
            z10 = true;
        }
    }

    public static void MergeVertsSlow(int[] iArr, MikkTSpaceContext mikkTSpaceContext, int[] iArr2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = iArr2[i11];
            int i13 = iArr[i12];
            Vector3f position = getPosition(mikkTSpaceContext, i13);
            Vector3f normal = getNormal(mikkTSpaceContext, i13);
            Vector3f texCoord = getTexCoord(mikkTSpaceContext, i13);
            boolean z10 = true;
            int i14 = -1;
            int i15 = 0;
            while (i15 < i11 && z10) {
                i14 = iArr2[i15];
                int i16 = iArr[i14];
                Vector3f position2 = getPosition(mikkTSpaceContext, i16);
                Vector3f normal2 = getNormal(mikkTSpaceContext, i16);
                Vector3f texCoord2 = getTexCoord(mikkTSpaceContext, i16);
                if (position.equals(position2) && normal.equals(normal2) && texCoord.equals(texCoord2)) {
                    z10 = false;
                } else {
                    i15++;
                }
            }
            if (!z10) {
                iArr[i12] = iArr[i14];
            }
        }
    }

    public static void addTriToGroup(Group group, int i10) {
        group.faceIndices.add(Integer.valueOf(i10));
        group.nrFaces++;
    }

    public static boolean assignRecur(int[] iArr, TriInfo[] triInfoArr, int i10, Group group) {
        TriInfo triInfo = triInfoArr[i10];
        int i11 = group.vertexRepresentative;
        int i12 = i10 * 3;
        int i13 = iArr[i12] == i11 ? 0 : iArr[i12 + 1] == i11 ? 1 : iArr[i12 + 2] == i11 ? 2 : -1;
        Group[] groupArr = triInfo.assignedGroup;
        Group group2 = groupArr[i13];
        if (group2 == group) {
            return true;
        }
        if (group2 != null) {
            return false;
        }
        int i14 = triInfo.flag;
        if ((i14 & 4) != 0 && groupArr[0] == null && groupArr[1] == null && groupArr[2] == null) {
            int i15 = i14 & (-9);
            triInfo.flag = i15;
            triInfo.flag = i15 | (group.orientationPreserving ? 8 : 0);
        }
        if (((triInfo.flag & 8) != 0) != group.orientationPreserving) {
            return false;
        }
        addTriToGroup(group, i10);
        triInfo.assignedGroup[i13] = group;
        int[] iArr2 = triInfo.faceNeighbors;
        int i16 = iArr2[i13];
        int i17 = iArr2[i13 > 0 ? i13 - 1 : 2];
        if (i16 >= 0) {
            assignRecur(iArr, triInfoArr, i16, group);
        }
        if (i17 >= 0) {
            assignRecur(iArr, triInfoArr, i17, group);
        }
        return true;
    }

    public static TSpace avgTSpace(TSpace tSpace, TSpace tSpace2) {
        TSpace tSpace3 = new TSpace(null);
        if (tSpace.magS == tSpace2.magS && tSpace.magT == tSpace2.magT && tSpace.os.equals(tSpace2.os) && tSpace.ot.equals(tSpace2.ot)) {
            tSpace3.magS = tSpace.magS;
            tSpace3.magT = tSpace.magT;
            tSpace3.os.set(tSpace.os);
            tSpace3.ot.set(tSpace.ot);
        } else {
            tSpace3.magS = (tSpace.magS + tSpace2.magS) * 0.5f;
            tSpace3.magT = (tSpace.magT + tSpace2.magT) * 0.5f;
            tSpace3.os.set(tSpace.os).addLocal(tSpace2.os).normalizeLocal();
            tSpace3.ot.set(tSpace.ot).addLocal(tSpace2.ot).normalizeLocal();
        }
        return tSpace3;
    }

    public static int build4RuleGroups(TriInfo[] triInfoArr, Group[] groupArr, int[] iArr, int[] iArr2, int i10) {
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < i10; i13++) {
            int i14 = 0;
            while (i14 < 3) {
                TriInfo triInfo = triInfoArr[i13];
                if ((triInfo.flag & 4) == 0) {
                    Group[] groupArr2 = triInfo.assignedGroup;
                    if (groupArr2[i14] == null) {
                        int i15 = iArr2[(i13 * 3) + i14];
                        groupArr2[i14] = new Group(null);
                        groupArr[i11] = triInfoArr[i13].assignedGroup[i14];
                        TriInfo triInfo2 = triInfoArr[i13];
                        Group group = triInfo2.assignedGroup[i14];
                        group.vertexRepresentative = i15;
                        group.orientationPreserving = (triInfo2.flag & 8) != 0;
                        group.nrFaces = 0;
                        i11++;
                        addTriToGroup(group, i13);
                        TriInfo triInfo3 = triInfoArr[i13];
                        int i16 = triInfo3.flag;
                        int[] iArr3 = triInfo3.faceNeighbors;
                        int i17 = iArr3[i14];
                        int i18 = iArr3[i14 > 0 ? i14 - 1 : 2];
                        if (i17 >= 0) {
                            assignRecur(iArr2, triInfoArr, i17, triInfo3.assignedGroup[i14]);
                            int i19 = triInfoArr[i17].flag;
                        }
                        if (i18 >= 0) {
                            assignRecur(iArr2, triInfoArr, i18, triInfoArr[i13].assignedGroup[i14]);
                            int i20 = triInfoArr[i18].flag;
                        }
                        int i21 = triInfoArr[i13].assignedGroup[i14].nrFaces;
                        int[] iArr4 = new int[i21];
                        for (int i22 = 0; i22 < i21; i22++) {
                            iArr4[i22] = triInfoArr[i13].assignedGroup[i14].faceIndices.get(i22).intValue();
                        }
                        System.arraycopy(iArr4, 0, iArr, i12, triInfoArr[i13].assignedGroup[i14].nrFaces);
                        i12 += triInfoArr[i13].assignedGroup[i14].nrFaces;
                    }
                }
                i14++;
            }
        }
        return i11;
    }

    public static void buildNeighborsFast(TriInfo[] triInfoArr, Edge[] edgeArr, int[] iArr, int i10) {
        int i11;
        int i12;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            i11 = 3;
            if (i14 >= i10) {
                break;
            }
            int i15 = 0;
            while (i15 < 3) {
                int i16 = i14 * 3;
                int i17 = i16 + i15;
                int i18 = iArr[i17];
                int i19 = iArr[i16 + (i15 < 2 ? i15 + 1 : 0)];
                Edge edge = new Edge(null);
                edgeArr[i17] = edge;
                edge.setI0(i18 < i19 ? i18 : i19);
                Edge edge2 = edgeArr[i17];
                if (i18 < i19) {
                    i18 = i19;
                }
                edge2.setI1(i18);
                edgeArr[i17].setF(i14);
                i15++;
            }
            i14++;
        }
        int i20 = i10 * 3;
        int i21 = i20 - 1;
        quickSortEdges(edgeArr, 0, i21, 0, INTERNAL_RND_SORT_SEED);
        int i22 = 1;
        int i23 = 0;
        for (int i24 = 1; i24 < i20; i24++) {
            if (edgeArr[i23].getI0() != edgeArr[i24].getI0()) {
                quickSortEdges(edgeArr, i23, i24 - 1, 1, INTERNAL_RND_SORT_SEED);
                i23 = i24;
            }
        }
        if (i20 > 0) {
            quickSortEdges(edgeArr, i23, i21, 1, INTERNAL_RND_SORT_SEED);
        }
        int i25 = 0;
        for (int i26 = 1; i26 < i20; i26++) {
            if (edgeArr[i25].getI0() != edgeArr[i26].getI0() || edgeArr[i25].getI1() != edgeArr[i26].getI1()) {
                quickSortEdges(edgeArr, i25, i26 - 1, 2, INTERNAL_RND_SORT_SEED);
                i25 = i26;
            }
        }
        if (i20 > 0) {
            quickSortEdges(edgeArr, i25, i21, 2, INTERNAL_RND_SORT_SEED);
        }
        int i27 = 0;
        while (i27 < i20) {
            int i02 = edgeArr[i27].getI0();
            int i110 = edgeArr[i27].getI1();
            int f10 = edgeArr[i27].getF();
            int[] iArr2 = new int[i22];
            int[] iArr3 = new int[i22];
            int[] iArr4 = new int[i22];
            int[] iArr5 = new int[i22];
            int[] iArr6 = new int[i11];
            System.arraycopy(iArr, f10 * 3, iArr6, i13, i11);
            getEdge(iArr2, iArr3, iArr4, iArr6, i02, i110);
            if (triInfoArr[f10].faceNeighbors[iArr4[i13]] == -1) {
                int i28 = i27 + 1;
                int i29 = i22;
                while (i28 < i20 && i02 == edgeArr[i28].getI0() && i110 == edgeArr[i28].getI1() && i29 != 0) {
                    int[] iArr7 = new int[i22];
                    int[] iArr8 = new int[i22];
                    int f11 = edgeArr[i28].getF();
                    int i30 = i02;
                    System.arraycopy(iArr, f11 * 3, iArr6, 0, i11);
                    int i31 = i28;
                    getEdge(iArr8, iArr7, iArr5, iArr6, edgeArr[i28].getI0(), edgeArr[i28].getI1());
                    boolean z10 = triInfoArr[f11].faceNeighbors[iArr5[0]] == -1;
                    if (iArr2[0] == iArr7[0] && iArr3[0] == iArr8[0] && z10) {
                        i28 = i31;
                        i29 = 0;
                    } else {
                        i28 = i31 + 1;
                    }
                    i02 = i30;
                    i11 = 3;
                    i22 = 1;
                }
                int i32 = i28;
                if (i29 == 0) {
                    int f12 = edgeArr[i32].getF();
                    i12 = 0;
                    triInfoArr[f10].faceNeighbors[iArr4[0]] = f12;
                    triInfoArr[f12].faceNeighbors[iArr5[0]] = f10;
                } else {
                    i12 = 0;
                }
            } else {
                i12 = i13;
            }
            i27++;
            i13 = i12;
            i11 = 3;
            i22 = 1;
        }
    }

    public static void buildNeighborsSlow(TriInfo[] triInfoArr, int[] iArr, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = 0;
            while (i12 < 3) {
                if (triInfoArr[i11].faceNeighbors[i12] == -1) {
                    int i13 = i11 * 3;
                    int i14 = iArr[i13 + i12];
                    int i15 = iArr[i13 + (i12 < 2 ? i12 + 1 : 0)];
                    boolean z10 = false;
                    int i16 = 0;
                    int i17 = 0;
                    while (!z10 && i16 < i10) {
                        if (i16 != i11) {
                            i17 = 0;
                            while (!z10 && i17 < 3) {
                                int i18 = i16 * 3;
                                int i19 = iArr[i18 + i17];
                                if (i14 == iArr[i18 + (i17 < 2 ? i17 + 1 : 0)] && i15 == i19) {
                                    z10 = true;
                                } else {
                                    i17++;
                                }
                            }
                        }
                        if (!z10) {
                            i16++;
                        }
                    }
                    if (z10) {
                        triInfoArr[i11].faceNeighbors[i12] = i16;
                        triInfoArr[i16].faceNeighbors[i17] = i11;
                    }
                }
                i12++;
            }
        }
    }

    public static float calcTexArea(MikkTSpaceContext mikkTSpaceContext, int[] iArr) {
        Vector3f texCoord = getTexCoord(mikkTSpaceContext, iArr[0]);
        Vector3f texCoord2 = getTexCoord(mikkTSpaceContext, iArr[1]);
        Vector3f texCoord3 = getTexCoord(mikkTSpaceContext, iArr[2]);
        float f10 = texCoord2.f81611x;
        float f11 = texCoord.f81611x;
        float f12 = texCoord2.f81612y;
        float f13 = texCoord.f81612y;
        float f14 = ((f10 - f11) * (texCoord3.f81612y - f13)) - ((f12 - f13) * (texCoord3.f81611x - f11));
        return f14 < 0.0f ? -f14 : f14;
    }

    public static boolean compareSubGroups(SubGroup subGroup, SubGroup subGroup2) {
        if (subGroup2 == null || subGroup.nrFaces != subGroup2.nrFaces) {
            return false;
        }
        int i10 = 0;
        boolean z10 = true;
        while (i10 < subGroup.nrFaces && z10) {
            z10 = subGroup.triMembers[i10] == subGroup2.triMembers[i10];
            if (z10) {
                i10++;
            }
        }
        return z10;
    }

    public static void degenPrologue(TriInfo[] triInfoArr, int[] iArr, int i10, int i11) {
        int i12 = 0;
        while (true) {
            if (i12 >= i11 - 1) {
                break;
            }
            TriInfo triInfo = triInfoArr[i12];
            int i13 = triInfo.orgFaceNumber;
            int i14 = i12 + 1;
            TriInfo triInfo2 = triInfoArr[i14];
            if (i13 == triInfo2.orgFaceNumber) {
                int i15 = triInfo.flag;
                if (((triInfo2.flag & 1) != 0) ^ ((i15 & 1) != 0)) {
                    triInfo.flag = i15 | 2;
                    triInfo2.flag |= 2;
                }
                i12 += 2;
            } else {
                i12 = i14;
            }
        }
        int i16 = 0;
        boolean z10 = true;
        int i17 = 1;
        while (i16 < i10 && z10) {
            if ((triInfoArr[i16].flag & 1) == 0) {
                int i18 = i16 + 2;
                if (i17 < i18) {
                    i17 = i18;
                }
            } else {
                boolean z11 = true;
                while (z11 && i17 < i11) {
                    if ((triInfoArr[i17].flag & 1) == 0) {
                        z11 = false;
                    } else {
                        i17++;
                    }
                }
                int i19 = i17 + 1;
                if (z11) {
                    z10 = false;
                } else {
                    for (int i20 = 0; i20 < 3; i20++) {
                        int i21 = (i16 * 3) + i20;
                        int i22 = iArr[i21];
                        int i23 = (i17 * 3) + i20;
                        iArr[i21] = iArr[i23];
                        iArr[i23] = i22;
                    }
                    TriInfo triInfo3 = triInfoArr[i16];
                    triInfoArr[i16] = triInfoArr[i17];
                    triInfoArr[i17] = triInfo3;
                }
                i17 = i19;
            }
            if (z10) {
                i16++;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b7, code lost:
    
        if (r9 < (-1.0f)) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static TSpace evalTspace(int[] iArr, int i10, int[] iArr2, TriInfo[] triInfoArr, MikkTSpaceContext mikkTSpaceContext, int i11) {
        TSpace tSpace = new TSpace(null);
        float f10 = 0.0f;
        for (int i12 = 0; i12 < i10; i12++) {
            int i13 = iArr[i12];
            if ((triInfoArr[i13].flag & 4) == 0) {
                int i14 = i13 * 3;
                int i15 = iArr2[i14] == i11 ? 0 : iArr2[i14 + 1] == i11 ? 1 : iArr2[i14 + 2] == i11 ? 2 : -1;
                int i16 = i14 + i15;
                Vector3f normal = getNormal(mikkTSpaceContext, iArr2[i16]);
                Vector3f vector3f = triInfoArr[i13].os;
                Vector3f subtract = vector3f.subtract(normal.mult(normal.dot(vector3f)));
                Vector3f vector3f2 = triInfoArr[i13].ot;
                Vector3f subtract2 = vector3f2.subtract(normal.mult(normal.dot(vector3f2)));
                subtract.normalizeLocal();
                subtract2.normalizeLocal();
                int i17 = iArr2[(i15 < 2 ? i15 + 1 : 0) + i14];
                int i18 = iArr2[i16];
                Vector3f position = getPosition(mikkTSpaceContext, iArr2[i14 + (i15 > 0 ? i15 - 1 : 2)]);
                Vector3f position2 = getPosition(mikkTSpaceContext, i18);
                Vector3f position3 = getPosition(mikkTSpaceContext, i17);
                Vector3f subtract3 = position.subtract(position2);
                Vector3f subtract4 = position3.subtract(position2);
                subtract3.subtractLocal(normal.mult(normal.dot(subtract3))).normalizeLocal();
                subtract4.subtractLocal(normal.mult(normal.dot(subtract4))).normalizeLocal();
                float dot = subtract3.dot(subtract4);
                float f11 = dot <= 1.0f ? -1.0f : 1.0f;
                dot = f11;
                float acos = (float) Math.acos(dot);
                TriInfo triInfo = triInfoArr[i13];
                float f12 = triInfo.magS;
                float f13 = triInfo.magT;
                tSpace.os.addLocal(subtract.multLocal(acos));
                tSpace.ot.addLocal(subtract2.multLocal(acos));
                tSpace.magS += f12 * acos;
                tSpace.magT += f13 * acos;
                f10 += acos;
            }
        }
        tSpace.os.normalizeLocal();
        tSpace.ot.normalizeLocal();
        if (f10 > 0.0f) {
            tSpace.magS /= f10;
            tSpace.magT /= f10;
        }
        return tSpace;
    }

    public static int findGridCell(float f10, float f11, float f12) {
        int i10 = (int) (((f12 - f10) / (f11 - f10)) * 2048.0f);
        if (i10 >= 2048) {
            return 2047;
        }
        if (i10 >= 0) {
            return i10;
        }
        return 0;
    }

    public static boolean genTangSpace(MikkTSpaceContext mikkTSpaceContext, float f10) {
        int i10;
        int i11;
        float f11;
        int numFaces = mikkTSpaceContext.getNumFaces();
        float cos = FastMath.cos((3.1415927f * f10) / 180.0f);
        int i12 = 0;
        for (int i13 = 0; i13 < numFaces; i13++) {
            int numVerticesOfFace = mikkTSpaceContext.getNumVerticesOfFace(i13);
            if (numVerticesOfFace == 3) {
                i12++;
            } else if (numVerticesOfFace == 4) {
                i12 += 2;
            }
        }
        if (i12 <= 0) {
            return false;
        }
        int[] iArr = new int[i12 * 3];
        TriInfo[] triInfoArr = new TriInfo[i12];
        int generateInitialVerticesIndexList = generateInitialVerticesIndexList(triInfoArr, iArr, mikkTSpaceContext, i12);
        generateSharedVerticesIndexList(iArr, mikkTSpaceContext, i12);
        int i14 = 0;
        for (int i15 = 0; i15 < i12; i15++) {
            int i16 = i15 * 3;
            int i17 = iArr[i16];
            int i18 = iArr[i16 + 1];
            int i19 = iArr[i16 + 2];
            Vector3f position = getPosition(mikkTSpaceContext, i17);
            Vector3f position2 = getPosition(mikkTSpaceContext, i18);
            Vector3f position3 = getPosition(mikkTSpaceContext, i19);
            if (position.equals(position2) || position.equals(position3) || position2.equals(position3)) {
                triInfoArr[i15].flag |= 1;
                i14++;
            }
        }
        int i20 = i12 - i14;
        degenPrologue(triInfoArr, iArr, i20, i12);
        initTriInfo(triInfoArr, iArr, mikkTSpaceContext, i20);
        int i21 = i20 * 3;
        Group[] groupArr = new Group[i21];
        int build4RuleGroups = build4RuleGroups(triInfoArr, groupArr, new int[i21], iArr, i20);
        TSpace[] tSpaceArr = new TSpace[generateInitialVerticesIndexList];
        for (int i22 = 0; i22 < generateInitialVerticesIndexList; i22++) {
            TSpace tSpace = new TSpace(null);
            tSpace.os.set(1.0f, 0.0f, 0.0f);
            tSpace.magS = 1.0f;
            tSpace.ot.set(0.0f, 1.0f, 0.0f);
            tSpace.magT = 1.0f;
            tSpaceArr[i22] = tSpace;
        }
        generateTSpaces(tSpaceArr, triInfoArr, groupArr, build4RuleGroups, iArr, cos, mikkTSpaceContext);
        DegenEpilogue(tSpaceArr, triInfoArr, iArr, mikkTSpaceContext, i20, i12);
        int i23 = 0;
        int i24 = 0;
        while (i24 < numFaces) {
            int numVerticesOfFace2 = mikkTSpaceContext.getNumVerticesOfFace(i24);
            if (numVerticesOfFace2 == 3 || numVerticesOfFace2 == 4) {
                int i25 = i23;
                int i26 = 0;
                while (i26 < numVerticesOfFace2) {
                    TSpace tSpace2 = tSpaceArr[i25];
                    Vector3f vector3f = tSpace2.os;
                    float[] fArr = {vector3f.f81611x, vector3f.f81612y, vector3f.f81613z};
                    Vector3f vector3f2 = tSpace2.ot;
                    int i27 = i26;
                    mikkTSpaceContext.setTSpace(fArr, new float[]{vector3f2.f81611x, vector3f2.f81612y, vector3f2.f81613z}, tSpace2.magS, tSpace2.magT, tSpace2.orient, i24, i26);
                    if (tSpace2.orient) {
                        f11 = -1.0f;
                        i11 = i27;
                    } else {
                        i11 = i27;
                        f11 = 1.0f;
                    }
                    mikkTSpaceContext.setTSpaceBasic(fArr, f11, i24, i11);
                    i25++;
                    i26 = i11 + 1;
                }
                i10 = 1;
                i23 = i25;
            } else {
                i10 = 1;
            }
            i24 += i10;
        }
        return true;
    }

    public static boolean genTangSpaceDefault(MikkTSpaceContext mikkTSpaceContext) {
        return genTangSpace(mikkTSpaceContext, 180.0f);
    }

    public static void generate(Spatial spatial) {
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                generate(it.next());
            }
        } else if (spatial instanceof Geometry) {
            Geometry geometry = (Geometry) spatial;
            if (generateTangents(geometry.getMesh())) {
                return;
            }
            logger.log(Level.SEVERE, "Failed to generate tangents for geometry {0}", geometry.getName());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b5, code lost:
    
        if (getPosition(r18, r13).subtract(r9).lengthSquared() >= r14.subtract(r6).lengthSquared()) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int generateInitialVerticesIndexList(TriInfo[] triInfoArr, int[] iArr, MikkTSpaceContext mikkTSpaceContext, int i10) {
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < mikkTSpaceContext.getNumFaces(); i13++) {
            int numVerticesOfFace = mikkTSpaceContext.getNumVerticesOfFace(i13);
            if (numVerticesOfFace == 3 || numVerticesOfFace == 4) {
                AnonymousClass1 anonymousClass1 = null;
                TriInfo triInfo = new TriInfo(anonymousClass1);
                triInfoArr[i12] = triInfo;
                triInfo.orgFaceNumber = i13;
                triInfo.tSpacesOffs = i11;
                if (numVerticesOfFace == 3) {
                    byte[] bArr = triInfo.vertNum;
                    bArr[0] = 0;
                    bArr[1] = 1;
                    bArr[2] = 2;
                    int i14 = i12 * 3;
                    iArr[i14] = makeIndex(i13, 0);
                    iArr[i14 + 1] = makeIndex(i13, 1);
                    iArr[i14 + 2] = makeIndex(i13, 2);
                    i12++;
                } else {
                    int i15 = i12 + 1;
                    TriInfo triInfo2 = new TriInfo(anonymousClass1);
                    triInfoArr[i15] = triInfo2;
                    triInfo2.orgFaceNumber = i13;
                    triInfo2.tSpacesOffs = i11;
                    int makeIndex = makeIndex(i13, 0);
                    int makeIndex2 = makeIndex(i13, 1);
                    int makeIndex3 = makeIndex(i13, 2);
                    int makeIndex4 = makeIndex(i13, 3);
                    Vector3f texCoord = getTexCoord(mikkTSpaceContext, makeIndex);
                    Vector3f texCoord2 = getTexCoord(mikkTSpaceContext, makeIndex2);
                    Vector3f texCoord3 = getTexCoord(mikkTSpaceContext, makeIndex3);
                    Vector3f texCoord4 = getTexCoord(mikkTSpaceContext, makeIndex4);
                    float lengthSquared = texCoord3.subtract(texCoord).lengthSquared();
                    float lengthSquared2 = texCoord4.subtract(texCoord2).lengthSquared();
                    if (lengthSquared >= lengthSquared2) {
                        if (lengthSquared2 >= lengthSquared) {
                            Vector3f position = getPosition(mikkTSpaceContext, makeIndex);
                            Vector3f position2 = getPosition(mikkTSpaceContext, makeIndex2);
                            Vector3f position3 = getPosition(mikkTSpaceContext, makeIndex3);
                        }
                        byte[] bArr2 = triInfoArr[i12].vertNum;
                        bArr2[0] = 0;
                        bArr2[1] = 1;
                        bArr2[2] = 3;
                        int i16 = i12 * 3;
                        iArr[i16] = makeIndex;
                        iArr[i16 + 1] = makeIndex2;
                        iArr[i16 + 2] = makeIndex4;
                        byte[] bArr3 = triInfoArr[i15].vertNum;
                        bArr3[0] = 1;
                        bArr3[1] = 2;
                        bArr3[2] = 3;
                        int i17 = i15 * 3;
                        iArr[i17] = makeIndex2;
                        iArr[i17 + 1] = makeIndex3;
                        iArr[i17 + 2] = makeIndex4;
                        i12 += 2;
                    }
                    byte[] bArr4 = triInfoArr[i12].vertNum;
                    bArr4[0] = 0;
                    bArr4[1] = 1;
                    bArr4[2] = 2;
                    int i18 = i12 * 3;
                    iArr[i18] = makeIndex;
                    iArr[i18 + 1] = makeIndex2;
                    iArr[i18 + 2] = makeIndex3;
                    byte[] bArr5 = triInfoArr[i15].vertNum;
                    bArr5[0] = 0;
                    bArr5[1] = 2;
                    bArr5[2] = 3;
                    int i19 = i15 * 3;
                    iArr[i19] = makeIndex;
                    iArr[i19 + 1] = makeIndex3;
                    iArr[i19 + 2] = makeIndex4;
                    i12 += 2;
                }
                i11 += numVerticesOfFace;
            }
        }
        for (int i20 = 0; i20 < i10; i20++) {
            triInfoArr[i20].flag = 0;
        }
        return i11;
    }

    public static void generateSharedVerticesIndexList(int[] iArr, MikkTSpaceContext mikkTSpaceContext, int i10) {
        int i11;
        boolean z10;
        int i12;
        Vector3f position = getPosition(mikkTSpaceContext, 0);
        Vector3f m1292clone = position.m1292clone();
        int i13 = 1;
        while (true) {
            i11 = i10 * 3;
            if (i13 >= i11) {
                break;
            }
            Vector3f position2 = getPosition(mikkTSpaceContext, iArr[i13]);
            float f10 = position.f81611x;
            float f11 = position2.f81611x;
            if (f10 > f11) {
                position.f81611x = f11;
            } else if (m1292clone.f81611x < f11) {
                m1292clone.f81611x = f11;
            }
            float f12 = position.f81612y;
            float f13 = position2.f81612y;
            if (f12 > f13) {
                position.f81612y = f13;
            } else if (m1292clone.f81612y < f13) {
                m1292clone.f81612y = f13;
            }
            float f14 = position.f81613z;
            float f15 = position2.f81613z;
            if (f14 > f15) {
                position.f81613z = f15;
            } else if (m1292clone.f81613z < f15) {
                m1292clone.f81613z = f15;
            }
            i13++;
        }
        Vector3f subtract = m1292clone.subtract(position);
        float f16 = position.f81611x;
        float f17 = m1292clone.f81611x;
        float f18 = subtract.f81612y;
        float f19 = subtract.f81611x;
        int i14 = 2;
        if (f18 > f19 && f18 > subtract.f81613z) {
            f16 = position.f81612y;
            f17 = m1292clone.f81612y;
            z10 = true;
        } else if (subtract.f81613z > f19) {
            f16 = position.f81613z;
            f17 = m1292clone.f81613z;
            z10 = 2;
        } else {
            z10 = false;
        }
        int[] iArr2 = new int[i11];
        int[] iArr3 = new int[2048];
        int[] iArr4 = new int[2048];
        int[] iArr5 = new int[2048];
        for (int i15 = 0; i15 < i11; i15++) {
            Vector3f position3 = getPosition(mikkTSpaceContext, iArr[i15]);
            int findGridCell = findGridCell(f16, f17, !z10 ? position3.f81611x : z10 ? position3.f81612y : position3.f81613z);
            iArr3[findGridCell] = iArr3[findGridCell] + 1;
        }
        iArr4[0] = 0;
        for (int i16 = 1; i16 < 2048; i16++) {
            int i17 = i16 - 1;
            iArr4[i16] = iArr4[i17] + iArr3[i17];
        }
        for (int i18 = 0; i18 < i11; i18++) {
            Vector3f position4 = getPosition(mikkTSpaceContext, iArr[i18]);
            int findGridCell2 = findGridCell(f16, f17, !z10 ? position4.f81611x : z10 ? position4.f81612y : position4.f81613z);
            iArr2[iArr4[findGridCell2] + iArr5[findGridCell2]] = i18;
            iArr5[findGridCell2] = iArr5[findGridCell2] + 1;
        }
        for (int i19 = 0; i19 < 2048; i19++) {
        }
        int i20 = iArr3[0];
        for (int i21 = 1; i21 < 2048; i21++) {
            int i22 = iArr3[i21];
            if (i20 < i22) {
                i20 = i22;
            }
        }
        TmpVert[] tmpVertArr = new TmpVert[i20];
        int i23 = 0;
        for (int i24 = 2048; i23 < i24; i24 = 2048) {
            int i25 = iArr3[i23];
            if (i25 < i14) {
                i12 = i14;
            } else {
                int i26 = 0;
                while (i26 < i25) {
                    int i27 = iArr2[iArr4[i23] + i26];
                    Vector3f position5 = getPosition(mikkTSpaceContext, iArr[i27]);
                    TmpVert tmpVert = new TmpVert(null);
                    tmpVertArr[i26] = tmpVert;
                    float[] fArr = tmpVert.vert;
                    fArr[0] = position5.f81611x;
                    fArr[1] = position5.f81612y;
                    fArr[2] = position5.f81613z;
                    tmpVert.index = i27;
                    i26++;
                    i14 = 2;
                }
                i12 = i14;
                MergeVertsFast(iArr, tmpVertArr, mikkTSpaceContext, 0, i25 - 1);
            }
            i23++;
            i14 = i12;
        }
    }

    public static void generateSharedVerticesIndexListSlow(int[] iArr, MikkTSpaceContext mikkTSpaceContext, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = 0;
            while (true) {
                int i13 = 3;
                if (i12 < 3) {
                    int i14 = (i11 * 3) + i12;
                    int i15 = iArr[i14];
                    Vector3f position = getPosition(mikkTSpaceContext, i15);
                    Vector3f normal = getNormal(mikkTSpaceContext, i15);
                    Vector3f texCoord = getTexCoord(mikkTSpaceContext, i15);
                    int i16 = -1;
                    boolean z10 = false;
                    int i17 = 0;
                    while (!z10 && i17 <= i11) {
                        int i18 = 0;
                        while (!z10 && i18 < i13) {
                            int i19 = iArr[(i17 * 3) + i18];
                            Vector3f position2 = getPosition(mikkTSpaceContext, i19);
                            Vector3f normal2 = getNormal(mikkTSpaceContext, i19);
                            Vector3f texCoord2 = getTexCoord(mikkTSpaceContext, i19);
                            if (position.equals(position2) && normal.equals(normal2) && texCoord.equals(texCoord2)) {
                                z10 = true;
                                i16 = i19;
                            } else {
                                i18++;
                            }
                            i13 = 3;
                        }
                        if (!z10) {
                            i17++;
                        }
                        i13 = 3;
                    }
                    iArr[i14] = i16;
                    i12++;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean generateTSpaces(TSpace[] tSpaceArr, TriInfo[] triInfoArr, Group[] groupArr, int i10, int[] iArr, float f10, MikkTSpaceContext mikkTSpaceContext) {
        int i11;
        int i12;
        int i13 = i10;
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < i13; i16++) {
            int i17 = groupArr[i16].nrFaces;
            if (i15 < i17) {
                i15 = i17;
            }
        }
        int i18 = 1;
        if (i15 == 0) {
            return true;
        }
        TSpace[] tSpaceArr2 = new TSpace[i15];
        SubGroup[] subGroupArr = new SubGroup[i15];
        int[] iArr2 = new int[i15];
        int i19 = 0;
        while (i19 < i13) {
            Group group = groupArr[i19];
            int i20 = i14;
            int i21 = i20;
            while (i20 < group.nrFaces) {
                int intValue = group.faceIndices.get(i20).intValue();
                SubGroup subGroup = new SubGroup(null);
                Group[] groupArr2 = triInfoArr[intValue].assignedGroup;
                int i22 = groupArr2[i14] == group ? i14 : groupArr2[i18] == group ? i18 : groupArr2[2] == group ? 2 : -1;
                Vector3f normal = getNormal(mikkTSpaceContext, iArr[(intValue * 3) + i22]);
                Vector3f vector3f = triInfoArr[intValue].os;
                Vector3f subtract = vector3f.subtract(normal.mult(normal.dot(vector3f)));
                Vector3f vector3f2 = triInfoArr[intValue].ot;
                Vector3f subtract2 = vector3f2.subtract(normal.mult(normal.dot(vector3f2)));
                subtract.normalizeLocal();
                subtract2.normalizeLocal();
                int i23 = triInfoArr[intValue].orgFaceNumber;
                int i24 = i14;
                while (i24 < group.nrFaces) {
                    int intValue2 = group.faceIndices.get(i24).intValue();
                    TriInfo triInfo = triInfoArr[intValue2];
                    int i25 = i19;
                    int i26 = triInfo.orgFaceNumber;
                    Vector3f vector3f3 = triInfo.os;
                    int i27 = i20;
                    Vector3f subtract3 = vector3f3.subtract(normal.mult(normal.dot(vector3f3)));
                    Vector3f vector3f4 = triInfoArr[intValue2].ot;
                    TSpace[] tSpaceArr3 = tSpaceArr2;
                    Vector3f subtract4 = vector3f4.subtract(normal.mult(normal.dot(vector3f4)));
                    subtract3.normalizeLocal();
                    subtract4.normalizeLocal();
                    Vector3f vector3f5 = normal;
                    boolean z10 = ((triInfoArr[intValue2].flag | triInfoArr[intValue].flag) & 4) != 0;
                    boolean z11 = i23 == i26;
                    float dot = subtract.dot(subtract3);
                    float dot2 = subtract2.dot(subtract4);
                    if (z10 || z11 || (dot > f10 && dot2 > f10)) {
                        iArr2[i14] = intValue2;
                        i14++;
                    }
                    i24++;
                    i19 = i25;
                    i20 = i27;
                    tSpaceArr2 = tSpaceArr3;
                    normal = vector3f5;
                }
                TSpace[] tSpaceArr4 = tSpaceArr2;
                int i28 = i19;
                int i29 = i20;
                subGroup.nrFaces = i14;
                subGroup.triMembers = iArr2;
                if (i14 > 1) {
                    quickSort(iArr2, 0, i14 - 1, INTERNAL_RND_SORT_SEED);
                }
                boolean z12 = false;
                int i30 = 0;
                while (i30 < i21 && !z12) {
                    z12 = compareSubGroups(subGroup, subGroupArr[i30]);
                    if (!z12) {
                        i30++;
                    }
                }
                if (z12) {
                    i11 = 2;
                    i12 = 0;
                } else {
                    int[] iArr3 = new int[i14];
                    SubGroup subGroup2 = new SubGroup(null);
                    subGroupArr[i21] = subGroup2;
                    subGroup2.nrFaces = i14;
                    subGroup2.triMembers = iArr3;
                    i12 = 0;
                    System.arraycopy(subGroup.triMembers, 0, iArr3, 0, i14);
                    int i31 = i14;
                    i11 = 2;
                    tSpaceArr4[i21] = evalTspace(subGroup.triMembers, i31, iArr, triInfoArr, mikkTSpaceContext, group.vertexRepresentative);
                    i21++;
                }
                TriInfo triInfo2 = triInfoArr[intValue];
                TSpace tSpace = tSpaceArr[triInfo2.tSpacesOffs + triInfo2.vertNum[i22]];
                if (tSpace.counter == 1) {
                    tSpace.set(avgTSpace(tSpace, tSpaceArr4[i30]));
                    tSpace.counter = i11;
                    tSpace.orient = group.orientationPreserving;
                } else {
                    tSpace.set(tSpaceArr4[i30]);
                    tSpace.counter = 1;
                    tSpace.orient = group.orientationPreserving;
                }
                i20 = i29 + 1;
                i14 = i12;
                i19 = i28;
                tSpaceArr2 = tSpaceArr4;
                i18 = 1;
            }
            i19++;
            i13 = i10;
            i18 = i18;
        }
        return i18;
    }

    private static boolean generateTangents(Mesh mesh) {
        Mesh.Mode mode = mesh.getMode();
        if (mesh.getBuffer(VertexBuffer.Type.TexCoord) == null || mesh.getBuffer(VertexBuffer.Type.Normal) == null) {
            logger.log(Level.SEVERE, "Tangent generation requires both a normal and texCoord buffer");
            return false;
        }
        switch (AnonymousClass1.$SwitchMap$com$jme3$scene$Mesh$Mode[mode.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                logger.log(Level.SEVERE, "Tangent generation requires a mesh with Triangles", mode);
                return false;
            case 5:
            case 6:
            case 7:
                boolean genTangSpaceDefault = genTangSpaceDefault(new MikkTSpaceImpl(mesh));
                TangentUtils.generateBindPoseTangentsIfNecessary(mesh);
                return genTangSpaceDefault;
            case 8:
                logger.log(Level.SEVERE, "Tangent generation does not support mesh mode={0}", mode);
                return false;
            default:
                logger.log(Level.SEVERE, "Tangent generation isn't implemented for mode={0}", mode);
                return false;
        }
    }

    public static void getEdge(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int i10, int i11) {
        iArr3[0] = -1;
        int i12 = iArr4[0];
        if (i12 != i10 && i12 != i11) {
            iArr3[0] = 1;
            iArr[0] = iArr4[1];
            iArr2[0] = iArr4[2];
            return;
        }
        int i13 = iArr4[1];
        if (i13 == i10 || i13 == i11) {
            iArr3[0] = 0;
            iArr[0] = iArr4[0];
            iArr2[0] = i13;
        } else {
            iArr3[0] = 2;
            iArr[0] = iArr4[2];
            iArr2[0] = iArr4[0];
        }
    }

    public static Vector3f getNormal(MikkTSpaceContext mikkTSpaceContext, int i10) {
        int[] iArr = new int[1];
        int[] iArr2 = new int[1];
        float[] fArr = new float[3];
        indexToData(iArr, iArr2, i10);
        mikkTSpaceContext.getNormal(fArr, iArr[0], iArr2[0]);
        return new Vector3f(fArr[0], fArr[1], fArr[2]);
    }

    public static Vector3f getPosition(MikkTSpaceContext mikkTSpaceContext, int i10) {
        int[] iArr = new int[1];
        int[] iArr2 = new int[1];
        float[] fArr = new float[3];
        indexToData(iArr, iArr2, i10);
        mikkTSpaceContext.getPosition(fArr, iArr[0], iArr2[0]);
        return new Vector3f(fArr[0], fArr[1], fArr[2]);
    }

    public static Vector3f getTexCoord(MikkTSpaceContext mikkTSpaceContext, int i10) {
        int[] iArr = new int[1];
        int[] iArr2 = new int[1];
        float[] fArr = new float[2];
        indexToData(iArr, iArr2, i10);
        mikkTSpaceContext.getTexCoord(fArr, iArr[0], iArr2[0]);
        return new Vector3f(fArr[0], fArr[1], 1.0f);
    }

    private static void indexToData(int[] iArr, int[] iArr2, int i10) {
        iArr2[0] = i10 & 3;
        iArr[0] = i10 >> 2;
    }

    public static void initTriInfo(TriInfo[] triInfoArr, int[] iArr, MikkTSpaceContext mikkTSpaceContext, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            for (int i12 = 0; i12 < 3; i12++) {
                TriInfo triInfo = triInfoArr[i11];
                triInfo.faceNeighbors[i12] = -1;
                triInfo.assignedGroup[i12] = null;
                TriInfo triInfo2 = triInfoArr[i11];
                Vector3f vector3f = triInfo2.os;
                vector3f.f81611x = 0.0f;
                vector3f.f81612y = 0.0f;
                vector3f.f81613z = 0.0f;
                Vector3f vector3f2 = triInfo2.ot;
                vector3f2.f81611x = 0.0f;
                vector3f2.f81612y = 0.0f;
                vector3f2.f81613z = 0.0f;
                triInfo2.magS = 0.0f;
                triInfo2.magT = 0.0f;
                triInfo2.flag |= 4;
            }
        }
        for (int i13 = 0; i13 < i10; i13++) {
            int i14 = i13 * 3;
            Vector3f position = getPosition(mikkTSpaceContext, iArr[i14]);
            int i15 = i14 + 1;
            Vector3f position2 = getPosition(mikkTSpaceContext, iArr[i15]);
            int i16 = i14 + 2;
            Vector3f position3 = getPosition(mikkTSpaceContext, iArr[i16]);
            Vector3f texCoord = getTexCoord(mikkTSpaceContext, iArr[i14]);
            Vector3f texCoord2 = getTexCoord(mikkTSpaceContext, iArr[i15]);
            Vector3f texCoord3 = getTexCoord(mikkTSpaceContext, iArr[i16]);
            float f10 = texCoord2.f81611x;
            float f11 = texCoord.f81611x;
            float f12 = f10 - f11;
            float f13 = texCoord2.f81612y;
            float f14 = texCoord.f81612y;
            float f15 = f13 - f14;
            float f16 = texCoord3.f81611x - f11;
            float f17 = texCoord3.f81612y - f14;
            Vector3f subtract = position2.subtract(position);
            Vector3f subtract2 = position3.subtract(position);
            float f18 = (f12 * f17) - (f15 * f16);
            Vector3f subtract3 = subtract.mult(f17).subtract(subtract2.mult(f15));
            Vector3f add = subtract.mult(-f16).add(subtract2.mult(f12));
            triInfoArr[i13].flag |= f18 > 0.0f ? 8 : 0;
            if (isNotZero(f18)) {
                float abs = Math.abs(f18);
                float length = subtract3.length();
                float length2 = add.length();
                float f19 = (8 & triInfoArr[i13].flag) == 0 ? -1.0f : 1.0f;
                if (isNotZero(length)) {
                    triInfoArr[i13].os = subtract3.multLocal(f19 / length);
                }
                if (isNotZero(length2)) {
                    triInfoArr[i13].ot = add.multLocal(f19 / length2);
                }
                TriInfo triInfo3 = triInfoArr[i13];
                float f20 = length / abs;
                triInfo3.magS = f20;
                triInfo3.magT = length2 / abs;
                if (isNotZero(f20) && isNotZero(triInfoArr[i13].magT)) {
                    triInfoArr[i13].flag &= -5;
                }
            }
        }
        int i17 = 0;
        while (i17 < i10 - 1) {
            TriInfo triInfo4 = triInfoArr[i17];
            int i18 = triInfo4.orgFaceNumber;
            int i19 = i17 + 1;
            TriInfo triInfo5 = triInfoArr[i19];
            if (i18 == triInfo5.orgFaceNumber) {
                int i20 = triInfo4.flag;
                boolean z10 = true;
                boolean z11 = (i20 & 1) != 0;
                int i21 = triInfo5.flag;
                boolean z12 = (i21 & 1) != 0;
                if (!z11 && !z12) {
                    if (((i20 & 8) != 0) != ((i21 & 8) != 0)) {
                        if ((i21 & 4) == 0) {
                            int i22 = i17 * 3;
                            int i23 = i19 * 3;
                            if (calcTexArea(mikkTSpaceContext, Arrays.copyOfRange(iArr, i22, i22 + 3)) < calcTexArea(mikkTSpaceContext, Arrays.copyOfRange(iArr, i23, i23 + 3))) {
                                z10 = false;
                            }
                        }
                        int i24 = z10 ? i17 : i19;
                        if (!z10) {
                            i19 = i17;
                        }
                        TriInfo triInfo6 = triInfoArr[i19];
                        int i25 = triInfo6.flag & (-9);
                        triInfo6.flag = i25;
                        triInfo6.flag = (triInfoArr[i24].flag & 8) | i25;
                    }
                }
                i17 += 2;
            } else {
                i17 = i19;
            }
        }
        buildNeighborsFast(triInfoArr, new Edge[i10 * 3], iArr, i10);
    }

    private static boolean isNotZero(float f10) {
        return Math.abs(f10) > 0.0f;
    }

    public static int makeIndex(int i10, int i11) {
        return (i10 << 2) | (i11 & 3);
    }

    public static void quickSort(int[] iArr, int i10, int i11, long j10) {
        int i12;
        long j11 = 31 & j10;
        long j12 = j10 + ((j10 >> ((int) (32 - j11))) | (j10 << ((int) j11))) + 3;
        long j13 = j12 & 4294967295L;
        int i13 = iArr[((int) ((j12 & 4294967295L) % ((i11 - i10) + 1))) + i10];
        int i14 = i10;
        int i15 = i11;
        while (true) {
            if (iArr[i14] < i13) {
                i14++;
            } else {
                while (true) {
                    i12 = iArr[i15];
                    if (i12 <= i13) {
                        break;
                    } else {
                        i15--;
                    }
                }
                if (i14 <= i15) {
                    int i16 = iArr[i14];
                    iArr[i14] = i12;
                    iArr[i15] = i16;
                    i14++;
                    i15--;
                }
                if (i14 > i15) {
                    break;
                }
            }
        }
        if (i10 < i15) {
            quickSort(iArr, i10, i15, j13);
        }
        if (i14 < i11) {
            quickSort(iArr, i14, i11, j13);
        }
    }

    public static void quickSortEdges(Edge[] edgeArr, int i10, int i11, int i12, long j10) {
        Edge edge;
        int i13 = (i11 - i10) + 1;
        if (i13 < 2) {
            return;
        }
        if (i13 == 2) {
            Edge edge2 = edgeArr[i10];
            int i14 = edge2.array[i12];
            Edge edge3 = edgeArr[i11];
            if (i14 > edge3.array[i12]) {
                edgeArr[i10] = edge3;
                edgeArr[i11] = edge2;
                return;
            }
            return;
        }
        long j11 = 31 & j10;
        long j12 = (j10 + ((j10 >> ((int) (32 - j11))) | (j10 << ((int) j11))) + 3) & 4294967295L;
        int i15 = edgeArr[((int) (j12 % i13)) + i10].array[i12];
        int i16 = i10;
        int i17 = i11;
        while (true) {
            if (edgeArr[i16].array[i12] < i15) {
                i16++;
            } else {
                while (true) {
                    edge = edgeArr[i17];
                    if (edge.array[i12] <= i15) {
                        break;
                    } else {
                        i17--;
                    }
                }
                if (i16 <= i17) {
                    Edge edge4 = edgeArr[i16];
                    edgeArr[i16] = edge;
                    edgeArr[i17] = edge4;
                    i16++;
                    i17--;
                }
                if (i16 > i17) {
                    break;
                }
            }
        }
        if (i10 < i17) {
            quickSortEdges(edgeArr, i10, i17, i12, j12);
        }
        if (i16 < i11) {
            quickSortEdges(edgeArr, i16, i11, i12, j12);
        }
    }

    public static class Edge {
        int[] array;

        private Edge() {
            this.array = new int[3];
        }

        public int getF() {
            return this.array[2];
        }

        public int getI0() {
            return this.array[0];
        }

        public int getI1() {
            return this.array[1];
        }

        public void setF(int i10) {
            this.array[2] = i10;
        }

        public void setI0(int i10) {
            this.array[0] = i10;
        }

        public void setI1(int i10) {
            this.array[1] = i10;
        }

        public Edge(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public static class Group {
        List<Integer> faceIndices;
        int nrFaces;
        boolean orientationPreserving;
        int vertexRepresentative;

        private Group() {
            this.faceIndices = new ArrayList();
        }

        public Group(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public static class TmpVert {
        int index;
        float[] vert;

        private TmpVert() {
            this.vert = new float[3];
        }

        public TmpVert(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public static class TSpace {
        int counter;
        float magS;
        float magT;
        boolean orient;
        Vector3f os;
        Vector3f ot;

        private TSpace() {
            this.os = new Vector3f();
            this.ot = new Vector3f();
        }

        public void set(TSpace tSpace) {
            this.os.set(tSpace.os);
            this.magS = tSpace.magS;
            this.ot.set(tSpace.ot);
            this.magT = tSpace.magT;
            this.counter = tSpace.counter;
            this.orient = tSpace.orient;
        }

        public TSpace(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public static class TriInfo {
        Group[] assignedGroup;
        int[] faceNeighbors;
        int flag;
        float magS;
        float magT;
        int orgFaceNumber;
        Vector3f os;
        Vector3f ot;
        int tSpacesOffs;
        byte[] vertNum;

        private TriInfo() {
            this.faceNeighbors = new int[3];
            this.assignedGroup = new Group[3];
            this.os = new Vector3f();
            this.ot = new Vector3f();
            this.vertNum = new byte[4];
        }

        public TriInfo(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public static void generate(Mesh mesh) {
        if (generateTangents(mesh)) {
            return;
        }
        logger.log(Level.SEVERE, "Failed to generate tangents for mesh {0}", mesh);
    }
}
