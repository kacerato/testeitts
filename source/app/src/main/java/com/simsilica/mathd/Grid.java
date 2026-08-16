package com.simsilica.mathd;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.reflect.Field;

public class Grid implements Serializable {
    static final long serialVersionUID = 42;
    private final int dimensions;
    private final Vec3i gridSpacing;
    private final Mask xMask;
    private final Mask yMask;
    private final Mask zMask;

    public static final class Mask implements Serializable {
        static final long serialVersionUID = 1;
        private final long mask;
        private final int shift;
        private final int signCheck;
        private final int signExtend;

        public Mask(int i10) {
            this.shift = i10;
            long j10 = (-1) << i10;
            this.signExtend = (int) j10;
            this.signCheck = 1 << (i10 - 1);
            this.mask = ~j10;
        }

        public long apply(int i10, long j10) {
            return j10 | (i10 & this.mask);
        }

        public int extract(long j10) {
            if (this.shift == 0) {
                return 0;
            }
            int i10 = (int) (j10 & this.mask);
            return (this.signCheck & i10) != 0 ? i10 | this.signExtend : i10;
        }
    }

    public Grid(int i10) {
        this(i10, i10, i10);
    }

    private int cellToWorld(int i10, int i11) {
        return i10 * i11;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        if (this.xMask == null) {
            int i10 = 64 / this.dimensions;
            Mask mask = this.gridSpacing.f83550x != 0 ? new Mask(i10) : new Mask(0);
            Mask mask2 = this.gridSpacing.f83551y != 0 ? new Mask(i10) : new Mask(0);
            Mask mask3 = this.gridSpacing.f83552z != 0 ? new Mask(i10) : new Mask(0);
            try {
                Class<?> cls = getClass();
                Field declaredField = cls.getDeclaredField("xMask");
                declaredField.setAccessible(true);
                Field declaredField2 = cls.getDeclaredField("yMask");
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("zMask");
                declaredField3.setAccessible(true);
                declaredField.set(this, mask);
                declaredField2.set(this, mask2);
                declaredField3.set(this, mask3);
            } catch (Exception e10) {
                throw new IOException("Error deserializing older version", e10);
            }
        }
    }

    private int worldToCell(int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        if (i10 < 0) {
            return ((i10 + 1) / i11) - 1;
        }
        return i10 / i11;
    }

    public final long cellToId(Vec3i vec3i) {
        return cellToId(vec3i.f83550x, vec3i.f83551y, vec3i.f83552z);
    }

    public final GridCell getContainingCell(double d10, double d11, double d12) {
        return new GridCell(this, worldToCell(d10, d11, d12));
    }

    public final int getDimensions() {
        return this.dimensions;
    }

    public final GridCell getGridCell(Vec3i vec3i) {
        return new GridCell(this, vec3i.m1324clone());
    }

    public final Vec3i getIdBits() {
        return new Vec3i(this.xMask.shift, this.yMask.shift, this.zMask.shift);
    }

    public final Vec3i getSpacing() {
        return this.gridSpacing;
    }

    public final Vec3i idToCell(long j10, Vec3i vec3i) {
        int extract = this.zMask.extract(j10);
        long j11 = j10 >> this.zMask.shift;
        int extract2 = this.yMask.extract(j11);
        int extract3 = this.xMask.extract(j11 >> this.yMask.shift);
        int unused = this.xMask.shift;
        if (vec3i == null) {
            return new Vec3i(extract3, extract2, extract);
        }
        vec3i.set(extract3, extract2, extract);
        return vec3i;
    }

    public String toString() {
        return "Grid[" + ((Object) this.gridSpacing) + "]";
    }

    public final long worldToId(Vec3d vec3d) {
        return worldToId(vec3d.f83547x, vec3d.f83548y, vec3d.f83549z);
    }

    public Grid(int i10, int i11) {
        this(i10, 0, i11);
    }

    public final long cellToId(int i10, int i11, int i12) {
        return this.zMask.apply(i12, this.yMask.apply(i11, this.xMask.apply(i10, 0L) << this.yMask.shift) << this.zMask.shift);
    }

    public final Vec3i cellToWorld(int i10, int i11, int i12) {
        return cellToWorld(i10, i11, i12, new Vec3i());
    }

    public final GridCell getContainingCell(Vec3d vec3d) {
        return getContainingCell(vec3d.f83547x, vec3d.f83548y, vec3d.f83549z);
    }

    public final GridCell getGridCell(int i10, int i11, int i12) {
        return new GridCell(this, new Vec3i(i10, i11, i12));
    }

    public final long worldToId(double d10, double d11, double d12) {
        return cellToId(worldToCell(d10, this.gridSpacing.f83550x), worldToCell(d11, this.gridSpacing.f83551y), worldToCell(d12, this.gridSpacing.f83552z));
    }

    public Grid(int i10, int i11, int i12) {
        this(new Vec3i(i10, i11, i12), (Vec3i) null);
    }

    private int worldToCell(double d10, int i10) {
        return worldToCell((int) Math.floor(d10), i10);
    }

    public final Vec3i cellToWorld(int i10, int i11, int i12, Vec3i vec3i) {
        if (vec3i == null) {
            vec3i = new Vec3i();
        }
        vec3i.f83550x = cellToWorld(i10, this.gridSpacing.f83550x);
        vec3i.f83551y = cellToWorld(i11, this.gridSpacing.f83551y);
        vec3i.f83552z = cellToWorld(i12, this.gridSpacing.f83552z);
        return vec3i;
    }

    public final GridCell getContainingCell(Vec3i vec3i) {
        return getContainingCell(vec3i.f83550x, vec3i.f83551y, vec3i.f83552z);
    }

    public Grid(int i10, int i11, int i12, Vec3i vec3i) {
        this(new Vec3i(i10, i11, i12), vec3i);
    }

    public final Vec3i worldToCell(double d10, double d11, double d12) {
        return worldToCell(d10, d11, d12, new Vec3i());
    }

    public Grid(Vec3i vec3i) {
        this(vec3i, (Vec3i) null);
    }

    public final Vec3i worldToCell(double d10, double d11, double d12, Vec3i vec3i) {
        if (vec3i == null) {
            vec3i = new Vec3i();
        }
        vec3i.f83550x = worldToCell(d10, this.gridSpacing.f83550x);
        vec3i.f83551y = worldToCell(d11, this.gridSpacing.f83551y);
        vec3i.f83552z = worldToCell(d12, this.gridSpacing.f83552z);
        return vec3i;
    }

    public Grid(Vec3i vec3i, Vec3i vec3i2) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        if (vec3i2 != null && (i14 = vec3i2.f83550x + vec3i2.f83551y + vec3i2.f83552z) > 64) {
            throw new IllegalArgumentException("Bit overfload in bit sizes:" + i14);
        }
        this.gridSpacing = vec3i;
        int i15 = 0;
        int i16 = vec3i.f83550x != 0 ? 1 : 0;
        int i17 = i16;
        if (vec3i.f83551y != 0) {
            i16++;
            i10 = 1;
        } else {
            i10 = 0;
        }
        if (vec3i.f83552z != 0) {
            i16++;
            i15 = 1;
        }
        this.dimensions = i16;
        int i18 = 64 / i16;
        if (vec3i2 == null) {
            i11 = i17 * i18;
            i12 = i10 * i18;
            i13 = i15 * i18;
        } else {
            if (i17 > 0 && vec3i2.f83550x == 0) {
                throw new IllegalArgumentException("Grid spacing has x but no xBits allocated");
            }
            if (i10 > 0 && vec3i2.f83551y == 0) {
                throw new IllegalArgumentException("Grid spacing has y but no yBits allocated");
            }
            if (i15 > 0 && vec3i2.f83552z == 0) {
                throw new IllegalArgumentException("Grid spacing has z but no zBits allocated");
            }
            i11 = vec3i2.f83550x;
            i12 = vec3i2.f83551y;
            i13 = vec3i2.f83552z;
        }
        this.xMask = new Mask(i11);
        this.yMask = new Mask(i12);
        this.zMask = new Mask(i13);
    }

    public final Vec3d cellToWorld(int i10, int i11, int i12, Vec3d vec3d) {
        if (vec3d == null) {
            vec3d = new Vec3d();
        }
        vec3d.f83547x = cellToWorld(i10, this.gridSpacing.f83550x);
        vec3d.f83548y = cellToWorld(i11, this.gridSpacing.f83551y);
        vec3d.f83549z = cellToWorld(i12, this.gridSpacing.f83552z);
        return vec3d;
    }

    public final Vec3i idToCell(long j10) {
        return idToCell(j10, new Vec3i());
    }

    public final Vec3i worldToCell(Vec3d vec3d) {
        return worldToCell(vec3d.f83547x, vec3d.f83548y, vec3d.f83549z, new Vec3i());
    }

    public final Vec3i worldToCell(Vec3d vec3d, Vec3i vec3i) {
        return worldToCell(vec3d.f83547x, vec3d.f83548y, vec3d.f83549z, vec3i);
    }

    public final Vec3i cellToWorld(Vec3i vec3i) {
        return cellToWorld(vec3i.f83550x, vec3i.f83551y, vec3i.f83552z, new Vec3i());
    }

    public final Vec3i cellToWorld(Vec3i vec3i, Vec3i vec3i2) {
        return cellToWorld(vec3i.f83550x, vec3i.f83551y, vec3i.f83552z, vec3i2);
    }

    public final Vec3d cellToWorld(Vec3i vec3i, Vec3d vec3d) {
        return cellToWorld(vec3i.f83550x, vec3i.f83551y, vec3i.f83552z, vec3d);
    }
}
