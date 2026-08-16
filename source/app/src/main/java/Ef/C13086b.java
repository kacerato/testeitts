package ef;

import com.jme3.bounding.BoundingSphere;
import com.jme3.math.Vector3f;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jdt.internal.core.JavaElement;

public class C13086b {

    public static final Logger f85542m = Logger.getLogger(C13086b.class.getName());

    public static final float f85543n = Float.MAX_VALUE;

    public static final float f85544o = Float.POSITIVE_INFINITY;

    public float f85550f;

    public List<d> f85551g;

    public float f85553i;

    public final Mesh f85554j;

    public Vector3f f85545a = new Vector3f();

    public Vector3f f85546b = new Vector3f();

    public boolean f85547c = true;

    public int f85548d = 0;

    public List<f> f85549e = new ArrayList();

    public List<f> f85552h = new ArrayList();

    public final Comparator<f> f85555k = new a();

    public int f85556l = 0;

    public class a implements Comparator<f> {
        public a() {
        }

        @Override
        public int compare(f fVar, f fVar2) {
            if (Float.compare(fVar.f85571b, fVar2.f85571b) == 0) {
                return 0;
            }
            return fVar.f85571b < fVar2.f85571b ? -1 : 1;
        }
    }

    public class C1592b {

        public int f85558a;

        public int f85559b;

        public C1592b() {
        }

        public C1592b(C13086b c13086b, a aVar) {
            this();
        }
    }

    public class c {

        public f f85561a;

        public float f85562b = Float.POSITIVE_INFINITY;

        public int f85563c;

        public c(f fVar) {
            this.f85561a = fVar;
        }

        public void a(c cVar) {
            this.f85561a = cVar.f85561a;
            this.f85562b = cVar.f85562b;
            this.f85563c = cVar.f85563c;
        }

        public boolean equals(Object obj) {
            return (obj instanceof c) && this.f85561a == ((c) obj).f85561a;
        }

        public int hashCode() {
            return this.f85561a.hashCode();
        }

        public String toString() {
            return "Edge{collapseTo " + this.f85561a.f85576g + JavaElement.JEM_ANNOTATION;
        }
    }

    public enum e {
        PROPORTIONAL,
        CONSTANT,
        COLLAPSE_COST
    }

    public C13086b(Mesh mesh) {
        this.f85554j = mesh;
        f();
    }

    public final void A(f fVar) {
        f fVar2 = null;
        float f10 = Float.POSITIVE_INFINITY;
        for (c cVar : fVar.f85572c) {
            float k10 = k(fVar, cVar);
            cVar.f85562b = k10;
            if (f10 > k10) {
                fVar2 = cVar.f85561a;
                f10 = k10;
            }
        }
        if (f10 == fVar.f85571b && fVar.f85574e == fVar2) {
            return;
        }
        this.f85549e.remove(fVar);
        if (f10 != Float.POSITIVE_INFINITY) {
            fVar.f85571b = f10;
            fVar.f85574e = fVar2;
            this.f85549e.add(fVar);
        }
    }

    public final void c(f fVar, c cVar) {
        for (c cVar2 : fVar.f85572c) {
            if (cVar2.equals(cVar)) {
                cVar2.f85563c++;
                return;
            }
        }
        fVar.f85572c.add(cVar);
        cVar.f85563c = 1;
    }

    public final void d(d dVar) {
        d r10;
        if (this.f85547c && (r10 = r(dVar)) != null && !dVar.f85567c) {
            dVar.f85567c = true;
            this.f85548d -= 3;
            Logger logger = f85542m;
            Level level = Level.FINE;
            if (logger.isLoggable(level)) {
                logger.log(level, "duplicate triangle found{0}{1} It will be excluded from LOD level calculations.", new Object[]{dVar, r10});
            }
        }
        for (int i10 = 0; i10 < 3; i10++) {
            dVar.f85565a[i10].f85573d.add(dVar);
        }
        for (int i11 = 0; i11 < 3; i11++) {
            for (int i12 = 0; i12 < 3; i12++) {
                if (i11 != i12) {
                    f[] fVarArr = dVar.f85565a;
                    c(fVarArr[i11], new c(fVarArr[i12]));
                }
            }
        }
    }

    public void e(e eVar, float... fArr) {
        this.f85554j.setLodLevels(l(eVar, fArr));
    }

    public final void f() {
        BoundingSphere boundingSphere = new BoundingSphere();
        boundingSphere.computeFromPoints(this.f85554j.getFloatBuffer(VertexBuffer.Type.Position));
        this.f85553i = boundingSphere.getRadius();
        ArrayList arrayList = new ArrayList();
        t();
        q(this.f85554j, arrayList);
        p(this.f85554j, arrayList);
        j();
    }

    public final int g(e eVar, float f10) {
        int triangleCount = this.f85554j.getTriangleCount();
        int ordinal = eVar.ordinal();
        if (ordinal == 0) {
            this.f85550f = Float.MAX_VALUE;
            float f11 = triangleCount;
            return (int) (f11 - (f10 * f11));
        }
        if (ordinal != 1) {
            if (ordinal != 2) {
                return triangleCount;
            }
            this.f85550f = f10;
            return 0;
        }
        this.f85550f = Float.MAX_VALUE;
        if (f10 < triangleCount) {
            return triangleCount - ((int) f10);
        }
        return 0;
    }

    public final VertexBuffer[] h(VertexBuffer[] vertexBufferArr, int i10) {
        VertexBuffer[] vertexBufferArr2 = new VertexBuffer[i10];
        int i11 = 0;
        for (VertexBuffer vertexBuffer : vertexBufferArr) {
            if (vertexBuffer != null) {
                vertexBufferArr2[i11] = vertexBuffer;
                i11++;
            }
        }
        return vertexBufferArr2;
    }

    public final boolean i(f fVar) {
        f fVar2 = fVar.f85574e;
        if (fVar.f85572c.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<d> it = fVar.f85573d.iterator();
        while (it.hasNext()) {
            d next = it.next();
            if (next.c(fVar2)) {
                int b10 = next.b(fVar);
                if (!s(b10, arrayList)) {
                    C1592b c1592b = new C1592b(this, null);
                    c1592b.f85558a = b10;
                    c1592b.f85559b = next.b(fVar2);
                    arrayList.add(c1592b);
                }
                this.f85548d -= 3;
                next.f85567c = true;
                this.f85556l++;
                y(next, fVar);
                it.remove();
            }
        }
        Iterator<d> it2 = fVar.f85573d.iterator();
        while (it2.hasNext()) {
            d next2 = it2.next();
            if (!next2.c(fVar2)) {
                int b11 = next2.b(fVar);
                int n10 = n(b11, arrayList);
                if (n10 == Integer.MAX_VALUE) {
                    next2.f85567c = true;
                    this.f85548d -= 3;
                    y(next2, fVar);
                    it2.remove();
                    this.f85556l++;
                } else {
                    z(next2, b11, arrayList.get(n10).f85559b, fVar2);
                    if (this.f85547c) {
                        next2.a();
                    }
                }
            }
        }
        if (this.f85547c) {
            Iterator<c> it3 = fVar.f85572c.iterator();
            while (it3.hasNext()) {
                A(it3.next().f85561a);
            }
            A(fVar2);
            Iterator<c> it4 = fVar2.f85572c.iterator();
            while (it4.hasNext()) {
                A(it4.next().f85561a);
            }
        } else {
            TreeSet treeSet = new TreeSet(this.f85555k);
            for (c cVar : fVar.f85572c) {
                treeSet.add(cVar.f85561a);
                Iterator<c> it5 = cVar.f85561a.f85572c.iterator();
                while (it5.hasNext()) {
                    treeSet.add(it5.next().f85561a);
                }
            }
            Iterator<E> it6 = treeSet.iterator();
            while (it6.hasNext()) {
                A((f) it6.next());
            }
        }
        return true;
    }

    public final void j() {
        this.f85549e.clear();
        for (f fVar : this.f85552h) {
            if (fVar.f85572c.isEmpty()) {
                f85542m.log(Level.FINE, "Found isolated vertex {0} It will be excluded from LOD calculations.", fVar);
            } else {
                m(fVar);
            }
        }
    }

    public float k(f fVar, c cVar) {
        f fVar2 = cVar.f85561a;
        if (fVar.f85573d.size() == 1 && fVar2.f85573d.size() == 1) {
            return Float.MAX_VALUE;
        }
        Iterator<d> it = fVar.f85573d.iterator();
        while (true) {
            float f10 = 0.0f;
            if (!it.hasNext()) {
                float f11 = 1.0f;
                if (!u(fVar)) {
                    float f12 = 0.001f;
                    for (d dVar : fVar.f85573d) {
                        float f13 = 1.0f;
                        for (d dVar2 : fVar.f85573d) {
                            if (dVar2.c(fVar2)) {
                                f13 = Math.min(f13, (1.002f - dVar.f85566b.dot(dVar2.f85566b)) * 0.5f);
                            }
                        }
                        f12 = Math.max(f12, f13);
                    }
                    f11 = f12;
                } else if (cVar.f85563c <= 1) {
                    Vector3f subtractLocal = this.f85545a.set(fVar.f85570a).subtractLocal(fVar2.f85570a);
                    subtractLocal.normalizeLocal();
                    for (c cVar2 : fVar.f85572c) {
                        f fVar3 = cVar2.f85561a;
                        if (fVar3 != fVar2 && cVar2.f85563c == 1) {
                            Vector3f subtractLocal2 = this.f85546b.set(fVar.f85570a).subtractLocal(fVar3.f85570a);
                            subtractLocal2.normalizeLocal();
                            f10 = Math.max(f10, (subtractLocal2.dot(subtractLocal) + 1.002f) * 0.5f);
                        }
                    }
                    f11 = f10;
                }
                if (fVar.f85575f) {
                    f11 = !fVar2.f85575f ? f11 + this.f85553i : (float) (f11 + (this.f85553i * 0.5d));
                }
                return f11 * fVar.f85570a.distanceSquared(fVar2.f85570a);
            }
            d next = it.next();
            if (!next.c(fVar2)) {
                f[] fVarArr = next.f85565a;
                f fVar4 = fVarArr[0];
                if (fVar4 == fVar) {
                    fVar4 = fVar2;
                }
                f fVar5 = fVarArr[1];
                if (fVar5 == fVar) {
                    fVar5 = fVar2;
                }
                f fVar6 = fVarArr[2];
                if (fVar6 == fVar) {
                    fVar6 = fVar2;
                }
                this.f85545a.set(fVar5.f85570a).subtractLocal(fVar4.f85570a);
                this.f85546b.set(fVar6.f85570a).subtractLocal(fVar5.f85570a);
                Vector3f crossLocal = this.f85545a.crossLocal(this.f85546b);
                crossLocal.normalizeLocal();
                if (crossLocal.dot(next.f85566b) < 0.0f) {
                    return Float.MAX_VALUE;
                }
            }
        }
    }

    public VertexBuffer[] l(e eVar, float... fArr) {
        int size = this.f85551g.size();
        int length = fArr.length;
        VertexBuffer[] vertexBufferArr = new VertexBuffer[length + 1];
        vertexBufferArr[0] = this.f85554j.getBuffer(VertexBuffer.Type.Index);
        int i10 = 1;
        int i11 = size;
        for (int i12 = 0; i12 < length; i12++) {
            int g10 = g(eVar, fArr[i12]);
            while (g10 < size) {
                Collections.sort(this.f85549e, this.f85555k);
                Iterator<f> it = this.f85549e.iterator();
                if (!it.hasNext()) {
                    break;
                }
                f next = it.next();
                if (next.f85571b >= this.f85550f) {
                    break;
                }
                if (!i(next)) {
                    f85542m.log(Level.FINE, "Couldn''t collapse vertex{0}", Integer.valueOf(next.f85576g));
                }
                Iterator<f> it2 = this.f85549e.iterator();
                if (it2.hasNext()) {
                    it2.next();
                    it2.remove();
                }
                size = this.f85551g.size() - this.f85556l;
            }
            f85542m.log(Level.FINE, "collapsed {0} tris", Integer.valueOf(this.f85556l));
            if (i11 != size) {
                vertexBufferArr[i12 + 1] = w(this.f85554j);
                i10++;
                i11 = size;
            }
        }
        return h(vertexBufferArr, i10);
    }

    public final void m(f fVar) {
        fVar.f85571b = Float.POSITIVE_INFINITY;
        for (c cVar : fVar.f85572c) {
            float k10 = k(fVar, cVar);
            cVar.f85562b = k10;
            if (fVar.f85571b > k10) {
                fVar.f85571b = k10;
                fVar.f85574e = cVar.f85561a;
            }
        }
        this.f85549e.add(fVar);
    }

    public final int n(int i10, List<C1592b> list) {
        Iterator<C1592b> it = list.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            if (it.next().f85558a == i10) {
                return i11;
            }
            i11++;
        }
        return Integer.MAX_VALUE;
    }

    public final f o(f fVar) {
        for (f fVar2 : this.f85552h) {
            if (fVar2.f85570a.equals(fVar.f85570a)) {
                return fVar2;
            }
        }
        return null;
    }

    public final void p(Mesh mesh, List<f> list) {
        VertexBuffer buffer = mesh.getBuffer(VertexBuffer.Type.Index);
        this.f85548d = buffer.getNumElements() * 3;
        Buffer dataReadOnly = buffer.getDataReadOnly();
        dataReadOnly.rewind();
        while (dataReadOnly.remaining() != 0) {
            d dVar = new d(this, null);
            dVar.f85567c = false;
            this.f85551g.add(dVar);
            for (int i10 = 0; i10 < 3; i10++) {
                if (dataReadOnly instanceof IntBuffer) {
                    dVar.f85568d[i10] = ((IntBuffer) dataReadOnly).get();
                } else {
                    dVar.f85568d[i10] = ((ShortBuffer) dataReadOnly).get() & 65535;
                }
                dVar.f85565a[i10] = list.get(dVar.f85568d[i10]);
                dVar.f85565a[i10].f85576g = dVar.f85568d[i10];
            }
            if (!dVar.d()) {
                dVar.a();
                d(dVar);
            } else if (!dVar.f85567c) {
                Logger logger = f85542m;
                Level level = Level.FINE;
                if (logger.isLoggable(level)) {
                    logger.log(level, "malformed triangle found with ID:{0}\n{1} It will be excluded from LOD calculations.", new Object[]{Integer.valueOf(this.f85551g.indexOf(dVar)), dVar.toString()});
                }
                dVar.f85567c = true;
                this.f85548d -= 3;
            }
        }
        dataReadOnly.rewind();
    }

    public final void q(Mesh mesh, List<f> list) {
        VertexBuffer buffer = mesh.getBuffer(VertexBuffer.Type.BindPosePosition);
        if (buffer == null) {
            buffer = mesh.getBuffer(VertexBuffer.Type.Position);
        }
        FloatBuffer floatBuffer = (FloatBuffer) buffer.getDataReadOnly();
        floatBuffer.rewind();
        while (floatBuffer.remaining() != 0) {
            f fVar = new f(this, null);
            fVar.f85570a.setX(floatBuffer.get());
            fVar.f85570a.setY(floatBuffer.get());
            fVar.f85570a.setZ(floatBuffer.get());
            fVar.f85575f = false;
            f o10 = o(fVar);
            if (o10 != null) {
                o10.f85575f = true;
                fVar.f85575f = true;
            } else {
                this.f85552h.add(fVar);
            }
            list.add(fVar);
        }
        floatBuffer.rewind();
    }

    public final d r(d dVar) {
        for (d dVar2 : dVar.f85565a[0].f85573d) {
            if (v(dVar, dVar2)) {
                return dVar2;
            }
        }
        return null;
    }

    public final boolean s(int i10, List<C1592b> list) {
        Iterator<C1592b> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().f85558a == i10) {
                return true;
            }
        }
        return false;
    }

    public final void t() {
        this.f85551g = new ArrayList();
    }

    public boolean u(f fVar) {
        Iterator<c> it = fVar.f85572c.iterator();
        while (it.hasNext()) {
            if (it.next().f85563c == 1) {
                return true;
            }
        }
        return false;
    }

    public final boolean v(d dVar, d dVar2) {
        for (int i10 = 0; i10 < 3; i10++) {
            f fVar = dVar.f85565a[i10];
            f[] fVarArr = dVar2.f85565a;
            if (fVar != fVarArr[0] || fVar != fVarArr[1] || fVar != fVarArr[2]) {
                return false;
            }
        }
        return true;
    }

    public final VertexBuffer w(Mesh mesh) {
        VertexBuffer.Type type = VertexBuffer.Type.Index;
        VertexBuffer.Format format = mesh.getBuffer(type).getFormat();
        VertexBuffer.Format format2 = VertexBuffer.Format.UnsignedShort;
        boolean z10 = format == format2;
        VertexBuffer vertexBuffer = new VertexBuffer(type);
        int i10 = this.f85548d;
        if (i10 == 0) {
            i10 = 3;
        }
        if (z10) {
            vertexBuffer.setupData(VertexBuffer.Usage.Static, 3, format2, BufferUtils.createShortBuffer(i10));
        } else {
            vertexBuffer.setupData(VertexBuffer.Usage.Static, 3, VertexBuffer.Format.UnsignedInt, BufferUtils.createIntBuffer(i10));
        }
        vertexBuffer.getData().rewind();
        if (this.f85548d == 0) {
            if (z10) {
                for (int i11 = 0; i11 < 3; i11++) {
                    ((ShortBuffer) vertexBuffer.getData()).put((short) 0);
                }
            } else {
                for (int i12 = 0; i12 < 3; i12++) {
                    ((IntBuffer) vertexBuffer.getData()).put(0);
                }
            }
        }
        Buffer data = vertexBuffer.getData();
        data.rewind();
        for (d dVar : this.f85551g) {
            if (!dVar.f85567c) {
                if (z10) {
                    for (int i13 = 0; i13 < 3; i13++) {
                        ((ShortBuffer) data).put((short) dVar.f85568d[i13]);
                    }
                } else {
                    for (int i14 = 0; i14 < 3; i14++) {
                        ((IntBuffer) data).put(dVar.f85568d[i14]);
                    }
                }
            }
        }
        data.clear();
        vertexBuffer.updateData(data);
        return vertexBuffer;
    }

    public final void x(f fVar, c cVar) {
        c cVar2;
        Iterator<c> it = fVar.f85572c.iterator();
        while (true) {
            if (!it.hasNext()) {
                cVar2 = null;
                break;
            } else {
                cVar2 = it.next();
                if (cVar2.equals(cVar)) {
                    break;
                }
            }
        }
        int i10 = cVar2.f85563c;
        if (i10 == 1) {
            fVar.f85572c.remove(cVar2);
        } else {
            cVar2.f85563c = i10 - 1;
        }
    }

    public final void y(d dVar, f fVar) {
        for (int i10 = 0; i10 < 3; i10++) {
            f fVar2 = dVar.f85565a[i10];
            if (fVar2 != fVar) {
                fVar2.f85573d.remove(dVar);
            }
        }
        for (int i11 = 0; i11 < 3; i11++) {
            for (int i12 = 0; i12 < 3; i12++) {
                if (i11 != i12) {
                    f[] fVarArr = dVar.f85565a;
                    x(fVarArr[i11], new c(fVarArr[i12]));
                }
            }
        }
    }

    public final void z(d dVar, int i10, int i11, f fVar) {
        fVar.f85573d.add(dVar);
        for (int i12 = 0; i12 < 3; i12++) {
            if (dVar.f85568d[i12] == i10) {
                for (int i13 = 0; i13 < 3; i13++) {
                    if (i12 != i13) {
                        f[] fVarArr = dVar.f85565a;
                        x(fVarArr[i13], new c(fVarArr[i12]));
                        c(dVar.f85565a[i13], new c(fVar));
                        c(fVar, new c(dVar.f85565a[i13]));
                    }
                }
                dVar.f85565a[i12] = fVar;
                dVar.f85568d[i12] = i11;
                return;
            }
        }
    }

    public class d {

        public f[] f85565a;

        public Vector3f f85566b;

        public boolean f85567c;

        public int[] f85568d;

        public d() {
            this.f85565a = new f[3];
            this.f85568d = new int[3];
        }

        public void a() {
            C13086b.this.f85545a.set(this.f85565a[1].f85570a).subtractLocal(this.f85565a[0].f85570a);
            C13086b.this.f85546b.set(this.f85565a[2].f85570a).subtractLocal(this.f85565a[1].f85570a);
            Vector3f cross = C13086b.this.f85545a.cross(C13086b.this.f85546b);
            this.f85566b = cross;
            cross.normalizeLocal();
        }

        public int b(f fVar) {
            for (int i10 = 0; i10 < 3; i10++) {
                if (this.f85565a[i10] == fVar) {
                    return this.f85568d[i10];
                }
            }
            throw new IllegalArgumentException("Vertex " + ((Object) fVar) + "is not part of triangle" + ((Object) this));
        }

        public boolean c(f fVar) {
            f[] fVarArr = this.f85565a;
            return fVar == fVarArr[0] || fVar == fVarArr[1] || fVar == fVarArr[2];
        }

        public boolean d() {
            f fVar;
            f[] fVarArr = this.f85565a;
            f fVar2 = fVarArr[0];
            f fVar3 = fVarArr[1];
            return fVar2 == fVar3 || fVar2 == (fVar = fVarArr[2]) || fVar3 == fVar;
        }

        public String toString() {
            String str = "Triangle{\n";
            for (int i10 = 0; i10 < 3; i10++) {
                str = str + this.f85568d[i10] + " : " + this.f85565a[i10].toString() + "\n";
            }
            return str + JavaElement.JEM_ANNOTATION;
        }

        public d(C13086b c13086b, a aVar) {
            this();
        }
    }

    public class f {

        public Vector3f f85570a;

        public float f85571b;

        public List<c> f85572c;

        public Set<d> f85573d;

        public f f85574e;

        public boolean f85575f;

        public int f85576g;

        public f() {
            this.f85570a = new Vector3f();
            this.f85571b = Float.POSITIVE_INFINITY;
            this.f85572c = new ArrayList();
            this.f85573d = new HashSet();
        }

        public String toString() {
            return this.f85576g + " : " + this.f85570a.toString();
        }

        public f(C13086b c13086b, a aVar) {
            this();
        }
    }

    public C13086b(Geometry geometry) {
        this.f85554j = geometry.getMesh();
        f();
    }
}
