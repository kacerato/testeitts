package com.ardor3d.bounding;

import com.ardor3d.intersection.PrimitiveKey;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.scenegraph.Mesh;
import java.util.Comparator;

public class TreeComparator implements Comparator<PrimitiveKey> {
    private Axis _axis;
    private Mesh _mesh;
    private Vector3[] _aCompare = null;
    private Vector3[] _bCompare = null;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$bounding$TreeComparator$Axis;

        static {
            int[] iArr = new int[Axis.values().length];
            $SwitchMap$com$ardor3d$bounding$TreeComparator$Axis = iArr;
            try {
                iArr[Axis.X.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$bounding$TreeComparator$Axis[Axis.Y.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$bounding$TreeComparator$Axis[Axis.Z.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum Axis {
        X,
        Y,
        Z
    }

    public void setAxis(Axis axis) {
        this._axis = axis;
    }

    public void setMesh(Mesh mesh) {
        this._mesh = mesh;
    }

    @Override
    public int compare(PrimitiveKey primitiveKey, PrimitiveKey primitiveKey2) {
        ReadOnlyVector3[] readOnlyVector3Arr;
        Vector3 divideLocal;
        Vector3 divideLocal2;
        if (primitiveKey.equals(primitiveKey2)) {
            return 0;
        }
        this._aCompare = this._mesh.getMeshData().getPrimitive(primitiveKey.getPrimitiveIndex(), primitiveKey.getSection(), this._aCompare);
        this._bCompare = this._mesh.getMeshData().getPrimitive(primitiveKey2.getPrimitiveIndex(), primitiveKey2.getSection(), this._bCompare);
        int i10 = 1;
        while (true) {
            ReadOnlyVector3[] readOnlyVector3Arr2 = this._aCompare;
            if (i10 >= readOnlyVector3Arr2.length) {
                break;
            }
            readOnlyVector3Arr2[0].addLocal(readOnlyVector3Arr2[i10]);
            i10++;
        }
        int i11 = 1;
        while (true) {
            readOnlyVector3Arr = this._bCompare;
            if (i11 >= readOnlyVector3Arr.length) {
                break;
            }
            readOnlyVector3Arr[0].addLocal(readOnlyVector3Arr[i11]);
            i11++;
        }
        Vector3[] vector3Arr = this._aCompare;
        if (vector3Arr.length == readOnlyVector3Arr.length) {
            divideLocal = vector3Arr[0];
            divideLocal2 = readOnlyVector3Arr[0];
        } else {
            divideLocal = vector3Arr[0].divideLocal(vector3Arr.length);
            divideLocal2 = this._bCompare[0].divideLocal(r0.length);
        }
        int i12 = AnonymousClass1.$SwitchMap$com$ardor3d$bounding$TreeComparator$Axis[this._axis.ordinal()];
        if (i12 == 1) {
            if (divideLocal.getX() < divideLocal2.getX()) {
                return -1;
            }
            return divideLocal.getX() > divideLocal2.getX() ? 1 : 0;
        }
        if (i12 == 2) {
            if (divideLocal.getY() < divideLocal2.getY()) {
                return -1;
            }
            return divideLocal.getY() > divideLocal2.getY() ? 1 : 0;
        }
        if (i12 != 3) {
            return 0;
        }
        if (divideLocal.getZ() < divideLocal2.getZ()) {
            return -1;
        }
        return divideLocal.getZ() > divideLocal2.getZ() ? 1 : 0;
    }
}
