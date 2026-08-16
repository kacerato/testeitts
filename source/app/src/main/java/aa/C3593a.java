package aa;

import JAVARuntime.LaserHit;
import K8.f;
import androidx.annotation.NonNull;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.BasePool;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.Core.PooledObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public class C3593a extends f {

    public Vector3 f31918b;

    public Vector3 f31919c;

    public Vector3 f31920d;

    public Vector2 f31921e;

    public GameObject f31922g;

    public float f31923i;

    public float f31924j;

    public Vector2 f31925k;

    public Vector2 f31926l;

    public Vector2 f31927m;

    public Collider f31928n;

    public GameObject f31929o;

    public BasePool f31930p;

    public PooledObject f31931q;

    public boolean f31932r = false;

    public LaserHit f31933s;

    public void A(Vector2 uv0) {
        this.f31925k = uv0;
    }

    public void B(Vector2 uv1) {
        this.f31926l = uv1;
    }

    public void C(Vector2 uv2) {
        this.f31927m = uv2;
    }

    public void D(Vector2 uvCoord) {
        this.f31921e = uvCoord;
    }

    public LaserHit E() {
        LaserHit laserHit = this.f31933s;
        if (laserHit != null) {
            return laserHit;
        }
        LaserHit laserHit2 = new LaserHit(this);
        this.f31933s = laserHit2;
        return laserHit2;
    }

    public Collider d() {
        return this.f31928n;
    }

    public GameObject e() {
        return this.f31929o;
    }

    public Vector3 f() {
        return this.f31920d;
    }

    public float getDistance() {
        return this.f31923i;
    }

    public GameObject getGameObject() {
        return this.f31922g;
    }

    public Vector3 h() {
        return this.f31919c;
    }

    public Vector3 i() {
        return this.f31918b;
    }

    public BasePool j() {
        return this.f31930p;
    }

    public PooledObject k() {
        return this.f31931q;
    }

    public float l() {
        return this.f31924j;
    }

    public Vector2 m() {
        return this.f31925k;
    }

    public Vector2 n() {
        return this.f31926l;
    }

    public Vector2 o() {
        return this.f31927m;
    }

    public Vector2 p() {
        return this.f31921e;
    }

    public void q(Collider collider) {
        this.f31928n = collider;
    }

    public void r(GameObject colliderObject) {
        this.f31929o = colliderObject;
    }

    public void s(Vector3 faceNormal) {
        this.f31920d = faceNormal;
    }

    public void setDistance(float distance) {
        this.f31923i = distance;
    }

    public void setGameObject(GameObject gameObject) {
        this.f31922g = gameObject;
    }

    @NonNull
    public String toString() {
        String str;
        String str2 = "";
        if (this.f31918b != null) {
            str = "Point:" + this.f31918b.toString(2);
        } else {
            str = "";
        }
        if (this.f31921e != null) {
            str2 = "UV:" + this.f31921e.toString(2);
        }
        return str + " " + str2;
    }

    public void u(Vector3 laserNormal) {
        this.f31919c = laserNormal;
    }

    public void v(Vector3 point) {
        this.f31918b = point;
    }

    public void w(BasePool poolComponent) {
        this.f31930p = poolComponent;
    }

    public void x(PooledObject pooledObject) {
        this.f31931q = pooledObject;
    }

    public void y(LaserHit run) {
        this.f31933s = run;
    }

    public void z(float t10) {
        this.f31924j = t10;
    }
}
