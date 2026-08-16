package com.ardor3d.intersection;

import com.ardor3d.math.Vector3;

public abstract class Intersection {
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
    
        if (r0 != 4) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0016, code lost:
    
        if (r0 != 4) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000c, code lost:
    
        if (r0 != 4) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean intersection(Vector3[] vector3Arr, Vector3[] vector3Arr2) {
        int length = vector3Arr.length;
        if (length != 1) {
            if (length != 2) {
                if (length == 3) {
                    int length2 = vector3Arr2.length;
                    if (length2 == 1 || length2 == 2) {
                        return false;
                    }
                    if (length2 == 3) {
                        return TriangleTriangleIntersect.intersectTriTri(vector3Arr[0], vector3Arr[1], vector3Arr[2], vector3Arr2[0], vector3Arr2[1], vector3Arr2[2]);
                    }
                }
                int length3 = vector3Arr2.length;
                if (length3 != 1) {
                    if (length3 != 2) {
                        if (length3 != 3) {
                        }
                    }
                }
                return false;
            }
            int length4 = vector3Arr2.length;
            if (length4 == 1 || length4 == 2 || length4 == 3 || length4 == 4) {
                return false;
            }
        }
        if (vector3Arr2.length == 1) {
            return vector3Arr[0].equals(vector3Arr2[0]);
        }
        return false;
    }
}
