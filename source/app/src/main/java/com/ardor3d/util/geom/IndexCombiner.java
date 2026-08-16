package com.ardor3d.util.geom;

import com.ardor3d.renderer.IndexMode;
import com.ardor3d.scenegraph.IndexBufferData;
import com.ardor3d.scenegraph.MeshData;
import com.google.common.collect.C12566s;
import com.google.common.collect.M1;
import com.google.common.collect.S1;
import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

class IndexCombiner {
    S1<IndexMode, int[]> sectionMap = C12566s.M();

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
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.Quads.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.Lines.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.Points.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.TriangleFan.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.QuadStrip.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.LineLoop.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.LineStrip.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.TriangleStrip.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public void addEntry(MeshData meshData, int i10) {
        if (meshData.getIndexBuffer() == null) {
            IndexMode[] indexModes = meshData.getIndexModes();
            int sectionCount = meshData.getSectionCount();
            int i11 = 0;
            int i12 = 0;
            for (int i13 = 0; i13 < sectionCount; i13++) {
                int vertexCount = meshData.getIndexLengths() != null ? meshData.getIndexLengths()[i13] : meshData.getVertexCount();
                int[] iArr = new int[vertexCount];
                for (int i14 = 0; i14 < vertexCount; i14++) {
                    iArr[i14] = i14 + i10 + i11;
                }
                this.sectionMap.put(indexModes[i12], iArr);
                i11 += vertexCount;
                if (i12 < indexModes.length - 1) {
                    i12++;
                }
            }
            return;
        }
        IndexBufferData<?> indices = meshData.getIndices();
        indices.rewind();
        IndexMode[] indexModes2 = meshData.getIndexModes();
        int sectionCount2 = meshData.getSectionCount();
        int i15 = 0;
        int i16 = 0;
        for (int i17 = 0; i17 < sectionCount2; i17++) {
            int capacity = meshData.getIndexLengths() != null ? meshData.getIndexLengths()[i17] : meshData.getIndices().capacity();
            int[] iArr2 = new int[capacity];
            for (int i18 = 0; i18 < capacity; i18++) {
                iArr2[i18] = indices.get(i18 + i15) + i10;
            }
            this.sectionMap.put(indexModes2[i16], iArr2);
            i15 += capacity;
            if (i16 < indexModes2.length - 1) {
                i16++;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void saveTo(MeshData meshData) {
        ArrayList q10 = M1.q();
        ArrayList q11 = M1.q();
        int i10 = 0;
        for (IndexMode indexMode : this.sectionMap.keySet()) {
            Collection<int[]> y10 = this.sectionMap.y(indexMode);
            switch (AnonymousClass1.$SwitchMap$com$ardor3d$renderer$IndexMode[indexMode.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                    Iterator<int[]> it = y10.iterator();
                    int i11 = 0;
                    while (it.hasNext()) {
                        i11 += it.next().length;
                    }
                    i10 += i11;
                    IntBuffer createIntBufferOnHeap = BufferUtils.createIntBufferOnHeap(i11);
                    Iterator<int[]> it2 = y10.iterator();
                    while (it2.hasNext()) {
                        createIntBufferOnHeap.put(it2.next());
                    }
                    q10.add(createIntBufferOnHeap);
                    q11.add(indexMode);
                    break;
                case 5:
                case 6:
                case 7:
                case 8:
                    for (int[] iArr : y10) {
                        int length = iArr.length;
                        i10 += length;
                        IntBuffer createIntBufferOnHeap2 = BufferUtils.createIntBufferOnHeap(length);
                        createIntBufferOnHeap2.put(iArr);
                        q10.add(createIntBufferOnHeap2);
                        q11.add(indexMode);
                    }
                    break;
                case 9:
                    Iterator<int[]> it3 = y10.iterator();
                    int i12 = 0;
                    while (it3.hasNext()) {
                        i12 += it3.next().length + 2;
                    }
                    int i13 = i12 - 2;
                    i10 += i13;
                    IntBuffer createIntBufferOnHeap3 = BufferUtils.createIntBufferOnHeap(i13);
                    int i14 = 0;
                    for (int[] iArr2 : y10) {
                        if (i14 != 0) {
                            createIntBufferOnHeap3.put(iArr2[0]);
                        }
                        createIntBufferOnHeap3.put(iArr2);
                        if (i14 < y10.size() - 1) {
                            createIntBufferOnHeap3.put(iArr2[iArr2.length - 1]);
                        }
                        i14++;
                    }
                    q10.add(createIntBufferOnHeap3);
                    q11.add(indexMode);
                    break;
            }
        }
        IndexBufferData<?> createIndexBufferData = BufferUtils.createIndexBufferData(i10, meshData.getVertexCount() - 1);
        meshData.setIndices(createIndexBufferData);
        int size = q10.size();
        int[] iArr3 = new int[size];
        for (int i15 = 0; i15 < size; i15++) {
            IntBuffer intBuffer = (IntBuffer) q10.get(i15);
            intBuffer.rewind();
            iArr3[i15] = intBuffer.remaining();
            while (intBuffer.hasRemaining()) {
                createIndexBufferData.put2(intBuffer.get());
            }
        }
        meshData.setIndexLengths(iArr3);
        meshData.setIndexModes((IndexMode[]) q11.toArray(new IndexMode[q11.size()]));
    }
}
