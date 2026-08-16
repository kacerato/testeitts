package com.simsilica.mathd;

import b3.s;
import java.io.Serializable;
import java.util.Objects;

public class GridCell implements Serializable {
    static final long serialVersionUID = 42;
    private final Vec3i cell;
    private final Grid grid;
    private final Vec3i worldOrigin;

    public GridCell(Grid grid, Vec3i vec3i) {
        this.grid = grid;
        this.cell = vec3i;
        this.worldOrigin = grid.cellToWorld(vec3i);
    }

    public final boolean contains(Vec3d vec3d) {
        return contains(vec3d.f83547x, vec3d.f83548y, vec3d.f83549z);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        GridCell gridCell = (GridCell) obj;
        Vec3i vec3i = gridCell.cell;
        int i10 = vec3i.f83550x;
        Vec3i vec3i2 = this.cell;
        return i10 == vec3i2.f83550x && vec3i.f83551y == vec3i2.f83551y && vec3i.f83552z == vec3i2.f83552z && Objects.equals(gridCell.grid, this.grid);
    }

    public final Vec3i getCell() {
        return this.cell;
    }

    public final Grid getGrid() {
        return this.grid;
    }

    public final long getId() {
        return this.grid.cellToId(this.cell);
    }

    public final Vec3i getWorldOrigin() {
        return this.worldOrigin;
    }

    public int hashCode() {
        return this.cell.hashCode();
    }

    public final Vec3d localToWorld(Vec3d vec3d) {
        return localToWorld(vec3d, new Vec3d());
    }

    public String toString() {
        return "(" + this.cell.f83550x + s.f32937c + this.cell.f83551y + s.f32937c + this.cell.f83552z + ")";
    }

    public final Vec3d worldToLocal(Vec3d vec3d) {
        return worldToLocal(vec3d, null);
    }

    public final boolean contains(double d10, double d11, double d12) {
        Vec3i spacing = this.grid.getSpacing();
        Vec3i vec3i = this.worldOrigin;
        double d13 = d10 - vec3i.f83550x;
        double d14 = d11 - vec3i.f83551y;
        double d15 = d12 - vec3i.f83552z;
        int i10 = spacing.f83550x;
        if (i10 != 0 && (d13 < 0.0d || d13 >= i10)) {
            return false;
        }
        int i11 = spacing.f83551y;
        if (i11 != 0 && (d14 < 0.0d || d14 >= i11)) {
            return false;
        }
        int i12 = spacing.f83552z;
        if (i12 != 0) {
            return d15 >= 0.0d && d15 < ((double) i12);
        }
        return true;
    }

    public final Vec3d localToWorld(Vec3d vec3d, Vec3d vec3d2) {
        if (vec3d2 == null) {
            vec3d2 = new Vec3d();
        }
        Vec3i vec3i = this.worldOrigin;
        vec3d2.f83547x = vec3i.f83550x + vec3d.f83547x;
        vec3d2.f83548y = vec3i.f83551y + vec3d.f83548y;
        vec3d2.f83549z = vec3i.f83552z + vec3d.f83549z;
        return vec3d2;
    }

    public final Vec3d worldToLocal(Vec3d vec3d, Vec3d vec3d2) {
        if (vec3d2 == null) {
            vec3d2 = new Vec3d();
        }
        double d10 = vec3d.f83547x;
        Vec3i vec3i = this.worldOrigin;
        vec3d2.f83547x = d10 - vec3i.f83550x;
        vec3d2.f83548y = vec3d.f83548y - vec3i.f83551y;
        vec3d2.f83549z = vec3d.f83549z - vec3i.f83552z;
        return vec3d2;
    }

    public final Vec3i localToWorld(Vec3i vec3i) {
        return localToWorld(vec3i, new Vec3i());
    }

    public final Vec3d worldToLocal(double d10, double d11, double d12) {
        return worldToLocal(d10, d11, d12, null);
    }

    public final Vec3i localToWorld(Vec3i vec3i, Vec3i vec3i2) {
        if (vec3i2 == null) {
            vec3i2 = new Vec3i();
        }
        Vec3i vec3i3 = this.worldOrigin;
        vec3i2.f83550x = vec3i3.f83550x + vec3i.f83550x;
        vec3i2.f83551y = vec3i3.f83551y + vec3i.f83551y;
        vec3i2.f83552z = vec3i3.f83552z + vec3i.f83552z;
        return vec3i2;
    }

    public final Vec3d worldToLocal(double d10, double d11, double d12, Vec3d vec3d) {
        if (vec3d == null) {
            vec3d = new Vec3d();
        }
        Vec3i vec3i = this.worldOrigin;
        vec3d.f83547x = d10 - vec3i.f83550x;
        vec3d.f83548y = d11 - vec3i.f83551y;
        vec3d.f83549z = d12 - vec3i.f83552z;
        return vec3d;
    }
}
