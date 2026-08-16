package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.Camera;
import com.threed.jpct.FrameBuffer;
import com.threed.jpct.GLSLShader;
import com.threed.jpct.Object3D;
import com.threed.jpct.Polyline;
import com.threed.jpct.RGBColor;
import com.threed.jpct.SimpleVector;
import com.threed.jpct.World;
import java.util.Enumeration;

@BA.Version(1.0f)
@BA.Author("Alhowiriny")
@BA.ShortName("JpctWorld")
public class JWorld extends AbsObjectWrapper<World> {
    public static final int FOGGING_DISABLED() {
        return 0;
    }

    public static final int FOGGING_ENABLED() {
        return 1;
    }

    public static Thread getDefaultThread() {
        return World.getDefaultThread();
    }

    public static void setDefaultThread(Thread thread) {
        World.setDefaultThread(thread);
    }

    public void Initialize() {
        setObject(new World());
    }

    public int addObject(Object3D object3D) {
        return ((World) getObject()).addObject(object3D);
    }

    public void addObjects(Object3D[] object3DArr) {
        ((World) getObject()).addObjects(object3DArr);
    }

    public void addPolyline(Polyline polyline) {
        ((World) getObject()).addPolyline(polyline);
    }

    public void buildAllObjects() {
        ((World) getObject()).buildAllObjects();
    }

    public float calcMinDistance(SimpleVector simpleVector, SimpleVector simpleVector2, float f10) {
        return ((World) getObject()).calcMinDistance(simpleVector, simpleVector2, f10);
    }

    public Object[] calcMinDistanceAndObject3D(SimpleVector simpleVector, SimpleVector simpleVector2, float f10) {
        return ((World) getObject()).calcMinDistanceAndObject3D(simpleVector, simpleVector2, f10);
    }

    public boolean checkCameraCollision(int i10, float f10) {
        return ((World) getObject()).checkCameraCollision(i10, f10);
    }

    public boolean checkCameraCollision2(int i10, float f10, boolean z10) {
        return ((World) getObject()).checkCameraCollision(i10, f10, z10);
    }

    public boolean checkCameraCollision3(int i10, float f10, float f11, boolean z10) {
        return ((World) getObject()).checkCameraCollision(i10, f10, f11, z10);
    }

    public boolean checkCameraCollision4(SimpleVector simpleVector, float f10, float f11, boolean z10) {
        return ((World) getObject()).checkCameraCollision(simpleVector, f10, f11, z10);
    }

    public boolean checkCameraCollisionEllipsoid(int i10, SimpleVector simpleVector, float f10, int i11) {
        return ((World) getObject()).checkCameraCollisionEllipsoid(i10, simpleVector, f10, i11);
    }

    public boolean checkCameraCollisionEllipsoid2(SimpleVector simpleVector, SimpleVector simpleVector2, float f10, int i10) {
        return ((World) getObject()).checkCameraCollisionEllipsoid(simpleVector, simpleVector2, f10, i10);
    }

    public boolean checkCameraCollisionSpherical(int i10, float f10, float f11, boolean z10) {
        return ((World) getObject()).checkCameraCollisionSpherical(i10, f10, f11, z10);
    }

    public boolean checkCameraCollisionSpherical2(SimpleVector simpleVector, float f10, float f11, boolean z10) {
        return ((World) getObject()).checkCameraCollisionSpherical(simpleVector, f10, f11, z10);
    }

    public int checkCollision(SimpleVector simpleVector, SimpleVector simpleVector2, float f10) {
        return ((World) getObject()).checkCollision(simpleVector, simpleVector2, f10);
    }

    public SimpleVector checkCollisionEllipsoid(SimpleVector simpleVector, SimpleVector simpleVector2, SimpleVector simpleVector3, int i10) {
        return ((World) getObject()).checkCollisionEllipsoid(simpleVector, simpleVector2, simpleVector3, i10);
    }

    public SimpleVector checkCollisionSpherical(SimpleVector simpleVector, SimpleVector simpleVector2, float f10) {
        return ((World) getObject()).checkCollisionSpherical(simpleVector, simpleVector2, f10);
    }

    public void compileAllObjects() {
        ((World) getObject()).compileAllObjects();
    }

    public void dispose() {
        ((World) getObject()).dispose();
    }

    public void draw(FrameBuffer frameBuffer) {
        ((World) getObject()).draw(frameBuffer);
    }

    public void drawWireframe(FrameBuffer frameBuffer, RGBColor rGBColor) {
        ((World) getObject()).drawWireframe(frameBuffer, rGBColor);
    }

    public int[] getAmbientLight() {
        return ((World) getObject()).getAmbientLight();
    }

    public Camera getCamera() {
        return ((World) getObject()).getCamera();
    }

    public int getFogging() {
        return ((World) getObject()).getFogging();
    }

    public long getFrameCounter() {
        return ((World) getObject()).getFrameCounter();
    }

    public GLSLShader getGlobalShader() {
        return ((World) getObject()).getGlobalShader();
    }

    public Object3D getObject(int i10) {
        return ((World) getObject()).getObject(i10);
    }

    public Object3D getObjectByName(String str) {
        return ((World) getObject()).getObjectByName(str);
    }

    public Enumeration<Object3D> getObjects() {
        return ((World) getObject()).getObjects();
    }

    public int getSize() {
        return ((World) getObject()).getSize();
    }

    public void newCamera() {
        ((World) getObject()).newCamera();
    }

    public void removeAll() {
        ((World) getObject()).removeAll();
    }

    public void removeAllLights() {
        ((World) getObject()).removeAllLights();
    }

    public void removeAllObjects() {
        ((World) getObject()).removeAllObjects();
    }

    public void removeObject(int i10) {
        ((World) getObject()).removeObject(i10);
    }

    public void removeObject2(Object3D object3D) {
        ((World) getObject()).removeObject(object3D);
    }

    public void removePolyline(Polyline polyline) {
        ((World) getObject()).removePolyline(polyline);
    }

    public void renderScene(FrameBuffer frameBuffer) {
        ((World) getObject()).renderScene(frameBuffer);
    }

    public void setAmbientLight(int i10, int i11, int i12) {
        ((World) getObject()).setAmbientLight(i10, i11, i12);
    }

    public void setCameraTo(Camera camera) {
        ((World) getObject()).setCameraTo(camera);
    }

    public void setClippingPlanes(float f10, float f11) {
        ((World) getObject()).setClippingPlanes(f10, f11);
    }

    public void setFogParameters(float f10, float f11, float f12, float f13) {
        ((World) getObject()).setFogParameters(f10, f11, f12, f13);
    }

    public void setFogParameters2(float f10, float f11, float f12, float f13, float f14) {
        ((World) getObject()).setFogParameters(f10, f11, f12, f13, f14);
    }

    public void setFogging(int i10) {
        ((World) getObject()).setFogging(i10);
    }

    public void setGlobalShader(GLSLShader gLSLShader) {
        ((World) getObject()).setGlobalShader(gLSLShader);
    }

    public void setObjectsVisibility(boolean z10) {
        ((World) getObject()).setObjectsVisibility(z10);
    }
}
