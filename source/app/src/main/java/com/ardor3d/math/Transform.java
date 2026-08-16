package com.ardor3d.math;

import android.os.BatteryManager;
import androidx.constraintlayout.motion.widget.Key;
import com.ardor3d.math.type.ReadOnlyMatrix3;
import com.ardor3d.math.type.ReadOnlyMatrix4;
import com.ardor3d.math.type.ReadOnlyQuaternion;
import com.ardor3d.math.type.ReadOnlyTransform;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.util.Constants;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;

public class Transform implements Cloneable, Savable, Externalizable, ReadOnlyTransform, Poolable {
    private static final long serialVersionUID = 1;
    protected boolean _identity;
    protected final Matrix3 _matrix;
    protected boolean _rotationMatrix;
    protected final Vector3 _scale;
    protected final Vector3 _translation;
    protected boolean _uniformScale;
    private static final ObjectPool<Transform> TRANS_POOL = ObjectPool.create(Transform.class, Constants.maxPoolSize);
    public static final ReadOnlyTransform IDENTITY = new Transform(Matrix3.IDENTITY, Vector3.ONE, Vector3.ZERO, true, true, true);

    public Transform() {
        this._matrix = new Matrix3(Matrix3.IDENTITY);
        this._translation = new Vector3(Vector3.ZERO);
        this._scale = new Vector3(Vector3.ONE);
        this._identity = true;
        this._rotationMatrix = true;
        this._uniformScale = true;
    }

    public static final Transform fetchTempInstance() {
        return Constants.useMathPools ? TRANS_POOL.fetch() : new Transform();
    }

    public static boolean isValid(ReadOnlyTransform readOnlyTransform) {
        return readOnlyTransform != null && Vector3.isValid(readOnlyTransform.getScale()) && Vector3.isValid(readOnlyTransform.getTranslation()) && Matrix3.isValid(readOnlyTransform.getMatrix());
    }

    public static final void releaseTempInstance(Transform transform) {
        if (Constants.useMathPools) {
            TRANS_POOL.release(transform);
        }
    }

    @Override
    public Vector3 applyForward(Vector3 vector3) {
        vector3.getClass();
        if (this._identity) {
            return vector3;
        }
        if (this._rotationMatrix) {
            vector3.set(vector3.getX() * this._scale.getX(), vector3.getY() * this._scale.getY(), vector3.getZ() * this._scale.getZ());
            this._matrix.applyPost(vector3, vector3);
            vector3.addLocal(this._translation);
            return vector3;
        }
        this._matrix.applyPost(vector3, vector3);
        vector3.addLocal(this._translation);
        return vector3;
    }

    @Override
    public Vector3 applyForwardVector(Vector3 vector3) {
        vector3.getClass();
        if (this._identity) {
            return vector3;
        }
        if (this._rotationMatrix) {
            vector3.set(vector3.getX() * this._scale.getX(), vector3.getY() * this._scale.getY(), vector3.getZ() * this._scale.getZ());
            this._matrix.applyPost(vector3, vector3);
            return vector3;
        }
        this._matrix.applyPost(vector3, vector3);
        return vector3;
    }

    @Override
    public Vector3 applyInverse(Vector3 vector3) {
        vector3.getClass();
        if (this._identity) {
            return vector3;
        }
        vector3.subtractLocal(this._translation);
        if (this._rotationMatrix) {
            this._matrix.applyPre(vector3, vector3);
            if (this._uniformScale) {
                vector3.divideLocal(this._scale.getX());
            } else {
                vector3.setX(vector3.getX() / this._scale.getX());
                vector3.setY(vector3.getY() / this._scale.getY());
                vector3.setZ(vector3.getZ() / this._scale.getZ());
            }
        } else {
            Matrix3 invert = this._matrix.invert(Matrix3.fetchTempInstance());
            invert.applyPost(vector3, vector3);
            Matrix3.releaseTempInstance(invert);
        }
        return vector3;
    }

    @Override
    public Vector3 applyInverseVector(Vector3 vector3) {
        vector3.getClass();
        if (this._identity) {
            return vector3;
        }
        if (this._rotationMatrix) {
            this._matrix.applyPre(vector3, vector3);
            if (this._uniformScale) {
                vector3.divideLocal(this._scale.getX());
            } else {
                vector3.setX(vector3.getX() / this._scale.getX());
                vector3.setY(vector3.getY() / this._scale.getY());
                vector3.setZ(vector3.getZ() / this._scale.getZ());
            }
        } else {
            Matrix3 invert = this._matrix.invert(Matrix3.fetchTempInstance());
            invert.applyPost(vector3, vector3);
            Matrix3.releaseTempInstance(invert);
        }
        return vector3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReadOnlyTransform)) {
            return false;
        }
        ReadOnlyTransform readOnlyTransform = (ReadOnlyTransform) obj;
        return this._matrix.equals(readOnlyTransform.getMatrix()) && this._scale.equals(readOnlyTransform.getScale()) && this._translation.equals(readOnlyTransform.getTranslation());
    }

    public Transform fromHomogeneousMatrix(ReadOnlyMatrix4 readOnlyMatrix4) {
        this._matrix.set(readOnlyMatrix4.getValue(0, 0), readOnlyMatrix4.getValue(0, 1), readOnlyMatrix4.getValue(0, 2), readOnlyMatrix4.getValue(1, 0), readOnlyMatrix4.getValue(1, 1), readOnlyMatrix4.getValue(1, 2), readOnlyMatrix4.getValue(2, 0), readOnlyMatrix4.getValue(2, 1), readOnlyMatrix4.getValue(2, 2));
        this._translation.set(readOnlyMatrix4.getValue(0, 3), readOnlyMatrix4.getValue(1, 3), readOnlyMatrix4.getValue(2, 3));
        this._identity = false;
        this._rotationMatrix = this._matrix.isOrthonormal();
        this._uniformScale = false;
        return this;
    }

    @Override
    public Class<? extends Transform> getClassTag() {
        return getClass();
    }

    @Override
    public void getGLApplyMatrix(DoubleBuffer doubleBuffer) {
        if (this._rotationMatrix) {
            doubleBuffer.put(0, this._scale.getX() * this._matrix._data[0][0]);
            doubleBuffer.put(1, this._scale.getX() * this._matrix._data[1][0]);
            doubleBuffer.put(2, this._scale.getX() * this._matrix._data[2][0]);
            doubleBuffer.put(4, this._scale.getY() * this._matrix._data[0][1]);
            doubleBuffer.put(5, this._scale.getY() * this._matrix._data[1][1]);
            doubleBuffer.put(6, this._scale.getY() * this._matrix._data[2][1]);
            doubleBuffer.put(8, this._scale.getZ() * this._matrix._data[0][2]);
            doubleBuffer.put(9, this._scale.getZ() * this._matrix._data[1][2]);
            doubleBuffer.put(10, this._scale.getZ() * this._matrix._data[2][2]);
        } else {
            doubleBuffer.put(0, this._matrix._data[0][0]);
            doubleBuffer.put(1, this._matrix._data[1][0]);
            doubleBuffer.put(2, this._matrix._data[2][0]);
            doubleBuffer.put(4, this._matrix._data[0][1]);
            doubleBuffer.put(5, this._matrix._data[1][1]);
            doubleBuffer.put(6, this._matrix._data[2][1]);
            doubleBuffer.put(8, this._matrix._data[0][2]);
            doubleBuffer.put(9, this._matrix._data[1][2]);
            doubleBuffer.put(10, this._matrix._data[2][2]);
        }
        doubleBuffer.put(12, this._translation.getX());
        doubleBuffer.put(13, this._translation.getY());
        doubleBuffer.put(14, this._translation.getZ());
        doubleBuffer.put(15, 1.0d);
    }

    @Override
    public Matrix4 getHomogeneousMatrix(Matrix4 matrix4) {
        if (matrix4 == null) {
            matrix4 = new Matrix4();
        }
        if (this._rotationMatrix) {
            matrix4._data[0][0] = this._scale.getX() * this._matrix._data[0][0];
            matrix4._data[0][1] = this._scale.getX() * this._matrix._data[0][1];
            matrix4._data[0][2] = this._scale.getX() * this._matrix._data[0][2];
            double[][] dArr = matrix4._data;
            dArr[0][3] = 0.0d;
            dArr[1][0] = this._scale.getY() * this._matrix._data[1][0];
            matrix4._data[1][1] = this._scale.getY() * this._matrix._data[1][1];
            matrix4._data[1][2] = this._scale.getY() * this._matrix._data[1][2];
            double[][] dArr2 = matrix4._data;
            dArr2[1][3] = 0.0d;
            dArr2[2][0] = this._scale.getZ() * this._matrix._data[2][0];
            matrix4._data[2][1] = this._scale.getZ() * this._matrix._data[2][1];
            matrix4._data[2][2] = this._scale.getZ() * this._matrix._data[2][2];
            matrix4._data[2][3] = 0.0d;
        } else {
            double[][] dArr3 = matrix4._data;
            double[] dArr4 = dArr3[0];
            double[][] dArr5 = this._matrix._data;
            double[] dArr6 = dArr5[0];
            dArr4[0] = dArr6[0];
            dArr4[1] = dArr6[1];
            dArr4[2] = dArr6[2];
            dArr4[3] = 0.0d;
            double[] dArr7 = dArr3[1];
            double[] dArr8 = dArr5[1];
            dArr7[0] = dArr8[0];
            dArr7[1] = dArr8[1];
            dArr7[2] = dArr8[2];
            dArr7[3] = 0.0d;
            double[] dArr9 = dArr3[2];
            double[] dArr10 = dArr5[2];
            dArr9[0] = dArr10[0];
            dArr9[1] = dArr10[1];
            dArr9[2] = dArr10[2];
            dArr9[3] = 0.0d;
        }
        matrix4._data[0][3] = this._translation.getX();
        matrix4._data[1][3] = this._translation.getY();
        matrix4._data[2][3] = this._translation.getZ();
        matrix4._data[3][3] = 1.0d;
        return matrix4;
    }

    @Override
    public ReadOnlyMatrix3 getMatrix() {
        return this._matrix;
    }

    @Override
    public ReadOnlyVector3 getScale() {
        return this._scale;
    }

    @Override
    public ReadOnlyVector3 getTranslation() {
        return this._translation;
    }

    public int hashCode() {
        int hashCode = this._matrix.hashCode() + 544;
        int hashCode2 = hashCode + (hashCode * 31) + this._scale.hashCode();
        return hashCode2 + (hashCode2 * 31) + this._translation.hashCode();
    }

    @Override
    public Transform invert(Transform transform) {
        if (transform == null) {
            transform = new Transform();
        }
        if (this._identity) {
            transform.setIdentity();
            return transform;
        }
        Matrix3 matrix3 = transform._matrix.set(this._matrix);
        if (!this._rotationMatrix) {
            matrix3.invertLocal();
        } else if (this._uniformScale) {
            double x10 = this._scale.getX();
            if (x10 != 1.0d) {
                matrix3.transposeLocal().multiplyLocal(1.0d / x10);
            }
        } else {
            matrix3.multiplyDiagonalPost(this._scale, matrix3).invertLocal();
        }
        transform._matrix.applyPost(this._translation, transform._translation).negateLocal();
        transform._identity = false;
        transform._rotationMatrix = false;
        transform._uniformScale = false;
        return transform;
    }

    @Override
    public boolean isIdentity() {
        return this._identity;
    }

    @Override
    public boolean isRotationMatrix() {
        return this._rotationMatrix;
    }

    @Override
    public boolean isUniformScale() {
        return this._uniformScale;
    }

    @Override
    public Transform multiply(ReadOnlyTransform readOnlyTransform, Transform transform) {
        if (transform == null) {
            transform = new Transform();
        } else {
            transform.setIdentity();
        }
        if (this._identity) {
            return transform.set(readOnlyTransform);
        }
        if (readOnlyTransform.isIdentity()) {
            return transform.set(this);
        }
        if (!this._rotationMatrix || !readOnlyTransform.isRotationMatrix() || !this._uniformScale) {
            Matrix3 multiplyDiagonalPost = this._rotationMatrix ? this._matrix.multiplyDiagonalPost(this._scale, Matrix3.fetchTempInstance()) : this._matrix;
            ReadOnlyMatrix3 multiplyDiagonalPost2 = readOnlyTransform.isRotationMatrix() ? readOnlyTransform.getMatrix().multiplyDiagonalPost(readOnlyTransform.getScale(), Matrix3.fetchTempInstance()) : readOnlyTransform.getMatrix();
            Matrix3 matrix3 = transform._matrix;
            matrix3.set(multiplyDiagonalPost).multiplyLocal(multiplyDiagonalPost2);
            transform.setMatrix(matrix3);
            Vector3 vector3 = transform._translation;
            multiplyDiagonalPost.applyPost(readOnlyTransform.getTranslation(), vector3).addLocal(getTranslation());
            transform.setTranslation(vector3);
            if (isRotationMatrix()) {
                Matrix3.releaseTempInstance(multiplyDiagonalPost);
            }
            if (readOnlyTransform.isRotationMatrix()) {
                Matrix3.releaseTempInstance((Matrix3) multiplyDiagonalPost2);
            }
            return transform;
        }
        Matrix3 matrix32 = transform._matrix;
        matrix32.set(this._matrix).multiplyLocal(readOnlyTransform.getMatrix());
        transform.setRotation(matrix32);
        Vector3 vector32 = transform._translation.set(readOnlyTransform.getTranslation());
        this._matrix.applyPost(vector32, vector32);
        vector32.multiplyLocal(this._scale.getX());
        vector32.addLocal(this._translation);
        transform.setTranslation(vector32);
        if (readOnlyTransform.isUniformScale()) {
            transform.setScale(this._scale.getX() * readOnlyTransform.getScale().getX());
        } else {
            Vector3 vector33 = transform._scale.set(readOnlyTransform.getScale());
            vector33.multiplyLocal(this._scale.getX());
            transform.setScale(vector33);
        }
        return transform;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        this._matrix.set((Matrix3) inputCapsule.readSavable(Key.ROTATION, new Matrix3(Matrix3.IDENTITY)));
        this._scale.set((Vector3) inputCapsule.readSavable(BatteryManager.EXTRA_SCALE, new Vector3(Vector3.ONE)));
        this._translation.set((Vector3) inputCapsule.readSavable("translation", new Vector3(Vector3.ZERO)));
        this._identity = inputCapsule.readBoolean("identity", true);
        this._rotationMatrix = inputCapsule.readBoolean("rotationMatrix", true);
        this._uniformScale = inputCapsule.readBoolean("uniformScale", true);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this._matrix.set((Matrix3) objectInput.readObject());
        this._scale.set((Vector3) objectInput.readObject());
        this._translation.set((Vector3) objectInput.readObject());
        this._identity = objectInput.readBoolean();
        this._rotationMatrix = objectInput.readBoolean();
        this._uniformScale = objectInput.readBoolean();
    }

    public Transform set(ReadOnlyTransform readOnlyTransform) {
        if (readOnlyTransform.isIdentity()) {
            setIdentity();
        } else {
            this._matrix.set(readOnlyTransform.getMatrix());
            this._scale.set(readOnlyTransform.getScale());
            this._translation.set(readOnlyTransform.getTranslation());
            this._identity = false;
            this._rotationMatrix = readOnlyTransform.isRotationMatrix();
            this._uniformScale = readOnlyTransform.isUniformScale();
        }
        return this;
    }

    public Transform setIdentity() {
        this._matrix.set(Matrix3.IDENTITY);
        this._scale.set(Vector3.ONE);
        this._translation.set(Vector3.ZERO);
        this._identity = true;
        this._rotationMatrix = true;
        this._uniformScale = true;
        return this;
    }

    public void setMatrix(ReadOnlyMatrix3 readOnlyMatrix3) {
        this._matrix.set(readOnlyMatrix3);
        this._identity = false;
        this._rotationMatrix = false;
        this._uniformScale = false;
    }

    public void setRotation(ReadOnlyMatrix3 readOnlyMatrix3) {
        this._matrix.set(readOnlyMatrix3);
        this._identity = false;
        this._rotationMatrix = true;
    }

    public void setScale(ReadOnlyVector3 readOnlyVector3) {
        if (!this._rotationMatrix) {
            throw new TransformException("Scale is already provided by 3x3 matrix.  If this is a mistake, consider using setRotation instead of setMatrix.");
        }
        if (readOnlyVector3.getX() == 0.0d && readOnlyVector3.getY() == 0.0d && readOnlyVector3.getZ() == 0.0d) {
            throw new IllegalArgumentException("scale may not be ZERO.");
        }
        this._scale.set(readOnlyVector3);
        boolean z10 = false;
        this._identity = this._identity && readOnlyVector3.getX() == 1.0d && readOnlyVector3.getY() == 1.0d && readOnlyVector3.getZ() == 1.0d;
        if (readOnlyVector3.getX() == readOnlyVector3.getY() && readOnlyVector3.getY() == readOnlyVector3.getZ()) {
            z10 = true;
        }
        this._uniformScale = z10;
    }

    public void setTranslation(ReadOnlyVector3 readOnlyVector3) {
        this._translation.set(readOnlyVector3);
        this._identity = false;
    }

    public String toString() {
        return "com.ardor3d.math.Transform [\n M: " + ((Object) this._matrix) + "\n S: " + ((Object) this._scale) + "\n T: " + ((Object) this._translation) + "\n]";
    }

    public Transform translate(double d10, double d11, double d12) {
        this._translation.addLocal(d10, d11, d12);
        this._identity = this._identity && this._translation.equals(Vector3.ZERO);
        return this;
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(this._matrix, Key.ROTATION, new Matrix3(Matrix3.IDENTITY));
        outputCapsule.write(this._scale, BatteryManager.EXTRA_SCALE, new Vector3(Vector3.ONE));
        outputCapsule.write(this._translation, "translation", new Vector3(Vector3.ZERO));
        outputCapsule.write(this._identity, "identity", true);
        outputCapsule.write(this._rotationMatrix, "rotationMatrix", true);
        outputCapsule.write(this._uniformScale, "uniformScale", true);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this._matrix);
        objectOutput.writeObject(this._scale);
        objectOutput.writeObject(this._translation);
        objectOutput.writeBoolean(this._identity);
        objectOutput.writeBoolean(this._rotationMatrix);
        objectOutput.writeBoolean(this._uniformScale);
    }

    public Transform m1200clone() {
        try {
            Transform transform = (Transform) super.clone();
            transform._matrix.set(this._matrix);
            transform._scale.set(this._scale);
            transform._translation.set(this._translation);
            return transform;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public void setTranslation(double d10, double d11, double d12) {
        this._translation.set(d10, d11, d12);
        this._identity = false;
    }

    public Transform translate(ReadOnlyVector3 readOnlyVector3) {
        this._translation.addLocal(readOnlyVector3);
        this._identity = this._identity && this._translation.equals(Vector3.ZERO);
        return this;
    }

    public void setRotation(ReadOnlyQuaternion readOnlyQuaternion) {
        this._matrix.set(readOnlyQuaternion);
        this._identity = false;
        this._rotationMatrix = true;
    }

    @Override
    public Vector3 applyForwardVector(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        vector3.set(readOnlyVector3);
        return applyForwardVector(vector3);
    }

    public Transform(ReadOnlyTransform readOnlyTransform) {
        Matrix3 matrix3 = new Matrix3(Matrix3.IDENTITY);
        this._matrix = matrix3;
        Vector3 vector3 = new Vector3(Vector3.ZERO);
        this._translation = vector3;
        Vector3 vector32 = new Vector3(Vector3.ONE);
        this._scale = vector32;
        matrix3.set(readOnlyTransform.getMatrix());
        vector32.set(readOnlyTransform.getScale());
        vector3.set(readOnlyTransform.getTranslation());
        this._identity = readOnlyTransform.isIdentity();
        this._rotationMatrix = readOnlyTransform.isRotationMatrix();
        this._uniformScale = readOnlyTransform.isUniformScale();
    }

    public void setScale(double d10, double d11, double d12) {
        if (!this._rotationMatrix) {
            throw new TransformException("Scale is already provided by 3x3 matrix.  If this is a mistake, consider using setRotation instead of setMatrix.");
        }
        if (d10 == 0.0d && d11 == 0.0d && d12 == 0.0d) {
            throw new IllegalArgumentException("scale may not be ZERO.");
        }
        this._scale.set(d10, d11, d12);
        boolean z10 = false;
        this._identity = false;
        if (d10 == d11 && d11 == d12) {
            z10 = true;
        }
        this._uniformScale = z10;
    }

    @Override
    public Vector3 applyForward(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        vector3.set(readOnlyVector3);
        return applyForward(vector3);
    }

    @Override
    public Vector3 applyInverseVector(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        vector3.set(readOnlyVector3);
        return applyInverseVector(vector3);
    }

    @Override
    public Vector3 applyInverse(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        vector3.set(readOnlyVector3);
        return applyInverse(vector3);
    }

    public void setScale(double d10) {
        if (!this._rotationMatrix) {
            throw new TransformException("Scale is already provided by 3x3 matrix.  If this is a mistake, consider using setRotation instead of setMatrix.");
        }
        if (d10 != 0.0d) {
            this._scale.set(d10, d10, d10);
            this._identity = false;
            this._uniformScale = true;
            return;
        }
        throw new IllegalArgumentException("scale may not be ZERO.");
    }

    public Transform(ReadOnlyMatrix3 readOnlyMatrix3, ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, boolean z10, boolean z11, boolean z12) {
        Matrix3 matrix3 = new Matrix3(Matrix3.IDENTITY);
        this._matrix = matrix3;
        Vector3 vector3 = new Vector3(Vector3.ZERO);
        this._translation = vector3;
        Vector3 vector32 = new Vector3(Vector3.ONE);
        this._scale = vector32;
        matrix3.set(readOnlyMatrix3);
        vector32.set(readOnlyVector3);
        vector3.set(readOnlyVector32);
        this._identity = z10;
        this._rotationMatrix = z11;
        this._uniformScale = z12;
    }

    @Override
    public void getGLApplyMatrix(FloatBuffer floatBuffer) {
        if (this._rotationMatrix) {
            floatBuffer.put(0, (float) (this._scale.getX() * this._matrix._data[0][0]));
            floatBuffer.put(1, (float) (this._scale.getX() * this._matrix._data[1][0]));
            floatBuffer.put(2, (float) (this._scale.getX() * this._matrix._data[2][0]));
            floatBuffer.put(4, (float) (this._scale.getY() * this._matrix._data[0][1]));
            floatBuffer.put(5, (float) (this._scale.getY() * this._matrix._data[1][1]));
            floatBuffer.put(6, (float) (this._scale.getY() * this._matrix._data[2][1]));
            floatBuffer.put(8, (float) (this._scale.getZ() * this._matrix._data[0][2]));
            floatBuffer.put(9, (float) (this._scale.getZ() * this._matrix._data[1][2]));
            floatBuffer.put(10, (float) (this._scale.getZ() * this._matrix._data[2][2]));
        } else {
            floatBuffer.put(0, (float) this._matrix._data[0][0]);
            floatBuffer.put(1, (float) this._matrix._data[1][0]);
            floatBuffer.put(2, (float) this._matrix._data[2][0]);
            floatBuffer.put(4, (float) this._matrix._data[0][1]);
            floatBuffer.put(5, (float) this._matrix._data[1][1]);
            floatBuffer.put(6, (float) this._matrix._data[2][1]);
            floatBuffer.put(8, (float) this._matrix._data[0][2]);
            floatBuffer.put(9, (float) this._matrix._data[1][2]);
            floatBuffer.put(10, (float) this._matrix._data[2][2]);
        }
        floatBuffer.put(12, this._translation.getXf());
        floatBuffer.put(13, this._translation.getYf());
        floatBuffer.put(14, this._translation.getZf());
        floatBuffer.put(15, 1.0f);
    }
}
