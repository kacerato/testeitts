package com.ardor3d.util.geom;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.Vector2;
import com.ardor3d.math.Vector3;
import com.ardor3d.scenegraph.IndexBufferData;
import com.ardor3d.scenegraph.Mesh;
import com.google.common.collect.Q1;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.logging.Logger;

public abstract class GeometryTool {
    private static final Logger logger = Logger.getLogger(GeometryTool.class.getName());

    public enum MatchCondition {
        Normal,
        UVs,
        Color,
        Group
    }

    private static Vector2[] getTexs(Vector2[][] vector2Arr, int i10) {
        Vector2[] vector2Arr2 = new Vector2[vector2Arr.length];
        for (int i11 = 0; i11 < vector2Arr.length; i11++) {
            Vector2[] vector2Arr3 = vector2Arr[i11];
            if (vector2Arr3 != null) {
                vector2Arr2[i11] = vector2Arr3[i10];
            }
        }
        return vector2Arr2;
    }

    public static VertMap minimizeVerts(Mesh mesh, EnumSet<MatchCondition> enumSet) {
        VertGroupData vertGroupData = new VertGroupData();
        vertGroupData.setGroupConditions(0L, enumSet);
        return minimizeVerts(mesh, vertGroupData);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static VertMap minimizeVerts(Mesh mesh, VertGroupData vertGroupData) {
        long currentTimeMillis = System.currentTimeMillis();
        int vertexCount = mesh.getMeshData().getVertexCount();
        VertMap vertMap = new VertMap(mesh);
        int i10 = -1;
        int i11 = 0;
        while (i10 != i11) {
            int vertexCount2 = mesh.getMeshData().getVertexCount();
            Vector3[] vector3Array = BufferUtils.getVector3Array(mesh.getMeshData().getVertexBuffer());
            Vector3[] vector3Array2 = mesh.getMeshData().getNormalBuffer() != null ? BufferUtils.getVector3Array(mesh.getMeshData().getNormalBuffer()) : null;
            ColorRGBA[] colorArray = mesh.getMeshData().getColorBuffer() != null ? BufferUtils.getColorArray(mesh.getMeshData().getColorBuffer()) : null;
            int numberOfUnits = mesh.getMeshData().getNumberOfUnits();
            Vector2[][] vector2Arr = new Vector2[numberOfUnits];
            for (int i12 = 0; i12 < numberOfUnits; i12++) {
                if (mesh.getMeshData().getTextureCoords(i12) != null) {
                    vector2Arr[i12] = BufferUtils.getVector2Array(mesh.getMeshData().getTextureCoords(i12).getBuffer());
                }
            }
            int[] intArray = BufferUtils.getIntArray(mesh.getMeshData().getIndices());
            HashMap Y10 = Q1.Y();
            HashMap Y11 = Q1.Y();
            int length = vector3Array.length;
            long j10 = currentTimeMillis;
            int i13 = 0;
            int i14 = 0;
            while (i14 < length) {
                int i15 = vertexCount;
                long groupForVertex = vertGroupData.getGroupForVertex(i14);
                VertKey vertKey = new VertKey(vector3Array[i14], vector3Array2 != null ? vector3Array2[i14] : null, colorArray != null ? colorArray[i14] : null, getTexs(vector2Arr, i14), vertGroupData.getGroupConditions(groupForVertex), groupForVertex);
                if (Y10.containsKey(vertKey)) {
                    Integer num = (Integer) Y10.get(vertKey);
                    int intValue = num.intValue();
                    if (Y11.containsKey(Integer.valueOf(i14))) {
                        Y11.put(Integer.valueOf(length), num);
                    } else {
                        Y11.put(Integer.valueOf(i14), num);
                    }
                    length--;
                    if (i14 != length) {
                        Y11.put(Integer.valueOf(length), Integer.valueOf(i14));
                        vector3Array[i14] = vector3Array[length];
                        vector3Array[length] = null;
                        if (vector3Array2 != null) {
                            vector3Array2[intValue].addLocal(vector3Array2[i14].normalizeLocal());
                            vector3Array2[i14] = vector3Array2[length];
                        }
                        if (colorArray != null) {
                            colorArray[i14] = colorArray[length];
                        }
                        for (int i16 = 0; i16 < numberOfUnits; i16++) {
                            if (mesh.getMeshData().getTextureCoords(i16) != null) {
                                Vector2[] vector2Arr2 = vector2Arr[i16];
                                vector2Arr2[i14] = vector2Arr2[length];
                            }
                        }
                        i14--;
                    } else {
                        vector3Array[length] = null;
                    }
                } else {
                    Y10.put(vertKey, Integer.valueOf(i14));
                    i13++;
                }
                i14++;
                vertexCount = i15;
            }
            int i17 = vertexCount;
            if (vector3Array2 != null) {
                for (Vector3 vector3 : vector3Array2) {
                    vector3.normalizeLocal();
                }
            }
            mesh.getMeshData().setVertexBuffer(BufferUtils.createFloatBuffer(0, i13, vector3Array));
            if (vector3Array2 != null) {
                mesh.getMeshData().setNormalBuffer(BufferUtils.createFloatBuffer(0, i13, vector3Array2));
            }
            if (colorArray != null) {
                mesh.getMeshData().setColorBuffer(BufferUtils.createFloatBuffer(0, i13, colorArray));
            }
            for (int i18 = 0; i18 < numberOfUnits; i18++) {
                if (vector2Arr[i18] != null) {
                    mesh.getMeshData().setTextureBuffer(BufferUtils.createFloatBuffer(0, i13, vector2Arr[i18]), i18);
                }
            }
            IndexBufferData<?> indices = mesh.getMeshData().getIndices();
            indices.rewind();
            for (int i19 : intArray) {
                if (Y11.containsKey(Integer.valueOf(i19))) {
                    indices.put2(Y11.get(Integer.valueOf(i19)).intValue());
                } else {
                    indices.put2(i19);
                }
            }
            vertMap.applyRemapping(Y11);
            i11 = mesh.getMeshData().getVertexCount();
            i10 = vertexCount2;
            currentTimeMillis = j10;
            vertexCount = i17;
        }
        logger.info("Vertex reduction complete on: " + ((Object) mesh) + "  old vertex count: " + vertexCount + " new vertex count: " + i11 + " (in " + (System.currentTimeMillis() - currentTimeMillis) + " ms)");
        return vertMap;
    }
}
