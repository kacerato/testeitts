package kn;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.IntFunction;
import jn.A;
import jn.C13885b;
import jn.C13887d;
import jn.C13890g;
import jn.C13894k;
import jn.C13904v;
import jn.L;
import jn.O;
import jn.Q;
import jn.S;
import jn.U;
import kn.e;
import kn.f;
import kn.n;

public class e {

    public static final int f95506n = 4;

    public static final int f95507o = 8;

    public static final int f95508p = 16;

    public final AtomicInteger f95509a;

    public final Set<f> f95510b;

    public final r f95511c;

    public final n.a[] f95512d;

    public final n f95513e;

    public u f95514f;

    public final float[] f95515g;

    public final L[] f95516h;

    public A f95517i;

    public C13904v f95518j;

    public final i f95519k;

    public final l f95520l;

    public int f95521m;

    public class a {

        public final f f95522a;

        public final float f95523b;

        public a(f agent, float dist) {
            this.f95522a = agent;
            this.f95523b = dist;
        }
    }

    public e(i config, C13904v nav) {
        this(config, nav, new IntFunction() {
            @Override
            public final Object apply(int i10) {
                L v10;
                v10 = e.v(i10);
                return v10;
            }
        });
    }

    public static int u(a aVar, a aVar2) {
        return Float.compare(aVar.f95523b, aVar2.f95523b);
    }

    public static L v(int i10) {
        return new C13887d();
    }

    public static int w(f fVar, f fVar2) {
        return Float.compare(fVar2.f95545u, fVar.f95545u);
    }

    public static int x(f fVar, f fVar2) {
        return Float.compare(fVar2.f95530f, fVar.f95530f);
    }

    public void A(f agent) {
        this.f95510b.remove(agent);
    }

    public boolean B(f agent, long ref, float[] pos) {
        if (ref == 0) {
            return false;
        }
        agent.f(ref, pos);
        agent.f95544t = false;
        return true;
    }

    public final boolean C(f ag2, long ref, float[] pos) {
        ag2.f(ref, pos);
        ag2.f95544t = true;
        return true;
    }

    public boolean D(f agent, float[] vel) {
        agent.f95541q = 0L;
        C13890g.w(agent.f95542r, vel);
        agent.f95543s = null;
        agent.f95544t = false;
        agent.f95540p = f.b.DT_CROWDAGENT_TARGET_VELOCITY;
        return true;
    }

    public boolean E(f agent) {
        agent.f95541q = 0L;
        C13890g.U(agent.f95542r, 0.0f, 0.0f, 0.0f);
        C13890g.U(agent.f95535k, 0.0f, 0.0f, 0.0f);
        agent.f95543s = null;
        agent.f95544t = false;
        agent.f95540p = f.b.DT_CROWDAGENT_TARGET_NONE;
        return true;
    }

    public void F(C13904v nav) {
        this.f95518j = nav;
        this.f95517i = new A(nav);
    }

    public void G(int idx, n.a params) {
        if (idx < 0 || idx >= 8) {
            return;
        }
        this.f95512d[idx] = new n.a(params);
    }

    public l H() {
        return this.f95520l;
    }

    public final void I(Collection<f> agents) {
        f.b bVar;
        this.f95520l.k("triggerOffMeshConnections");
        for (f fVar : agents) {
            if (fVar.f95526b == f.a.DT_CROWDAGENT_STATE_WALKING && (bVar = fVar.f95540p) != f.b.DT_CROWDAGENT_TARGET_NONE && bVar != f.b.DT_CROWDAGENT_TARGET_VELOCITY && fVar.e(fVar.f95538n.f95560a * 2.25f)) {
                g gVar = fVar.f95547w;
                long[] jArr = new long[2];
                o oVar = fVar.f95528d;
                List<S> list = fVar.f95539o;
                if (oVar.m(list.get(list.size() - 1).c(), jArr, gVar.f95550c, gVar.f95551d, this.f95517i)) {
                    C13890g.w(gVar.f95549b, fVar.f95533i);
                    gVar.f95552e = jArr[1];
                    gVar.f95548a = true;
                    gVar.f95553f = 0.0f;
                    gVar.f95554g = (C13890g.B(gVar.f95550c, gVar.f95551d) / fVar.f95538n.f95563d) * 0.5f;
                    fVar.f95526b = f.a.DT_CROWDAGENT_STATE_OFFMESH;
                    fVar.f95539o.clear();
                    fVar.f95531g.clear();
                }
            }
        }
        this.f95520l.l("triggerOffMeshConnections");
    }

    public final float J(float t10, float t02, float t12) {
        return C13890g.a((t10 - t02) / (t12 - t02), 0.0f, 1.0f);
    }

    public l K(float dt, ln.a debug) {
        this.f95521m = 0;
        this.f95520l.j();
        List<f> l10 = l();
        i(l10, dt);
        M(l10, dt);
        O(l10, dt);
        g(l10);
        f(l10);
        k(l10, debug);
        I(l10);
        h(l10);
        z(debug, l10);
        t(dt, l10);
        s(l10);
        y(l10);
        N(l10, dt);
        return this.f95520l;
    }

    public void L(f agent, h params) {
        agent.f95538n = params;
    }

    public final void M(Collection<f> agents, float dt) {
        int i10;
        int i11;
        f.b bVar;
        boolean z10;
        float f10;
        this.f95520l.k("updateMoveRequest");
        PriorityQueue priorityQueue = new PriorityQueue(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int w10;
                w10 = e.w((f) obj, (f) obj2);
                return w10;
            }
        });
        for (f fVar : agents) {
            if (fVar.f95526b != f.a.DT_CROWDAGENT_STATE_INVALID && (bVar = fVar.f95540p) != f.b.DT_CROWDAGENT_TARGET_NONE && bVar != f.b.DT_CROWDAGENT_TARGET_VELOCITY) {
                if (bVar == f.b.DT_CROWDAGENT_TARGET_REQUESTING) {
                    List<Long> e10 = fVar.f95528d.e();
                    if (e10.isEmpty()) {
                        throw new IllegalArgumentException("Empty path");
                    }
                    this.f95517i.E(e10.get(0).longValue(), fVar.f95541q, fVar.f95533i, fVar.f95542r, this.f95516h[fVar.f95538n.f95569j], 0);
                    this.f95517i.Q(this.f95519k.f95574d);
                    O<List<Long>> g10 = fVar.f95544t ? this.f95517i.g(e10) : this.f95517i.f();
                    List<Long> list = g10.f94204a;
                    float[] fArr = new float[3];
                    if (!g10.j() || list.size() <= 0) {
                        C13890g.w(fArr, fVar.f95533i);
                        list = new ArrayList<>();
                        z10 = false;
                        list.add(e10.get(0));
                    } else {
                        if (list.get(list.size() - 1).longValue() != fVar.f95541q) {
                            O<C13885b> d10 = this.f95517i.d(list.get(list.size() - 1).longValue(), fVar.f95542r);
                            if (d10.j()) {
                                fArr = d10.f94204a.a();
                            } else {
                                list = new ArrayList<>();
                            }
                        } else {
                            C13890g.w(fArr, fVar.f95542r);
                        }
                        z10 = false;
                    }
                    fVar.f95528d.s(fArr, list);
                    fVar.f95529e.f();
                    fVar.f95527c = z10;
                    if (list.get(list.size() - 1).longValue() == fVar.f95541q) {
                        fVar.f95540p = f.b.DT_CROWDAGENT_TARGET_VALID;
                        f10 = 0.0f;
                        fVar.f95545u = 0.0f;
                    } else {
                        f10 = 0.0f;
                        fVar.f95540p = f.b.DT_CROWDAGENT_TARGET_WAITING_FOR_QUEUE;
                    }
                    fVar.f95546v = f10;
                }
                if (fVar.f95540p == f.b.DT_CROWDAGENT_TARGET_WAITING_FOR_QUEUE) {
                    priorityQueue.add(fVar);
                }
            }
        }
        while (!priorityQueue.isEmpty()) {
            f fVar2 = (f) priorityQueue.poll();
            q a10 = this.f95511c.a(fVar2.f95528d.d(), fVar2.f95541q, fVar2.f95528d.h(), fVar2.f95542r, this.f95516h[fVar2.f95538n.f95569j]);
            fVar2.f95543s = a10;
            if (a10 != null) {
                fVar2.f95540p = f.b.DT_CROWDAGENT_TARGET_WAITING_FOR_PATH;
            } else {
                this.f95520l.h(fVar2.f95546v);
                fVar2.f95546v += dt;
            }
        }
        this.f95520l.k("pathQueueUpdate");
        this.f95511c.b(this.f95518j);
        this.f95520l.l("pathQueueUpdate");
        for (f fVar3 : agents) {
            f.b bVar2 = fVar3.f95540p;
            if (bVar2 != f.b.DT_CROWDAGENT_TARGET_NONE && bVar2 != f.b.DT_CROWDAGENT_TARGET_VELOCITY && bVar2 == f.b.DT_CROWDAGENT_TARGET_WAITING_FOR_PATH) {
                Q q10 = fVar3.f95543s.f95634a;
                if (q10 != null && q10.b()) {
                    fVar3.f95543s = null;
                    if (fVar3.f95541q != 0) {
                        fVar3.f95540p = f.b.DT_CROWDAGENT_TARGET_REQUESTING;
                    } else {
                        fVar3.f95540p = f.b.DT_CROWDAGENT_TARGET_FAILED;
                    }
                    fVar3.f95545u = 0.0f;
                } else if (q10 != null && q10.e()) {
                    List<Long> e11 = fVar3.f95528d.e();
                    if (e11.isEmpty()) {
                        throw new IllegalArgumentException("Empty path");
                    }
                    float[] fArr2 = fVar3.f95542r;
                    List<Long> list2 = fVar3.f95543s.f95635b;
                    int i12 = (q10.b() || list2.isEmpty()) ? 0 : 1;
                    if (q10.d()) {
                        fVar3.f95527c = true;
                        i10 = 0;
                    } else {
                        i10 = 0;
                        fVar3.f95527c = false;
                    }
                    if (i12 != 0 && e11.get(e11.size() - 1).longValue() != list2.get(i10).longValue()) {
                        i12 = i10;
                    }
                    if (i12 != 0) {
                        if (e11.size() > 1) {
                            e11.remove(e11.size() - 1);
                            e11.addAll(list2);
                            int i13 = 1;
                            while (i13 < e11.size() - 1) {
                                int i14 = i13 - 1;
                                if (i14 >= 0 && (i11 = i13 + 1) < e11.size() && e11.get(i14).longValue() == e11.get(i11).longValue()) {
                                    e11.remove(i11);
                                    e11.remove(i13);
                                    i13 -= 2;
                                }
                                i13++;
                            }
                        } else {
                            e11 = list2;
                        }
                        if (e11.get(e11.size() - 1).longValue() != fVar3.f95541q) {
                            O<C13885b> d11 = this.f95517i.d(e11.get(e11.size() - 1).longValue(), fArr2);
                            if (d11.j()) {
                                fArr2 = d11.f94204a.a();
                            } else {
                                i12 = i10;
                            }
                        }
                        list2 = e11;
                    }
                    if (i12 != 0) {
                        fVar3.f95528d.s(fArr2, list2);
                        fVar3.f95529e.f();
                        fVar3.f95540p = f.b.DT_CROWDAGENT_TARGET_VALID;
                    } else {
                        fVar3.f95540p = f.b.DT_CROWDAGENT_TARGET_FAILED;
                    }
                    fVar3.f95545u = 0.0f;
                }
                this.f95520l.i(fVar3.f95546v);
                fVar3.f95546v += dt;
            }
        }
        this.f95520l.l("updateMoveRequest");
    }

    public final void N(Collection<f> agents, float dt) {
        this.f95520l.k("updateOffMeshConnections");
        for (f fVar : agents) {
            g gVar = fVar.f95547w;
            if (gVar.f95548a) {
                float f10 = gVar.f95553f + dt;
                gVar.f95553f = f10;
                float f11 = gVar.f95554g;
                if (f10 > f11) {
                    gVar.f95548a = false;
                    fVar.f95526b = f.a.DT_CROWDAGENT_STATE_WALKING;
                } else {
                    float f12 = 0.15f * f11;
                    if (f10 < f12) {
                        fVar.f95533i = C13890g.N(gVar.f95549b, gVar.f95550c, J(f10, 0.0f, f12));
                    } else {
                        fVar.f95533i = C13890g.N(gVar.f95550c, gVar.f95551d, J(f10, f12, f11));
                    }
                    C13890g.U(fVar.f95537m, 0.0f, 0.0f, 0.0f);
                    C13890g.U(fVar.f95535k, 0.0f, 0.0f, 0.0f);
                }
            }
        }
        this.f95520l.l("updateOffMeshConnections");
    }

    public final void O(Collection<f> agents, float dt) {
        f.b bVar;
        this.f95520l.k("updateTopologyOptimization");
        PriorityQueue priorityQueue = new PriorityQueue(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int x10;
                x10 = e.x((f) obj, (f) obj2);
                return x10;
            }
        });
        for (f fVar : agents) {
            if (fVar.f95526b == f.a.DT_CROWDAGENT_STATE_WALKING && (bVar = fVar.f95540p) != f.b.DT_CROWDAGENT_TARGET_NONE && bVar != f.b.DT_CROWDAGENT_TARGET_VELOCITY && (fVar.f95538n.f95567h & 16) != 0) {
                float f10 = fVar.f95530f + dt;
                fVar.f95530f = f10;
                if (f10 >= this.f95519k.f95575e) {
                    priorityQueue.add(fVar);
                }
            }
        }
        while (!priorityQueue.isEmpty()) {
            f fVar2 = (f) priorityQueue.poll();
            fVar2.f95528d.p(this.f95517i, this.f95516h[fVar2.f95538n.f95569j], this.f95519k.f95578h);
            fVar2.f95530f = 0.0f;
        }
        this.f95520l.l("updateTopologyOptimization");
    }

    public f e(float[] pos, h params) {
        f fVar = new f(this.f95509a.getAndIncrement());
        this.f95510b.add(fVar);
        L(fVar, params);
        O<C13894k> j10 = this.f95517i.j(pos, this.f95515g, this.f95516h[fVar.f95538n.f95569j]);
        if (j10.j()) {
            pos = j10.f94204a.a();
        }
        long b10 = j10.j() ? j10.f94204a.b() : 0L;
        fVar.f95528d.r(b10, pos);
        fVar.f95529e.f();
        fVar.f95527c = false;
        fVar.f95530f = 0.0f;
        fVar.f95545u = 0.0f;
        C13890g.U(fVar.f95535k, 0.0f, 0.0f, 0.0f);
        C13890g.U(fVar.f95536l, 0.0f, 0.0f, 0.0f);
        C13890g.U(fVar.f95537m, 0.0f, 0.0f, 0.0f);
        C13890g.w(fVar.f95533i, pos);
        fVar.f95532h = 0.0f;
        if (b10 != 0) {
            fVar.f95526b = f.a.DT_CROWDAGENT_STATE_WALKING;
        } else {
            fVar.f95526b = f.a.DT_CROWDAGENT_STATE_INVALID;
        }
        fVar.f95540p = f.b.DT_CROWDAGENT_TARGET_NONE;
        return fVar;
    }

    public final void f(Collection<f> agents) {
        this.f95520l.k("buildNeighbours");
        for (f fVar : agents) {
            if (fVar.f95526b == f.a.DT_CROWDAGENT_STATE_WALKING) {
                if (C13890g.C(fVar.f95533i, fVar.f95529e.b()) > C13890g.s(fVar.f95538n.f95564e * 0.25f) || !fVar.f95529e.e(this.f95517i, this.f95516h[fVar.f95538n.f95569j])) {
                    m mVar = fVar.f95529e;
                    long c10 = fVar.f95528d.c();
                    float[] fArr = fVar.f95533i;
                    h hVar = fVar.f95538n;
                    mVar.g(c10, fArr, hVar.f95564e, this.f95517i, this.f95516h[hVar.f95569j]);
                }
                float[] fArr2 = fVar.f95533i;
                h hVar2 = fVar.f95538n;
                fVar.f95531g = o(fArr2, hVar2.f95561b, hVar2.f95564e, fVar, this.f95514f);
            }
        }
        this.f95520l.l("buildNeighbours");
    }

    public final void g(Collection<f> agents) {
        this.f95520l.k("buildProximityGrid");
        this.f95514f = new u(this.f95519k.f95571a * 3.0f);
        for (f fVar : agents) {
            float[] fArr = fVar.f95533i;
            float f10 = fVar.f95538n.f95560a;
            u uVar = this.f95514f;
            float f11 = fArr[0];
            float f12 = fArr[2];
            uVar.c(fVar, f11 - f10, f12 - f10, f11 + f10, f12 + f10);
        }
        this.f95520l.l("buildProximityGrid");
    }

    public final void h(Collection<f> agents) {
        f.b bVar;
        int i10;
        this.f95520l.k("calculateSteering");
        for (f fVar : agents) {
            if (fVar.f95526b == f.a.DT_CROWDAGENT_STATE_WALKING && (bVar = fVar.f95540p) != f.b.DT_CROWDAGENT_TARGET_NONE) {
                float[] fArr = new float[3];
                if (bVar == f.b.DT_CROWDAGENT_TARGET_VELOCITY) {
                    C13890g.w(fArr, fVar.f95542r);
                    fVar.f95532h = C13890g.K(fVar.f95542r);
                } else {
                    float[] a10 = (fVar.f95538n.f95567h & 1) != 0 ? fVar.a() : fVar.b();
                    float f10 = fVar.f95538n.f95560a * 2.0f;
                    float c10 = fVar.c(f10) / f10;
                    float f11 = fVar.f95538n.f95563d;
                    fVar.f95532h = f11;
                    fArr = C13890g.T(a10, f11 * c10);
                }
                h hVar = fVar.f95538n;
                if ((hVar.f95567h & 4) != 0) {
                    float f12 = hVar.f95564e;
                    float f13 = 1.0f / f12;
                    float f14 = hVar.f95566g;
                    float[] fArr2 = new float[3];
                    float f15 = 0.0f;
                    int i11 = 0;
                    float f16 = 0.0f;
                    while (i11 < fVar.f95531g.size()) {
                        float[] W10 = C13890g.W(fVar.f95533i, fVar.f95531g.get(i11).f95522a.f95533i);
                        W10[1] = f15;
                        float L10 = C13890g.L(W10);
                        if (L10 >= 1.0E-5f && L10 <= C13890g.s(f12)) {
                            i10 = i11;
                            float sqrt = (float) Math.sqrt(L10);
                            fArr2 = C13890g.O(fArr2, W10, ((1.0f - C13890g.s(sqrt * f13)) * f14) / sqrt);
                            f16 += 1.0f;
                        } else {
                            i10 = i11;
                        }
                        i11 = i10 + 1;
                        f15 = 0.0f;
                    }
                    if (f16 > 1.0E-4f) {
                        fArr = C13890g.O(fArr, fArr2, 1.0f / f16);
                        float L11 = C13890g.L(fArr);
                        float s10 = C13890g.s(fVar.f95532h);
                        if (L11 > s10) {
                            fArr = C13890g.T(fArr, s10 / L11);
                        }
                    }
                }
                C13890g.w(fVar.f95535k, fArr);
            }
        }
        this.f95520l.l("calculateSteering");
    }

    public final void i(Collection<f> agents, float dt) {
        boolean z10;
        this.f95520l.k("checkPathValidity");
        for (f fVar : agents) {
            if (fVar.f95526b == f.a.DT_CROWDAGENT_STATE_WALKING) {
                fVar.f95545u += dt;
                float[] fArr = new float[3];
                long c10 = fVar.f95528d.c();
                C13890g.w(fArr, fVar.f95533i);
                if (this.f95517i.J(c10, this.f95516h[fVar.f95538n.f95569j])) {
                    z10 = false;
                } else {
                    O<C13894k> j10 = this.f95517i.j(fVar.f95533i, this.f95515g, this.f95516h[fVar.f95538n.f95569j]);
                    long b10 = j10.j() ? j10.f94204a.b() : 0L;
                    if (j10.j()) {
                        C13890g.w(fArr, j10.f94204a.a());
                    }
                    if (b10 == 0) {
                        fVar.f95528d.r(0L, fArr);
                        fVar.f95527c = false;
                        fVar.f95529e.f();
                        fVar.f95526b = f.a.DT_CROWDAGENT_STATE_INVALID;
                    } else {
                        fVar.f95528d.b(b10, fArr);
                        fVar.f95529e.f();
                        C13890g.w(fVar.f95533i, fArr);
                        c10 = b10;
                        z10 = true;
                    }
                }
                f.b bVar = fVar.f95540p;
                f.b bVar2 = f.b.DT_CROWDAGENT_TARGET_NONE;
                if (bVar != bVar2 && bVar != f.b.DT_CROWDAGENT_TARGET_VELOCITY) {
                    if (bVar != bVar2 && bVar != f.b.DT_CROWDAGENT_TARGET_FAILED) {
                        if (!this.f95517i.J(fVar.f95541q, this.f95516h[fVar.f95538n.f95569j])) {
                            O<C13894k> j11 = this.f95517i.j(fVar.f95542r, this.f95515g, this.f95516h[fVar.f95538n.f95569j]);
                            fVar.f95541q = j11.j() ? j11.f94204a.b() : 0L;
                            if (j11.j()) {
                                C13890g.w(fVar.f95542r, j11.f94204a.a());
                            }
                            z10 = true;
                        }
                        if (fVar.f95541q == 0) {
                            fVar.f95528d.r(c10, fArr);
                            fVar.f95527c = false;
                            fVar.f95540p = bVar2;
                        }
                    }
                    if (!fVar.f95528d.i(this.f95519k.f95576f, this.f95517i, this.f95516h[fVar.f95538n.f95569j])) {
                        z10 = true;
                    }
                    if (((fVar.f95540p != f.b.DT_CROWDAGENT_TARGET_VALID || fVar.f95545u <= this.f95519k.f95577g || fVar.f95528d.f() >= this.f95519k.f95576f || fVar.f95528d.d() == fVar.f95541q) ? z10 : true) && fVar.f95540p != bVar2) {
                        C(fVar, fVar.f95541q, fVar.f95542r);
                    }
                }
            }
        }
        this.f95520l.l("checkPathValidity");
    }

    public i j() {
        return this.f95519k;
    }

    public final void k(Collection<f> agents, ln.a debug) {
        f.b bVar;
        this.f95520l.k("findCorners");
        f fVar = debug != null ? debug.f96628a : null;
        for (f fVar2 : agents) {
            if (fVar2.f95526b == f.a.DT_CROWDAGENT_STATE_WALKING && (bVar = fVar2.f95540p) != f.b.DT_CROWDAGENT_TARGET_NONE && bVar != f.b.DT_CROWDAGENT_TARGET_VELOCITY) {
                List<S> a10 = fVar2.f95528d.a(4, this.f95517i, this.f95516h[fVar2.f95538n.f95569j]);
                fVar2.f95539o = a10;
                if ((fVar2.f95538n.f95567h & 8) != 0 && a10.size() > 0) {
                    List<S> list = fVar2.f95539o;
                    float[] b10 = list.get(Math.min(1, list.size() - 1)).b();
                    o oVar = fVar2.f95528d;
                    h hVar = fVar2.f95538n;
                    oVar.q(b10, hVar.f95565f, this.f95517i, this.f95516h[hVar.f95569j]);
                    if (fVar == fVar2) {
                        C13890g.w(debug.f96629b, fVar2.f95528d.g());
                        C13890g.w(debug.f96630c, b10);
                    }
                } else if (fVar == fVar2) {
                    C13890g.U(debug.f96629b, 0.0f, 0.0f, 0.0f);
                    C13890g.U(debug.f96630c, 0.0f, 0.0f, 0.0f);
                }
            }
        }
        this.f95520l.l("findCorners");
    }

    public List<f> l() {
        return new ArrayList(this.f95510b);
    }

    public L m(int i10) {
        if (i10 < 0 || i10 >= 16) {
            return null;
        }
        return this.f95516h[i10];
    }

    public u n() {
        return this.f95514f;
    }

    public final List<a> o(float[] pos, float height, float range, f skip, u grid) {
        ArrayList arrayList = new ArrayList();
        float f10 = pos[0];
        float f11 = pos[2];
        for (f fVar : grid.i(f10 - range, f11 - range, f10 + range, f11 + range)) {
            if (fVar != skip) {
                float[] W10 = C13890g.W(pos, fVar.f95533i);
                if (Math.abs(W10[1]) < (fVar.f95538n.f95561b + height) / 2.0f) {
                    W10[1] = 0.0f;
                    float L10 = C13890g.L(W10);
                    if (L10 <= C13890g.s(range)) {
                        arrayList.add(new a(fVar, L10));
                    }
                }
            }
        }
        Collections.sort(arrayList, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int u10;
                u10 = e.u((e.a) obj, (e.a) obj2);
                return u10;
            }
        });
        return arrayList;
    }

    public n.a p(int idx) {
        if (idx < 0 || idx >= 8) {
            return null;
        }
        return this.f95512d[idx];
    }

    public r q() {
        return this.f95511c;
    }

    public float[] r() {
        return this.f95515g;
    }

    public final void s(Collection<f> agents) {
        float f10;
        float f11;
        float f12;
        this.f95520l.k("handleCollisions");
        for (int i10 = 0; i10 < 4; i10++) {
            for (f fVar : agents) {
                long j10 = fVar.f95525a;
                if (fVar.f95526b == f.a.DT_CROWDAGENT_STATE_WALKING) {
                    float f13 = 0.0f;
                    C13890g.U(fVar.f95534j, 0.0f, 0.0f, 0.0f);
                    float f14 = 0.0f;
                    int i11 = 0;
                    while (i11 < fVar.f95531g.size()) {
                        f fVar2 = fVar.f95531g.get(i11).f95522a;
                        long j11 = fVar2.f95525a;
                        float[] W10 = C13890g.W(fVar.f95533i, fVar2.f95533i);
                        W10[1] = f13;
                        float L10 = C13890g.L(W10);
                        if (L10 > C13890g.s(fVar.f95538n.f95560a + fVar2.f95538n.f95560a)) {
                            f11 = 0.0f;
                        } else {
                            float sqrt = (float) Math.sqrt(L10);
                            float f15 = (fVar.f95538n.f95560a + fVar2.f95538n.f95560a) - sqrt;
                            if (sqrt < 1.0E-4f) {
                                if (j10 > j11) {
                                    float[] fArr = fVar.f95535k;
                                    f11 = 0.0f;
                                    C13890g.U(W10, -fArr[2], 0.0f, fArr[0]);
                                } else {
                                    f11 = 0.0f;
                                    float[] fArr2 = fVar.f95535k;
                                    C13890g.U(W10, fArr2[2], 0.0f, -fArr2[0]);
                                }
                                f12 = 0.01f;
                                f10 = 1.0f;
                            } else {
                                f10 = 1.0f;
                                f11 = 0.0f;
                                f12 = (1.0f / sqrt) * f15 * 0.5f * this.f95519k.f95579i;
                            }
                            fVar.f95534j = C13890g.O(fVar.f95534j, W10, f12);
                            f14 += f10;
                        }
                        i11++;
                        f13 = f11;
                    }
                    if (f14 > 1.0E-4f) {
                        fVar.f95534j = C13890g.T(fVar.f95534j, 1.0f / f14);
                    }
                }
            }
            for (f fVar3 : agents) {
                if (fVar3.f95526b == f.a.DT_CROWDAGENT_STATE_WALKING) {
                    fVar3.f95533i = C13890g.v(fVar3.f95533i, fVar3.f95534j);
                }
            }
        }
        this.f95520l.l("handleCollisions");
    }

    public final void t(float dt, Collection<f> agents) {
        this.f95520l.k("integrate");
        for (f fVar : agents) {
            if (fVar.f95526b == f.a.DT_CROWDAGENT_STATE_WALKING) {
                fVar.d(dt);
            }
        }
        this.f95520l.l("integrate");
    }

    public final void y(Collection<f> agents) {
        this.f95520l.k("moveAgents");
        for (f fVar : agents) {
            if (fVar.f95526b == f.a.DT_CROWDAGENT_STATE_WALKING) {
                fVar.f95528d.n(fVar.f95533i, this.f95517i, this.f95516h[fVar.f95538n.f95569j]);
                C13890g.w(fVar.f95533i, fVar.f95528d.g());
                f.b bVar = fVar.f95540p;
                if (bVar == f.b.DT_CROWDAGENT_TARGET_NONE || bVar == f.b.DT_CROWDAGENT_TARGET_VELOCITY) {
                    o oVar = fVar.f95528d;
                    oVar.r(oVar.c(), fVar.f95533i);
                    fVar.f95527c = false;
                }
            }
        }
        this.f95520l.l("moveAgents");
    }

    public final void z(ln.a debug, Collection<f> agents) {
        this.f95520l.k("planVelocity");
        f fVar = debug != null ? debug.f96628a : null;
        Iterator<f> it = agents.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (next.f95526b == f.a.DT_CROWDAGENT_STATE_WALKING) {
                if ((next.f95538n.f95567h & 2) != 0) {
                    this.f95513e.l();
                    for (int i10 = 0; i10 < next.f95531g.size(); i10++) {
                        f fVar2 = next.f95531g.get(i10).f95522a;
                        this.f95513e.a(fVar2.f95533i, fVar2.f95538n.f95560a, fVar2.f95537m, fVar2.f95535k);
                    }
                    for (int i11 = 0; i11 < next.f95529e.d(); i11++) {
                        float[] c10 = next.f95529e.c(i11);
                        float[] copyOfRange = Arrays.copyOfRange(c10, 3, 6);
                        if (C13890g.u(next.f95533i, c10, copyOfRange) >= 0.0f) {
                            this.f95513e.b(c10, copyOfRange);
                        }
                    }
                    ln.b bVar = fVar == next ? debug.f96631d : null;
                    n.a[] aVarArr = this.f95512d;
                    h hVar = next.f95538n;
                    U<Integer, float[]> m10 = this.f95513e.m(next.f95533i, hVar.f95560a, next.f95532h, next.f95537m, next.f95535k, aVarArr[hVar.f95568i], bVar);
                    int intValue = m10.f94229a.intValue();
                    next.f95536l = m10.f94230b;
                    this.f95521m += intValue;
                } else {
                    C13890g.w(next.f95536l, next.f95535k);
                }
            }
        }
        this.f95520l.l("planVelocity");
    }

    public e(i config, C13904v nav, IntFunction<L> queryFilterFactory) {
        this.f95509a = new AtomicInteger();
        this.f95512d = new n.a[8];
        float[] fArr = new float[3];
        this.f95515g = fArr;
        this.f95516h = new L[16];
        this.f95520l = new l();
        this.f95519k = config;
        float f10 = config.f95571a;
        C13890g.U(fArr, f10 * 2.0f, 1.5f * f10, f10 * 2.0f);
        this.f95513e = new n(6, 8);
        for (int i10 = 0; i10 < 16; i10++) {
            this.f95516h[i10] = queryFilterFactory.apply(i10);
        }
        for (int i11 = 0; i11 < 8; i11++) {
            this.f95512d[i11] = new n.a();
        }
        this.f95511c = new r(config);
        this.f95510b = new HashSet();
        this.f95518j = nav;
        this.f95517i = new A(nav);
    }
}
