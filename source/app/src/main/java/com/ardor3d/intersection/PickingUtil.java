package com.ardor3d.intersection;

import com.ardor3d.bounding.CollisionTree;
import com.ardor3d.bounding.CollisionTreeManager;
import com.ardor3d.math.Ray3;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.Node;
import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.scenegraph.hint.PickingHint;
import com.ardor3d.scenegraph.hint.SceneHints;
import java.util.List;

public abstract class PickingUtil {
    public static void findCollisions(Spatial spatial, Spatial spatial2, CollisionResults collisionResults) {
        if (spatial == spatial2 || spatial.getWorldBound() == null) {
            return;
        }
        SceneHints sceneHints = spatial.getSceneHints();
        PickingHint pickingHint = PickingHint.Collidable;
        if (sceneHints.isPickingHintEnabled(pickingHint) && spatial2.getSceneHints().isPickingHintEnabled(pickingHint)) {
            int i10 = 0;
            if (spatial instanceof Node) {
                Node node = (Node) spatial;
                if (node.getWorldBound().intersects(spatial2.getWorldBound())) {
                    while (i10 < node.getNumberOfChildren()) {
                        findCollisions(node.getChild(i10), spatial2, collisionResults);
                        i10++;
                    }
                    return;
                }
                return;
            }
            if (spatial instanceof Mesh) {
                Mesh mesh = (Mesh) spatial;
                if (mesh.getWorldBound().intersects(spatial2.getWorldBound())) {
                    if (!(spatial2 instanceof Node)) {
                        collisionResults.addCollision(mesh, (Mesh) spatial2);
                        return;
                    }
                    Node node2 = (Node) spatial2;
                    while (i10 < node2.getNumberOfChildren()) {
                        findCollisions(mesh, node2.getChild(i10), collisionResults);
                        i10++;
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void findPick(Spatial spatial, Ray3 ray3, PickResults pickResults) {
        if (spatial == 0 || !spatial.getSceneHints().isPickingHintEnabled(PickingHint.Pickable)) {
            return;
        }
        if (spatial instanceof Pickable) {
            pickResults.addPick(ray3, (Pickable) spatial);
            return;
        }
        if (spatial instanceof Node) {
            Node node = (Node) spatial;
            if (node.getNumberOfChildren() == 0 || node.getWorldBound() == null || !node.getWorldBound().intersects(ray3)) {
                return;
            }
            for (int i10 = 0; i10 < node.getNumberOfChildren(); i10++) {
                findPick(node.getChild(i10), ray3, pickResults);
            }
        }
    }

    public static void findPrimitiveCollision(Mesh mesh, Mesh mesh2, List<PrimitiveKey> list, List<PrimitiveKey> list2) {
        SceneHints sceneHints = mesh.getSceneHints();
        PickingHint pickingHint = PickingHint.Collidable;
        if (sceneHints.isPickingHintEnabled(pickingHint) && mesh2.getSceneHints().isPickingHintEnabled(pickingHint)) {
            CollisionTree collisionTree = CollisionTreeManager.getInstance().getCollisionTree(mesh);
            CollisionTree collisionTree2 = CollisionTreeManager.getInstance().getCollisionTree(mesh2);
            if (collisionTree == null || collisionTree2 == null) {
                return;
            }
            collisionTree.getBounds().transform(mesh.getWorldTransform(), collisionTree.getWorldBounds());
            collisionTree.intersect(collisionTree2, list, list2);
        }
    }

    public static boolean hasCollision(Spatial spatial, Spatial spatial2, boolean z10) {
        if (spatial != spatial2 && spatial.getWorldBound() != null) {
            SceneHints sceneHints = spatial.getSceneHints();
            PickingHint pickingHint = PickingHint.Collidable;
            if (sceneHints.isPickingHintEnabled(pickingHint) && spatial2.getSceneHints().isPickingHintEnabled(pickingHint)) {
                if (spatial instanceof Node) {
                    Node node = (Node) spatial;
                    if (node.getWorldBound().intersects(spatial2.getWorldBound())) {
                        if (node.getNumberOfChildren() == 0 && !z10) {
                            return true;
                        }
                        for (int i10 = 0; i10 < node.getNumberOfChildren(); i10++) {
                            if (hasCollision(node.getChild(i10), spatial2, z10)) {
                                return true;
                            }
                        }
                    }
                } else if (spatial instanceof Mesh) {
                    Mesh mesh = (Mesh) spatial;
                    if (mesh.getWorldBound().intersects(spatial2.getWorldBound())) {
                        if (!(spatial2 instanceof Node)) {
                            if (z10) {
                                return hasPrimitiveCollision(mesh, (Mesh) spatial2);
                            }
                            return true;
                        }
                        Node node2 = (Node) spatial2;
                        for (int i11 = 0; i11 < node2.getNumberOfChildren(); i11++) {
                            if (hasCollision(mesh, node2.getChild(i11), z10)) {
                                return true;
                            }
                        }
                        return false;
                    }
                }
            }
        }
        return false;
    }

    public static boolean hasPrimitiveCollision(Mesh mesh, Mesh mesh2) {
        SceneHints sceneHints = mesh.getSceneHints();
        PickingHint pickingHint = PickingHint.Collidable;
        if (sceneHints.isPickingHintEnabled(pickingHint) && mesh2.getSceneHints().isPickingHintEnabled(pickingHint)) {
            CollisionTree collisionTree = CollisionTreeManager.getInstance().getCollisionTree(mesh);
            CollisionTree collisionTree2 = CollisionTreeManager.getInstance().getCollisionTree(mesh2);
            if (collisionTree != null && collisionTree2 != null) {
                collisionTree.getBounds().transform(mesh.getWorldTransform(), collisionTree.getWorldBounds());
                return collisionTree.intersect(collisionTree2);
            }
        }
        return false;
    }
}
