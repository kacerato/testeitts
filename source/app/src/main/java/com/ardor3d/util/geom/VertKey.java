package com.ardor3d.util.geom;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.Vector2;
import com.ardor3d.math.Vector3;
import com.ardor3d.util.geom.GeometryTool;
import java.util.EnumSet;

public class VertKey {
    private final ColorRGBA _color;
    private int _hashCode;
    private final Vector3 _norm;
    private final EnumSet<GeometryTool.MatchCondition> _options;
    private final long _smoothGroup;
    private final Vector2[] _texs;
    private final Vector3 _vert;

    public VertKey(Vector3 vector3, Vector3 vector32, ColorRGBA colorRGBA, Vector2[] vector2Arr, EnumSet<GeometryTool.MatchCondition> enumSet) {
        this(vector3, vector32, colorRGBA, vector2Arr, enumSet, 0L);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VertKey)) {
            return false;
        }
        VertKey vertKey = (VertKey) obj;
        if (vertKey._options != this._options || !vertKey._vert.equals(this._vert)) {
            return false;
        }
        if (this._options.contains(GeometryTool.MatchCondition.Normal)) {
            Vector3 vector3 = this._norm;
            if (vector3 != null) {
                if (!vector3.equals(vertKey._norm)) {
                    return false;
                }
            } else if (vertKey._norm != null) {
                return false;
            }
        }
        if (this._options.contains(GeometryTool.MatchCondition.Color)) {
            ColorRGBA colorRGBA = this._color;
            if (colorRGBA != null) {
                if (!colorRGBA.equals(vertKey._color)) {
                    return false;
                }
            } else if (vertKey._color != null) {
                return false;
            }
        }
        if (this._options.contains(GeometryTool.MatchCondition.UVs)) {
            Vector2[] vector2Arr = this._texs;
            if (vector2Arr != null) {
                Vector2[] vector2Arr2 = vertKey._texs;
                if (vector2Arr2 != null && vector2Arr2.length == vector2Arr.length) {
                    int i10 = 0;
                    while (true) {
                        Vector2[] vector2Arr3 = this._texs;
                        if (i10 >= vector2Arr3.length) {
                            break;
                        }
                        Vector2 vector2 = vector2Arr3[i10];
                        if (vector2 != null) {
                            if (!vector2.equals(vertKey._texs[i10])) {
                                return false;
                            }
                        } else if (vertKey._texs[i10] != null) {
                            return false;
                        }
                        i10++;
                    }
                } else {
                    return false;
                }
            } else if (vertKey._texs != null) {
                return false;
            }
        }
        return !this._options.contains(GeometryTool.MatchCondition.Group) || vertKey._smoothGroup == this._smoothGroup;
    }

    public int hashCode() {
        ColorRGBA colorRGBA;
        Vector3 vector3;
        int i10 = this._hashCode;
        if (i10 != 0) {
            return i10;
        }
        this._hashCode = this._vert.hashCode();
        if (this._options.contains(GeometryTool.MatchCondition.Normal) && (vector3 = this._norm) != null) {
            long doubleToLongBits = Double.doubleToLongBits(vector3.getX());
            int i11 = this._hashCode;
            this._hashCode = i11 + (i11 * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
            long doubleToLongBits2 = Double.doubleToLongBits(this._norm.getY());
            int i12 = this._hashCode;
            this._hashCode = i12 + (i12 * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
            long doubleToLongBits3 = Double.doubleToLongBits(this._norm.getZ());
            int i13 = this._hashCode;
            this._hashCode = i13 + (i13 * 31) + ((int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32)));
        }
        if (this._options.contains(GeometryTool.MatchCondition.Color) && (colorRGBA = this._color) != null) {
            int floatToIntBits = Float.floatToIntBits(colorRGBA.getRed());
            int i14 = this._hashCode;
            this._hashCode = i14 + (i14 * 31) + floatToIntBits;
            int floatToIntBits2 = Float.floatToIntBits(this._color.getGreen());
            int i15 = this._hashCode;
            this._hashCode = i15 + (i15 * 31) + floatToIntBits2;
            int floatToIntBits3 = Float.floatToIntBits(this._color.getBlue());
            int i16 = this._hashCode;
            this._hashCode = i16 + (i16 * 31) + floatToIntBits3;
            int floatToIntBits4 = Float.floatToIntBits(this._color.getAlpha());
            int i17 = this._hashCode;
            this._hashCode = i17 + (i17 * 31) + floatToIntBits4;
        }
        if (this._options.contains(GeometryTool.MatchCondition.UVs) && this._texs != null) {
            int i18 = 0;
            while (true) {
                Vector2[] vector2Arr = this._texs;
                if (i18 >= vector2Arr.length) {
                    break;
                }
                Vector2 vector2 = vector2Arr[i18];
                if (vector2 != null) {
                    long doubleToLongBits4 = Double.doubleToLongBits(vector2.getX());
                    int i19 = this._hashCode;
                    this._hashCode = i19 + (i19 * 31) + ((int) (doubleToLongBits4 ^ (doubleToLongBits4 >>> 32)));
                    long doubleToLongBits5 = Double.doubleToLongBits(this._texs[i18].getY());
                    int i20 = this._hashCode;
                    this._hashCode = i20 + (i20 * 31) + ((int) (doubleToLongBits5 ^ (doubleToLongBits5 >>> 32)));
                }
                i18++;
            }
        }
        if (this._options.contains(GeometryTool.MatchCondition.Group)) {
            this._hashCode = (int) (this._hashCode + (r0 * 31) + this._smoothGroup);
        }
        return this._hashCode;
    }

    public VertKey(Vector3 vector3, Vector3 vector32, ColorRGBA colorRGBA, Vector2[] vector2Arr, EnumSet<GeometryTool.MatchCondition> enumSet, long j10) {
        this._hashCode = 0;
        this._vert = vector3;
        enumSet = enumSet == null ? EnumSet.noneOf(GeometryTool.MatchCondition.class) : enumSet;
        this._options = enumSet;
        this._norm = enumSet.contains(GeometryTool.MatchCondition.Normal) ? vector32 : null;
        this._color = enumSet.contains(GeometryTool.MatchCondition.Color) ? colorRGBA : null;
        this._texs = enumSet.contains(GeometryTool.MatchCondition.UVs) ? vector2Arr : null;
        this._smoothGroup = enumSet.contains(GeometryTool.MatchCondition.Group) ? j10 : 0L;
    }
}
