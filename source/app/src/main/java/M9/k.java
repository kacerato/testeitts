package m9;

import JAVARuntime.PoolSearchResult;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.Core.PooledObject;

public class k {

    public PooledObject f96909a;

    public float f96910b;

    public PoolSearchResult f96911c;

    public k(PooledObject object, float squaredDistance) {
        this.f96909a = object;
        this.f96910b = squaredDistance;
    }

    public float a() {
        return Nc.b.q1(this.f96910b);
    }

    public PooledObject b() {
        return this.f96909a;
    }

    public float c() {
        return this.f96910b;
    }

    public void d(float distance) {
        this.f96910b = distance * distance;
    }

    public void e(PooledObject object) {
        this.f96909a = object;
    }

    public void f(PoolSearchResult run) {
        this.f96911c = run;
    }

    public void g(float squaredDistance) {
        this.f96910b = squaredDistance;
    }

    public PoolSearchResult h() {
        PoolSearchResult poolSearchResult = this.f96911c;
        if (poolSearchResult != null) {
            return poolSearchResult;
        }
        PoolSearchResult poolSearchResult2 = new PoolSearchResult(this);
        this.f96911c = poolSearchResult2;
        return poolSearchResult2;
    }
}
