package com.jme3.bullet.objects.infos;

import com.jme3.bullet.NativePhysicsObject;
import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.objects.PhysicsVehicle;
import com.jme3.bullet.objects.VehicleWheel;
import com.jme3.math.Vector3f;
import ga.m;
import java.util.logging.Logger;
import org.eclipse.jdt.core.JavaCore;
import p000if.C13702E;

public class VehicleController extends NativePhysicsObject {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(VehicleController.class.getName());
    private final PhysicsVehicle pco;

    public VehicleController(PhysicsVehicle physicsVehicle, PhysicsSpace physicsSpace) {
        C13702E.t(physicsVehicle, "vehicle");
        C13702E.t(physicsSpace, JavaCore.SPACE);
        this.pco = physicsVehicle;
        super.setNativeId(createRaycastVehicle(physicsSpace.nativeId(), physicsVehicle.nativeId(), physicsVehicle.getTuning().nativeId()));
    }

    private static native int addWheel(long j10, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, float f10, float f11, long j11, boolean z10);

    private static native void applyEngineForce(long j10, int i10, float f10);

    private static native void brake(long j10, int i10, float f10);

    private static native long createRaycastVehicle(long j10, long j11, long j12);

    private static native void finalizeNative(long j10);

    private static void freeNativeObject(long j10) {
        finalizeNative(j10);
    }

    private static native float getCurrentVehicleSpeedKmHour(long j10);

    private static native int getForwardAxisIndex(long j10);

    private static native void getForwardVector(long j10, Vector3f vector3f);

    private static native int getNumWheels(long j10);

    private static native int getRightAxisIndex(long j10);

    private static native int getUpAxisIndex(long j10);

    private static native float rayCast(long j10, int i10);

    private static native void resetSuspension(long j10);

    private static native void setCoordinateSystem(long j10, int i10, int i11, int i12);

    private static native void setupCoordinateSystem(long j10, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3);

    private static native void steer(long j10, int i10, float f10);

    private static native void updateWheelTransform(long j10, int i10, boolean z10);

    public int addWheel(VehicleWheel vehicleWheel, VehicleTuning vehicleTuning) {
        return addWheel(nativeId(), vehicleWheel.getLocation(null), vehicleWheel.getDirection(null), vehicleWheel.getAxle(null), vehicleWheel.getRestLength(), vehicleWheel.getRadius(), vehicleTuning.nativeId(), vehicleWheel.isFrontWheel());
    }

    public void applyEngineForce(VehicleWheel vehicleWheel, float f10) {
        applyEngineForce(nativeId(), vehicleWheel.getIndex(), f10);
    }

    public void brake(VehicleWheel vehicleWheel, float f10) {
        brake(nativeId(), vehicleWheel.getIndex(), f10);
    }

    public float castRay(VehicleWheel vehicleWheel) {
        return rayCast(nativeId(), vehicleWheel.getIndex());
    }

    public int countWheels() {
        return getNumWheels(nativeId());
    }

    public int forwardAxisIndex() {
        return getForwardAxisIndex(nativeId());
    }

    public float getCurrentVehicleSpeedKmHour() {
        return getCurrentVehicleSpeedKmHour(nativeId());
    }

    public Vector3f getForwardVector(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getForwardVector(nativeId(), vector3f);
        return vector3f;
    }

    public void resetSuspension() {
        resetSuspension(nativeId());
    }

    public int rightAxisIndex() {
        return getRightAxisIndex(nativeId());
    }

    public void setCoordinateSystem(int i10, int i11, int i12) {
        C13702E.a(i10, "right axis");
        C13702E.a(i11, "up axis");
        C13702E.a(i12, "forward axis");
        setCoordinateSystem(nativeId(), i10, i11, i12);
    }

    public void steer(VehicleWheel vehicleWheel, float f10) {
        steer(nativeId(), vehicleWheel.getIndex(), f10);
    }

    public int upAxisIndex() {
        return getUpAxisIndex(nativeId());
    }

    public void updateWheelTransform(VehicleWheel vehicleWheel) {
        updateWheelTransform(nativeId(), vehicleWheel.getIndex(), true);
        vehicleWheel.updatePhysicsState();
    }

    public void setCoordinateSystem(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        C13702E.t(vector3f, "right");
        C13702E.t(vector3f, m.f88236e);
        C13702E.t(vector3f, "forward");
        setupCoordinateSystem(nativeId(), vector3f, vector3f2, vector3f3);
    }
}
