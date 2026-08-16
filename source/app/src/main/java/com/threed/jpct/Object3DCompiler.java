package com.threed.jpct;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;

public class Object3DCompiler implements Serializable {
    private static final long serialVersionUID = 1;

    private void append(StringBuilder sb2, int i10) {
        int i11 = i10 + 1000;
        if (i11 <= 65536) {
            sb2.append((char) i11);
            return;
        }
        int i12 = i11 >> 16;
        sb2.append(i11 - (i12 << 16));
        sb2.append(i12);
    }

    public void compile(Object3D object3D) {
        ArrayList<OcTreeNode> arrayList;
        boolean z10;
        int[][] iArr;
        ArrayList<OcTreeNode> arrayList2;
        int[] iArr2;
        int i10;
        int i11;
        int i12;
        ArrayList<CompiledInstance> arrayList3 = object3D.compiled;
        if (arrayList3 == null || arrayList3.size() != 0) {
            return;
        }
        Object3D object3D2 = object3D.shareWith;
        if (object3D2 != null) {
            if (object3D2.shareWith != null) {
                Logger.log("Can't share data with an object that shares data itself. Share data with the source object instead!", 0);
                return;
            }
            int size = object3D2.compiled.size();
            boolean z11 = size > 0 ? object3D.shareWith.compiled.get(0) instanceof CompiledInstanceFP : false;
            for (int i13 = 0; i13 < size; i13++) {
                int i14 = object3D.shareWith.compiled.get(i13).polyIndex;
                if (z11) {
                    object3D.addCompiled(new CompiledInstanceFP(object3D, i14, -1));
                } else {
                    object3D.addCompiled(new CompiledInstance(object3D, i14, -1));
                }
            }
            if (Logger.getLogLevel() >= 2) {
                Logger.log("Object " + object3D.getID() + "/" + object3D.getName() + " precompiled!", 2);
                return;
            }
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (object3D.isCompiled() || object3D.compiled == null) {
            if (Logger.getLogLevel() < 2 || object3D.compiled == null) {
                return;
            }
            Logger.log("Object " + object3D.getID() + "/" + object3D.getName() + " already compiled!", 0);
            return;
        }
        HashMap hashMap = new HashMap();
        int i15 = Config.glBatchSize;
        int i16 = object3D.batchSize;
        if (i16 != -1) {
            i15 = i16;
        }
        int min = Math.min(16000, i15);
        int i17 = object3D.getMesh().anzTri;
        HashMap hashMap2 = new HashMap();
        if (object3D.getOcTree() == null || !object3D.getOcTree().getRenderingUse()) {
            arrayList = null;
            z10 = false;
        } else {
            arrayList = object3D.getOcTree().getFilledLeafs();
            z10 = true;
        }
        StringBuilder sb2 = new StringBuilder();
        int[] iArr3 = object3D.texture;
        int[][] iArr4 = object3D.multiTex;
        int[][] iArr5 = object3D.multiMode;
        boolean z12 = object3D.fixedPointMode && !(object3D.dynamic && BufferUtilFactory.hasNativeSupport());
        ArrayList<OcTreeNode> arrayList4 = arrayList;
        int i18 = 0;
        int i19 = -1;
        while (i18 < i17) {
            long j10 = currentTimeMillis;
            sb2.setLength(0);
            append(sb2, iArr3[i18]);
            if (iArr4 != null) {
                int length = iArr4.length;
                int i20 = 0;
                while (i20 < length) {
                    int[] iArr6 = iArr4[i20];
                    int[] iArr7 = iArr5[i20];
                    sb2.append('_');
                    append(sb2, iArr6[i18]);
                    sb2.append('/');
                    append(sb2, iArr7[i18]);
                    i20++;
                    iArr5 = iArr5;
                }
            }
            int[][] iArr8 = iArr5;
            if (z10) {
                if (i19 != -1) {
                    arrayList2 = arrayList4;
                    int[] polygons = arrayList2.get(i19).getPolygons();
                    int length2 = polygons.length;
                    iArr2 = iArr3;
                    int i21 = 0;
                    while (i21 < length2) {
                        iArr = iArr4;
                        if (i18 == polygons[i21]) {
                            i10 = arrayList2.get(i19).getID();
                            i11 = -1;
                            break;
                        } else {
                            i21++;
                            iArr4 = iArr;
                        }
                    }
                    iArr = iArr4;
                } else {
                    iArr = iArr4;
                    arrayList2 = arrayList4;
                    iArr2 = iArr3;
                }
                i11 = -1;
                i10 = -1;
                if (i10 == i11) {
                    int i22 = i10;
                    int i23 = i19;
                    int i24 = 0;
                    while (i24 < arrayList2.size()) {
                        int[] polygons2 = arrayList2.get(i24).getPolygons();
                        int length3 = polygons2.length;
                        int i25 = 0;
                        while (true) {
                            if (i25 >= length3) {
                                i12 = 1;
                                break;
                            }
                            int i26 = i23;
                            if (i18 == polygons2[i25]) {
                                i22 = arrayList2.get(i24).getID();
                                i23 = i24;
                                i12 = 1;
                                i24 = arrayList2.size();
                                break;
                            }
                            i25++;
                            i23 = i26;
                        }
                        i24 += i12;
                    }
                    i19 = i23;
                    i10 = i22;
                }
                sb2.append("_oc_");
                append(sb2, i10);
            } else {
                iArr = iArr4;
                arrayList2 = arrayList4;
                iArr2 = iArr3;
                i10 = -1;
            }
            String sb3 = sb2.toString();
            int[] iArr9 = (int[]) hashMap2.get(sb3);
            if (iArr9 == null) {
                iArr9 = new int[1];
                hashMap2.put(sb3, iArr9);
            }
            iArr9[0] = iArr9[0] + 1;
            sb2.append('_');
            append(sb2, iArr9[0] / min);
            String sb4 = sb2.toString();
            CompiledInstance compiledInstance = (CompiledInstance) hashMap.get(sb4);
            if (compiledInstance == null) {
                compiledInstance = z12 ? new CompiledInstance(object3D, i18, i10) : new CompiledInstanceFP(object3D, i18, i10);
                hashMap.put(sb4, compiledInstance);
            }
            compiledInstance.add(i18);
            i18++;
            iArr3 = iArr2;
            currentTimeMillis = j10;
            iArr4 = iArr;
            arrayList4 = arrayList2;
            iArr5 = iArr8;
        }
        hashMap2.clear();
        ArrayList arrayList5 = new ArrayList(hashMap.o());
        Collections.sort(arrayList5);
        for (int i27 = 0; i27 < arrayList5.size(); i27++) {
            String str = (String) arrayList5.get(i27);
            CompiledInstance compiledInstance2 = (CompiledInstance) hashMap.remove(str);
            compiledInstance2.fill();
            compiledInstance2.setKey(str);
            object3D.addCompiled(compiledInstance2);
        }
        if (Logger.getLogLevel() >= 2) {
            Logger.log("Object " + object3D.getID() + "/" + object3D.getName() + " compiled to " + hashMap.size() + " subobjects in " + (System.currentTimeMillis() - currentTimeMillis) + "ms!", 2);
        }
    }
}
