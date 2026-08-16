package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.Matrix;
import com.threed.jpct.SimpleVector;

@BA.ShortName("JpctMatrix")
public class JMatrix extends AbsObjectWrapper<Matrix> {
    public void Initialize() {
        setObject(new Matrix());
    }

    public void Initialize2(Matrix matrix) {
        setObject(new Matrix(matrix));
    }

    public Matrix cloneMatrix() {
        return ((Matrix) getObject()).cloneMatrix();
    }

    public boolean equals(Object obj) {
        return ((Matrix) getObject()).equals(obj);
    }

    public float[] fillDump(float[] fArr) {
        return ((Matrix) getObject()).fillDump(fArr);
    }

    public float get(int i10, int i11) {
        return ((Matrix) getObject()).get(i10, i11);
    }

    public float[] getDump() {
        return ((Matrix) getObject()).getDump();
    }

    public SimpleVector getTranslation() {
        return ((Matrix) getObject()).getTranslation();
    }

    public SimpleVector getXAxis() {
        return ((Matrix) getObject()).getXAxis();
    }

    public SimpleVector getYAxis() {
        return ((Matrix) getObject()).getYAxis();
    }

    public SimpleVector getZAxis() {
        return ((Matrix) getObject()).getZAxis();
    }

    public void interpolate(Matrix matrix, Matrix matrix2, float f10) {
        ((Matrix) getObject()).interpolate(matrix, matrix2, f10);
    }

    public Matrix invert() {
        return ((Matrix) getObject()).invert();
    }

    public Matrix invert2(Matrix matrix) {
        return ((Matrix) getObject()).invert(matrix);
    }

    public Matrix invert3x3() {
        return ((Matrix) getObject()).invert3x3();
    }

    public Matrix invert3x3_2(Matrix matrix) {
        return ((Matrix) getObject()).invert3x3(matrix);
    }

    public boolean isIdentity() {
        return ((Matrix) getObject()).isIdentity();
    }

    public void matMul(Matrix matrix) {
        ((Matrix) getObject()).matMul(matrix);
    }

    public void orthonormalize() {
        ((Matrix) getObject()).orthonormalize();
    }

    public void rotateAxis(SimpleVector simpleVector, float f10) {
        ((Matrix) getObject()).rotateAxis(simpleVector, f10);
    }

    public void rotateX(float f10) {
        ((Matrix) getObject()).rotateX(f10);
    }

    public void rotateY(float f10) {
        ((Matrix) getObject()).rotateY(f10);
    }

    public void rotateZ(float f10) {
        ((Matrix) getObject()).rotateZ(f10);
    }

    public void scalarMul(float f10) {
        ((Matrix) getObject()).scalarMul(f10);
    }

    public void set(int i10, int i11, float f10) {
        ((Matrix) getObject()).set(i10, i11, f10);
    }

    public void setColumn(int i10, float f10, float f11, float f12, float f13) {
        ((Matrix) getObject()).setColumn(i10, f10, f11, f12, f13);
    }

    public void setDump(float[] fArr) {
        ((Matrix) getObject()).setDump(fArr);
    }

    public void setIdentity() {
        ((Matrix) getObject()).setIdentity();
    }

    public void setOrientation(SimpleVector simpleVector, SimpleVector simpleVector2) {
        ((Matrix) getObject()).setOrientation(simpleVector, simpleVector2);
    }

    public void setRow(int i10, float f10, float f11, float f12, float f13) {
        ((Matrix) getObject()).setRow(i10, f10, f11, f12, f13);
    }

    public void setTo(Matrix matrix) {
        ((Matrix) getObject()).setTo(matrix);
    }

    public String toString() {
        return ((Matrix) getObject()).toString();
    }

    public void transformToGL() {
        ((Matrix) getObject()).transformToGL();
    }

    public void translate(SimpleVector simpleVector) {
        ((Matrix) getObject()).translate(simpleVector);
    }

    public void translate2(float f10, float f11, float f12) {
        ((Matrix) getObject()).translate(f10, f11, f12);
    }

    public Matrix transpose() {
        return ((Matrix) getObject()).transpose();
    }

    public SimpleVector getXAxis(SimpleVector simpleVector) {
        return ((Matrix) getObject()).getXAxis(simpleVector);
    }

    public SimpleVector getYAxis(SimpleVector simpleVector) {
        return ((Matrix) getObject()).getYAxis(simpleVector);
    }

    public SimpleVector getZAxis(SimpleVector simpleVector) {
        return ((Matrix) getObject()).getZAxis(simpleVector);
    }
}
