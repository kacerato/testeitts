package com.ardor3d.math;

import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

public abstract class Line3Base implements Cloneable, Savable, Externalizable {
    protected final Vector3 _direction;
    protected final Vector3 _origin;

    public Line3Base(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32) {
        Vector3 vector3 = new Vector3();
        this._origin = vector3;
        Vector3 vector32 = new Vector3();
        this._direction = vector32;
        vector3.set(readOnlyVector3);
        vector32.set(readOnlyVector32);
    }

    @Override
    public Class<? extends Line3Base> getClassTag() {
        return getClass();
    }

    public ReadOnlyVector3 getDirection() {
        return this._direction;
    }

    public ReadOnlyVector3 getOrigin() {
        return this._origin;
    }

    public int hashCode() {
        int hashCode = this._origin.hashCode() + 544;
        return hashCode + (hashCode * 31) + this._direction.hashCode();
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        this._origin.set((Vector3) inputCapsule.readSavable("origin", new Vector3(Vector3.ZERO)));
        this._direction.set((Vector3) inputCapsule.readSavable("direction", new Vector3(Vector3.UNIT_Z)));
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        setOrigin((Vector3) objectInput.readObject());
        setDirection((Vector3) objectInput.readObject());
    }

    public void setDirection(ReadOnlyVector3 readOnlyVector3) {
        this._direction.set(readOnlyVector3);
    }

    public void setOrigin(ReadOnlyVector3 readOnlyVector3) {
        this._origin.set(readOnlyVector3);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(this._origin, "origin", new Vector3(Vector3.ZERO));
        outputCapsule.write(this._direction, "direction", new Vector3(Vector3.UNIT_Z));
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this._origin);
        objectOutput.writeObject(this._direction);
    }

    @Override
    public Line3Base mo1192clone() {
        try {
            Line3Base line3Base = (Line3Base) super.clone();
            line3Base._direction.set(this._direction);
            line3Base._origin.set(this._origin);
            return line3Base;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }
}
