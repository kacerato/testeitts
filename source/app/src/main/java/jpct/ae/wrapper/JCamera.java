package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.Camera;
import com.threed.jpct.FrameBuffer;
import com.threed.jpct.Matrix;
import com.threed.jpct.Object3D;
import com.threed.jpct.SimpleVector;

@BA.ShortName("JpctCamera")
public class JCamera extends AbsObjectWrapper<Camera> {
    public static int CAMERA_DONT_MOVE() {
        return 7;
    }

    public static int CAMERA_MOVEDOWN() {
        return 3;
    }

    public static int CAMERA_MOVEIN() {
        return 1;
    }

    public static int CAMERA_MOVELEFT() {
        return 6;
    }

    public static int CAMERA_MOVEOUT() {
        return 2;
    }

    public static int CAMERA_MOVERIGHT() {
        return 5;
    }

    public static int CAMERA_MOVEUP() {
        return 4;
    }

    public static boolean DONT_SLIDE() {
        return false;
    }

    public static int ELLIPSOID_ALIGNED() {
        return 0;
    }

    public static int ELLIPSOID_TRANSFORMED() {
        return 1;
    }

    public static boolean SLIDE() {
        return true;
    }

    public void Initialize() {
        setObject(new Camera());
    }

    public void align(Object3D object3D) {
        ((Camera) getObject()).align(object3D);
    }

    public float convertDEGAngleIntoFOV(float f10) {
        return ((Camera) getObject()).convertDEGAngleIntoFOV(f10);
    }

    public float convertRADAngleIntoFOV(float f10) {
        return ((Camera) getObject()).convertRADAngleIntoFOV(f10);
    }

    public void decreaseFOV(float f10) {
        ((Camera) getObject()).decreaseFOV(f10);
    }

    public Matrix getBack() {
        return ((Camera) getObject()).getBack();
    }

    public SimpleVector getDirection() {
        return ((Camera) getObject()).getDirection();
    }

    public SimpleVector getDirection2(SimpleVector simpleVector) {
        return ((Camera) getObject()).getDirection(simpleVector);
    }

    public int getEllipsoidMode() {
        return ((Camera) getObject()).getEllipsoidMode();
    }

    public float getFOV() {
        return ((Camera) getObject()).getFOV();
    }

    public float getMaxFOV() {
        return ((Camera) getObject()).getMaxFOV();
    }

    public float getMinFOV() {
        return ((Camera) getObject()).getMinFOV();
    }

    public SimpleVector getPosition() {
        return ((Camera) getObject()).getPosition();
    }

    public SimpleVector getPosition2(SimpleVector simpleVector) {
        return ((Camera) getObject()).getPosition(simpleVector);
    }

    public Matrix getProjectionMatrix(FrameBuffer frameBuffer) {
        return ((Camera) getObject()).getProjectionMatrix(frameBuffer);
    }

    public SimpleVector getSideVector() {
        return ((Camera) getObject()).getSideVector();
    }

    public SimpleVector getUpVector() {
        return ((Camera) getObject()).getUpVector();
    }

    public SimpleVector getXAxis() {
        return ((Camera) getObject()).getXAxis();
    }

    public SimpleVector getYAxis() {
        return ((Camera) getObject()).getYAxis();
    }

    public float getYFOV() {
        return ((Camera) getObject()).getYFOV();
    }

    public SimpleVector getZAxis() {
        return ((Camera) getObject()).getZAxis();
    }

    public void increaseFOV(float f10) {
        ((Camera) getObject()).increaseFOV(f10);
    }

    public void lookAt(SimpleVector simpleVector) {
        ((Camera) getObject()).lookAt(simpleVector);
    }

    public void moveCamera(int i10, float f10) {
        ((Camera) getObject()).moveCamera(i10, f10);
    }

    public void moveCamera2(SimpleVector simpleVector, float f10) {
        ((Camera) getObject()).moveCamera(simpleVector, f10);
    }

    public void rotateAxis(SimpleVector simpleVector, float f10) {
        ((Camera) getObject()).rotateAxis(simpleVector, f10);
    }

    public void rotateCameraAxis(SimpleVector simpleVector, float f10) {
        ((Camera) getObject()).rotateCameraAxis(simpleVector, f10);
    }

    public void rotateCameraX(float f10) {
        ((Camera) getObject()).rotateCameraX(f10);
    }

    public void rotateCameraY(float f10) {
        ((Camera) getObject()).rotateCameraY(f10);
    }

    public void rotateCameraZ(float f10) {
        ((Camera) getObject()).rotateCameraZ(f10);
    }

    public void rotateX(float f10) {
        ((Camera) getObject()).rotateX(f10);
    }

    public void rotateY(float f10) {
        ((Camera) getObject()).rotateY(f10);
    }

    public void rotateZ(float f10) {
        ((Camera) getObject()).rotateZ(f10);
    }

    public void setBack(Matrix matrix) {
        ((Camera) getObject()).setBack(matrix);
    }

    public void setEllipsoidMode(int i10) {
        ((Camera) getObject()).setEllipsoidMode(i10);
    }

    public void setFOV(float f10) {
        ((Camera) getObject()).setFOV(f10);
    }

    public void setFOVLimits(float f10, float f11) {
        ((Camera) getObject()).setFOVLimits(f10, f11);
    }

    public void setFOVtoDefault() {
        ((Camera) getObject()).setFOVtoDefault();
    }

    public void setOrientation(SimpleVector simpleVector, SimpleVector simpleVector2) {
        ((Camera) getObject()).setOrientation(simpleVector, simpleVector2);
    }

    public void setPosition(SimpleVector simpleVector) {
        ((Camera) getObject()).setPosition(simpleVector);
    }

    public void setPositionToCenter(Object3D object3D) {
        ((Camera) getObject()).setPositionToCenter(object3D);
    }

    public void setYFOV2(float f10) {
        ((Camera) getObject()).setYFOV(f10);
    }

    public SimpleVector transform(SimpleVector simpleVector) {
        return ((Camera) getObject()).transform(simpleVector);
    }

    public Matrix getProjectionMatrix(FrameBuffer frameBuffer, float f10, float f11) {
        return ((Camera) getObject()).getProjectionMatrix(frameBuffer, f10, f11);
    }

    public void setPosition(float f10, float f11, float f12) {
        ((Camera) getObject()).setPosition(f10, f11, f12);
    }
}
