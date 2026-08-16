package tb;

import com.itsmagic.engine.Engines.Engine.ImGUI.ImGui;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.io.Serializable;
import java.util.List;

public class b implements Serializable {

    public static final String f117261b = "@@ASSET@@/Engine/Fonts/ComicRelief_Regular.ttf";

    public static final Object f117262c = new Object();

    public static final List<c> f117263d = new SteppedArrayList();

    public static final List<C15391a> f117264e = new SteppedArrayList();

    public static final List<C15391a> f117265f = new SteppedArrayList();

    public static final List<c> f117266g = new SteppedArrayList();

    public static void d() {
        synchronized (f117262c) {
            f117263d.clear();
            f117264e.clear();
            f117266g.clear();
        }
    }

    public C15391a a(int resolution) {
        return c(f117261b, resolution);
    }

    public C15391a b(File file, int resolution) {
        if (file == null) {
            throw new NullPointerException("File cant be null");
        }
        if (!file.exists()) {
            throw new RuntimeException("File not found!");
        }
        synchronized (f117262c) {
            int i10 = 0;
            int i11 = 0;
            while (true) {
                try {
                    List<c> list = f117263d;
                    if (i11 < list.size()) {
                        c cVar = list.get(i11);
                        if (cVar != null && cVar.c()) {
                            C15391a a10 = cVar.a();
                            if (a10.a(file.getAbsolutePath(), resolution)) {
                                return a10;
                            }
                        }
                        i11++;
                    } else {
                        while (true) {
                            List<C15391a> list2 = f117264e;
                            if (i10 >= list2.size()) {
                                C15391a c15391a = new C15391a(file, resolution);
                                c15391a.h(true);
                                list2.add(c15391a);
                                return c15391a;
                            }
                            C15391a c15391a2 = list2.get(i10);
                            if (c15391a2.a(file.getAbsolutePath(), resolution)) {
                                return c15391a2;
                            }
                            i10++;
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public C15391a c(String file, int resolution) {
        if (file == null || file.isEmpty()) {
            return null;
        }
        synchronized (f117262c) {
            int i10 = 0;
            int i11 = 0;
            while (true) {
                try {
                    List<c> list = f117263d;
                    if (i11 < list.size()) {
                        c cVar = list.get(i11);
                        if (cVar != null && cVar.c()) {
                            C15391a a10 = cVar.a();
                            if (a10.a(file, resolution)) {
                                return a10;
                            }
                        }
                        i11++;
                    } else {
                        while (true) {
                            List<C15391a> list2 = f117264e;
                            if (i10 >= list2.size()) {
                                C15391a c15391a = new C15391a(file, resolution);
                                c15391a.h(true);
                                list2.add(c15391a);
                                return c15391a;
                            }
                            C15391a c15391a2 = list2.get(i10);
                            if (c15391a2.a(file, resolution)) {
                                return c15391a2;
                            }
                            i10++;
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void e() {
        List<C15391a> list;
        List<c> list2;
        synchronized (f117262c) {
            int i10 = 0;
            int i11 = 0;
            while (true) {
                try {
                    list = f117264e;
                    if (i11 >= list.size()) {
                        break;
                    }
                    C15391a c15391a = list.get(i11);
                    c15391a.j();
                    if (c15391a.d() != 0) {
                        f117263d.add(new c(c15391a));
                        f117265f.add(c15391a);
                    }
                    i11++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            List<C15391a> list3 = f117265f;
            list.removeAll(list3);
            list3.clear();
            while (true) {
                list2 = f117263d;
                if (i10 >= list2.size()) {
                    break;
                }
                c cVar = list2.get(i10);
                if (cVar != null) {
                    if (cVar.b()) {
                        cVar.a().j();
                    } else {
                        f117266g.add(cVar);
                        long j10 = cVar.f117268b;
                        if (j10 != 0) {
                            ImGui.e(j10);
                            cVar.f117268b = 0L;
                        }
                    }
                }
                i10++;
            }
            List<c> list4 = f117266g;
            if (!list4.isEmpty()) {
                list2.removeAll(list4);
                list4.clear();
            }
        }
    }
}
