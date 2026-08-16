package com.ardor3d.util.geom;

import com.ardor3d.bounding.BoundingVolume;
import com.ardor3d.renderer.IndexMode;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.scenegraph.FloatBufferData;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.MeshData;
import com.ardor3d.scenegraph.Node;
import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.scenegraph.visitor.Visitor;
import com.google.common.collect.M1;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;

public class MeshCombiner {
    public static final float[] DEFAULT_COLOR = {1.0f, 1.0f, 1.0f, 1.0f};
    public static final float[] DEFAULT_NORMAL = {0.0f, 1.0f, 0.0f};
    public static final float[] DEFAULT_TEXCOORD = {0.0f};

    public static final Mesh combine(Node node) {
        final ArrayList q10 = M1.q();
        node.acceptVisitor(new Visitor() {
            @Override
            public void visit(Spatial spatial) {
                if (spatial instanceof Mesh) {
                    List.this.add((Mesh) spatial);
                }
            }
        }, true);
        return combine(q10);
    }

    public static final Mesh combine(Mesh... meshArr) {
        return combine(M1.t(meshArr));
    }

    public static final Mesh combine(Collection<Mesh> collection) {
        EnumMap<RenderState.StateType, RenderState> enumMap;
        FloatBufferData floatBufferData;
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        boolean z10 = false;
        int i10 = 2;
        BoundingVolume boundingVolume = null;
        IndexMode indexMode = null;
        EnumMap<RenderState.StateType, RenderState> enumMap2 = null;
        int i11 = 0;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        int i12 = 0;
        boolean z14 = false;
        int i13 = 3;
        boolean z15 = true;
        for (Mesh mesh : collection) {
            mesh.updateWorldTransform(z10);
            MeshData meshData = mesh.getMeshData();
            if (z15) {
                i13 = meshData.getVertexCoords().getValuesPerTuple();
                boundingVolume = mesh.getModelBound(null);
                enumMap2 = mesh.getLocalRenderStates();
                z15 = false;
            } else if (i13 != meshData.getVertexCoords().getValuesPerTuple()) {
                throw new IllegalArgumentException("all MeshData vertex coords must use same tuple size.");
            }
            i11 += meshData.getVertexCount();
            if (!z13 && meshData.getIndexBuffer() == null) {
                indexMode = meshData.getIndexMode(0);
            } else {
                if (meshData.getIndexBuffer() != null) {
                    meshData.getIndices().capacity();
                } else {
                    meshData.getVertexCount();
                }
                z13 = true;
            }
            if (!z12 && meshData.getNormalBuffer() != null) {
                z12 = true;
            }
            if (!z11 && meshData.getColorBuffer() != null) {
                z11 = true;
            }
            if (meshData.getNumberOfUnits() > 0) {
                if (!z14) {
                    i10 = meshData.getTextureCoords(0).getValuesPerTuple();
                    z14 = true;
                } else if (meshData.getTextureCoords(0) != null && i10 != meshData.getTextureCoords(0).getValuesPerTuple()) {
                    throw new IllegalArgumentException("all MeshData objects with texcoords must use same tuple size.");
                }
                i12 = Math.max(i12, meshData.getNumberOfUnits());
            }
            z10 = false;
        }
        Mesh mesh2 = new Mesh("combined");
        MeshData meshData2 = new MeshData();
        mesh2.setMeshData(meshData2);
        FloatBufferData floatBufferData2 = new FloatBufferData(i11 * i13, i13);
        meshData2.setVertexCoords(floatBufferData2);
        FloatBufferData floatBufferData3 = z11 ? new FloatBufferData(i11 * 4, 4) : null;
        meshData2.setColorCoords(floatBufferData3);
        if (z12) {
            enumMap = enumMap2;
            floatBufferData = new FloatBufferData(i11 * 3, 3);
        } else {
            enumMap = enumMap2;
            floatBufferData = null;
        }
        meshData2.setNormalCoords(floatBufferData);
        ArrayList u10 = M1.u(i12);
        int i14 = 0;
        while (i14 < i12) {
            u10.add(new FloatBufferData(i11 * i10, i10));
            i14++;
            mesh2 = mesh2;
            boundingVolume = boundingVolume;
        }
        Mesh mesh3 = mesh2;
        BoundingVolume boundingVolume2 = boundingVolume;
        meshData2.setTextureCoords(z14 ? u10 : null);
        IndexCombiner indexCombiner = new IndexCombiner();
        Iterator<Mesh> it = collection.iterator();
        int i15 = 0;
        while (it.hasNext()) {
            Mesh next = it.next();
            Iterator<Mesh> it2 = it;
            MeshData meshData3 = next.getMeshData();
            meshData3.getVertexBuffer().rewind();
            FloatBufferData floatBufferData4 = floatBufferData2;
            MeshData meshData4 = meshData2;
            IndexMode indexMode2 = indexMode;
            floatBufferData2.getBuffer().put(next.getWorldVectors(null));
            if (z12) {
                FloatBuffer normalBuffer = meshData3.getNormalBuffer();
                if (normalBuffer != null) {
                    normalBuffer.rewind();
                    floatBufferData.getBuffer().put(next.getWorldNormals(null));
                } else {
                    for (int i16 = 0; i16 < meshData3.getVertexCount(); i16++) {
                        floatBufferData.getBuffer().put(DEFAULT_NORMAL);
                    }
                }
            }
            if (z11) {
                FloatBuffer colorBuffer = meshData3.getColorBuffer();
                if (colorBuffer != null) {
                    colorBuffer.rewind();
                    floatBufferData3.getBuffer().put(colorBuffer);
                } else {
                    for (int i17 = 0; i17 < meshData3.getVertexCount(); i17++) {
                        floatBufferData3.getBuffer().put(DEFAULT_COLOR);
                    }
                }
            }
            if (z14) {
                for (int i18 = 0; i18 < i12; i18++) {
                    FloatBuffer buffer = u10.get(i18).getBuffer();
                    FloatBuffer textureBuffer = meshData3.getTextureBuffer(i18);
                    if (textureBuffer != null) {
                        textureBuffer.rewind();
                        buffer.put(textureBuffer);
                    } else {
                        for (int i19 = 0; i19 < meshData3.getVertexCount() * i10; i19++) {
                            buffer.put(DEFAULT_TEXCOORD);
                        }
                    }
                }
            }
            if (z13) {
                indexCombiner.addEntry(meshData3, i15);
                i15 += meshData3.getVertexCount();
            }
            it = it2;
            indexMode = indexMode2;
            floatBufferData2 = floatBufferData4;
            meshData2 = meshData4;
        }
        MeshData meshData5 = meshData2;
        IndexMode indexMode3 = indexMode;
        if (z13) {
            indexCombiner.saveTo(meshData5);
        } else {
            meshData5.setIndexLengths(null);
            meshData5.setIndexMode(indexMode3);
        }
        mesh3.setModelBound(boundingVolume2);
        Iterator<RenderState> it3 = enumMap.values().iterator();
        while (it3.hasNext()) {
            mesh3.setRenderState(it3.next());
        }
        return mesh3;
    }
}
