package com.jme3.bullet.collision.shapes;

import com.jme3.bullet.CollisionSpace;
import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.collision.shapes.infos.ChildCollisionShape;
import com.jme3.bullet.objects.PhysicsGhostObject;
import com.jme3.bullet.util.DebugShapeFactory;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.math.Matrix3f;
import com.jme3.math.Matrix4f;
import com.jme3.math.Transform;
import com.jme3.math.Triangle;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.lang.reflect.Array;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Logger;
import p000if.C13702E;

public class CompoundCollisionShape extends CollisionShape {
    static final boolean $assertionsDisabled = false;
    private static final int defaultCapacity = 6;
    private static final String tagChildren = "children";
    private ArrayList<ChildCollisionShape> children;
    public static final Logger logger2 = Logger.getLogger(CompoundCollisionShape.class.getName());
    private static final Matrix3f matrixIdentity = new Matrix3f();
    private static final Vector3f translateIdentity = new Vector3f(0.0f, 0.0f, 0.0f);

    public CompoundCollisionShape() {
        this.children = new ArrayList<>(6);
        createEmpty(6);
    }

    private static native void addChildShape(long j10, long j11, Vector3f vector3f, Matrix3f matrix3f);

    private static native void calculatePrincipalAxisTransform(long j10, FloatBuffer floatBuffer, Transform transform, Vector3f vector3f);

    private static native int countChildren(long j10);

    private void createEmpty(int i10) {
        setNativeId(createShape2(true, i10));
        setContactFilterEnabled(this.enableContactFilter);
        setScale(this.scale);
        setMargin(this.margin);
    }

    private static native long createShape2(boolean z10, int i10);

    private void loadChildren() {
        long nativeId = nativeId();
        Matrix3f matrix3f = new Matrix3f();
        Vector3f vector3f = new Vector3f();
        Iterator<ChildCollisionShape> it = this.children.iterator();
        while (it.hasNext()) {
            ChildCollisionShape next = it.next();
            long nativeId2 = next.getShape().nativeId();
            next.copyOffset(vector3f);
            next.copyRotationMatrix(matrix3f);
            addChildShape(nativeId, nativeId2, vector3f, matrix3f);
        }
    }

    private static native void recalcAabb(long j10);

    private static native void removeChildShape(long j10, long j11);

    private static native void rotate(long j10, Matrix3f matrix3f);

    private static native void setChildTransform(long j10, long j11, Vector3f vector3f, Matrix3f matrix3f);

    private static native void translate(long j10, Vector3f vector3f);

    public void addChildShape(CollisionShape collisionShape) {
        C13702E.t(collisionShape, "child shape");
        addChildShape(collisionShape, translateIdentity, matrixIdentity);
    }

    @Override
    public boolean canScale(Vector3f vector3f) {
        boolean canScale = super.canScale(vector3f);
        if (!canScale) {
            return canScale;
        }
        Iterator<ChildCollisionShape> it = this.children.iterator();
        while (it.hasNext()) {
            if (!it.next().getShape().canScale(vector3f)) {
                return false;
            }
        }
        return canScale;
    }

    @Override
    public boolean canSplit() {
        Iterator<ChildCollisionShape> it = this.children.iterator();
        while (it.hasNext()) {
            if (!it.next().getShape().canSplit()) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        ArrayList<ChildCollisionShape> arrayList = (ArrayList) cloner.clone(this.children);
        this.children = arrayList;
        createEmpty(arrayList.size());
        loadChildren();
        copyShapeProperties((CompoundCollisionShape) obj);
    }

    public boolean[][] connectivityMatrix(CollisionSpace collisionSpace) {
        int size = this.children.size();
        boolean[][] zArr = (boolean[][]) Array.newInstance(Boolean.TYPE, size, size);
        Matrix3f matrix3f = new Matrix3f();
        Vector3f vector3f = new Vector3f();
        PhysicsGhostObject[] physicsGhostObjectArr = new PhysicsGhostObject[size];
        for (int i10 = 0; i10 < size; i10++) {
            zArr[i10][i10] = true;
            ChildCollisionShape childCollisionShape = this.children.get(i10);
            PhysicsGhostObject physicsGhostObject = new PhysicsGhostObject(childCollisionShape.getShape());
            childCollisionShape.copyOffset(vector3f);
            physicsGhostObject.setPhysicsLocation(vector3f);
            childCollisionShape.copyRotationMatrix(matrix3f);
            physicsGhostObject.setPhysicsRotation(matrix3f);
            physicsGhostObjectArr[i10] = physicsGhostObject;
        }
        if (collisionSpace == null) {
            collisionSpace = new CollisionSpace(vector3f, vector3f, PhysicsSpace.BroadphaseType.DBVT);
        }
        int i11 = 0;
        while (i11 < size - 1) {
            PhysicsGhostObject physicsGhostObject2 = physicsGhostObjectArr[i11];
            int i12 = i11 + 1;
            for (int i13 = i12; i13 < size; i13++) {
                boolean z10 = collisionSpace.pairTest(physicsGhostObject2, physicsGhostObjectArr[i13], null) > 0;
                zArr[i11][i13] = z10;
                zArr[i13][i11] = z10;
            }
            i11 = i12;
        }
        return zArr;
    }

    public void correctAxes(Transform transform) {
        Matrix4f matrix4f = new Matrix4f();
        transform.toTransformMatrix(matrix4f);
        matrix4f.invertLocal();
        Matrix3f matrix3f = new Matrix3f();
        matrix4f.toRotationMatrix(matrix3f);
        rotate(matrix3f);
        Vector3f vector3f = new Vector3f();
        matrix4f.toTranslationVector(vector3f);
        translate(vector3f);
    }

    public int countChildren() {
        return this.children.size();
    }

    public int countGroups(CollisionSpace collisionSpace, int[] iArr) {
        int i10;
        C13702E.t(iArr, "storage for colors");
        int size = this.children.size();
        C13702E.H(iArr.length == size, "the correct length");
        boolean[][] connectivityMatrix = connectivityMatrix(collisionSpace);
        for (int i11 = 0; i11 < size; i11++) {
            iArr[i11] = -1;
        }
        int i12 = size;
        int i13 = 0;
        while (i12 > 0) {
            int i14 = i13;
            while (true) {
                if (i14 >= size) {
                    i10 = i13;
                    i13 = -1;
                    break;
                }
                if (iArr[i14] == -1) {
                    i10 = i13 + 1;
                    iArr[i14] = i13;
                    i12--;
                    break;
                }
                i14++;
            }
            if (i13 == -1) {
                return i10;
            }
            boolean z10 = true;
            while (z10) {
                z10 = false;
                for (int i15 = 0; i15 < size; i15++) {
                    if (iArr[i15] == i13) {
                        for (int i16 = 0; i16 < size; i16++) {
                            if (iArr[i16] == -1 && connectivityMatrix[i15][i16]) {
                                iArr[i16] = i13;
                                i12--;
                                z10 = true;
                            }
                        }
                    }
                }
            }
            i13 = i10;
        }
        return i13;
    }

    public int findIndex(CollisionShape collisionShape) {
        for (int i10 = 0; i10 < this.children.size(); i10++) {
            if (this.children.get(i10).getShape() == collisionShape) {
                return i10;
            }
        }
        return -1;
    }

    public ChildCollisionShape[] listChildren() {
        ChildCollisionShape[] childCollisionShapeArr = new ChildCollisionShape[this.children.size()];
        this.children.toArray(childCollisionShapeArr);
        return childCollisionShapeArr;
    }

    @Override
    public float maxRadius() {
        Transform transform = new Transform();
        Iterator<ChildCollisionShape> it = this.children.iterator();
        float f10 = 0.0f;
        while (it.hasNext()) {
            ChildCollisionShape next = it.next();
            CollisionShape shape = next.getShape();
            next.copyOffset(transform.getTranslation());
            transform.getTranslation().multLocal(this.scale);
            next.copyRotation(transform.getRotation());
            float maxDistance = DebugShapeFactory.maxDistance(shape, transform, 0);
            if (maxDistance > f10) {
                f10 = maxDistance;
            }
        }
        return f10;
    }

    public Transform principalAxes(FloatBuffer floatBuffer, Transform transform, Vector3f vector3f) {
        if (!floatBuffer.isDirect()) {
            throw new IllegalArgumentException("The buffer must be direct.");
        }
        if (transform == null) {
            transform = new Transform();
        }
        C13702E.t(vector3f, "storage for inertia");
        calculatePrincipalAxisTransform(nativeId(), floatBuffer, transform, vector3f);
        return transform;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.children = capsule.readSavableArrayList(tagChildren, null);
        loadChildren();
        readShapeProperties(capsule);
        setContactFilterEnabled(this.enableContactFilter);
        setScale(this.scale);
        setMargin(this.margin);
    }

    @Override
    public void recalculateAabb() {
        recalcAabb(nativeId());
    }

    public void removeChildShape(CollisionShape collisionShape) {
        removeChildShape(nativeId(), collisionShape.nativeId());
        Iterator<ChildCollisionShape> it = this.children.iterator();
        while (it.hasNext()) {
            if (it.next().getShape() == collisionShape) {
                it.remove();
            }
        }
    }

    public void rotate(Matrix3f matrix3f) {
        Vector3f vector3f = new Vector3f();
        Matrix3f matrix3f2 = new Matrix3f();
        Iterator<ChildCollisionShape> it = this.children.iterator();
        while (it.hasNext()) {
            ChildCollisionShape next = it.next();
            next.copyOffset(vector3f);
            matrix3f.mult(vector3f, vector3f);
            next.copyRotationMatrix(matrix3f2);
            matrix3f.mult(matrix3f2, matrix3f2);
            next.setTransform(vector3f, matrix3f2);
        }
        rotate(nativeId(), matrix3f);
    }

    @Override
    public float scaledVolume() {
        Iterator<ChildCollisionShape> it = this.children.iterator();
        float f10 = 0.0f;
        while (it.hasNext()) {
            f10 += it.next().getShape().scaledVolume();
        }
        return f10;
    }

    public void setChildTransform(CollisionShape collisionShape, Transform transform) {
        long nativeId = collisionShape.nativeId();
        long nativeId2 = nativeId();
        Vector3f translation = transform.getTranslation();
        int findIndex = findIndex(collisionShape);
        Matrix3f rotationMatrix = transform.getRotation().toRotationMatrix();
        setChildTransform(nativeId2, nativeId, translation, rotationMatrix);
        this.children.get(findIndex).setTransform(translation, rotationMatrix);
    }

    @Override
    public void setScale(Vector3f vector3f) {
        super.setScale(vector3f);
        Iterator<ChildCollisionShape> it = this.children.iterator();
        while (it.hasNext()) {
            it.next().getShape().updateScale();
        }
    }

    public CompoundCollisionShape[] split(Triangle triangle) {
        C13702E.t(triangle, "parent triangle");
        int size = this.children.size();
        CompoundCollisionShape[] compoundCollisionShapeArr = new CompoundCollisionShape[2];
        Matrix3f matrix3f = new Matrix3f();
        Vector3f vector3f = new Vector3f();
        Iterator<ChildCollisionShape> it = this.children.iterator();
        while (it.hasNext()) {
            ChildCollisionShape[] split = it.next().split(triangle);
            for (int i10 = 0; i10 < 2; i10++) {
                ChildCollisionShape childCollisionShape = split[i10];
                if (childCollisionShape != null) {
                    if (compoundCollisionShapeArr[i10] == null) {
                        compoundCollisionShapeArr[i10] = new CompoundCollisionShape(size);
                    }
                    CollisionShape shape = childCollisionShape.getShape();
                    childCollisionShape.copyOffset(vector3f);
                    childCollisionShape.copyRotationMatrix(matrix3f);
                    compoundCollisionShapeArr[i10].addChildShape(shape, vector3f, matrix3f);
                }
            }
        }
        return compoundCollisionShapeArr;
    }

    @Override
    public CollisionShape toSplittableShape() {
        if (canSplit()) {
            return this;
        }
        CompoundCollisionShape compoundCollisionShape = new CompoundCollisionShape(this.children.size());
        Matrix3f matrix3f = new Matrix3f();
        Vector3f vector3f = new Vector3f();
        Iterator<ChildCollisionShape> it = this.children.iterator();
        while (it.hasNext()) {
            ChildCollisionShape next = it.next();
            CollisionShape splittableShape = next.getShape().toSplittableShape();
            next.copyOffset(vector3f);
            next.copyRotationMatrix(matrix3f);
            compoundCollisionShape.addChildShape(splittableShape, vector3f, matrix3f);
        }
        return compoundCollisionShape;
    }

    public void translate(Vector3f vector3f) {
        Vector3f vector3f2 = new Vector3f();
        Matrix3f matrix3f = new Matrix3f();
        Iterator<ChildCollisionShape> it = this.children.iterator();
        while (it.hasNext()) {
            ChildCollisionShape next = it.next();
            next.copyOffset(vector3f2);
            vector3f2.addLocal(vector3f);
            next.copyRotationMatrix(matrix3f);
            next.setTransform(vector3f2, matrix3f);
        }
        translate(nativeId(), vector3f);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).writeSavableArrayList(this.children, tagChildren, null);
    }

    public void addChildShape(CollisionShape collisionShape, float f10, float f11, float f12) {
        C13702E.t(collisionShape, "child shape");
        addChildShape(collisionShape, new Vector3f(f10, f11, f12), matrixIdentity);
    }

    public CompoundCollisionShape(int i10) {
        C13702E.F(i10, "initial capacity");
        this.children = new ArrayList<>(i10);
        createEmpty(i10);
    }

    public void addChildShape(CollisionShape collisionShape, Vector3f vector3f) {
        C13702E.t(collisionShape, "child shape");
        C13702E.t(vector3f, "offset");
        addChildShape(collisionShape, vector3f, matrixIdentity);
    }

    public void addChildShape(CollisionShape collisionShape, Vector3f vector3f, Matrix3f matrix3f) {
        if (!(collisionShape instanceof CompoundCollisionShape)) {
            long nativeId = collisionShape.nativeId();
            this.children.add(new ChildCollisionShape(vector3f, matrix3f, collisionShape));
            addChildShape(nativeId(), nativeId, vector3f, matrix3f);
            return;
        }
        throw new IllegalArgumentException("A CompoundCollisionShape cannot have a CompoundCollisionShape child!");
    }

    public void addChildShape(CollisionShape collisionShape, Transform transform) {
        addChildShape(collisionShape, transform.getTranslation(), transform.getRotation().toRotationMatrix());
    }
}
