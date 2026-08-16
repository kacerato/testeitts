package com.jme3.font;

public class Rectangle implements Cloneable {
    public final float height;
    public final float width;

    public final float f81588x;

    public final float f81589y;

    public Rectangle(float f10, float f11, float f12, float f13) {
        this.f81588x = f10;
        this.f81589y = f11;
        this.width = f12;
        this.height = f13;
    }

    public String toString() {
        return getClass().getSimpleName() + "[x=" + this.f81588x + ", y=" + this.f81589y + ", width=" + this.width + ", height=" + this.height + "]";
    }

    public Rectangle m1268clone() {
        try {
            return (Rectangle) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }
}
