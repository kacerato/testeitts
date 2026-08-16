package Aa;

import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ga.m;
import gb.C13317e;

public final class c {
    public static boolean a(NoCodeNode node, NoCodeData graphData, NoCodeSlot objectAInput, NoCodeSlot objectBInput, NoCodeSlot toleranceInput, NoCodeSlot maxDistanceInput) {
        GameObject b10 = b.b(node, graphData, objectAInput);
        GameObject b11 = b.b(node, graphData, objectBInput);
        boolean z10 = false;
        if (!C13317e.J(b10) || !C13317e.J(b11)) {
            return false;
        }
        Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
        Vector3 vector32 = (Vector3) JP.acquire(Vector3.class);
        Vector3 vector33 = (Vector3) JP.acquire(Vector3.class);
        Vector3 vector34 = (Vector3) JP.acquire(Vector3.class);
        try {
            Vector3 sub = b11.J0().u0(vector32).sub(b10.J0().u0(vector3), vector34);
            float lengthSquared = sub.lengthSquared();
            if (lengthSquared > Nc.b.f15888a) {
                float max = Math.max(0.0f, m.V(node.Q(maxDistanceInput)));
                if (lengthSquared <= max * max) {
                    sub.normalizeLocal();
                    Vector3 a02 = b10.J0().a0(vector33);
                    if (a02.lengthSquared() > Nc.b.f15888a) {
                        a02.normalizeLocal();
                        if (a02.dot(sub) >= Nc.b.d0(Nc.b.E(0.0f, m.V(node.Q(toleranceInput)), 180.0f))) {
                            z10 = true;
                        }
                    }
                }
            }
            return z10;
        } finally {
            JP.release(vector3);
            JP.release(vector32);
            JP.release(vector33);
            JP.release(vector34);
        }
    }
}
