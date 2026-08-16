package aa;

import JAVARuntime.Ray;
import K8.f;
import androidx.annotation.NonNull;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.Layer;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public class C3595c extends f {

    public d f31953b;

    public float f31954c;

    public Layer f31955d;

    public Ray f31956e;

    public C3595c() {
        this.f31955d = null;
        this.f31953b = new d();
    }

    public C3595c clone() {
        return new C3595c(this.f31953b.clone(), this.f31954c);
    }

    public Vector3 e() {
        return this.f31953b.e();
    }

    public Layer f() {
        return this.f31955d;
    }

    public float getDistance() {
        return this.f31954c;
    }

    public Vector3 h() {
        return this.f31953b.f();
    }

    public d i() {
        return this.f31953b;
    }

    public void j(Vector3 dir) {
        this.f31953b.h(dir);
    }

    public void k(Layer layer) {
        this.f31955d = layer;
    }

    public void l(Vector3 orig) {
        this.f31953b.i(orig);
    }

    public void m(d rayDirection) {
        this.f31953b = rayDirection;
    }

    public Ray n() {
        Ray ray = this.f31956e;
        if (ray != null) {
            return ray;
        }
        Ray ray2 = new Ray(this);
        this.f31956e = ray2;
        return ray2;
    }

    public void setDistance(float distance) {
        this.f31954c = distance;
    }

    @NonNull
    public String toString() {
        return "RD " + this.f31953b.toString() + " D " + this.f31954c;
    }

    public C3595c(d rayDirection, float distance) {
        this.f31955d = null;
        this.f31953b = rayDirection;
        this.f31954c = distance;
    }

    public C3595c(d rayDirection) {
        this.f31955d = null;
        this.f31953b = rayDirection;
        this.f31954c = 0.0f;
    }

    public C3595c(Vector3 origin, Vector3 dir, float distance) {
        this.f31955d = null;
        this.f31953b = new d(origin, dir);
        this.f31954c = distance;
    }
}
