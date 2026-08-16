package Fb;

import Ib.f;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Deprecated
public class b {

    public static final Object f6732a = new Object();

    public static final List<c> f6733b = new SteppedArrayList();

    public static final Map<String, c> f6734c = new HashMap();

    public static final List<c> f6735d = new SteppedArrayList();

    public static final List<C0127b> f6736e = new SteppedArrayList();

    public class a implements x8.b {
        @Override
        public void a() {
            b.a();
        }

        @Override
        public void b() {
            b.a();
        }
    }

    public static class C0127b {

        public WeakReference<Vertex> f6737a;

        public final String f6738b;

        public C0127b(Vertex vertex, String tag) {
            this.f6737a = null;
            this.f6737a = new WeakReference<>(vertex);
            this.f6738b = tag;
        }

        public Vertex a() {
            return this.f6737a.get();
        }

        public String b() {
            return this.f6738b;
        }

        public boolean c() {
            return this.f6737a.get() != null;
        }
    }

    public static class c {

        public WeakReference<Vertex> f6739a;

        public Map<String, C0127b> f6740b = new HashMap();

        public List<C0127b> f6741c = new SteppedArrayList();

        public final String f6742d;

        public c(Vertex vertex) {
            this.f6739a = null;
            this.f6739a = new WeakReference<>(vertex);
            this.f6742d = vertex.f79966b;
        }

        public Vertex c() {
            return this.f6739a.get();
        }

        public String d() {
            return this.f6742d;
        }

        public boolean e() {
            return this.f6739a.get() != null;
        }
    }

    static {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new a());
    }

    public static void a() {
        synchronized (f6732a) {
            f6733b.clear();
            f6734c.clear();
            f6735d.clear();
        }
    }

    public static void b() {
        List<C0127b> list;
        synchronized (f6732a) {
            int i10 = 0;
            int i11 = 0;
            while (true) {
                try {
                    List<c> list2 = f6733b;
                    if (i11 >= list2.size()) {
                        break;
                    }
                    c cVar = list2.get(i11);
                    if (cVar.e()) {
                        for (int i12 = 0; i12 < cVar.f6741c.size(); i12++) {
                            C0127b c0127b = (C0127b) cVar.f6741c.get(i12);
                            if (!c0127b.c()) {
                                f6736e.add(c0127b);
                            }
                        }
                        if (!f6736e.isEmpty()) {
                            int i13 = 0;
                            while (true) {
                                list = f6736e;
                                if (i13 >= list.size()) {
                                    break;
                                }
                                C0127b c0127b2 = list.get(i13);
                                cVar.f6740b.remove(c0127b2.b());
                                cVar.f6741c.remove(c0127b2);
                                i13++;
                            }
                            list.clear();
                        }
                    } else {
                        f6735d.add(cVar);
                    }
                    i11++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            while (true) {
                List<c> list3 = f6735d;
                if (i10 < list3.size()) {
                    c cVar2 = list3.get(i10);
                    f6734c.remove(cVar2.d());
                    f6733b.remove(cVar2);
                    i10++;
                } else {
                    list3.clear();
                }
            }
        }
    }

    public static Vertex c(Vertex vertex, float quality, float agressiveness) {
        Vertex vertex2;
        synchronized (f6732a) {
            try {
                Map<String, c> map = f6734c;
                c cVar = map.get(vertex.f79966b);
                if (cVar == null) {
                    cVar = new c(vertex);
                    map.put(vertex.f79966b, cVar);
                    f6733b.add(cVar);
                }
                String str = quality + "/" + agressiveness;
                C0127b c0127b = (C0127b) cVar.f6740b.get(str);
                try {
                    if (c0127b != null && c0127b.c()) {
                        vertex2 = c0127b.a();
                    }
                    Vertex f10 = new f(vertex).f(quality, agressiveness);
                    f10.f79966b = vertex.f79966b + " lod:" + str;
                    C0127b c0127b2 = new C0127b(f10, str);
                    cVar.f6740b.put(str, c0127b2);
                    cVar.f6741c.add(c0127b2);
                    vertex2 = f10;
                } catch (OutOfMemoryError e10) {
                    e10.printStackTrace();
                    N7.c.v0("OutOfMemoryError while making LOD of " + vertex.f79966b + "!");
                    System.gc();
                    return null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return vertex2;
    }
}
