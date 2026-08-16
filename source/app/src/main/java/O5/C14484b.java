package o5;

import aa.C3593a;
import aa.C3595c;
import aa.d;
import aa.e;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.EditorCamera;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import java.util.concurrent.atomic.AtomicBoolean;
import ub.n;

public class C14484b {

    public static final float f98495A = 1.5f;

    public static final int f98496y = 20;

    public static final int f98497z = 200;

    public final float f98498a = 0.0f;

    public final EditorCamera f98499b;

    public n f98500c;

    public n f98501d;

    public n f98502e;

    public final e f98503f;

    public final AtomicBoolean f98504g;

    public boolean f98505h;

    public final Object f98506i;

    public C14483a f98507j;

    public final Vector3 f98508k;

    public final Object f98509l;

    public final Vector3 f98510m;

    public final Vector3 f98511n;

    public final Vector3 f98512o;

    public final Vector3 f98513p;

    public final float[] f98514q;

    public boolean f98515r;

    public float f98516s;

    public float f98517t;

    public volatile float f98518u;

    public volatile int f98519v;

    public volatile int f98520w;

    public volatile int f98521x;

    public static class C1886b {

        public final Vector3 f98522a;

        public final Vector3 f98523b;

        public final Vector3 f98524c;

        public final Vector3 f98525d;

        public final float[] f98526e;

        public float f98527f;

        public float f98528g;

        public int f98529h;

        public C1886b() {
            this.f98522a = new Vector3();
            this.f98523b = new Vector3();
            this.f98524c = new Vector3();
            this.f98525d = new Vector3();
            this.f98526e = new float[16];
        }
    }

    public C14484b(EditorCamera editorCamera) {
        e eVar = new e();
        this.f98503f = eVar;
        eVar.n(false);
        eVar.o(false);
        this.f98504g = new AtomicBoolean();
        this.f98506i = new Object();
        this.f98508k = new Vector3();
        this.f98509l = new Object();
        this.f98510m = new Vector3();
        this.f98511n = new Vector3();
        this.f98512o = new Vector3();
        this.f98513p = new Vector3();
        this.f98514q = new float[16];
        this.f98518u = 0.0f;
        this.f98519v = 20;
        this.f98499b = editorCamera;
    }

    public final int a(int resolution) {
        if (resolution >= 200) {
            return 200;
        }
        return Math.min(200, Math.max(resolution + 1, (int) Math.ceil(resolution * 1.5f)));
    }

    public final void b(Vector3 globalPosition) {
        float tan = (float) Math.tan(((float) Math.toRadians(this.f98499b.getFov())) / 2.0f);
        synchronized (this.f98509l) {
            this.f98510m.set(globalPosition);
            this.f98511n.set(this.f98499b.f79250n.transform.forward());
            this.f98512o.set(this.f98499b.f79250n.transform.right());
            this.f98513p.set(this.f98499b.f79250n.transform.up());
            float[] viewMatrix = this.f98499b.getViewMatrix();
            float[] fArr = this.f98514q;
            System.arraycopy(viewMatrix, 0, fArr, 0, fArr.length);
            this.f98517t = tan;
            this.f98516s = tan * this.f98499b.getImageRatio();
            this.f98515r = true;
        }
    }

    public void c() {
        C1886b h10;
        if (this.f98518u >= 0.5f && this.f98520w < 200) {
            try {
                if (this.f98504g.compareAndSet(false, true)) {
                    try {
                        h10 = h();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    if (h10 == null) {
                        return;
                    }
                    int i10 = this.f98519v;
                    n e11 = e(i10);
                    C14483a d10 = d(i10);
                    i(h10, d10, i10);
                    g(h10, d10, i10);
                    k(e11, d10, i10);
                    if (h10.f98529h == this.f98521x) {
                        synchronized (this.f98506i) {
                            this.f98502e = e11;
                            this.f98520w = i10;
                            this.f98519v = a(i10);
                        }
                    }
                }
            } finally {
                this.f98504g.set(false);
            }
        }
    }

    public final C14483a d(int resolution) {
        C14483a c14483a = this.f98507j;
        if (c14483a == null || c14483a.a() != resolution) {
            this.f98507j = new C14483a(resolution);
        }
        return this.f98507j;
    }

    public final n e(int resolution) {
        n nVar = this.f98505h ? this.f98500c : this.f98501d;
        if (nVar == null || nVar.getWidth() != resolution || nVar.getHeight() != resolution) {
            nVar = new n(resolution, resolution);
            if (this.f98505h) {
                this.f98500c = nVar;
            } else {
                this.f98501d = nVar;
            }
        }
        this.f98505h = !this.f98505h;
        return nVar;
    }

    public void f(Tb.a cameraFBO) {
    }

    public final void g(C1886b snapshot, C14483a buffer, int resolution) {
        f fVar = new f(snapshot.f98526e);
        for (int i10 = 0; i10 < resolution; i10++) {
            for (int i11 = 0; i11 < resolution; i11++) {
                Vector3 vector3 = buffer.f98493c[i10][i11];
                Vector3 vector32 = buffer.f98492b[i10][i11];
                if (vector3 == null || vector32 == null) {
                    buffer.f98494d[i10][i11] = ColorINT.d().intColor;
                } else {
                    float S02 = (Nc.b.S0(vector32.dot(snapshot.f98522a.sub(vector3).normalize()), -0.3f) + 0.3f) / 2.0f;
                    fVar.g0(vector32, vector32);
                    vector32.addLocal(1.0f);
                    vector32.divLocal(2.0f);
                    ColorINT colorINT = new ColorINT();
                    colorINT.S(vector32.getX(), vector32.getY(), vector32.getZ());
                    buffer.f98494d[i10][i11] = ColorINT.d().f(colorINT, S02).intColor;
                }
            }
        }
    }

    public final C1886b h() {
        synchronized (this.f98509l) {
            try {
                if (!this.f98515r) {
                    return null;
                }
                C1886b c1886b = new C1886b();
                c1886b.f98522a.set(this.f98510m);
                c1886b.f98523b.set(this.f98511n);
                c1886b.f98524c.set(this.f98512o);
                c1886b.f98525d.set(this.f98513p);
                System.arraycopy(this.f98514q, 0, c1886b.f98526e, 0, c1886b.f98526e.length);
                c1886b.f98527f = this.f98516s;
                c1886b.f98528g = this.f98517t;
                c1886b.f98529h = this.f98521x;
                return c1886b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void i(C1886b snapshot, C14483a buffer, int resolution) {
        for (int i10 = 0; i10 < resolution; i10++) {
            for (int i11 = 0; i11 < resolution; i11++) {
                float f10 = resolution - 1;
                try {
                    C3593a z10 = this.f98503f.z(new C3595c(new d(snapshot.f98522a, snapshot.f98524c.mul((-(((i10 / f10) * 2.0f) - 1.0f)) * snapshot.f98527f).addLocal(snapshot.f98525d.mul((((i11 / f10) * 2.0f) - 1.0f) * snapshot.f98528g)).addLocal(snapshot.f98523b).normalizeLocal()), 0.0f), true);
                    if (z10 != null) {
                        buffer.f98493c[i10][i11] = z10.i();
                        buffer.f98492b[i10][i11] = z10.f();
                    } else {
                        buffer.f98493c[i10][i11] = null;
                        buffer.f98492b[i10][i11] = null;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    buffer.f98493c[i10][i11] = null;
                    buffer.f98492b[i10][i11] = null;
                }
            }
        }
    }

    public void j(Tb.a cameraFBO) {
        cameraFBO.w(null);
        Vector3 u02 = this.f98499b.f79250n.transform.u0((Vector3) JP.acquire(Vector3.class));
        if (!u02.equally(this.f98508k)) {
            this.f98508k.set(u02);
            this.f98518u = 0.0f;
            this.f98519v = 20;
            this.f98520w = 0;
            this.f98521x++;
            synchronized (this.f98506i) {
                this.f98502e = null;
            }
        } else if (!this.f98504g.get() && (this.f98518u < 0.5f || this.f98520w < 200)) {
            this.f98518u += K8.d.e();
        }
        b(u02);
        if (this.f98518u >= 0.5f) {
            synchronized (this.f98506i) {
                try {
                    n nVar = this.f98502e;
                    if (nVar != null && nVar.J()) {
                        cameraFBO.w(this.f98502e);
                    }
                } finally {
                }
            }
        }
    }

    public final void k(n texture, C14483a buffer, int resolution) {
        ColorINT colorINT = new ColorINT();
        for (int i10 = 0; i10 < resolution; i10++) {
            for (int i11 = 0; i11 < resolution; i11++) {
                colorINT.J(buffer.f98494d[i10][i11]);
                texture.Y(i10, i11, colorINT);
            }
        }
        texture.apply();
    }
}
