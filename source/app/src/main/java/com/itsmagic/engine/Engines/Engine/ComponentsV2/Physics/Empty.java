package com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics;

import C5.b;
import android.content.Context;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine2.R;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import java.util.LinkedList;
import java.util.List;

@Deprecated
public class Empty extends PhysicsComponent {

    public static final String f74413H = "Empty";

    public static final Class f74414I = Empty.class;

    public Empty() {
        super(f74413H);
    }

    @Override
    public void disabledUpdatePhysics() {
        super.disabledUpdatePhysics();
    }

    @Override
    public PhysicsCollisionObject getBulletObject() {
        return null;
    }

    @Override
    public CompoundCollisionShape getBulletShape() {
        return null;
    }

    @Override
    public String getDisplayableTitle() {
        return f74413H;
    }

    @Override
    public int getIconResource() {
        return R.drawable.cube_v2;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_physics;
    }

    @Override
    public List<b> getInspectorEntries(Context context) {
        return new LinkedList();
    }

    @Override
    public String getTitle() {
        return f74413H;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void onColliderChanged() {
        invalidateBulletShapeChildrenCache();
    }

    @Override
    public void onDetach() {
        super.onDetach();
    }

    @Override
    public void onPhysicsGetTransformations() {
        super.onPhysicsGetTransformations();
    }

    @Override
    public void updatePhysics() {
        super.updatePhysics();
    }

    @Override
    public Component mo1248clone() {
        return new Empty();
    }
}
