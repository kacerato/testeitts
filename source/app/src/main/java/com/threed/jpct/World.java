package com.threed.jpct;

import android.util.FloatMath;
import com.threed.jpct.util.Overlay;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

public class World implements Serializable {
    public static final int FOGGING_DISABLED = 0;
    public static final int FOGGING_ENABLED = 1;
    static final int RGB_SCALE_2X = 2;
    static final int RGB_SCALE_4X = 4;
    static final int RGB_SCALE_DEFAULT = 1;
    static Thread defaultThread = null;
    private static final long serialVersionUID = 3;
    Camera camera;
    Lights lights;
    private Object3DCompiler compiler = new Object3DCompiler();
    long drawCnt = 0;
    boolean useFogging = false;
    int fogModeChanged = 0;
    float fogStart = 1.0f;
    float fogDistance = 150.0f;
    float fogColorR = 0.0f;
    float fogColorG = 0.0f;
    float fogColorB = 0.0f;
    int ambientRed = 100;
    int ambientGreen = 100;
    int ambientBlue = 100;
    transient GLSLShader globalShader = null;
    private transient VisListManager vlManager = new VisListManager();
    private transient Object3DList targets = null;
    private boolean disposed = false;
    private float nearPlane = -1.0f;
    private float farPlane = -1.0f;
    private float nearPlaneOld = Config.nearPlane;
    private float farPlaneOld = Config.farPlane;
    private Matrix tmpMat = new Matrix();
    private Matrix tmpMatCol = new Matrix();
    private Plane slidePlaneTmp = new Plane();
    private List<Polyline> lines = null;
    private boolean calledRender = false;
    Object3DList objectList = new Object3DList();
    VisList visList = new VisList(Config.maxPolysVisible);

    public World() {
        addObject(Object3D.createDummyObj());
        addObject(Object3D.createDummyObj());
        this.camera = new Camera();
        this.lights = new Lights(Config.maxLights);
    }

    private final int checkSomeCollision(float[] fArr, float[] fArr2, float f10, Object3D object3D) {
        Object3D object3D2 = null;
        float f11 = Float.MAX_VALUE;
        for (int i10 = 2; i10 < this.objectList.size(); i10++) {
            Object3D elementAt = this.objectList.elementAt(i10);
            elementAt.wasCollider = false;
            elementAt.resetPolygonIDCount();
            if (elementAt.isPotentialCollider && ((object3D == null || elementAt != object3D) && elementAt.isVisible && (!elementAt.hasBoundingBox || elementAt.rayIntersectsAABB(fArr, fArr2, true) < Config.collideOffset))) {
                float collide = elementAt.collide(fArr, fArr2, f10, Config.collideSectorOffset);
                if (collide < f11) {
                    if (collide < f10) {
                        object3D2 = elementAt;
                    }
                    f11 = collide;
                }
            }
        }
        if (f11 >= f10 || object3D2 == null) {
            return -100;
        }
        object3D2.wasCollider = true;
        for (int i11 = 2; i11 < this.objectList.size(); i11++) {
            Object3D elementAt2 = this.objectList.elementAt(i11);
            if (elementAt2 != object3D2) {
                elementAt2.wasCollider = false;
                elementAt2.resetPolygonIDCount();
            }
        }
        if ((object3D != null && object3D.collisionListener != null && !object3D.disableListeners) || (object3D2.collisionListener != null && !object3D2.disableListeners)) {
            Object3D[] object3DArr = {object3D2};
            SimpleVector create = SimpleVector.create(fArr2[0], fArr2[1], fArr2[2]);
            create.scalarMul(f11);
            create.f83625x += fArr[0];
            create.f83626y += fArr[1];
            create.f83627z += fArr[2];
            if (object3D != null) {
                object3D.notifyCollisionListeners(1, 0, object3DArr, create);
            }
            object3D2.notifyCollisionListeners(object3D, 0, 0, object3DArr, create);
        }
        return object3D2.getID();
    }

    private final SimpleVector checkSomeCollisionEllipsoid(SimpleVector simpleVector, SimpleVector simpleVector2, SimpleVector simpleVector3, Object3D object3D, int i10) {
        CollisionInfo collisionInfo = new CollisionInfo();
        collisionInfo.eRadius = simpleVector3;
        collisionInfo.r3Pos = SimpleVector.create(simpleVector);
        collisionInfo.r3Velocity = SimpleVector.create(simpleVector2);
        collisionInfo.calculateInverseAndDest();
        if (object3D != null && object3D.getEllipsoidMode() == 1) {
            Matrix worldTransformation = object3D.getWorldTransformation();
            collisionInfo.addTransMat = worldTransformation;
            Matrix cloneMatrix = worldTransformation.cloneMatrix();
            float[] fArr = cloneMatrix.mat[3];
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
            collisionInfo.addRotMat = cloneMatrix;
        }
        doWorldCollisionEllipsoid(collisionInfo, 0, object3D, i10);
        SimpleVector simpleVector4 = collisionInfo.r3Pos;
        if (!collisionInfo.collision) {
            return simpleVector2;
        }
        simpleVector4.f83625x -= simpleVector.f83625x;
        simpleVector4.f83626y -= simpleVector.f83626y;
        simpleVector4.f83627z -= simpleVector.f83627z;
        return simpleVector4;
    }

    private final SimpleVector checkSomeCollisionSpherical(float[] fArr, float[] fArr2, float f10, Object3D object3D) {
        boolean[] zArr = new boolean[1];
        float[] fArr3 = {fArr[0] + fArr2[0], fArr[1] + fArr2[1], fArr[2] + fArr2[2]};
        for (int i10 = 2; i10 < this.objectList.size(); i10++) {
            Object3D elementAt = this.objectList.elementAt(i10);
            elementAt.wasCollider = false;
            elementAt.resetPolygonIDCount();
            if (elementAt.isPotentialCollider && ((object3D == null || elementAt != object3D) && elementAt.isVisible)) {
                if (!elementAt.hasBoundingBox || elementAt.sphereIntersectsAABB(fArr3, f10)) {
                    boolean z10 = zArr[0];
                    zArr[0] = false;
                    float[] collideSpherical = elementAt.collideSpherical(fArr3, f10, Config.collideSectorOffset, zArr, false);
                    boolean z11 = zArr[0];
                    if (z11) {
                        elementAt.wasCollider = true;
                    }
                    zArr[0] = z11 | z10;
                    fArr3 = collideSpherical;
                }
            }
        }
        if (!zArr[0]) {
            return SimpleVector.create(fArr2[0], fArr2[1], fArr2[2]);
        }
        SimpleVector create = SimpleVector.create(fArr3[0], fArr3[1], fArr3[2]);
        create.f83625x -= fArr[0];
        create.f83626y -= fArr[1];
        create.f83627z -= fArr[2];
        notifyAll(object3D, (CollisionInfo) null, 1, fArr3);
        return create;
    }

    private void compile(Object3D object3D) {
        this.compiler.compile(object3D);
        if (object3D.toStrip) {
            object3D.reallyStrip();
        }
    }

    private final void doWorldCollisionEllipsoid(CollisionInfo collisionInfo, int i10, Object3D object3D, int i11) {
        SimpleVector simpleVector;
        float f10 = Config.collideEllipsoidThreshold;
        float f11 = f10 * f10;
        if (i10 >= i11) {
            return;
        }
        collisionInfo.foundCollision = false;
        collisionInfo.intersectionPoint = new SimpleVector();
        collisionInfo.nearestDistance = 1.0E11f;
        if (i10 == 0) {
            collisionInfo.collision = false;
        }
        SimpleVector simpleVector2 = collisionInfo.r3Velocity;
        float f12 = simpleVector2.f83625x;
        float f13 = simpleVector2.f83626y;
        float f14 = (f12 * f12) + (f13 * f13);
        float f15 = simpleVector2.f83627z;
        float f16 = f14 + (f15 * f15);
        SimpleVector simpleVector3 = collisionInfo.eRadius;
        float f17 = simpleVector3.f83625x;
        float f18 = simpleVector3.f83626y;
        if (f17 > f18) {
            f17 = f18;
        }
        float f19 = simpleVector3.f83627z;
        if (f17 > f19) {
            f17 = f19;
        }
        float f20 = f17 * 2.0f;
        if (f16 > f20 * f20) {
            simpleVector2 = SimpleVector.create(simpleVector2);
            simpleVector2.f83625x = Math.abs(simpleVector2.f83625x);
            simpleVector2.f83626y = Math.abs(simpleVector2.f83626y);
            simpleVector2.f83627z = Math.abs(simpleVector2.f83627z);
            simpleVector2.add(collisionInfo.eRadius);
            simpleVector = SimpleVector.create(collisionInfo.r3Velocity);
            simpleVector.scalarMul(0.5f);
            simpleVector.add(collisionInfo.r3Pos);
        } else {
            simpleVector = null;
        }
        int i12 = 2;
        boolean z10 = false;
        int i13 = 2;
        while (i13 < this.objectList.size()) {
            Object3D elementAt = this.objectList.elementAt(i13);
            boolean lazyTransformationState = elementAt.getLazyTransformationState();
            if (!lazyTransformationState) {
                elementAt.enableLazyTransformations();
            }
            if (i10 == 0) {
                elementAt.wasCollider = false;
                elementAt.resetPolygonIDCount();
            }
            if (elementAt.isPotentialCollider && ((object3D == null || elementAt != object3D) && elementAt.isVisible && (!elementAt.hasBoundingBox || ((simpleVector != null && elementAt.ellipsoidIntersectsAABB(simpleVector, simpleVector2)) || (simpleVector == null && (elementAt.ellipsoidIntersectsAABB(collisionInfo.r3Pos, collisionInfo.eRadius) || elementAt.ellipsoidIntersectsAABB(collisionInfo.r3Dest, collisionInfo.eRadius))))))) {
                collisionInfo.isPartOfCollision = false;
                elementAt.collideEllipsoid(collisionInfo, Config.collideSectorOffset);
                boolean z11 = elementAt.wasCollider;
                boolean z12 = collisionInfo.isPartOfCollision;
                elementAt.wasCollider = z11 | z12;
                z10 |= z12;
            }
            if (!lazyTransformationState) {
                elementAt.disableLazyTransformations();
            }
            i13++;
            i12 = 2;
        }
        if (!z10) {
            collisionInfo.r3Pos.add(collisionInfo.r3Velocity);
            return;
        }
        SimpleVector create = SimpleVector.create(collisionInfo.eSpaceBasePoint);
        create.add(collisionInfo.eSpaceVelocity);
        SimpleVector create2 = SimpleVector.create(collisionInfo.r3Pos);
        SimpleVector create3 = SimpleVector.create(collisionInfo.eSpaceBasePoint);
        float f21 = collisionInfo.nearestDistance;
        if (f21 >= f10 || f21 <= 0.0f) {
            SimpleVector create4 = SimpleVector.create(collisionInfo.r3Velocity);
            create4.scalarMul(collisionInfo.nearestDistance - f10);
            create2.add(create4);
            create4.set(collisionInfo.eSpaceVelocity);
            create4.scalarMul(collisionInfo.nearestDistance - f10);
            create3.add(create4);
            SimpleVector normalize = collisionInfo.eSpaceVelocity.normalize(create4);
            collisionInfo.intersectionPoint = collisionInfo.intersectionPoint.calcSub(SimpleVector.create(normalize.f83625x * f10, normalize.f83626y * f10, f10 * normalize.f83627z));
        }
        SimpleVector simpleVector4 = collisionInfo.intersectionPoint;
        SimpleVector calcSub = create3.calcSub(simpleVector4);
        SimpleVector normalize2 = calcSub.normalize(calcSub);
        this.slidePlaneTmp.setTo(simpleVector4, normalize2);
        normalize2.scalarMul(this.slidePlaneTmp.distanceTo(create));
        create.sub(normalize2);
        SimpleVector calcSub2 = create.calcSub(collisionInfo.intersectionPoint);
        float f22 = calcSub2.f83625x;
        float f23 = calcSub2.f83626y;
        float f24 = calcSub2.f83627z;
        float f25 = (f22 * f22) + (f23 * f23) + (f24 * f24);
        SimpleVector simpleVector5 = collisionInfo.eRadius;
        calcSub2.f83625x = f22 * simpleVector5.f83625x;
        calcSub2.f83626y = f23 * simpleVector5.f83626y;
        calcSub2.f83627z = f24 * simpleVector5.f83627z;
        if (collisionInfo.addTransMat == null) {
            calcSub2 = collisionInfo.collisionObject.reverseTransform(this.tmpMatCol, calcSub2, false);
        } else {
            calcSub2.matMul(collisionInfo.addRotMat);
        }
        collisionInfo.r3Pos = create2;
        collisionInfo.r3Velocity = calcSub2;
        SimpleVector create5 = i10 == 0 ? SimpleVector.create(create2) : null;
        collisionInfo.recalcDest();
        if (f25 >= f11) {
            doWorldCollisionEllipsoid(collisionInfo, i10 + 1, object3D, i11);
        }
        if (i10 == 0) {
            notifyAll(object3D, collisionInfo, i12, create5);
        }
    }

    public static synchronized Thread getDefaultThread() {
        Thread thread;
        synchronized (World.class) {
            thread = defaultThread;
        }
        return thread;
    }

    private boolean hasToNotify(CollisionInfo collisionInfo) {
        return (collisionInfo == null || collisionInfo.collision) && Object3D.globalListenerCount > 0;
    }

    private void notifyAll(Object3D object3D, CollisionInfo collisionInfo, int i10, float[] fArr) {
        if (hasToNotify(collisionInfo)) {
            notifyAll(object3D, collisionInfo, i10, SimpleVector.create(fArr[0], fArr[1], fArr[2]));
        }
    }

    public static synchronized void setDefaultThread(Thread thread) {
        synchronized (World.class) {
            defaultThread = thread;
        }
    }

    public int addLight(SimpleVector simpleVector, float f10, float f11, float f12) {
        return this.lights.addLight(simpleVector.f83625x, simpleVector.f83626y, simpleVector.f83627z, f10, f11, f12);
    }

    public int addObject(Object3D object3D) {
        if (object3D == null) {
            Logger.log("Can't add 'null' to a World!", 0);
            return -100;
        }
        if (object3D.myWorld != this || !this.objectList.contains(object3D)) {
            this.objectList.addElement(object3D);
            object3D.myWorld = this;
            return object3D.getID();
        }
        Logger.log("Object '" + object3D.getName() + "' already belongs to this world!", 1);
        return object3D.getID();
    }

    public void addObjects(Object3D[] object3DArr) {
        for (Object3D object3D : object3DArr) {
            addObject(object3D);
        }
    }

    public void addPolyline(Polyline polyline) {
        if (this.lines == null) {
            this.lines = new ArrayList();
        }
        this.lines.add(polyline);
    }

    public void buildAllObjects() {
        int size = this.objectList.size();
        for (int i10 = 2; i10 < size; i10++) {
            this.objectList.elementAt(i10).build();
        }
    }

    public float calcMinDistance(SimpleVector simpleVector, SimpleVector simpleVector2, float f10) {
        int size = this.objectList.size();
        Object3D[] internalArray = this.objectList.getInternalArray();
        Object3D object3D = null;
        float f11 = Float.MAX_VALUE;
        for (int i10 = 2; i10 < size; i10++) {
            Object3D object3D2 = internalArray[i10];
            if (object3D2.isVisible && object3D2.isPotentialCollider && (!object3D2.hasBoundingBox || object3D2.rayIntersectsAABB(simpleVector, simpleVector2, true) < f10)) {
                float calcMinDistance = object3D2.calcMinDistance(simpleVector, simpleVector2, f10, false);
                if (calcMinDistance < f11 && calcMinDistance != 1.0E12f) {
                    f11 = calcMinDistance;
                    object3D = object3D2;
                }
            }
        }
        if (f11 == Float.MAX_VALUE || f11 == 1.0E12f) {
            return 1.0E12f;
        }
        if (object3D.collisionListener != null) {
            SimpleVector simpleVector3 = new SimpleVector(simpleVector2);
            simpleVector3.scalarMul(f11);
            simpleVector3.add(new SimpleVector(simpleVector));
            object3D.notifyCollisionListeners(0, 0, new Object3D[]{object3D}, simpleVector3);
        }
        object3D.wasCollider = true;
        return f11;
    }

    public Object[] calcMinDistanceAndObject3D(SimpleVector simpleVector, SimpleVector simpleVector2, float f10) {
        int size = this.objectList.size();
        Object3D[] internalArray = this.objectList.getInternalArray();
        Object3D object3D = null;
        float f11 = Float.MAX_VALUE;
        for (int i10 = 2; i10 < size; i10++) {
            Object3D object3D2 = internalArray[i10];
            if (object3D2.isPotentialCollider && object3D2.isVisible && (!object3D2.hasBoundingBox || object3D2.rayIntersectsAABB(simpleVector, simpleVector2, true) < f10)) {
                float calcMinDistance = object3D2.calcMinDistance(simpleVector, simpleVector2, f10, false);
                if (calcMinDistance < f11 && calcMinDistance != 1.0E12f) {
                    f11 = calcMinDistance;
                    object3D = object3D2;
                }
            }
        }
        if (f11 == Float.MAX_VALUE || f11 == 1.0E12f) {
            Object[] objArr = new Object[2];
            objArr[0] = Float.valueOf(1.0E12f);
            return objArr;
        }
        if (object3D.collisionListener != null) {
            SimpleVector simpleVector3 = new SimpleVector(simpleVector2);
            simpleVector3.scalarMul(f11);
            simpleVector3.add(new SimpleVector(simpleVector));
            object3D.notifyCollisionListeners(0, 0, new Object3D[]{object3D}, simpleVector3);
        }
        object3D.wasCollider = true;
        return new Object[]{Float.valueOf(f11), object3D};
    }

    public boolean checkCameraCollision(int i10, float f10) {
        return checkCameraCollision(null, i10, f10, 3.0f, true);
    }

    public boolean checkCameraCollisionEllipsoid(int i10, SimpleVector simpleVector, float f10, int i11) {
        return checkCameraCollisionEllipsoid(null, i10, simpleVector, f10, i11 < 1 ? 1 : i11);
    }

    public boolean checkCameraCollisionSpherical(int i10, float f10, float f11, boolean z10) {
        return checkCameraCollisionSpherical(null, i10, f10, f11, z10);
    }

    public int checkCollision(SimpleVector simpleVector, SimpleVector simpleVector2, float f10) {
        float[] array = simpleVector2.toArray();
        float f11 = array[0];
        float f12 = array[1];
        float f13 = array[2];
        float sqrt = FloatMath.sqrt((f11 * f11) + (f12 * f12) + (f13 * f13));
        array[0] = array[0] / sqrt;
        array[1] = array[1] / sqrt;
        array[2] = array[2] / sqrt;
        return checkSomeCollision(simpleVector.toArray(), array, f10, null);
    }

    public SimpleVector checkCollisionEllipsoid(SimpleVector simpleVector, SimpleVector simpleVector2, SimpleVector simpleVector3, int i10) {
        return checkSomeCollisionEllipsoid(simpleVector, simpleVector2, simpleVector3, null, i10 < 1 ? 1 : i10);
    }

    public SimpleVector checkCollisionSpherical(SimpleVector simpleVector, SimpleVector simpleVector2, float f10) {
        return checkSomeCollisionSpherical(simpleVector.toArray(), simpleVector2.toArray(), f10, null);
    }

    public final int checkObjCollision(Object3D object3D, SimpleVector simpleVector, float f10) {
        if (!object3D.mayCollide) {
            return -100;
        }
        float[] fArr = new float[3];
        object3D.getProjectedPoint(object3D.centerX, object3D.centerY, object3D.centerZ, null, fArr, this.tmpMat);
        float f11 = simpleVector.f83625x;
        float f12 = simpleVector.f83626y;
        float f13 = simpleVector.f83627z;
        float sqrt = 1.0f / FloatMath.sqrt(((f11 * f11) + (f12 * f12)) + (f13 * f13));
        return checkSomeCollision(fArr, new float[]{f11 * sqrt, f12 * sqrt, f13 * sqrt}, f10, object3D);
    }

    public final SimpleVector checkObjCollisionEllipsoid(Object3D object3D, SimpleVector simpleVector, SimpleVector simpleVector2, int i10) {
        if (!object3D.mayCollide) {
            return new SimpleVector(simpleVector);
        }
        SimpleVector simpleVector3 = new SimpleVector();
        SimpleVector simpleVector4 = new SimpleVector(simpleVector);
        object3D.getProjectedPoint(object3D.centerX, object3D.centerY, object3D.centerZ, simpleVector3, null, this.tmpMat);
        return checkSomeCollisionEllipsoid(simpleVector3, simpleVector4, simpleVector2, object3D, i10);
    }

    public final SimpleVector checkObjCollisionSpherical(Object3D object3D, SimpleVector simpleVector, float f10) {
        if (!object3D.mayCollide) {
            return SimpleVector.create(simpleVector.f83625x, simpleVector.f83626y, simpleVector.f83627z);
        }
        float[] fArr = new float[3];
        object3D.getProjectedPoint(object3D.centerX, object3D.centerY, object3D.centerZ, null, fArr, this.tmpMat);
        return checkSomeCollisionSpherical(fArr, new float[]{simpleVector.f83625x, simpleVector.f83626y, simpleVector.f83627z}, f10, object3D);
    }

    public synchronized void compileAllObjects() {
        try {
            int size = this.objectList.size();
            for (int i10 = 2; i10 < size; i10++) {
                Object3D elementAt = this.objectList.elementAt(i10);
                elementAt.object3DRendered = false;
                if (!elementAt.hasBeenBuild) {
                    Logger.log("Object " + elementAt.name + " hasn't been build yet. Forcing build()!", 1);
                    elementAt.build();
                }
                if (elementAt.compiled != null && !elementAt.isCompiled() && elementAt.getMesh().anzTri > 0) {
                    Object3D object3D = elementAt.shareWith;
                    if (object3D != null && !object3D.isCompiled() && object3D.getMesh().anzTri > 0) {
                        if (object3D.compiled == null) {
                            object3D.compile(elementAt.dynamic, elementAt.staticUV);
                        }
                        Logger.log("Compiling source object...", 2);
                        compile(object3D);
                    }
                    compile(elementAt);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void dispose() {
        this.disposed = true;
        VisListManager visListManager = this.vlManager;
        if (visListManager != null) {
            visListManager.dispose();
        }
    }

    public void draw(FrameBuffer frameBuffer) {
        draw(frameBuffer, false, 0);
    }

    public void drawWireframe(FrameBuffer frameBuffer, RGBColor rGBColor) {
        draw(frameBuffer, true, rGBColor.getRGB());
    }

    public void fillAmbientLight(float[] fArr) {
        fArr[0] = this.ambientRed;
        fArr[1] = this.ambientGreen;
        fArr[2] = this.ambientBlue;
    }

    public void finalize() {
        if (this.disposed) {
            return;
        }
        dispose();
    }

    public int[] getAmbientLight() {
        return new int[]{this.ambientRed, this.ambientGreen, this.ambientBlue};
    }

    public Camera getCamera() {
        return this.camera;
    }

    public int getFogging() {
        return this.useFogging ? 1 : 0;
    }

    public long getFrameCounter() {
        return this.drawCnt;
    }

    public GLSLShader getGlobalShader() {
        return this.globalShader;
    }

    public Object3D getInternalObjectByName(String str) {
        for (int i10 = 0; i10 < this.objectList.size(); i10++) {
            if (this.objectList.elementAt(i10).name.equals(str)) {
                return this.objectList.elementAt(i10);
            }
        }
        return null;
    }

    public float getLightAttenuation(int i10) {
        return this.lights.getAttenuation(i10);
    }

    public float getLightDiscardDistance(int i10) {
        return this.lights.discardDistance[i10];
    }

    public float getLightDistanceOverride(int i10) {
        return this.lights.getDistanceOverride(i10);
    }

    public SimpleVector getLightIntensity(int i10) {
        return this.lights.getIntensity(i10);
    }

    public SimpleVector getLightPosition(int i10, SimpleVector simpleVector) {
        return this.lights.getPosition(i10, simpleVector);
    }

    public Lights getLights() {
        return this.lights;
    }

    public Object3D getObject(int i10) {
        int i11 = i10 + 2;
        for (int i12 = 0; i12 < this.objectList.size(); i12++) {
            if (this.objectList.elementAt(i12).number == i11) {
                return this.objectList.elementAt(i12);
            }
        }
        Logger.log("Can't retrieve object #" + i10 + "!", 0);
        return null;
    }

    public Object3D getObjectByName(String str) {
        return getInternalObjectByName(str);
    }

    public Enumeration<Object3D> getObjects() {
        Enumeration<Object3D> elements = this.objectList.elements();
        if (this.objectList.size() > 1) {
            elements.nextElement();
            elements.nextElement();
        }
        return elements;
    }

    public int getSize() {
        return this.objectList.size() - 2;
    }

    public void newCamera() {
        this.camera = new Camera();
    }

    public void removeAll() {
        removeAllLights();
        removeAllObjects();
    }

    public void removeAllLights() {
        this.lights = new Lights(Config.maxLights);
    }

    public void removeAllObjects() {
        Object3D elementAt = this.objectList.elementAt(0);
        Object3D elementAt2 = this.objectList.elementAt(1);
        for (int i10 = 0; i10 < this.objectList.size(); i10++) {
            this.objectList.elementAt(i10).myWorld = null;
        }
        this.objectList = new Object3DList();
        addObject(elementAt);
        addObject(elementAt2);
        VisList visList = this.visList;
        if (visList != null) {
            visList.deepClear();
        }
    }

    public void removeObject(int i10) {
        int i11 = i10 + 2;
        for (int i12 = 0; i12 < this.objectList.size(); i12++) {
            if (this.objectList.elementAt(i12).number == i11) {
                this.objectList.elementAt(i12).myWorld = null;
                this.objectList.removeElementAt(i12);
                VisList visList = this.visList;
                if (visList != null) {
                    visList.deepClear();
                    return;
                }
                return;
            }
        }
        Logger.log("Can't remove object #" + i10 + "!", 0);
    }

    public void removePolyline(Polyline polyline) {
        List<Polyline> list = this.lines;
        if (list == null) {
            return;
        }
        list.remove(polyline);
    }

    public synchronized void renderScene(FrameBuffer frameBuffer) {
        try {
            try {
                if (defaultThread == null) {
                    defaultThread = Thread.currentThread();
                }
                this.calledRender = true;
                frameBuffer.glRend.disableBlitting();
                setPlanes(false);
                if (this.vlManager == null) {
                    this.vlManager = new VisListManager();
                }
                VisList visList = this.vlManager.getVisList(frameBuffer, this.visList);
                this.visList = visList;
                visList.clearList();
                int i10 = frameBuffer.width;
                int i11 = frameBuffer.height;
                Texture texture = frameBuffer.renderTarget;
                if (texture != null) {
                    i10 = texture.width;
                    i11 = texture.height;
                }
                this.camera.calcFOV(i10, i11);
                frameBuffer.glRend.setFrustumAndFog(this, frameBuffer);
                this.lights.transformLights(this.camera);
                int size = this.objectList.size();
                Object3D[] internalArray = this.objectList.getInternalArray();
                for (int i12 = 2; i12 < size; i12++) {
                    Object3D object3D = internalArray[i12];
                    if (object3D == null) {
                        Logger.log("Null object in queue...?", 0);
                    } else {
                        object3D.object3DRendered = false;
                        boolean z10 = object3D.hasBeenBuild;
                        if (!z10 || (z10 && object3D.compiled == null)) {
                            Logger.log("Object " + object3D.name + " hasn't been build yet. Forcing build()!", 2);
                            object3D.build();
                        }
                        if (object3D.compiled != null && !object3D.isCompiled() && object3D.getMesh().anzTri > 0) {
                            Object3D object3D2 = object3D.shareWith;
                            if (object3D2 != null && !object3D2.isCompiled() && object3D2.getMesh().anzTri > 0) {
                                if (object3D2.compiled == null) {
                                    object3D2.compile(object3D.dynamic, object3D.staticUV);
                                }
                                Logger.log("Compiling source object...", 2);
                                compile(object3D2);
                            }
                            compile(object3D);
                        }
                        Object userObject = object3D.getUserObject();
                        if (userObject != null && (userObject instanceof Overlay)) {
                            ((Overlay) userObject).update(frameBuffer);
                        }
                        if (object3D.isVisible && !object3D.transformVertices(frameBuffer) && object3D.objMesh.anzTri > 0) {
                            object3D.render();
                        }
                    }
                }
                this.visList.fillInstances();
                VisList visList2 = this.visList;
                visList2.sort(0, visList2.anzpoly);
                setPlanes(true);
            } catch (NullPointerException e10) {
                Logger.log("There's a problem with the object list not being consistent during rendering. This is often caused by concurrent modification of jPCT objects on a thread different from the rendering thread!", 1);
                Logger.log(e10, 0);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void setAmbientLight(int i10, int i11, int i12) {
        this.ambientRed = i10;
        this.ambientGreen = i11;
        this.ambientBlue = i12;
    }

    public void setCameraTo(Camera camera) {
        this.camera = camera;
    }

    public void setClippingPlanes(float f10, float f11) {
        this.nearPlane = Math.max(f10, 1.0f);
        this.farPlane = Math.max(f11, 1.0f);
    }

    public void setFogParameters(float f10, float f11, float f12, float f13) {
        setFogParameters(-999.0f, f10, f11, f12, f13);
    }

    public void setFogging(int i10) {
        boolean z10 = i10 == 1;
        this.useFogging = z10;
        if (z10) {
            this.fogModeChanged = 1;
        } else {
            this.fogModeChanged = 2;
        }
    }

    public void setGlobalShader(GLSLShader gLSLShader) {
        this.globalShader = gLSLShader;
    }

    public void setLightAttenuation(int i10, float f10) {
        this.lights.setAttenuation(i10, f10);
    }

    public void setLightDiscardDistance(int i10, float f10) {
        this.lights.setDiscardDistance(i10, f10);
    }

    public void setLightDistanceOverride(int i10, float f10) {
        this.lights.setDistanceOverride(i10, f10);
    }

    public void setLightIntensity(int i10, float f10, float f11, float f12) {
        this.lights.setLightIntensity(i10, f10, f11, f12);
    }

    public void setLightPosition(int i10, SimpleVector simpleVector) {
        this.lights.setPosition(i10, simpleVector.f83625x, simpleVector.f83626y, simpleVector.f83627z);
    }

    public void setLightVisibility(int i10, boolean z10) {
        this.lights.setVisibility(i10, z10);
    }

    public void setObjectsVisibility(boolean z10) {
        Enumeration<Object3D> elements = this.objectList.elements();
        while (elements.hasMoreElements()) {
            elements.nextElement().setVisibility(z10);
        }
    }

    public void setPlanes(boolean z10) {
        float f10 = this.nearPlane;
        if (f10 != -1.0f) {
            if (z10) {
                Config.nearPlane = this.nearPlaneOld;
                Config.farPlane = this.farPlaneOld;
            } else {
                this.nearPlaneOld = Config.nearPlane;
                this.farPlaneOld = Config.farPlane;
                Config.nearPlane = f10;
                Config.farPlane = this.farPlane;
            }
        }
    }

    public void setRGBScale(int i10) {
        getLights().setRGBScale(i10);
    }

    private final void draw(FrameBuffer frameBuffer, boolean z10, int i10) {
        boolean z11;
        if (!this.calledRender) {
            frameBuffer.glRend.setFrustumAndFog(this, frameBuffer);
        }
        this.calledRender = false;
        setPlanes(false);
        GLRenderer gLRenderer = frameBuffer.glRend;
        this.drawCnt++;
        int width = frameBuffer.getWidth();
        int height = frameBuffer.getHeight();
        int i11 = this.visList.anzpoly;
        gLRenderer.startPainting();
        if (this.visList.anzpoly != -1) {
            if (Config.viewportOffsetX == 0.0f && Config.viewportOffsetY == 0.0f) {
                z11 = false;
            } else {
                gLRenderer.setBufferViewport((int) (Config.viewportOffsetX * width), (int) ((-Config.viewportOffsetY) * height), width, height);
                z11 = true;
            }
            if (z10) {
                for (int i12 = 0; i12 <= i11; i12++) {
                    gLRenderer.drawWireframe(this.visList, i12, i10, frameBuffer);
                }
            } else {
                gLRenderer.drawVertexArray(this.visList, 0, i11, frameBuffer, this);
            }
            gLRenderer.endState();
            if (z11) {
                frameBuffer.glRend.setBufferViewport(0, 0, width, height);
            }
        }
        if (this.lines != null) {
            gLRenderer.enableLineMode(this);
            for (int i13 = 0; i13 < this.lines.size(); i13++) {
                Polyline polyline = this.lines.get(i13);
                if (polyline.isVisible()) {
                    gLRenderer.drawLine(polyline);
                }
            }
            gLRenderer.disableLineMode();
        }
        gLRenderer.endPainting();
        setPlanes(true);
    }

    public int addLight(SimpleVector simpleVector, RGBColor rGBColor) {
        return this.lights.addLight(simpleVector.f83625x, simpleVector.f83626y, simpleVector.f83627z, rGBColor.getRed(), rGBColor.getGreen(), rGBColor.getBlue());
    }

    public boolean checkCameraCollision(int i10, float f10, boolean z10) {
        return checkCameraCollision(null, i10, f10, 3.0f, z10);
    }

    public boolean checkCameraCollisionEllipsoid(SimpleVector simpleVector, SimpleVector simpleVector2, float f10, int i10) {
        return checkCameraCollisionEllipsoid(simpleVector, -1, simpleVector2, f10, i10 < 1 ? 1 : i10);
    }

    public boolean checkCameraCollisionSpherical(SimpleVector simpleVector, float f10, float f11, boolean z10) {
        return checkCameraCollisionSpherical(simpleVector, -1, f10, f11, z10);
    }

    public void setFogParameters(float f10, float f11, float f12, float f13, float f14) {
        if (this.useFogging) {
            this.fogModeChanged = 1;
        }
        if (f10 != -999.0f) {
            this.fogStart = f10;
        }
        this.fogDistance = Math.max(f11, 1.0f);
        this.fogColorR = f12;
        this.fogColorG = f13;
        this.fogColorB = f14;
    }

    private final boolean checkCameraCollisionEllipsoid(SimpleVector simpleVector, int i10, SimpleVector simpleVector2, float f10, int i11) {
        float f11;
        float f12;
        float f13;
        if (simpleVector != null) {
            f11 = simpleVector.f83625x * f10;
            f12 = simpleVector.f83626y * f10;
            f13 = simpleVector.f83627z * f10;
        } else if (i10 != 7) {
            float f14 = ((i10 & 1) == 1 ? 1.0f : -1.0f) * f10;
            int i12 = 2 - (((i10 + 1) / 2) - 1);
            float[][] fArr = this.camera.backMatrix.mat;
            f11 = fArr[0][i12] * f14;
            f12 = fArr[1][i12] * f14;
            f13 = fArr[2][i12] * f14;
        } else {
            f11 = 0.0f;
            f13 = 0.0f;
            f12 = 0.0f;
        }
        CollisionInfo collisionInfo = new CollisionInfo();
        collisionInfo.eRadius = simpleVector2;
        Camera camera = this.camera;
        collisionInfo.r3Pos = new SimpleVector(camera.backBx, camera.backBy, camera.backBz);
        collisionInfo.r3Velocity = new SimpleVector(f11, f12, f13);
        collisionInfo.calculateInverseAndDest();
        if (this.camera.getEllipsoidMode() == 1) {
            Matrix matrix = new Matrix();
            float[] fArr2 = matrix.mat[3];
            Camera camera2 = this.camera;
            fArr2[0] = camera2.backBx;
            fArr2[1] = camera2.backBy;
            fArr2[2] = camera2.backBz;
            Matrix cloneMatrix = camera2.backMatrix.cloneMatrix();
            cloneMatrix.matMul(matrix);
            collisionInfo.addTransMat = cloneMatrix;
            collisionInfo.addRotMat = this.camera.backMatrix.cloneMatrix();
        }
        doWorldCollisionEllipsoid(collisionInfo, 0, null, i11);
        Camera camera3 = this.camera;
        SimpleVector simpleVector3 = collisionInfo.r3Pos;
        camera3.backBx = simpleVector3.f83625x;
        camera3.backBy = simpleVector3.f83626y;
        camera3.backBz = simpleVector3.f83627z;
        return collisionInfo.collision;
    }

    private final boolean checkCameraCollisionSpherical(SimpleVector simpleVector, int i10, float f10, float f11, boolean z10) {
        Camera camera = this.camera;
        float f12 = camera.backBx;
        float f13 = camera.backBy;
        float f14 = camera.backBz;
        float[] fArr = {f12, f13, f14};
        if (simpleVector != null) {
            fArr[0] = f12 + (simpleVector.f83625x * f11);
            fArr[1] = f13 + (simpleVector.f83626y * f11);
            fArr[2] = f14 + (simpleVector.f83627z * f11);
        } else if (i10 != 7) {
            float f15 = ((i10 & 1) == 1 ? 1.0f : -1.0f) * f11;
            int i11 = 2 - (((i10 + 1) / 2) - 1);
            float[][] fArr2 = camera.backMatrix.mat;
            fArr[0] = f12 + (fArr2[0][i11] * f15);
            fArr[1] = f13 + (fArr2[1][i11] * f15);
            fArr[2] = f14 + (fArr2[2][i11] * f15);
        }
        boolean[] zArr = new boolean[1];
        float[] fArr3 = fArr;
        for (int i12 = 2; i12 < this.objectList.size(); i12++) {
            Object3D elementAt = this.objectList.elementAt(i12);
            elementAt.wasCollider = false;
            elementAt.resetPolygonIDCount();
            if (elementAt.isPotentialCollider && elementAt.isVisible) {
                if (elementAt.hasBoundingBox && !elementAt.sphereIntersectsAABB(fArr3, f10)) {
                }
                boolean z11 = zArr[0];
                zArr[0] = false;
                float[] collideSpherical = elementAt.collideSpherical(fArr3, f10, Config.collideSectorOffset, zArr, true);
                boolean z12 = zArr[0];
                if (z12) {
                    elementAt.wasCollider = true;
                }
                zArr[0] = z12 | z11;
                fArr3 = collideSpherical;
            }
        }
        boolean z13 = zArr[0];
        if (z10 || !z13) {
            Camera camera2 = this.camera;
            camera2.backBx = fArr3[0];
            camera2.backBy = fArr3[1];
            camera2.backBz = fArr3[2];
        }
        if (z13) {
            notifyAll((Object3D) null, (CollisionInfo) null, 1, new SimpleVector(fArr3));
        }
        return z13;
    }

    private void notifyAll(Object3D object3D, CollisionInfo collisionInfo, int i10, SimpleVector simpleVector) {
        if (hasToNotify(collisionInfo)) {
            Object3DList object3DList = this.targets;
            if (object3DList == null) {
                this.targets = new Object3DList(10);
            } else {
                object3DList.clear();
            }
            for (int i11 = 2; i11 < this.objectList.size(); i11++) {
                Object3D elementAt = this.objectList.elementAt(i11);
                if (elementAt.wasCollider) {
                    this.targets.addElement(elementAt);
                }
            }
            Object3D[] array = this.targets.toArray();
            if (object3D != null) {
                object3D.notifyCollisionListeners(1, i10, array, simpleVector);
            }
            for (int i12 = 0; i12 < this.targets.size(); i12++) {
                this.targets.elementAt(i12).notifyCollisionListeners(object3D, 0, i10, array, simpleVector);
            }
        }
    }

    public boolean checkCameraCollision(int i10, float f10, float f11, boolean z10) {
        return checkCameraCollision(null, i10, f10, f11, z10);
    }

    public boolean checkCameraCollision(SimpleVector simpleVector, float f10, float f11, boolean z10) {
        return checkCameraCollision(simpleVector, -1, f10, f11, z10);
    }

    private final boolean checkCameraCollision(SimpleVector simpleVector, int i10, float f10, float f11, boolean z10) {
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        Object3D object3D;
        boolean z15;
        SimpleVector simpleVector2;
        int i11;
        float f19;
        World world = this;
        int i12 = 2;
        int i13 = i10;
        if (i13 == 7) {
            i13 = 1;
        }
        float[] fArr = new float[3];
        float[] fArr2 = new float[3];
        float[] fArr3 = new float[3];
        Camera camera = world.camera;
        float[] fArr4 = {camera.backBx, camera.backBy, camera.backBz};
        if (simpleVector == null) {
            f16 = (i13 & 1) != 1 ? -1.0f : 1.0f;
            int i14 = 2 - (((i13 + 1) / 2) - 1);
            float[][] fArr5 = camera.backMatrix.mat;
            f12 = fArr5[0][i14];
            f13 = fArr5[1][i14];
            f14 = fArr5[2][i14];
            f17 = f12 * f16;
            f18 = f13 * f16;
            f15 = f14 * f16;
        } else {
            f12 = simpleVector.f83625x;
            f13 = simpleVector.f83626y;
            f14 = simpleVector.f83627z;
            f15 = f14;
            f16 = 1.0f;
            f17 = f12;
            f18 = f13;
        }
        float[] fArr6 = {f17, f18, f15};
        fArr[0] = f17;
        float f20 = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr2[0] = 0.0f;
        fArr2[1] = f18;
        fArr2[2] = 0.0f;
        fArr3[0] = 0.0f;
        fArr3[1] = 0.0f;
        fArr3[2] = f15;
        if (fArr[0] < 0.0f) {
            fArr[0] = -1.0f;
        } else {
            fArr[0] = 1.0f;
        }
        if (fArr2[1] < 0.0f) {
            fArr2[1] = -1.0f;
        } else {
            fArr2[1] = 1.0f;
        }
        if (f15 < 0.0f) {
            fArr3[2] = -1.0f;
        } else {
            fArr3[2] = 1.0f;
        }
        float f21 = Float.MAX_VALUE;
        float f22 = Float.MAX_VALUE;
        float f23 = Float.MAX_VALUE;
        Object3D object3D2 = null;
        Object3D object3D3 = null;
        Object3D object3D4 = null;
        while (i12 < world.objectList.size()) {
            Object3D object3D5 = object3D4;
            Object3D elementAt = world.objectList.elementAt(i12);
            elementAt.wasCollider = false;
            elementAt.resetPolygonIDCount();
            if (elementAt.isPotentialCollider && elementAt.isVisible && (!elementAt.hasBoundingBox || elementAt.rayIntersectsAABB(fArr4, fArr6, false) < Config.collideOffset)) {
                f19 = f16;
                float collide = elementAt.collide(fArr4, fArr, 3.0f, Config.collideSectorOffset);
                if (collide < f21) {
                    f21 = collide;
                    object3D2 = elementAt;
                }
                float collide2 = elementAt.collide(fArr4, fArr2, 3.0f, Config.collideSectorOffset);
                if (collide2 < f22) {
                    f22 = collide2;
                    object3D3 = elementAt;
                }
                float collide3 = elementAt.collide(fArr4, fArr3, 3.0f, Config.collideSectorOffset);
                if (collide3 < f23) {
                    f23 = collide3;
                    object3D5 = elementAt;
                }
            } else {
                f19 = f16;
            }
            i12++;
            f20 = 0.0f;
            world = this;
            f16 = f19;
            object3D4 = object3D5;
        }
        float f24 = 0.9f * f11;
        if (f21 < f11 && f21 > f24) {
            f21 = f11;
        }
        if (f22 < f11 && f22 > f24) {
            f22 = f11;
        }
        if (f23 < f11 && f23 > f24) {
            f23 = f11;
        }
        float f25 = f12 * f10 * f16;
        if (f21 - Math.abs(f25) <= f11) {
            f25 = f25 >= f20 ? f21 - f11 : -(f21 - f11);
            if (object3D2 != null) {
                object3D2.wasCollider = true;
            }
            z11 = true;
            z12 = true;
        } else {
            z11 = false;
            z12 = false;
        }
        float f26 = f13 * f10 * f16;
        if (f22 - Math.abs(f26) <= f11) {
            f26 = f26 >= f20 ? f22 - f11 : -(f22 - f11);
            if (object3D3 != null) {
                object3D3.wasCollider = true;
            }
            z14 = true;
            z13 = true;
        } else {
            z13 = z12;
            z14 = false;
        }
        float f27 = f14 * f10 * f16;
        if (f23 - Math.abs(f27) <= f11) {
            f27 = f27 >= f20 ? f23 - f11 : -(f23 - f11);
            object3D = object3D4;
            if (object3D != null) {
                object3D.wasCollider = true;
            }
            z13 = true;
            z15 = true;
        } else {
            object3D = object3D4;
            z15 = false;
        }
        if (object3D2 == null || !object3D2.wasCollider) {
            simpleVector2 = null;
            i11 = 0;
        } else {
            simpleVector2 = null;
            i11 = 0;
            object3D2.notifyCollisionListeners(0, 0, new Object3D[]{object3D2}, null);
        }
        if (object3D3 != null && object3D3.wasCollider && !object3D3.equals(object3D2)) {
            object3D3.notifyCollisionListeners(i11, i11, new Object3D[]{object3D3}, simpleVector2);
        }
        if (object3D != null && object3D.wasCollider && !object3D.equals(object3D2) && !object3D.equals(object3D3)) {
            object3D.notifyCollisionListeners(0, 0, new Object3D[]{object3D}, null);
        }
        if (z10 || !z13) {
            Camera camera2 = world.camera;
            camera2.backBx += f25;
            camera2.backBy += f26;
            camera2.backBz += f27;
        }
        return z11 | z14 | z15;
    }

    public void removeObject(Object3D object3D) {
        if (!this.objectList.removeElement(object3D)) {
            if (object3D.getUserObject() == null || !(object3D.getUserObject() instanceof Overlay)) {
                Logger.log("Can't remove object #" + object3D.getID() + ", because it doesn't belong to this World!", 0);
                return;
            }
            return;
        }
        object3D.myWorld = null;
        VisList visList = this.visList;
        if (visList != null) {
            visList.deepClear();
        }
    }
}
