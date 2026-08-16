package com.ardor3d.util.geom;

import com.ardor3d.scenegraph.Mesh;
import java.util.Map;

public class VertMap {
    private int[] _lookupTable;

    public VertMap(Mesh mesh) {
        setupTable(mesh);
    }

    private void setupTable(Mesh mesh) {
        this._lookupTable = new int[mesh.getMeshData().getVertexCount()];
        int i10 = 0;
        while (true) {
            int[] iArr = this._lookupTable;
            if (i10 >= iArr.length) {
                return;
            }
            iArr[i10] = i10;
            i10++;
        }
    }

    public void applyRemapping(Map<Integer, Integer> map) {
        int i10 = 0;
        while (true) {
            int[] iArr = this._lookupTable;
            if (i10 >= iArr.length) {
                return;
            }
            if (map.containsKey(Integer.valueOf(iArr[i10]))) {
                int[] iArr2 = this._lookupTable;
                iArr2[i10] = map.get(Integer.valueOf(iArr2[i10])).intValue();
            }
            i10++;
        }
    }

    public int getNewIndex(int i10) {
        return this._lookupTable[i10];
    }
}
