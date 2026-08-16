package com.jme3.bullet.objects;

import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.objects.infos.VehicleController;
import com.jme3.bullet.objects.infos.VehicleTuning;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.scene.Spatial;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import p000if.C13702E;

public class PhysicsVehicle extends PhysicsRigidBody {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger3 = Logger.getLogger(PhysicsVehicle.class.getName());
    private static final String tagTuning = "tuning";
    private static final String tagWheelsList = "wheelsList";
    private VehicleController controller;
    private VehicleTuning tuning;
    private ArrayList<VehicleWheel> wheels;

    public PhysicsVehicle() {
        this.wheels = new ArrayList<>(6);
        this.tuning = new VehicleTuning();
    }

    private boolean checkNumWheels() {
        return this.controller == null || this.wheels.size() == this.controller.countWheels();
    }

    public void accelerate(float f10) {
        Iterator<VehicleWheel> it = this.wheels.iterator();
        while (it.hasNext()) {
            this.controller.applyEngineForce(it.next(), f10);
        }
    }

    public VehicleWheel addWheel(Spatial spatial, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, float f10, float f11, boolean z10) {
        C13702E.E(f11, "wheel radius");
        VehicleWheel vehicleWheel = new VehicleWheel(spatial, vector3f, vector3f2, vector3f3, f10, f11, z10);
        vehicleWheel.setFrictionSlip(this.tuning.getFrictionSlip());
        vehicleWheel.setMaxSuspensionTravelCm(this.tuning.getMaxSuspensionTravelCm());
        vehicleWheel.setSuspensionStiffness(this.tuning.getSuspensionStiffness());
        vehicleWheel.setWheelsDampingCompression(this.tuning.getSuspensionCompression());
        vehicleWheel.setWheelsDampingRelaxation(this.tuning.getSuspensionDamping());
        vehicleWheel.setMaxSuspensionForce(this.tuning.getMaxSuspensionForce());
        this.wheels.add(vehicleWheel);
        VehicleController vehicleController = this.controller;
        if (vehicleController != null) {
            vehicleWheel.setVehicleId(vehicleController.nativeId(), this.controller.addWheel(vehicleWheel, this.tuning));
        }
        return vehicleWheel;
    }

    public void applyWheelTransforms() {
        ArrayList<VehicleWheel> arrayList = this.wheels;
        if (arrayList != null) {
            Iterator<VehicleWheel> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().applyWheelTransform();
            }
        }
    }

    public void brake(float f10) {
        Iterator<VehicleWheel> it = this.wheels.iterator();
        while (it.hasNext()) {
            this.controller.brake(it.next(), f10);
        }
    }

    public float castRay(int i10) {
        C13702E.i(i10, "wheel index", 0, this.wheels.size() - 1);
        return this.controller.castRay(this.wheels.get(i10));
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        if (hasAssignedNativeObject()) {
            return;
        }
        getMotionState().setVehicle(this);
        this.wheels = (ArrayList) cloner.clone(this.wheels);
        this.tuning = (VehicleTuning) cloner.clone(this.tuning);
    }

    public void createVehicle(PhysicsSpace physicsSpace) {
        if (physicsSpace == null) {
            return;
        }
        isInWorld();
        VehicleController vehicleController = new VehicleController(this, physicsSpace);
        this.controller = vehicleController;
        logger3.log(Level.FINE, "Created {0}", vehicleController);
        this.controller.setCoordinateSystem(0, 1, 2);
        long nativeId = this.controller.nativeId();
        Iterator<VehicleWheel> it = this.wheels.iterator();
        while (it.hasNext()) {
            VehicleWheel next = it.next();
            next.setVehicleId(nativeId, this.controller.addWheel(next, this.tuning));
            next.setSuspensionLength(0.0f);
        }
    }

    public int forwardAxisIndex() {
        return this.controller.forwardAxisIndex();
    }

    public VehicleController getController() {
        return this.controller;
    }

    public float getCurrentVehicleSpeedKmHour() {
        return this.controller.getCurrentVehicleSpeedKmHour();
    }

    public Vector3f getForwardVector(Vector3f vector3f) {
        return this.controller.getForwardVector(vector3f);
    }

    public float getFrictionSlip() {
        return this.tuning.getFrictionSlip();
    }

    public float getMaxSuspensionForce() {
        return this.tuning.getMaxSuspensionForce();
    }

    public float getMaxSuspensionTravelCm() {
        return this.tuning.getMaxSuspensionTravelCm();
    }

    public int getNumWheels() {
        return this.wheels.size();
    }

    public float getSuspensionCompression() {
        return this.tuning.getSuspensionCompression();
    }

    public float getSuspensionDamping() {
        return this.tuning.getSuspensionDamping();
    }

    public float getSuspensionStiffness() {
        return this.tuning.getSuspensionStiffness();
    }

    public VehicleTuning getTuning() {
        return this.tuning;
    }

    public long getVehicleId() {
        return this.controller.nativeId();
    }

    public VehicleWheel getWheel(int i10) {
        return this.wheels.get(i10);
    }

    @Override
    public void postRebuild() {
        super.postRebuild();
        getMotionState().setVehicle(this);
        createVehicle((PhysicsSpace) getCollisionSpace());
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.tuning = (VehicleTuning) capsule.readSavable(tagTuning, null);
        this.wheels = capsule.readSavableArrayList(tagWheelsList, new ArrayList(6));
        getMotionState().setVehicle(this);
    }

    public void removeWheel(int i10) {
        this.wheels.remove(i10);
        rebuildRigidBody();
    }

    public void resetSuspension() {
        this.controller.resetSuspension();
    }

    public int rightAxisIndex() {
        return this.controller.rightAxisIndex();
    }

    public void setFrictionSlip(float f10) {
        this.tuning.setFrictionSlip(f10);
    }

    public void setMaxSuspensionForce(float f10) {
        this.tuning.setMaxSuspensionForce(f10);
    }

    public void setMaxSuspensionTravelCm(float f10) {
        this.tuning.setMaxSuspensionTravelCm(f10);
    }

    public void setRollInfluence(int i10, float f10) {
        this.wheels.get(i10).setRollInfluence(f10);
    }

    public void setSuspensionCompression(float f10) {
        this.tuning.setSuspensionCompression(f10);
    }

    public void setSuspensionDamping(float f10) {
        this.tuning.setSuspensionDamping(f10);
    }

    public void setSuspensionStiffness(float f10) {
        this.tuning.setSuspensionStiffness(f10);
    }

    public void steer(float f10) {
        Iterator<VehicleWheel> it = this.wheels.iterator();
        while (it.hasNext()) {
            VehicleWheel next = it.next();
            if (next.isFrontWheel()) {
                this.controller.steer(next, f10);
            }
        }
    }

    public int upAxisIndex() {
        return this.controller.upAxisIndex();
    }

    public void updateWheels() {
        if (this.controller != null) {
            Iterator<VehicleWheel> it = this.wheels.iterator();
            while (it.hasNext()) {
                this.controller.updateWheelTransform(it.next());
            }
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.tuning, tagTuning, (Savable) null);
        capsule.writeSavableArrayList(this.wheels, tagWheelsList, null);
    }

    public void setFrictionSlip(int i10, float f10) {
        this.wheels.get(i10).setFrictionSlip(f10);
    }

    public void setMaxSuspensionForce(int i10, float f10) {
        this.wheels.get(i10).setMaxSuspensionForce(f10);
    }

    public void setMaxSuspensionTravelCm(int i10, float f10) {
        this.wheels.get(i10).setMaxSuspensionTravelCm(f10);
    }

    public void setSuspensionCompression(int i10, float f10) {
        this.wheels.get(i10).setWheelsDampingCompression(f10);
    }

    public void setSuspensionDamping(int i10, float f10) {
        this.wheels.get(i10).setWheelsDampingRelaxation(f10);
    }

    public void setSuspensionStiffness(int i10, float f10) {
        this.wheels.get(i10).setSuspensionStiffness(f10);
    }

    public void accelerate(int i10, float f10) {
        C13702E.i(i10, "wheel index", 0, this.wheels.size() - 1);
        this.controller.applyEngineForce(this.wheels.get(i10), f10);
    }

    public void brake(int i10, float f10) {
        C13702E.i(i10, "wheel index", 0, this.wheels.size() - 1);
        this.controller.brake(this.wheels.get(i10), f10);
    }

    public PhysicsVehicle(CollisionShape collisionShape) {
        super(collisionShape);
        this.wheels = new ArrayList<>(6);
        this.tuning = new VehicleTuning();
    }

    public void steer(int i10, float f10) {
        C13702E.i(i10, "wheel index", 0, this.wheels.size() - 1);
        this.controller.steer(this.wheels.get(i10), f10);
    }

    public PhysicsVehicle(CollisionShape collisionShape, float f10) {
        super(collisionShape, f10);
        this.wheels = new ArrayList<>(6);
        this.tuning = new VehicleTuning();
    }

    public VehicleWheel addWheel(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, float f10, float f11, boolean z10) {
        return addWheel(null, vector3f, vector3f2, vector3f3, f10, f11, z10);
    }
}
