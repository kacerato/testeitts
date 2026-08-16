package com.ardor3d.scenegraph.shape;

import com.ardor3d.math.Quaternion;
import com.ardor3d.math.Vector3;
import com.ardor3d.scenegraph.IndexBufferData;
import com.ardor3d.scenegraph.Line;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.util.geom.BufferUtils;
import java.lang.reflect.Array;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.List;

public class Extrusion extends Mesh {
    private static final long serialVersionUID = 1;

    public Extrusion() {
    }

    private static void solveTridiag(double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4, int i10) {
        for (int i11 = 2; i11 <= i10; i11++) {
            int i12 = i11 - 1;
            double d10 = dArr[i11] / dArr2[i12];
            dArr[i11] = d10;
            dArr2[i11] = dArr2[i11] - (d10 * dArr3[i12]);
            dArr4[i11] = dArr4[i11] - (dArr[i11] * dArr4[i12]);
        }
        dArr4[i10] = dArr4[i10] / dArr2[i10];
        for (int i13 = i10 - 1; i13 >= 1; i13--) {
            dArr4[i13] = (dArr4[i13] - (dArr3[i13] * dArr4[i13 + 1])) / dArr2[i13];
        }
    }

    public void updateGeometry(Line line, List<Vector3> list, Vector3 vector3) {
        updateGeometry(line, list, false, vector3);
    }

    public Extrusion(String str) {
        super(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01ca A[LOOP:1: B:15:0x00ac->B:32:0x01ca, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e2  */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.nio.Buffer] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateGeometry(Line line, List<Vector3> list, boolean z10, Vector3 vector3) {
        FloatBuffer createFloatBuffer;
        FloatBuffer createFloatBuffer2;
        IndexBufferData<?> createIndexBufferData;
        Vector3 vector32;
        Vector3 vector33;
        int i10;
        int i11;
        Vector3 vector34;
        Quaternion quaternion;
        FloatBuffer floatBuffer;
        IndexBufferData<?> indexBufferData;
        Extrusion extrusion = this;
        List<Vector3> list2 = list;
        FloatBuffer vertexBuffer = line.getMeshData().getVertexBuffer();
        FloatBuffer normalBuffer = line.getMeshData().getNormalBuffer();
        int size = list.size() * vertexBuffer.limit();
        if (extrusion._meshData.getVertexBuffer() != null && extrusion._meshData.getVertexBuffer().limit() == size) {
            createFloatBuffer = extrusion._meshData.getVertexBuffer();
            createFloatBuffer2 = extrusion._meshData.getNormalBuffer();
            createFloatBuffer.rewind();
            createFloatBuffer2.rewind();
        } else {
            createFloatBuffer = BufferUtils.createFloatBuffer(size);
            createFloatBuffer2 = BufferUtils.createFloatBuffer(size);
        }
        int size2 = (list.size() - 1) * 2 * vertexBuffer.limit();
        if (extrusion._meshData.getIndexBuffer() != null && extrusion._meshData.getIndexBuffer().limit() == size2) {
            createIndexBufferData = extrusion._meshData.getIndices();
            createIndexBufferData.getBuffer().rewind();
        } else {
            createIndexBufferData = BufferUtils.createIndexBufferData(size2, size - 1);
        }
        int limit = vertexBuffer.limit() / 3;
        Vector3 vector35 = new Vector3();
        Vector3 vector36 = new Vector3();
        Quaternion quaternion2 = new Quaternion();
        int i12 = 0;
        int i13 = 0;
        while (i13 < list.size()) {
            Vector3 vector37 = list2.get(i13);
            vertexBuffer.rewind();
            normalBuffer.rewind();
            int i14 = i12;
            while (true) {
                if (i13 < list.size() - 1) {
                    vector33 = list2.get(i13 + 1);
                } else if (z10) {
                    vector33 = list2.get(i12);
                } else {
                    vector32 = null;
                    Vector3 vector38 = i13 > 0 ? list2.get(i13 - 1) : null;
                    if (vector32 == null) {
                        vector36.set(vector32).subtractLocal(vector37);
                    } else {
                        vector36.set(vector37).subtractLocal(vector38);
                    }
                    quaternion2.lookAt(vector36, vector3);
                    Vector3 vector39 = vector37;
                    i10 = i14;
                    i11 = i13;
                    vector34 = vector36;
                    quaternion = quaternion2;
                    floatBuffer = normalBuffer;
                    IndexBufferData<?> indexBufferData2 = createIndexBufferData;
                    vector35.set(normalBuffer.get(), normalBuffer.get(), normalBuffer.get());
                    quaternion.apply(vector35, vector35);
                    createFloatBuffer2.put((float) vector35.getX());
                    createFloatBuffer2.put((float) vector35.getY());
                    createFloatBuffer2.put((float) vector35.getZ());
                    vector35.set(vertexBuffer.get(), vertexBuffer.get(), vertexBuffer.get());
                    quaternion.apply(vector35, vector35);
                    vector35.addLocal(vector39);
                    createFloatBuffer.put((float) vector35.getX());
                    createFloatBuffer.put((float) vector35.getY());
                    createFloatBuffer.put((float) vector35.getZ());
                    if ((i10 & 1) == 0) {
                        indexBufferData = indexBufferData2;
                    } else if (i11 < list.size() - 1) {
                        int i15 = (i11 * limit) + i10;
                        indexBufferData = indexBufferData2;
                        indexBufferData.put2(i15);
                        int i16 = i15 + 1;
                        indexBufferData.put2(i16);
                        int i17 = ((i11 + 1) * limit) + i10;
                        indexBufferData.put2(i17);
                        indexBufferData.put2(i17 + 1);
                        indexBufferData.put2(i17);
                        indexBufferData.put2(i16);
                    } else {
                        indexBufferData = indexBufferData2;
                        if (z10) {
                            int i18 = (i11 * limit) + i10;
                            indexBufferData.put2(i18);
                            int i19 = i18 + 1;
                            indexBufferData.put2(i19);
                            indexBufferData.put2(i10);
                            indexBufferData.put2(i10 + 1);
                            indexBufferData.put2(i10);
                            indexBufferData.put2(i19);
                        }
                    }
                    i14 = i10 + 1;
                    if (vertexBuffer.hasRemaining()) {
                        break;
                    }
                    i13 = i11;
                    vector37 = vector39;
                    quaternion2 = quaternion;
                    createIndexBufferData = indexBufferData;
                    normalBuffer = floatBuffer;
                    i12 = 0;
                    vector36 = vector34;
                    list2 = list;
                }
                vector32 = vector33;
                Vector3 vector382 = i13 > 0 ? list2.get(i13 - 1) : null;
                if (vector32 == null) {
                }
                quaternion2.lookAt(vector36, vector3);
                Vector3 vector392 = vector37;
                i10 = i14;
                i11 = i13;
                vector34 = vector36;
                quaternion = quaternion2;
                floatBuffer = normalBuffer;
                IndexBufferData<?> indexBufferData22 = createIndexBufferData;
                vector35.set(normalBuffer.get(), normalBuffer.get(), normalBuffer.get());
                quaternion.apply(vector35, vector35);
                createFloatBuffer2.put((float) vector35.getX());
                createFloatBuffer2.put((float) vector35.getY());
                createFloatBuffer2.put((float) vector35.getZ());
                vector35.set(vertexBuffer.get(), vertexBuffer.get(), vertexBuffer.get());
                quaternion.apply(vector35, vector35);
                vector35.addLocal(vector392);
                createFloatBuffer.put((float) vector35.getX());
                createFloatBuffer.put((float) vector35.getY());
                createFloatBuffer.put((float) vector35.getZ());
                if ((i10 & 1) == 0) {
                }
                i14 = i10 + 1;
                if (vertexBuffer.hasRemaining()) {
                }
            }
            i13 = i11 + 1;
            extrusion = this;
            list2 = list;
            quaternion2 = quaternion;
            createIndexBufferData = indexBufferData;
            normalBuffer = floatBuffer;
            i12 = 0;
            vector36 = vector34;
        }
        extrusion._meshData.setVertexBuffer(createFloatBuffer);
        extrusion._meshData.setNormalBuffer(createFloatBuffer2);
        extrusion._meshData.setIndices(createIndexBufferData);
    }

    public Extrusion(Line line, List<Vector3> list, Vector3 vector3) {
        updateGeometry(line, list, vector3);
    }

    public Extrusion(String str, Line line, List<Vector3> list, Vector3 vector3) {
        super(str);
        updateGeometry(line, list, vector3);
    }

    public void updateGeometry(Line line, List<Vector3> list, int i10, Vector3 vector3) {
        updateGeometry(line, list, i10, false, vector3);
    }

    public void updateGeometry(Line line, List<Vector3> list, int i10, boolean z10, Vector3 vector3) {
        int i11;
        int i12;
        Vector3 vector32;
        int i13 = i10;
        int size = list.size();
        if (z10) {
            size += 3;
        }
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, 3, size);
        double[] dArr2 = new double[size];
        ArrayList arrayList = new ArrayList();
        for (int i14 = 0; i14 < size; i14++) {
            if (!z10) {
                vector32 = list.get(i14);
            } else if (i14 == 0) {
                vector32 = list.get(list.size() - 1);
            } else if (i14 >= size - 2) {
                vector32 = list.get((i14 - size) + 2);
            } else {
                vector32 = list.get(i14 - 1);
            }
            Vector3 vector33 = vector32;
            dArr2[i14] = i14;
            dArr[0][i14] = vector33.getX();
            dArr[1][i14] = vector33.getY();
            dArr[2][i14] = vector33.getZ();
        }
        if (size > 1) {
            double[][] dArr3 = (double[][]) Array.newInstance(Double.TYPE, 3, size);
            double[] dArr4 = new double[size];
            int i15 = 1;
            while (true) {
                i11 = size - 1;
                if (i15 > i11) {
                    break;
                }
                dArr4[i15] = dArr2[i15] - dArr2[i15 - 1];
                i15++;
            }
            double d10 = 6.0d;
            if (size > 2) {
                double[] dArr5 = new double[i11];
                double[] dArr6 = new double[i11];
                double[] dArr7 = new double[i11];
                int i16 = 1;
                while (true) {
                    i12 = size - 2;
                    if (i16 > i12) {
                        break;
                    }
                    int i17 = i16 + 1;
                    dArr6[i16] = (dArr4[i16] + dArr4[i17]) / 3.0d;
                    dArr7[i16] = dArr4[i17] / d10;
                    dArr5[i16] = dArr4[i16] / d10;
                    for (int i18 = 0; i18 < 3; i18++) {
                        double[] dArr8 = dArr3[i18];
                        double[] dArr9 = dArr[i18];
                        double d11 = dArr9[i17];
                        double d12 = dArr9[i16];
                        dArr8[i16] = ((d11 - d12) / dArr4[i17]) - ((d12 - dArr9[i16 - 1]) / dArr4[i16]);
                    }
                    i16 = i17;
                    d10 = 6.0d;
                }
                int i19 = 0;
                for (int i20 = 3; i19 < i20; i20 = 3) {
                    solveTridiag((double[]) dArr5.clone(), (double[]) dArr6.clone(), (double[]) dArr7.clone(), dArr3[i19], i12);
                    i19++;
                }
            }
            if (!z10) {
                arrayList.add(new Vector3(dArr[0][0], dArr[1][0], dArr[2][0]));
            }
            int i21 = 3;
            double[] dArr10 = new double[3];
            int i22 = z10 ? 2 : 1;
            while (i22 <= size - 2) {
                int i23 = 1;
                while (i23 <= i13) {
                    int i24 = 0;
                    while (i24 < i21) {
                        double d13 = dArr4[i22];
                        double[][] dArr11 = dArr;
                        double d14 = (i23 * d13) / i13;
                        double d15 = d13 - d14;
                        double[] dArr12 = dArr3[i24];
                        int i25 = i22 - 1;
                        double[][] dArr13 = dArr3;
                        double d16 = ((-dArr12[i25]) / 6.0d) * (d15 + d13) * d14;
                        double[] dArr14 = dArr11[i24];
                        dArr10[i24] = (((d16 + dArr14[i25]) * d15) + ((((((-dArr12[i22]) / 6.0d) * (d14 + d13)) * d15) + dArr14[i22]) * d14)) / d13;
                        i24++;
                        dArr3 = dArr13;
                        i13 = i10;
                        dArr = dArr11;
                        size = size;
                        i21 = 3;
                    }
                    arrayList.add(new Vector3(dArr10[0], dArr10[1], dArr10[2]));
                    i23++;
                    dArr3 = dArr3;
                    i13 = i10;
                    size = size;
                    i21 = 3;
                }
                i22++;
                i13 = i10;
                size = size;
                i21 = 3;
            }
        }
        updateGeometry(line, arrayList, z10, vector3);
    }
}
