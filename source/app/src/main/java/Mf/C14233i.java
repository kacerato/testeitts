package mf;

import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.objects.PhysicsCharacter;
import com.jme3.bullet.objects.PhysicsGhostObject;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.bullet.objects.PhysicsVehicle;
import java.util.logging.Logger;
import p000if.C13702E;
import p000if.C13724t;

public final class C14233i {

    public static final Logger f96970a = Logger.getLogger(C14233i.class.getName());

    public static String a(PhysicsRigidBody physicsRigidBody) {
        String format;
        if (physicsRigidBody.isStatic()) {
            format = "Sta";
        } else if (physicsRigidBody.isKinematic()) {
            format = "Kin";
        } else {
            format = String.format("Dyn(mass=%s)%s", C13724t.e(physicsRigidBody.getMass()), physicsRigidBody.isActive() ? "" : "/inactive");
        }
        if (!physicsRigidBody.isContactResponse()) {
            format = format + "/NOresponse";
        }
        if (physicsRigidBody.isInWorld()) {
            return format;
        }
        return format + "/NOspace";
    }

    public static String b(PhysicsCollisionObject physicsCollisionObject) {
        C13702E.t(physicsCollisionObject, "physics object");
        long nativeId = physicsCollisionObject.nativeId();
        if (physicsCollisionObject instanceof PhysicsCharacter) {
            return String.format("chara%d", Long.valueOf(nativeId));
        }
        if (physicsCollisionObject instanceof PhysicsGhostObject) {
            return String.format("ghost%d", Long.valueOf(nativeId));
        }
        if (physicsCollisionObject instanceof PhysicsVehicle) {
            return String.format("vehic%d", Long.valueOf(nativeId));
        }
        if (physicsCollisionObject instanceof PhysicsRigidBody) {
            return String.format("rigid%d", Long.valueOf(nativeId));
        }
        throw new IllegalArgumentException("Unknown type of collision object: " + physicsCollisionObject.getClass().getCanonicalName());
    }

    public static long c(String str) {
        C13702E.j(str, "name");
        if (str.length() > 5) {
            return Long.parseLong(str.substring(5));
        }
        throw new IllegalArgumentException("name=" + C13724t.s(str));
    }
}
