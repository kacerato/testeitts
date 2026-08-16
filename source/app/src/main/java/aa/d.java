package aa;

import JAVARuntime.RayDirection;
import K8.f;
import androidx.annotation.NonNull;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public class d extends f {

    public Vector3 f31957b;

    public Vector3 f31958c;

    public RayDirection f31959d;

    public d() {
        this.f31957b = new Vector3();
        this.f31958c = new Vector3(0.0f, 0.0f, 1.0f);
    }

    public d clone() {
        return new d(this.f31957b.m1249clone(), this.f31958c.m1249clone());
    }

    public Vector3 e() {
        return this.f31958c;
    }

    public Vector3 f() {
        return this.f31957b;
    }

    public void h(Vector3 dir) {
        this.f31958c = dir;
    }

    public void i(Vector3 orig) {
        this.f31957b = orig;
    }

    public RayDirection j() {
        RayDirection rayDirection = this.f31959d;
        if (rayDirection != null) {
            return rayDirection;
        }
        RayDirection rayDirection2 = new RayDirection(this);
        this.f31959d = rayDirection2;
        return rayDirection2;
    }

    @NonNull
    public String toString() {
        return "Orig " + this.f31957b.toString(2) + " Dir " + this.f31958c.toString(2);
    }

    public d(Vector3 origin, Vector3 dir) {
        this.f31957b = origin;
        this.f31958c = dir;
    }
}
