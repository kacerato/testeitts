package com.ardor3d.math;

import com.ardor3d.math.type.ReadOnlyRectangle2;
import com.ardor3d.util.Constants;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

public class Rectangle2 implements Cloneable, Savable, Externalizable, ReadOnlyRectangle2, Poolable {
    private static final ObjectPool<Rectangle2> RECTANGLE_POOL = ObjectPool.create(Rectangle2.class, Constants.maxPoolSize);
    private static final long serialVersionUID = 1;
    private int _height;
    private int _width;
    private int _x;
    private int _y;

    public Rectangle2() {
    }

    public static final Rectangle2 fetchTempInstance() {
        return Constants.useMathPools ? RECTANGLE_POOL.fetch() : new Rectangle2();
    }

    public static final void releaseTempInstance(Rectangle2 rectangle2) {
        if (Constants.useMathPools) {
            RECTANGLE_POOL.release(rectangle2);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReadOnlyRectangle2)) {
            return false;
        }
        ReadOnlyRectangle2 readOnlyRectangle2 = (ReadOnlyRectangle2) obj;
        return readOnlyRectangle2.getX() == getX() && readOnlyRectangle2.getY() == getY() && readOnlyRectangle2.getWidth() == getWidth() && readOnlyRectangle2.getHeight() == getHeight();
    }

    @Override
    public Class<? extends Rectangle2> getClassTag() {
        return getClass();
    }

    @Override
    public int getHeight() {
        return this._height;
    }

    @Override
    public int getWidth() {
        return this._width;
    }

    @Override
    public int getX() {
        return this._x;
    }

    @Override
    public int getY() {
        return this._y;
    }

    public int hashCode() {
        int i10 = this._x + 544;
        int i11 = i10 + (i10 * 31) + this._y;
        int i12 = i11 + (i11 * 31) + this._width;
        return i12 + (i12 * 31) + this._height;
    }

    public Rectangle2 intersect(Rectangle2 rectangle2, Rectangle2 rectangle22) {
        if (rectangle22 == null) {
            rectangle22 = new Rectangle2();
        }
        int max = Math.max(getX(), rectangle2.getX());
        int max2 = Math.max(getY(), rectangle2.getY());
        rectangle22.set(max, max2, Math.min(getX() + getWidth(), rectangle2.getX() + rectangle2.getWidth()) - max, Math.min(getY() + getHeight(), rectangle2.getY() + rectangle2.getHeight()) - max2);
        return rectangle22;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        this._x = inputCapsule.readInt("x", 0);
        this._y = inputCapsule.readInt("y", 0);
        this._width = inputCapsule.readInt("width", 0);
        this._height = inputCapsule.readInt("height", 0);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        setX(objectInput.readInt());
        setY(objectInput.readInt());
        setWidth(objectInput.readInt());
        setHeight(objectInput.readInt());
    }

    public Rectangle2 set(int i10, int i11, int i12, int i13) {
        this._x = i10;
        this._y = i11;
        this._width = i12;
        this._height = i13;
        return this;
    }

    public void setHeight(int i10) {
        this._height = i10;
    }

    public void setWidth(int i10) {
        this._width = i10;
    }

    public void setX(int i10) {
        this._x = i10;
    }

    public void setY(int i10) {
        this._y = i10;
    }

    public String toString() {
        return "com.ardor3d.math.Rectangle2 [origin: " + this._x + ", " + this._y + "  width: " + this._width + " height: " + this._height + "]";
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(this._x, "x", 0);
        outputCapsule.write(this._y, "y", 0);
        outputCapsule.write(this._width, "width", 0);
        outputCapsule.write(this._height, "height", 0);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeInt(this._x);
        objectOutput.writeInt(this._y);
        objectOutput.writeInt(this._width);
        objectOutput.writeInt(this._height);
    }

    public Rectangle2(int i10, int i11, int i12, int i13) {
        setX(i10);
        setY(i11);
        setWidth(i12);
        setHeight(i13);
    }

    public Rectangle2 m1197clone() {
        try {
            Rectangle2 rectangle2 = (Rectangle2) super.clone();
            rectangle2._x = this._x;
            rectangle2._y = this._y;
            rectangle2._width = this._width;
            rectangle2._height = this._height;
            return rectangle2;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Rectangle2 set(Rectangle2 rectangle2) {
        return set(rectangle2._x, rectangle2._y, rectangle2._width, rectangle2._height);
    }

    public Rectangle2(Rectangle2 rectangle2) {
        set(rectangle2);
    }

    public static Rectangle2 intersect(Rectangle2 rectangle2, Rectangle2 rectangle22, Rectangle2 rectangle23) {
        if (rectangle23 == null) {
            rectangle23 = new Rectangle2();
        }
        int max = Math.max(rectangle2.getX(), rectangle22.getX());
        int max2 = Math.max(rectangle2.getY(), rectangle22.getY());
        rectangle23.set(max, max2, Math.min(rectangle2.getX() + rectangle2.getWidth(), rectangle22.getX() + rectangle22.getWidth()) - max, Math.min(rectangle2.getY() + rectangle2.getHeight(), rectangle22.getY() + rectangle22.getHeight()) - max2);
        return rectangle23;
    }
}
