package com.ardor3d.bounding;

import com.ardor3d.bounding.BoundingVolume;
import com.ardor3d.bounding.TreeComparator;
import com.ardor3d.intersection.Intersection;
import com.ardor3d.intersection.PrimitiveKey;
import com.ardor3d.math.Ray3;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyTransform;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.MeshData;
import com.ardor3d.scenegraph.Node;
import com.ardor3d.scenegraph.Spatial;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class CollisionTree implements Serializable {
    private static final long serialVersionUID = 1;
    protected BoundingVolume _bounds;
    protected final transient TreeComparator _comparator = new TreeComparator();
    protected int _end;
    protected CollisionTree _left;
    protected transient WeakReference<Mesh> _mesh;
    protected int[] _primitiveIndices;
    protected CollisionTree _right;
    protected int _section;
    protected int _start;
    protected Type _type;
    protected BoundingVolume _worldBounds;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$bounding$BoundingVolume$Type;
        static final int[] $SwitchMap$com$ardor3d$bounding$CollisionTree$Type;

        static {
            int[] iArr = new int[Type.values().length];
            $SwitchMap$com$ardor3d$bounding$CollisionTree$Type = iArr;
            try {
                iArr[Type.AABB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$bounding$CollisionTree$Type[Type.OBB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$bounding$CollisionTree$Type[Type.Sphere.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[BoundingVolume.Type.values().length];
            $SwitchMap$com$ardor3d$bounding$BoundingVolume$Type = iArr2;
            try {
                iArr2[BoundingVolume.Type.AABB.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$ardor3d$bounding$BoundingVolume$Type[BoundingVolume.Type.OBB.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$ardor3d$bounding$BoundingVolume$Type[BoundingVolume.Type.Sphere.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public enum Type {
        OBB,
        AABB,
        Sphere
    }

    public CollisionTree(Type type) {
        this._type = Type.AABB;
        this._type = type;
    }

    private void createBounds() {
        int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$bounding$CollisionTree$Type[this._type.ordinal()];
        if (i10 == 1) {
            this._bounds = new BoundingBox();
            this._worldBounds = new BoundingBox();
        } else if (i10 == 2) {
            this._bounds = new OrientedBoundingBox();
            this._worldBounds = new OrientedBoundingBox();
        } else {
            if (i10 != 3) {
                return;
            }
            this._bounds = new BoundingSphere();
            this._worldBounds = new BoundingSphere();
        }
    }

    private Mesh getMesh() {
        return this._mesh.get();
    }

    private WeakReference<Mesh> makeRef(Mesh mesh) {
        return new WeakReference<>(mesh);
    }

    public void construct(int i10, int i11, Node node, boolean z10) {
        Spatial child = node.getChild(i10);
        if (!(child instanceof Mesh)) {
            return;
        }
        Mesh mesh = (Mesh) child;
        this._mesh = makeRef(mesh);
        this._primitiveIndices = new int[mesh.getMeshData().getPrimitiveCount(i11)];
        int i12 = 0;
        while (true) {
            int[] iArr = this._primitiveIndices;
            if (i12 < iArr.length) {
                iArr[i12] = i12;
                i12++;
            } else {
                createTree(i11, 0, iArr.length, z10);
                return;
            }
        }
    }

    public void createTree(int i10, int i11, int i12, boolean z10) {
        this._section = i10;
        this._start = i11;
        this._end = i12;
        if (this._primitiveIndices == null) {
            return;
        }
        createBounds();
        this._bounds.computeFromPrimitives(getMesh().getMeshData(), this._section, this._primitiveIndices, this._start, this._end);
        if ((this._end - this._start) + 1 <= CollisionTreeManager.getInstance().getMaxPrimitivesPerLeaf()) {
            return;
        }
        if (z10) {
            sortPrimitives();
        }
        if (this._left == null) {
            this._left = new CollisionTree(this._type);
        }
        CollisionTree collisionTree = this._left;
        collisionTree._primitiveIndices = this._primitiveIndices;
        collisionTree._mesh = this._mesh;
        int i13 = this._section;
        int i14 = this._start;
        collisionTree.createTree(i13, i14, (this._end + i14) / 2, z10);
        if (this._right == null) {
            this._right = new CollisionTree(this._type);
        }
        CollisionTree collisionTree2 = this._right;
        collisionTree2._primitiveIndices = this._primitiveIndices;
        collisionTree2._mesh = this._mesh;
        int i15 = this._section;
        int i16 = this._start;
        int i17 = this._end;
        collisionTree2.createTree(i15, (i16 + i17) / 2, i17, z10);
    }

    public BoundingVolume getBounds() {
        return this._bounds;
    }

    public BoundingVolume getWorldBounds() {
        return this._worldBounds;
    }

    public boolean intersect(CollisionTree collisionTree) {
        if (collisionTree == null) {
            return false;
        }
        BoundingVolume transform = collisionTree._bounds.transform(collisionTree.getMesh().getWorldTransform(), collisionTree._worldBounds);
        collisionTree._worldBounds = transform;
        if (!intersectsBounding(transform)) {
            return false;
        }
        CollisionTree collisionTree2 = this._left;
        if (collisionTree2 != null) {
            return collisionTree.intersect(collisionTree2) || collisionTree.intersect(this._right);
        }
        CollisionTree collisionTree3 = collisionTree._left;
        if (collisionTree3 != null) {
            return intersect(collisionTree3) || intersect(collisionTree._right);
        }
        ReadOnlyTransform worldTransform = getMesh().getWorldTransform();
        ReadOnlyTransform worldTransform2 = collisionTree.getMesh().getWorldTransform();
        MeshData meshData = getMesh().getMeshData();
        MeshData meshData2 = collisionTree.getMesh().getMeshData();
        Vector3[] vector3Arr = null;
        Vector3[] vector3Arr2 = null;
        for (int i10 = this._start; i10 < this._end; i10++) {
            vector3Arr = meshData.getPrimitive(this._primitiveIndices[i10], this._section, vector3Arr);
            for (Vector3 vector3 : vector3Arr) {
                worldTransform.applyForward(vector3);
            }
            for (int i11 = collisionTree._start; i11 < collisionTree._end; i11++) {
                vector3Arr2 = meshData2.getPrimitive(collisionTree._primitiveIndices[i11], collisionTree._section, vector3Arr2);
                for (Vector3 vector32 : vector3Arr2) {
                    worldTransform2.applyForward(vector32);
                }
                if (Intersection.intersection(vector3Arr, vector3Arr2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean intersectsBounding(BoundingVolume boundingVolume) {
        int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$bounding$BoundingVolume$Type[boundingVolume.getType().ordinal()];
        if (i10 == 1) {
            return this._worldBounds.intersectsBoundingBox((BoundingBox) boundingVolume);
        }
        if (i10 == 2) {
            return this._worldBounds.intersectsOrientedBoundingBox((OrientedBoundingBox) boundingVolume);
        }
        if (i10 != 3) {
            return false;
        }
        return this._worldBounds.intersectsSphere((BoundingSphere) boundingVolume);
    }

    public void sortPrimitives() {
        int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$bounding$CollisionTree$Type[this._type.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    this._comparator.setAxis(TreeComparator.Axis.X);
                }
            } else if (((OrientedBoundingBox) this._bounds)._extent.getX() > ((OrientedBoundingBox) this._bounds)._extent.getY()) {
                if (((OrientedBoundingBox) this._bounds)._extent.getX() > ((OrientedBoundingBox) this._bounds)._extent.getZ()) {
                    this._comparator.setAxis(TreeComparator.Axis.X);
                } else {
                    this._comparator.setAxis(TreeComparator.Axis.Z);
                }
            } else if (((OrientedBoundingBox) this._bounds)._extent.getY() > ((OrientedBoundingBox) this._bounds)._extent.getZ()) {
                this._comparator.setAxis(TreeComparator.Axis.Y);
            } else {
                this._comparator.setAxis(TreeComparator.Axis.Z);
            }
        } else if (((BoundingBox) this._bounds).getXExtent() > ((BoundingBox) this._bounds).getYExtent()) {
            if (((BoundingBox) this._bounds).getXExtent() > ((BoundingBox) this._bounds).getZExtent()) {
                this._comparator.setAxis(TreeComparator.Axis.X);
            } else {
                this._comparator.setAxis(TreeComparator.Axis.Z);
            }
        } else if (((BoundingBox) this._bounds).getYExtent() > ((BoundingBox) this._bounds).getZExtent()) {
            this._comparator.setAxis(TreeComparator.Axis.Y);
        } else {
            this._comparator.setAxis(TreeComparator.Axis.Z);
        }
        this._comparator.setMesh(getMesh());
    }

    public void splitMesh(Mesh mesh, int i10, int i11, boolean z10) {
        CollisionTree collisionTree;
        int[] iArr;
        CollisionTree collisionTree2;
        int[] iArr2;
        this._mesh = makeRef(mesh);
        int i12 = i11 - i10;
        int i13 = i12 / 2;
        if (i13 == 1) {
            CollisionTree collisionTree3 = new CollisionTree(this._type);
            this._left = collisionTree3;
            collisionTree3._primitiveIndices = new int[mesh.getMeshData().getPrimitiveCount(i10)];
            int i14 = 0;
            while (true) {
                collisionTree2 = this._left;
                iArr2 = collisionTree2._primitiveIndices;
                if (i14 >= iArr2.length) {
                    break;
                }
                iArr2[i14] = i14;
                i14++;
            }
            collisionTree2._mesh = this._mesh;
            collisionTree2.createTree(i10, 0, iArr2.length, z10);
        } else {
            CollisionTree collisionTree4 = new CollisionTree(this._type);
            this._left = collisionTree4;
            collisionTree4.splitMesh(mesh, i10, i10 + i13, z10);
        }
        if (i12 - i13 == 1) {
            int i15 = i10 + 1;
            CollisionTree collisionTree5 = new CollisionTree(this._type);
            this._right = collisionTree5;
            collisionTree5._primitiveIndices = new int[mesh.getMeshData().getPrimitiveCount(i15)];
            int i16 = 0;
            while (true) {
                collisionTree = this._right;
                iArr = collisionTree._primitiveIndices;
                if (i16 >= iArr.length) {
                    break;
                }
                iArr[i16] = i16;
                i16++;
            }
            collisionTree._mesh = this._mesh;
            collisionTree.createTree(i15, 0, iArr.length, z10);
        } else {
            CollisionTree collisionTree6 = new CollisionTree(this._type);
            this._right = collisionTree6;
            collisionTree6.splitMesh(mesh, i10 + i13, i11, z10);
        }
        BoundingVolume clone = this._left._bounds.clone(this._bounds);
        this._bounds = clone;
        clone.mergeLocal(this._right._bounds);
        this._worldBounds = this._bounds.clone(this._worldBounds);
    }

    public void construct(Mesh mesh, boolean z10) {
        this._mesh = makeRef(mesh);
        if (mesh.getMeshData().getSectionCount() == 1) {
            this._primitiveIndices = new int[mesh.getMeshData().getPrimitiveCount(0)];
            int i10 = 0;
            while (true) {
                int[] iArr = this._primitiveIndices;
                if (i10 < iArr.length) {
                    iArr[i10] = i10;
                    i10++;
                } else {
                    createTree(0, 0, iArr.length, z10);
                    return;
                }
            }
        } else {
            splitMesh(mesh, 0, mesh.getMeshData().getSectionCount(), z10);
        }
    }

    public boolean intersect(CollisionTree collisionTree, List<PrimitiveKey> list, List<PrimitiveKey> list2) {
        int i10 = 0;
        if (collisionTree == null) {
            return false;
        }
        BoundingVolume transform = collisionTree._bounds.transform(collisionTree.getMesh().getWorldTransform(), collisionTree._worldBounds);
        collisionTree._worldBounds = transform;
        if (!intersectsBounding(transform)) {
            return false;
        }
        CollisionTree collisionTree2 = this._left;
        if (collisionTree2 != null) {
            return collisionTree.intersect(this._right, list2, list) || collisionTree.intersect(collisionTree2, list2, list);
        }
        CollisionTree collisionTree3 = collisionTree._left;
        if (collisionTree3 != null) {
            return intersect(collisionTree._right, list, list2) || intersect(collisionTree3, list, list2);
        }
        ReadOnlyTransform worldTransform = getMesh().getWorldTransform();
        ReadOnlyTransform worldTransform2 = collisionTree.getMesh().getWorldTransform();
        MeshData meshData = getMesh().getMeshData();
        MeshData meshData2 = collisionTree.getMesh().getMeshData();
        int i11 = this._start;
        Vector3[] vector3Arr = null;
        boolean z10 = false;
        Vector3[] vector3Arr2 = null;
        while (i11 < this._end) {
            vector3Arr = meshData.getPrimitive(this._primitiveIndices[i11], this._section, vector3Arr);
            for (int i12 = i10; i12 < vector3Arr.length; i12++) {
                worldTransform.applyForward(vector3Arr[i12]);
            }
            for (int i13 = collisionTree._start; i13 < collisionTree._end; i13++) {
                vector3Arr2 = meshData2.getPrimitive(collisionTree._primitiveIndices[i13], collisionTree._section, vector3Arr2);
                for (Vector3 vector3 : vector3Arr2) {
                    worldTransform2.applyForward(vector3);
                }
                if (Intersection.intersection(vector3Arr, vector3Arr2)) {
                    list.add(new PrimitiveKey(this._primitiveIndices[i11], this._section));
                    list2.add(new PrimitiveKey(collisionTree._primitiveIndices[i13], collisionTree._section));
                    z10 = true;
                }
            }
            i11++;
            i10 = 0;
        }
        return z10;
    }

    public List<PrimitiveKey> intersect(Ray3 ray3, List<PrimitiveKey> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        if (!this._worldBounds.intersects(ray3)) {
            return list;
        }
        CollisionTree collisionTree = this._left;
        if (collisionTree != null) {
            collisionTree._worldBounds = collisionTree._bounds.transform(getMesh().getWorldTransform(), this._left._worldBounds);
            this._left.intersect(ray3, list);
        }
        CollisionTree collisionTree2 = this._right;
        if (collisionTree2 != null) {
            collisionTree2._worldBounds = collisionTree2._bounds.transform(getMesh().getWorldTransform(), this._right._worldBounds);
            this._right.intersect(ray3, list);
        } else if (this._left == null) {
            MeshData meshData = getMesh().getMeshData();
            ReadOnlyTransform worldTransform = getMesh().getWorldTransform();
            Vector3[] vector3Arr = null;
            for (int i10 = this._start; i10 < this._end; i10++) {
                vector3Arr = meshData.getPrimitive(this._primitiveIndices[i10], this._section, vector3Arr);
                for (Vector3 vector3 : vector3Arr) {
                    worldTransform.applyForward(vector3);
                }
                if (ray3.intersects(vector3Arr, (Vector3) null)) {
                    list.add(new PrimitiveKey(this._primitiveIndices[i10], this._section));
                }
            }
        }
        return list;
    }
}
