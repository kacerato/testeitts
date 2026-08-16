package com.jme3.bullet.debug;

import com.jme3.bullet.objects.PhysicsVehicle;
import com.jme3.bullet.objects.VehicleWheel;
import com.jme3.bullet.objects.infos.RigidBodyMotionState;
import com.jme3.material.Material;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.debug.Arrow;
import java.util.logging.Logger;

public class BulletVehicleDebugControl extends AbstractPhysicsDebugControl {
    public static final Logger logger = Logger.getLogger(BulletVehicleDebugControl.class.getName());
    private final Vector3f location;
    private final Quaternion rotation;
    private final Node suspensionNode;
    private final PhysicsVehicle vehicle;

    public BulletVehicleDebugControl(BulletDebugAppState bulletDebugAppState, PhysicsVehicle physicsVehicle) {
        super(bulletDebugAppState);
        this.rotation = new Quaternion();
        this.location = new Vector3f();
        this.vehicle = physicsVehicle;
        this.suspensionNode = new Node("Suspension");
        createVehicle();
    }

    private void createVehicle() {
        this.suspensionNode.detachAllChildren();
        for (int i10 = 0; i10 < this.vehicle.getNumWheels(); i10++) {
            VehicleWheel wheel = this.vehicle.getWheel(i10);
            Vector3f location = wheel.getLocation(null);
            Vector3f direction = wheel.getDirection(null);
            Vector3f axle = wheel.getAxle(null);
            float restLength = wheel.getRestLength();
            float radius = wheel.getRadius();
            Arrow arrow = new Arrow(location);
            Arrow arrow2 = new Arrow(axle.normalizeLocal().multLocal(0.3f));
            Arrow arrow3 = new Arrow(direction.normalizeLocal().multLocal(radius));
            Arrow arrow4 = new Arrow(direction.normalizeLocal().multLocal(restLength));
            Geometry geometry = new Geometry("WheelLocationDebugShape" + i10, arrow);
            Geometry geometry2 = new Geometry("WheelDirectionDebugShape" + i10, arrow4);
            Geometry geometry3 = new Geometry("WheelAxleDebugShape" + i10, arrow2);
            Geometry geometry4 = new Geometry("WheelRadiusDebugShape" + i10, arrow3);
            geometry2.setLocalTranslation(location);
            geometry3.setLocalTranslation(location.add(direction));
            geometry4.setLocalTranslation(location.add(direction));
            Material activeMaterial = this.debugAppState.getActiveMaterial(1);
            geometry.setMaterial(activeMaterial);
            geometry2.setMaterial(activeMaterial);
            geometry3.setMaterial(activeMaterial);
            geometry4.setMaterial(activeMaterial);
            this.suspensionNode.attachChild(geometry);
            this.suspensionNode.attachChild(geometry2);
            this.suspensionNode.attachChild(geometry3);
            this.suspensionNode.attachChild(geometry4);
        }
    }

    @Override
    public void controlUpdate(float f10) {
        for (int i10 = 0; i10 < this.vehicle.getNumWheels(); i10++) {
            VehicleWheel wheel = this.vehicle.getWheel(i10);
            Vector3f location = wheel.getLocation(null);
            Vector3f direction = wheel.getDirection(null);
            Vector3f axle = wheel.getAxle(null);
            float restLength = wheel.getRestLength();
            float radius = wheel.getRadius();
            Geometry geometry = (Geometry) this.suspensionNode.getChild("WheelLocationDebugShape" + i10);
            Geometry geometry2 = (Geometry) this.suspensionNode.getChild("WheelDirectionDebugShape" + i10);
            Geometry geometry3 = (Geometry) this.suspensionNode.getChild("WheelAxleDebugShape" + i10);
            Geometry geometry4 = (Geometry) this.suspensionNode.getChild("WheelRadiusDebugShape" + i10);
            ((Arrow) geometry.getMesh()).setArrowExtent(location);
            ((Arrow) geometry3.getMesh()).setArrowExtent(axle.normalizeLocal().multLocal(0.3f));
            ((Arrow) geometry4.getMesh()).setArrowExtent(direction.normalizeLocal().multLocal(radius));
            ((Arrow) geometry2.getMesh()).setArrowExtent(direction.normalizeLocal().multLocal(restLength));
            geometry2.setLocalTranslation(location);
            geometry3.setLocalTranslation(location.addLocal(direction));
            geometry4.setLocalTranslation(location);
        }
        RigidBodyMotionState motionState = this.vehicle.getMotionState();
        motionState.getLocation(this.location);
        motionState.getOrientation(this.rotation);
        applyPhysicsTransform(this.location, this.rotation);
    }

    @Override
    public void setSpatial(Spatial spatial) {
        Spatial spatial2;
        if (spatial instanceof Node) {
            ((Node) spatial).attachChild(this.suspensionNode);
        } else if (spatial == null && (spatial2 = this.spatial) != null) {
            ((Node) spatial2).detachChild(this.suspensionNode);
        }
        super.setSpatial(spatial);
    }
}
