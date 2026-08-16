package com.ardor3d.math;

import b2.AbstractC3834c;
import com.ardor3d.math.type.ReadOnlyRectangle3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.util.Constants;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import u8.C15580b;

public class Rectangle3 implements Cloneable, Savable, Externalizable, ReadOnlyRectangle3, Poolable {
    private static final ObjectPool<Rectangle3> RECTANGLE_POOL = ObjectPool.create(Rectangle3.class, Constants.maxPoolSize);
    private static final long serialVersionUID = 1;
    private final Vector3 _a = new Vector3();
    private final Vector3 _b = new Vector3();
    private final Vector3 _c = new Vector3();

    public Rectangle3() {
    }

    public static final Rectangle3 fetchTempInstance() {
        return Constants.useMathPools ? RECTANGLE_POOL.fetch() : new Rectangle3();
    }

    public static final void releaseTempInstance(Rectangle3 rectangle3) {
        if (Constants.useMathPools) {
            RECTANGLE_POOL.release(rectangle3);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReadOnlyRectangle3)) {
            return false;
        }
        ReadOnlyRectangle3 readOnlyRectangle3 = (ReadOnlyRectangle3) obj;
        return this._a.equals(readOnlyRectangle3.getA()) && this._b.equals(readOnlyRectangle3.getB()) && this._c.equals(readOnlyRectangle3.getC());
    }

    @Override
    public ReadOnlyVector3 getA() {
        return this._a;
    }

    @Override
    public ReadOnlyVector3 getB() {
        return this._b;
    }

    @Override
    public ReadOnlyVector3 getC() {
        return this._c;
    }

    @Override
    public Class<? extends Rectangle3> getClassTag() {
        return getClass();
    }

    public int hashCode() {
        int hashCode = this._a.hashCode() + 544;
        int hashCode2 = hashCode + (hashCode * 31) + this._b.hashCode();
        return hashCode2 + (hashCode2 * 31) + this._c.hashCode();
    }

    @Override
    public Vector3 random(Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        double nextRandomFloat = MathUtils.nextRandomFloat();
        double nextRandomFloat2 = MathUtils.nextRandomFloat();
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance2 = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance3 = Vector3.fetchTempInstance();
        vector3.set(this._a.multiply((1.0d - nextRandomFloat) - nextRandomFloat2, fetchTempInstance).addLocal(this._b.multiply(nextRandomFloat, fetchTempInstance2).addLocal(this._c.multiply(nextRandomFloat2, fetchTempInstance3))));
        Vector3.releaseTempInstance(fetchTempInstance);
        Vector3.releaseTempInstance(fetchTempInstance2);
        Vector3.releaseTempInstance(fetchTempInstance3);
        return vector3;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        Vector3 vector3 = this._a;
        ReadOnlyVector3 readOnlyVector3 = Vector3.ZERO;
        vector3.set((Vector3) inputCapsule.readSavable("a", new Vector3(readOnlyVector3)));
        this._b.set((Vector3) inputCapsule.readSavable(C15580b.f118629u, new Vector3(readOnlyVector3)));
        this._c.set((Vector3) inputCapsule.readSavable(AbstractC3834c.f32824b1, new Vector3(readOnlyVector3)));
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        setA((Vector3) objectInput.readObject());
        setB((Vector3) objectInput.readObject());
        setC((Vector3) objectInput.readObject());
    }

    public void setA(ReadOnlyVector3 readOnlyVector3) {
        this._a.set(readOnlyVector3);
    }

    public void setB(ReadOnlyVector3 readOnlyVector3) {
        this._b.set(readOnlyVector3);
    }

    public void setC(ReadOnlyVector3 readOnlyVector3) {
        this._c.set(readOnlyVector3);
    }

    public String toString() {
        return "com.ardor3d.math.Rectangle3 [A: " + ((Object) this._a) + " B: " + ((Object) this._b) + " C: " + ((Object) this._c) + "]";
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        Vector3 vector3 = this._a;
        ReadOnlyVector3 readOnlyVector3 = Vector3.ZERO;
        outputCapsule.write(vector3, "a", new Vector3(readOnlyVector3));
        outputCapsule.write(this._b, C15580b.f118629u, new Vector3(readOnlyVector3));
        outputCapsule.write(this._c, AbstractC3834c.f32824b1, new Vector3(readOnlyVector3));
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this._a);
        objectOutput.writeObject(this._b);
        objectOutput.writeObject(this._c);
    }

    public Rectangle3 m1198clone() {
        try {
            Rectangle3 rectangle3 = (Rectangle3) super.clone();
            rectangle3._a.set(this._a);
            rectangle3._b.set(this._b);
            rectangle3._c.set(this._c);
            return rectangle3;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Rectangle3(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, ReadOnlyVector3 readOnlyVector33) {
        setA(readOnlyVector3);
        setB(readOnlyVector32);
        setC(readOnlyVector33);
    }
}
