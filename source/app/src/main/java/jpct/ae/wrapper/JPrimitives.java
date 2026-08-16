package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.Object3D;
import com.threed.jpct.Primitives;

@BA.ShortName("JpctPrimitives")
public class JPrimitives extends AbsObjectWrapper<Primitives> {
    public static Object3D getCube(float f10) {
        return Primitives.getCube(f10);
    }

    public Object3D getBox(float f10, float f11) {
        return Primitives.getBox(f10, f11);
    }

    public Object3D getCone(float f10) {
        return Primitives.getCone(f10);
    }

    public Object3D getCone2(int i10, float f10) {
        return Primitives.getCone(i10, f10);
    }

    public Object3D getCone3(int i10, float f10, float f11) {
        return Primitives.getCone(i10, f10, f11);
    }

    public Object3D getCylinder(float f10) {
        return Primitives.getCylinder(f10);
    }

    public Object3D getCylinder2(int i10, float f10) {
        return Primitives.getCylinder(i10, f10);
    }

    public Object3D getCylinder3(int i10, float f10, float f11) {
        return Primitives.getCylinder(i10, f10, f11);
    }

    public Object3D getDoubleCone(float f10) {
        return Primitives.getDoubleCone(f10);
    }

    public Object3D getDoubleCone2(int i10, float f10) {
        return Primitives.getDoubleCone(i10, f10);
    }

    public Object3D getEllipsoid(float f10, float f11) {
        return Primitives.getEllipsoid(f10, f11);
    }

    public Object3D getPlane(int i10, float f10) {
        return Primitives.getPlane(i10, f10);
    }

    public Object3D getPyramide(float f10) {
        return Primitives.getPyramide(f10);
    }

    public Object3D getPyramide2(float f10, float f11) {
        return Primitives.getPyramide(f10, f11);
    }

    public Object3D getSphere(float f10) {
        return Primitives.getSphere(f10);
    }

    public Object3D getEllipsoid(int i10, float f10, float f11) {
        return Primitives.getEllipsoid(i10, f10, f11);
    }

    public Object3D getSphere(int i10, float f10) {
        return Primitives.getSphere(i10, f10);
    }
}
