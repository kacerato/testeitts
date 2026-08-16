package kn;

import java.util.ArrayList;
import java.util.List;
import jn.C13890g;
import jn.S;
import kn.e;

public class f {

    public final long f95525a;

    public a f95526b;

    public boolean f95527c;

    public float f95530f;

    public float f95532h;

    public h f95538n;

    public b f95540p;

    public long f95541q;

    public q f95543s;

    public boolean f95544t;

    public float f95545u;

    public float f95546v;

    public List<e.a> f95531g = new ArrayList();

    public float[] f95533i = new float[3];

    public float[] f95534j = new float[3];

    public float[] f95535k = new float[3];

    public float[] f95536l = new float[3];

    public float[] f95537m = new float[3];

    public List<S> f95539o = new ArrayList();

    public float[] f95542r = new float[3];

    public o f95528d = new o();

    public m f95529e = new m();

    public g f95547w = new g();

    public enum a {
        DT_CROWDAGENT_STATE_INVALID,
        DT_CROWDAGENT_STATE_WALKING,
        DT_CROWDAGENT_STATE_OFFMESH
    }

    public enum b {
        DT_CROWDAGENT_TARGET_NONE,
        DT_CROWDAGENT_TARGET_FAILED,
        DT_CROWDAGENT_TARGET_VALID,
        DT_CROWDAGENT_TARGET_REQUESTING,
        DT_CROWDAGENT_TARGET_WAITING_FOR_QUEUE,
        DT_CROWDAGENT_TARGET_WAITING_FOR_PATH,
        DT_CROWDAGENT_TARGET_VELOCITY
    }

    public f(int idx) {
        this.f95525a = idx;
    }

    public float[] a() {
        float[] fArr = new float[3];
        if (!this.f95539o.isEmpty()) {
            int min = Math.min(1, this.f95539o.size() - 1);
            float[] b10 = this.f95539o.get(0).b();
            float[] b11 = this.f95539o.get(min).b();
            float[] W10 = C13890g.W(b10, this.f95533i);
            float[] W11 = C13890g.W(b11, this.f95533i);
            W10[1] = 0.0f;
            W11[1] = 0.0f;
            float K10 = C13890g.K(W10);
            float K11 = C13890g.K(W11);
            if (K11 > 0.001f) {
                W11 = C13890g.T(W11, 1.0f / K11);
            }
            fArr[0] = W10[0] - ((W11[0] * K10) * 0.5f);
            fArr[1] = 0.0f;
            fArr[2] = W10[2] - ((W11[2] * K10) * 0.5f);
            C13890g.R(fArr);
        }
        return fArr;
    }

    public float[] b() {
        float[] fArr = new float[3];
        if (this.f95539o.isEmpty()) {
            return fArr;
        }
        float[] W10 = C13890g.W(this.f95539o.get(0).b(), this.f95533i);
        W10[1] = 0.0f;
        C13890g.R(W10);
        return W10;
    }

    public float c(float range) {
        if (this.f95539o.isEmpty()) {
            return range;
        }
        if ((this.f95539o.get(r0.size() - 1).a() & 2) == 0) {
            return range;
        }
        return Math.min(C13890g.B(this.f95533i, this.f95539o.get(r1.size() - 1).b()), range);
    }

    public void d(float dt) {
        float f10 = this.f95538n.f95562c * dt;
        float[] W10 = C13890g.W(this.f95536l, this.f95537m);
        float K10 = C13890g.K(W10);
        if (K10 > f10) {
            W10 = C13890g.T(W10, f10 / K10);
        }
        float[] v10 = C13890g.v(this.f95537m, W10);
        this.f95537m = v10;
        if (C13890g.K(v10) > 1.0E-4f) {
            this.f95533i = C13890g.O(this.f95533i, this.f95537m, dt);
        } else {
            C13890g.U(this.f95537m, 0.0f, 0.0f, 0.0f);
        }
    }

    public boolean e(float radius) {
        if (this.f95539o.isEmpty()) {
            return false;
        }
        List<S> list = this.f95539o;
        if ((list.get(list.size() - 1).a() & 4) != 0) {
            float[] fArr = this.f95533i;
            List<S> list2 = this.f95539o;
            if (C13890g.C(fArr, list2.get(list2.size() - 1).b()) < radius * radius) {
                return true;
            }
        }
        return false;
    }

    public void f(long ref, float[] pos) {
        this.f95541q = ref;
        C13890g.w(this.f95542r, pos);
        this.f95543s = null;
        if (this.f95541q != 0) {
            this.f95540p = b.DT_CROWDAGENT_TARGET_REQUESTING;
        } else {
            this.f95540p = b.DT_CROWDAGENT_TARGET_FAILED;
        }
    }
}
