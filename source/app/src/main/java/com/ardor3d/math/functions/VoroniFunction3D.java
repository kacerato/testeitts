package com.ardor3d.math.functions;

import com.ardor3d.math.MathUtils;
import com.ardor3d.math.Vector3;
import java.util.HashMap;
import java.util.Map;

public class VoroniFunction3D implements Function3D {
    private static final int SEARCH_RADIUS = 2;
    private double _displacement;
    private double _frequency;
    private final Map<Key, Vector3> _points;
    private int _seed;
    private boolean _useDistance;

    public static class Key {

        int f58735x;

        int f58736y;

        int f58737z;

        public Key() {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            return this.f58735x == key.f58735x && this.f58736y == key.f58736y && this.f58737z == key.f58737z;
        }

        public int hashCode() {
            int i10 = this.f58735x + 544;
            int i11 = i10 + (i10 * 31) + this.f58736y;
            return i11 + (i11 * 31) + this.f58737z;
        }

        public Key(Key key) {
            this.f58735x = key.f58735x;
            this.f58736y = key.f58736y;
            this.f58737z = key.f58737z;
        }
    }

    public VoroniFunction3D() {
        this._frequency = 1.0d;
        this._useDistance = false;
        this._displacement = 1.0d;
        this._seed = 0;
        this._points = new HashMap();
    }

    private double point(int i10, int i11, int i12, int i13) {
        int i14 = ((i10 * 4241) + (i11 * 7817) + (i12 * 38261) + (i13 * 1979)) & Integer.MAX_VALUE;
        int i15 = i14 ^ (i14 >> 13);
        return 1.0d - ((((i15 * (((i15 * i15) * 15731) + 789221)) + 1376312589) & Integer.MAX_VALUE) / 1.073741824E9d);
    }

    @Override
    public double eval(double d10, double d11, double d12) {
        int i10;
        int i11;
        Vector3 vector3;
        Vector3 vector32;
        double d13 = this._frequency;
        double d14 = d10 * d13;
        double d15 = d11 * d13;
        double d16 = d13 * d12;
        int floor = (int) MathUtils.floor(d14);
        int floor2 = (int) MathUtils.floor(d15);
        int floor3 = (int) MathUtils.floor(d16);
        Key key = new Key();
        Vector3 vector33 = new Vector3();
        int i12 = floor - 2;
        double d17 = Double.MAX_VALUE;
        while (i12 <= floor + 2) {
            key.f58735x = i12;
            int i13 = floor2 - 2;
            while (true) {
                i10 = floor;
                if (i13 <= floor2 + 2) {
                    key.f58736y = i13;
                    int i14 = floor3 - 2;
                    while (true) {
                        i11 = floor2;
                        if (i14 <= floor3 + 2) {
                            key.f58737z = i14;
                            Vector3 vector34 = this._points.get(key);
                            int i15 = floor3;
                            if (vector34 == null) {
                                vector3 = vector33;
                                vector34 = new Vector3(i12 + point(i12, i13, i14, this._seed), i13 + point(i12, i13, i14, this._seed + 1), i14 + point(i12, i13, i14, this._seed + 2));
                                this._points.put(new Key(key), vector34);
                            } else {
                                vector3 = vector33;
                            }
                            double x10 = vector34.getX() - d14;
                            double y10 = vector34.getY() - d15;
                            double z10 = vector34.getZ() - d16;
                            double d18 = (x10 * x10) + (y10 * y10) + (z10 * z10);
                            if (d18 < d17) {
                                vector32 = vector3;
                                vector32.set(vector34);
                                d17 = d18;
                            } else {
                                vector32 = vector3;
                            }
                            i14++;
                            floor2 = i11;
                            vector33 = vector32;
                            floor3 = i15;
                        }
                    }
                    i13++;
                    floor = i10;
                    floor2 = i11;
                    floor3 = floor3;
                }
            }
            i12++;
            floor = i10;
            floor3 = floor3;
        }
        Vector3 vector35 = vector33;
        return (this._useDistance ? MathUtils.sqrt(d17) : 0.0d) + (this._displacement * point(MathUtils.floor(vector35.getXf()), MathUtils.floor(vector35.getYf()), MathUtils.floor(vector35.getZf()), 0));
    }

    public double getDisplacement() {
        return this._displacement;
    }

    public double getFrequency() {
        return this._frequency;
    }

    public int getSeed() {
        return this._seed;
    }

    public boolean isUseDistance() {
        return this._useDistance;
    }

    public void setDisplacement(double d10) {
        this._displacement = d10;
    }

    public void setFrequency(double d10) {
        this._frequency = d10;
    }

    public void setSeed(int i10) {
        this._seed = i10;
    }

    public void setUseDistance(boolean z10) {
        this._useDistance = z10;
    }

    public VoroniFunction3D(double d10, double d11, boolean z10, int i10) {
        this._frequency = 1.0d;
        this._useDistance = false;
        this._displacement = 1.0d;
        this._seed = 0;
        this._points = new HashMap();
        this._frequency = d10;
        this._displacement = d11;
        this._useDistance = z10;
        this._seed = i10;
    }
}
