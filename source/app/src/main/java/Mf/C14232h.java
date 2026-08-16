package mf;

import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.animation.DynamicAnimControl;
import com.jme3.bullet.control.AbstractPhysicsControl;
import com.jme3.bullet.control.GhostControl;
import com.jme3.bullet.control.PhysicsControl;
import com.jme3.bullet.control.RigidBodyControl;
import com.jme3.bullet.control.VehicleControl;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.Control;
import java.util.Iterator;
import java.util.logging.Logger;
import org.eclipse.jdt.internal.core.JavaElement;
import p000if.C13702E;
import p000if.C13718n;
import w2.C15883c;

public final class C14232h {

    public static final Logger f96968a = Logger.getLogger(C14232h.class.getName());

    public static final boolean f96969b = false;

    public static boolean a(Control control) {
        boolean z10 = (control instanceof AbstractPhysicsControl) || (control instanceof GhostControl) || (control instanceof RigidBodyControl) || (control instanceof VehicleControl);
        if (control instanceof DynamicAnimControl) {
            return false;
        }
        return z10;
    }

    public static boolean b(Control control) {
        return C13718n.a(control) || (control instanceof PhysicsControl);
    }

    public static String c(Control control) {
        if (control instanceof RigidBodyControl) {
            StringBuilder sb2 = new StringBuilder(60);
            sb2.append(C13718n.c(control));
            RigidBodyControl rigidBodyControl = (RigidBodyControl) control;
            sb2.append('[');
            sb2.append(C14233i.a(rigidBodyControl));
            sb2.append(C15883c.f126249O);
            if (!rigidBodyControl.isInWorld()) {
                sb2.append("NOT");
            }
            sb2.append("inWorld,");
            if (!rigidBodyControl.isActive()) {
                sb2.append("NOT");
            }
            sb2.append("active,");
            if (!rigidBodyControl.isApplyScale()) {
                sb2.append("NOT");
            }
            sb2.append("applyScale,");
            if (!rigidBodyControl.isApplyPhysicsLocal()) {
                sb2.append("NOT");
            }
            sb2.append("applyLocal]");
            return sb2.toString();
        }
        if (control instanceof DynamicAnimControl) {
            StringBuilder sb3 = new StringBuilder(60);
            sb3.append(C13718n.c(control));
            sb3.append('[');
            sb3.append(((DynamicAnimControl) control).countLinks());
            sb3.append(JavaElement.JEM_TYPE_PARAMETER);
            return sb3.toString();
        }
        if (!(control instanceof GhostControl)) {
            return C13718n.b(control);
        }
        StringBuilder sb4 = new StringBuilder(60);
        sb4.append(C13718n.c(control));
        GhostControl ghostControl = (GhostControl) control;
        sb4.append('[');
        if (!ghostControl.isApplyScale()) {
            sb4.append("NOT");
        }
        sb4.append("applyScale,");
        if (!ghostControl.isApplyPhysicsLocal()) {
            sb4.append("NOT");
        }
        sb4.append("applyLocal]");
        return sb4.toString();
    }

    public static void d(Spatial spatial) {
        int numControls = spatial.getNumControls();
        for (int i10 = 0; i10 < numControls; i10++) {
            Control control = spatial.getControl(i10);
            if (control instanceof PhysicsControl) {
                m(control, false);
            }
        }
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                d(it.next());
            }
        }
    }

    public static void e(Spatial spatial, PhysicsSpace physicsSpace) {
        int numControls = spatial.getNumControls();
        for (int i10 = 0; i10 < numControls; i10++) {
            Control control = spatial.getControl(i10);
            if (control instanceof PhysicsControl) {
                PhysicsControl physicsControl = (PhysicsControl) control;
                physicsControl.setPhysicsSpace(physicsSpace);
                physicsControl.setEnabled(true);
            }
        }
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                e(it.next(), physicsSpace);
            }
        }
    }

    public static RigidBodyControl f(Spatial spatial) {
        int numControls = spatial.getNumControls();
        for (int i10 = 0; i10 < numControls; i10++) {
            Control control = spatial.getControl(i10);
            if (control instanceof RigidBodyControl) {
                RigidBodyControl rigidBodyControl = (RigidBodyControl) control;
                if (rigidBodyControl.isEnabled()) {
                    return rigidBodyControl;
                }
            }
        }
        return null;
    }

    public static boolean g(Control control) {
        C13702E.t(control, "control");
        if (control instanceof AbstractPhysicsControl) {
            return ((AbstractPhysicsControl) control).isApplyPhysicsLocal();
        }
        if (control instanceof GhostControl) {
            return ((GhostControl) control).isApplyPhysicsLocal();
        }
        if (control instanceof RigidBodyControl) {
            return ((RigidBodyControl) control).isApplyPhysicsLocal();
        }
        if (control instanceof VehicleControl) {
            return ((VehicleControl) control).isApplyPhysicsLocal();
        }
        throw new IllegalArgumentException(control.getClass().getCanonicalName() + " does not support local physics.");
    }

    public static boolean h(Control control) {
        C13702E.t(control, "control");
        return control instanceof PhysicsControl ? ((PhysicsControl) control).isEnabled() : C13718n.g(control);
    }

    public static boolean i(Spatial spatial) {
        return spatial.getControl(RigidBodyControl.class) != null;
    }

    public static float j(Spatial spatial) {
        C13702E.t(spatial, "spatial");
        return f(spatial).getMass();
    }

    public static void k(Spatial spatial) {
        for (int numControls = spatial.getNumControls() - 1; numControls >= 0; numControls--) {
            Control control = spatial.getControl(numControls);
            if (!(control instanceof PhysicsControl)) {
                spatial.removeControl(control);
            }
        }
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                k(it.next());
            }
        }
    }

    public static void l(Control control, boolean z10) {
        if (control instanceof AbstractPhysicsControl) {
            ((AbstractPhysicsControl) control).setApplyPhysicsLocal(z10);
            return;
        }
        if (control instanceof GhostControl) {
            ((GhostControl) control).setApplyPhysicsLocal(z10);
            return;
        }
        if (control instanceof RigidBodyControl) {
            ((RigidBodyControl) control).setApplyPhysicsLocal(z10);
            return;
        }
        if (control instanceof VehicleControl) {
            ((VehicleControl) control).setApplyPhysicsLocal(z10);
            return;
        }
        throw new IllegalArgumentException(control.getClass().getCanonicalName() + " does not support local physics.");
    }

    public static void m(Control control, boolean z10) {
        if (control instanceof PhysicsControl) {
            ((PhysicsControl) control).setEnabled(z10);
        } else {
            C13718n.h(control, z10);
        }
    }
}
