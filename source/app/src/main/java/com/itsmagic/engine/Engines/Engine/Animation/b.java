package com.itsmagic.engine.Engines.Engine.Animation;

import Ic.C2633l;
import com.itsmagic.engine.Engines.Engine.Modules.UpdateModule;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.lang.ref.WeakReference;
import java.util.List;

public class b {

    public static final List<c> f72599a;

    public static final List<c> f72600b;

    public static final UpdateModule f72601c;

    public class a implements x8.b {
        @Override
        public void a() {
            b.b();
        }

        @Override
        public void b() {
            b.b();
        }
    }

    public class C1175b extends UpdateModule {
        @Override
        public void g() {
            b.e();
        }
    }

    public static class c {

        public WeakReference<AnimationData> f72602a;

        public final String f72603b;

        public c(AnimationData vertex, String file) {
            this.f72602a = null;
            this.f72602a = new WeakReference<>(vertex);
            this.f72603b = file;
        }

        public boolean a(String file) {
            return this.f72603b.equals(file);
        }

        public AnimationData b() {
            return this.f72602a.get();
        }

        public String c() {
            return this.f72603b;
        }

        public boolean d() {
            return this.f72602a.get() != null;
        }

        public boolean e() {
            return this.f72602a.get() != null;
        }
    }

    static {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new a());
        f72599a = new SteppedArrayList();
        f72600b = new SteppedArrayList();
        f72601c = new C1175b();
    }

    public static void b() {
        List<c> list = f72599a;
        synchronized (list) {
            list.clear();
            f72600b.clear();
        }
    }

    public static AnimationData c(String file) {
        AnimationData f10;
        synchronized (f72599a) {
            try {
                f72601c.a();
                int i10 = 0;
                while (true) {
                    List<c> list = f72599a;
                    if (i10 >= list.size()) {
                        if (!C2633l.b(file, ".anim") || (f10 = AnimationData.f(X7.a.r(file))) == null) {
                            return null;
                        }
                        list.add(new c(f10, file));
                        return f10;
                    }
                    c cVar = list.get(i10);
                    if (cVar.e() && cVar.a(file)) {
                        return cVar.b();
                    }
                    i10++;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void d(String file) {
        synchronized (f72599a) {
            try {
                f72601c.a();
                int i10 = 0;
                while (true) {
                    List<c> list = f72599a;
                    if (i10 >= list.size()) {
                        break;
                    }
                    c cVar = list.get(i10);
                    if (cVar.e() && cVar.a(file)) {
                        list.remove(cVar);
                        break;
                    }
                    i10++;
                }
                c(file);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void e() {
        List<c> list;
        synchronized (f72599a) {
            int i10 = 0;
            while (true) {
                try {
                    list = f72599a;
                    if (i10 >= list.size()) {
                        break;
                    }
                    c cVar = list.get(i10);
                    if (!cVar.d()) {
                        f72600b.add(cVar);
                    }
                    i10++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            List<c> list2 = f72600b;
            if (!list2.isEmpty()) {
                list.removeAll(list2);
                list2.clear();
            }
            if (list.isEmpty()) {
                f72601c.b();
            }
        }
    }
}
