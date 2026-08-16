package com.jme3.bullet.debug;

import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.math.Vector3f;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import java.util.List;
import java.util.logging.Logger;

public abstract class CollisionShapeDebugControl extends AbstractPhysicsDebugControl {
    protected Spatial debugSpatial;
    private float lastMargin;
    private final Vector3f lastScale;
    private CollisionShape lastShape;
    private final ChildSummaryList lastSummaryList;
    static final Logger loggerS = Logger.getLogger(CollisionShapeDebugControl.class.getName());
    private static final ChildSummaryList newSummaryList = new ChildSummaryList();
    private static final Vector3f newScale = new Vector3f();

    public CollisionShapeDebugControl(BulletDebugAppState bulletDebugAppState) {
        super(bulletDebugAppState);
        this.lastSummaryList = new ChildSummaryList();
        this.lastScale = new Vector3f();
    }

    public void colorChildren() {
        List<Spatial> children = ((Node) this.debugSpatial).getChildren();
        int size = children.size();
        for (int i10 = 0; i10 < size; i10++) {
            children.get(i10).setMaterial(this.debugAppState.getChildMaterial(i10));
        }
    }

    public boolean hasShapeChanged(CollisionShape collisionShape) {
        float margin = collisionShape.getMargin();
        Vector3f vector3f = newScale;
        collisionShape.getScale(vector3f);
        if (this.lastShape != collisionShape || this.lastMargin != margin || !this.lastScale.equals(vector3f)) {
            return true;
        }
        if (collisionShape instanceof CompoundCollisionShape) {
            ChildSummaryList childSummaryList = newSummaryList;
            childSummaryList.update((CompoundCollisionShape) collisionShape);
            if (!childSummaryList.equals(this.lastSummaryList)) {
                return true;
            }
        }
        return false;
    }

    public void setShape(CollisionShape collisionShape) {
        this.lastShape = collisionShape;
        this.lastMargin = collisionShape.getMargin();
        collisionShape.getScale(this.lastScale);
        if (collisionShape instanceof CompoundCollisionShape) {
            this.lastSummaryList.update((CompoundCollisionShape) collisionShape);
        }
    }

    @Override
    public void setSpatial(Spatial spatial) {
        Spatial spatial2;
        if (spatial instanceof Node) {
            ((Node) spatial).attachChild(this.debugSpatial);
        } else if (spatial == null && (spatial2 = this.spatial) != null) {
            ((Node) spatial2).detachChild(this.debugSpatial);
        }
        super.setSpatial(spatial);
    }
}
