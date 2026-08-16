package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.Matrix;
import com.threed.jpct.SimpleVector;

@BA.ShortName("JpctSimpleVector")
public class JSimpleVector extends AbsObjectWrapper<SimpleVector> {
    public static final SimpleVector ORIGIN() {
        return SimpleVector.ORIGIN;
    }

    public void Initialize() {
        setObject(new SimpleVector());
    }

    public void Initialize2(float f10, float f11, float f12) {
        setObject(new SimpleVector(f10, f11, f12));
    }

    public void Initialize3(double d10, double d11, double d12) {
        setObject(new SimpleVector(d10, d11, d12));
    }

    public void Initialize4(SimpleVector simpleVector) {
        setObject(new SimpleVector(simpleVector));
    }

    public void Initialize5(float[] fArr) {
        setObject(new SimpleVector(fArr));
    }

    public void add(SimpleVector simpleVector) {
        ((SimpleVector) getObject()).add(simpleVector);
    }

    public SimpleVector calcAdd(SimpleVector simpleVector) {
        return ((SimpleVector) getObject()).calcAdd(simpleVector);
    }

    public float calcAngle(SimpleVector simpleVector) {
        return ((SimpleVector) getObject()).calcAngle(simpleVector);
    }

    public float calcAngleFast(SimpleVector simpleVector) {
        return ((SimpleVector) getObject()).calcAngleFast(simpleVector);
    }

    public SimpleVector calcCross(SimpleVector simpleVector) {
        return ((SimpleVector) getObject()).calcCross(simpleVector);
    }

    public float calcDot(SimpleVector simpleVector) {
        return ((SimpleVector) getObject()).calcDot(simpleVector);
    }

    public SimpleVector calcSub(SimpleVector simpleVector) {
        return ((SimpleVector) getObject()).calcSub(simpleVector);
    }

    public SimpleVector create() {
        return SimpleVector.create();
    }

    public SimpleVector create2(SimpleVector simpleVector) {
        return SimpleVector.create(simpleVector);
    }

    public SimpleVector create3(float f10, float f11, float f12) {
        return SimpleVector.create(f10, f11, f12);
    }

    public float distance(SimpleVector simpleVector) {
        return ((SimpleVector) getObject()).distance(simpleVector);
    }

    public boolean equals(Object obj) {
        return ((SimpleVector) getObject()).equals(obj);
    }

    public Matrix getRotationMatrix() {
        return ((SimpleVector) getObject()).getRotationMatrix();
    }

    public Matrix getRotationMatrix2(SimpleVector simpleVector) {
        return ((SimpleVector) getObject()).getRotationMatrix(simpleVector);
    }

    public Matrix getRotationMatrix3(Matrix matrix) {
        return ((SimpleVector) getObject()).getRotationMatrix(matrix);
    }

    public Matrix getRotationMatrix4(Matrix matrix, SimpleVector simpleVector) {
        return ((SimpleVector) getObject()).getRotationMatrix(matrix, simpleVector);
    }

    public float getx() {
        return ((SimpleVector) getObject()).f83625x;
    }

    public float gety() {
        return ((SimpleVector) getObject()).f83626y;
    }

    public float getz() {
        return ((SimpleVector) getObject()).f83627z;
    }

    public int hashCode() {
        return ((SimpleVector) getObject()).hashCode();
    }

    public float length() {
        return ((SimpleVector) getObject()).length();
    }

    public void makeEqualLength(SimpleVector simpleVector) {
        ((SimpleVector) getObject()).makeEqualLength(simpleVector);
    }

    public void matMul(Matrix matrix) {
        ((SimpleVector) getObject()).matMul(matrix);
    }

    public SimpleVector normalize() {
        return ((SimpleVector) getObject()).normalize();
    }

    public SimpleVector normalize2(SimpleVector simpleVector) {
        return ((SimpleVector) getObject()).normalize(simpleVector);
    }

    public SimpleVector reflect(SimpleVector simpleVector) {
        return ((SimpleVector) getObject()).reflect(simpleVector);
    }

    public SimpleVector rotate(SimpleVector simpleVector) {
        return ((SimpleVector) getObject()).rotate(simpleVector);
    }

    public void rotateX(float f10) {
        ((SimpleVector) getObject()).rotateX(f10);
    }

    public void rotateY(float f10) {
        ((SimpleVector) getObject()).rotateY(f10);
    }

    public void rotateZ(float f10) {
        ((SimpleVector) getObject()).rotateZ(f10);
    }

    public void scalarMul(float f10) {
        ((SimpleVector) getObject()).scalarMul(f10);
    }

    public void set(float f10, float f11, float f12) {
        ((SimpleVector) getObject()).set(f10, f11, f12);
    }

    public void set2(SimpleVector simpleVector) {
        ((SimpleVector) getObject()).set(simpleVector);
    }

    public void setx(float f10) {
        ((SimpleVector) getObject()).f83625x = f10;
    }

    public void sety(float f10) {
        ((SimpleVector) getObject()).f83626y = f10;
    }

    public void setz(float f10) {
        ((SimpleVector) getObject()).f83627z = f10;
    }

    public void sub(SimpleVector simpleVector) {
        ((SimpleVector) getObject()).sub(simpleVector);
    }

    public float[] toArray() {
        return ((SimpleVector) getObject()).toArray();
    }

    public String toString() {
        return ((SimpleVector) getObject()).toString();
    }

    public void rotate(Matrix matrix) {
        ((SimpleVector) getObject()).rotate(matrix);
    }
}
