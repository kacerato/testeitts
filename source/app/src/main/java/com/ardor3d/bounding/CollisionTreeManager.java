package com.ardor3d.bounding;

import com.ardor3d.bounding.CollisionTree;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.Node;
import com.ardor3d.scenegraph.Spatial;
import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.O1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public enum CollisionTreeManager {
    INSTANCE;

    public static final int DEFAULT_MAX_ELEMENTS = 25;
    public static final int DEFAULT_MAX_PRIMITIVES_PER_LEAF = 16;
    private boolean _doSort;
    private CollisionTreeController _treeRemover;
    private boolean _generateTrees = true;
    private CollisionTree.Type _treeType = CollisionTree.Type.AABB;
    private int _maxPrimitivesPerLeaf = 16;
    private int _maxElements = 25;
    private final Map<Mesh, CollisionTree> _cache = new O1().l().i();
    private final List<Mesh> _protectedList = Collections.synchronizedList(new ArrayList(1));

    CollisionTreeManager() {
        setCollisionTreeController(new UsageTreeController());
    }

    private CollisionTree cacheGet(Mesh mesh) {
        return this._cache.get(mesh);
    }

    private void cachePut(Mesh mesh, CollisionTree collisionTree) {
        this._cache.put(mesh, collisionTree);
    }

    private void cacheRemove(Mesh mesh) {
        this._cache.remove(mesh);
    }

    public static CollisionTreeManager getInstance() {
        return INSTANCE;
    }

    public void generateCollisionTree(CollisionTree.Type type, Spatial spatial, boolean z10) {
        if (spatial instanceof Mesh) {
            generateCollisionTree(type, (Mesh) spatial, z10);
        }
        if (spatial instanceof Node) {
            Node node = (Node) spatial;
            if (node.getNumberOfChildren() > 0) {
                Iterator<Spatial> it = node.getChildren().iterator();
                while (it.hasNext()) {
                    generateCollisionTree(type, it.next(), z10);
                }
            }
        }
    }

    public synchronized CollisionTree getCollisionTree(Mesh mesh) {
        CollisionTree cacheGet = cacheGet(mesh);
        if (cacheGet != null) {
            cacheRemove(mesh);
            cachePut(mesh, cacheGet);
            return cacheGet;
        }
        if (!this._generateTrees) {
            return null;
        }
        return generateCollisionTree(this._treeType, mesh, false);
    }

    public int getMaxElements() {
        return this._maxElements;
    }

    public int getMaxPrimitivesPerLeaf() {
        return this._maxPrimitivesPerLeaf;
    }

    public List<Mesh> getProtectedMeshes() {
        return AbstractC12521g1.r(this._protectedList);
    }

    public CollisionTree.Type getTreeType() {
        return this._treeType;
    }

    public boolean isDoSort() {
        return this._doSort;
    }

    public boolean isGenerateTrees() {
        return this._generateTrees;
    }

    public void removeCollisionTree(Mesh mesh) {
        cacheRemove(mesh);
        removeProtected(mesh);
    }

    public void removeProtected(Mesh mesh) {
        this._protectedList.remove(mesh);
    }

    public void setCollisionTreeController(CollisionTreeController collisionTreeController) {
        this._treeRemover = collisionTreeController;
    }

    public void setDoSort(boolean z10) {
        this._doSort = z10;
    }

    public void setGenerateTrees(boolean z10) {
        this._generateTrees = z10;
    }

    public void setMaxElements(int i10) {
        this._maxElements = i10;
    }

    public void setMaxPrimitivesPerLeaf(int i10) {
        this._maxPrimitivesPerLeaf = i10;
    }

    public void setProtected(Mesh mesh) {
        if (this._protectedList.contains(mesh)) {
            return;
        }
        this._protectedList.add(mesh);
    }

    public void setTreeType(CollisionTree.Type type) {
        this._treeType = type;
    }

    public void updateCollisionTree(Mesh mesh) {
        CollisionTree cacheGet = cacheGet(mesh);
        if (cacheGet != null) {
            List<Mesh> list = this._protectedList;
            generateCollisionTree(cacheGet, mesh, list != null && list.contains(mesh));
        }
    }

    public void removeCollisionTree(Spatial spatial) {
        if (spatial instanceof Node) {
            Node node = (Node) spatial;
            for (int numberOfChildren = node.getNumberOfChildren() - 1; numberOfChildren >= 0; numberOfChildren--) {
                removeCollisionTree(node.getChild(numberOfChildren));
            }
            return;
        }
        if (spatial instanceof Mesh) {
            removeCollisionTree((Mesh) spatial);
        }
    }

    public void updateCollisionTree(Spatial spatial) {
        if (spatial instanceof Node) {
            Node node = (Node) spatial;
            for (int numberOfChildren = node.getNumberOfChildren() - 1; numberOfChildren >= 0; numberOfChildren--) {
                updateCollisionTree(node.getChild(numberOfChildren));
            }
            return;
        }
        if (spatial instanceof Mesh) {
            updateCollisionTree((Mesh) spatial);
        }
    }

    public CollisionTree generateCollisionTree(CollisionTree.Type type, Mesh mesh, boolean z10) {
        if (mesh == null) {
            return null;
        }
        CollisionTree collisionTree = new CollisionTree(type);
        generateCollisionTree(collisionTree, mesh, z10);
        return collisionTree;
    }

    public void generateCollisionTree(CollisionTree collisionTree, Mesh mesh, boolean z10) {
        CollisionTreeController collisionTreeController;
        collisionTree.construct(mesh, this._doSort);
        cachePut(mesh, collisionTree);
        if (z10) {
            setProtected(mesh);
        }
        int size = this._cache.size();
        int i10 = this._maxElements;
        if (size <= i10 || (collisionTreeController = this._treeRemover) == null) {
            return;
        }
        collisionTreeController.clean(this._cache, this._protectedList, i10);
    }
}
