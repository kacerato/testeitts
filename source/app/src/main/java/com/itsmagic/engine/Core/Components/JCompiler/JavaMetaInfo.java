package com.itsmagic.engine.Core.Components.JCompiler;

import JAVARuntime.Component;
import Tc.b;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import d8.d;
import d8.e;
import d8.j;
import d8.r;
import eb.g;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import o8.f;

public class JavaMetaInfo {

    public String f72511a;

    public String f72512b;

    public String f72515e;

    public boolean f72518h;

    public f f72521k;

    public boolean f72522l;

    public File f72523m;

    public boolean f72525o;

    @Expose
    public String originalFileName;

    @Expose
    public final List<String> referencedClasses = new SteppedArrayList();

    @Expose
    public boolean referencesUpdatedV2 = false;

    @Expose
    public String[] compiledCode = null;

    public List<d> f72513c = new LinkedList();

    public List<e> f72514d = new LinkedList();

    public boolean f72516f = false;

    public boolean f72517g = false;

    public boolean f72519i = false;

    public boolean f72520j = false;

    public final Object f72524n = new Object();

    public List<r> f72526p = new SteppedArrayList();

    public final List<a> f72527q = new SteppedArrayList();

    public final Map<Class, a> f72528r = new HashMap();

    public static class a {

        public Class f72529a;

        public List<g> f72533e;

        public Boolean f72534f;

        public List<Method> f72530b = null;

        public Field[] f72531c = null;

        public List<Field> f72532d = new SteppedArrayList();

        public final Map<String, List<Method>> f72535g = new Lc.a();

        public a(Class classAddress) {
            this.f72529a = classAddress;
        }

        public static boolean f(Class cls, String methodName) {
            while (cls != null && cls != Object.class && cls != Component.class) {
                try {
                } catch (Error e10) {
                    e = e10;
                    e.printStackTrace();
                    return false;
                } catch (NoSuchMethodException unused) {
                } catch (Exception e11) {
                    e = e11;
                    e.printStackTrace();
                    return false;
                }
                if (cls.getDeclaredMethod(methodName, null) != null) {
                    return true;
                }
                cls = cls.getSuperclass();
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Field[] a() {
            if (this.f72531c == null) {
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                try {
                    JavaMetaInfo.c(steppedArrayList, this.f72529a);
                    this.f72531c = new Field[steppedArrayList.size()];
                    int i10 = 0;
                    for (int i11 = 0; i11 < steppedArrayList.size(); i11++) {
                        this.f72531c[i11] = (Field) steppedArrayList.get(i11);
                    }
                    this.f72532d.clear();
                    while (true) {
                        Field[] fieldArr = this.f72531c;
                        if (i10 >= fieldArr.length) {
                            break;
                        }
                        Field field = fieldArr[i10];
                        if (Modifier.isStatic(field.getModifiers())) {
                            this.f72532d.add(field);
                        }
                        i10++;
                    }
                } catch (RuntimeException unused) {
                    this.f72531c = null;
                }
            }
            return this.f72531c;
        }

        public List<Method> b() {
            if (this.f72530b == null) {
                this.f72530b = new SteppedArrayList();
                h(this.f72529a);
            }
            return this.f72530b;
        }

        public List<g> c() {
            if (this.f72533e == null) {
                this.f72533e = new SteppedArrayList();
                for (Class cls = this.f72529a; cls != com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component.class && cls != ShaderBinder.class && cls != null && cls != Object.class; cls = cls.getSuperclass()) {
                    try {
                        for (Field field : cls.getDeclaredFields()) {
                            if (!Modifier.isStatic(field.getModifiers()) && !Modifier.isFinal(field.getModifiers()) && !Modifier.isPrivate(field.getModifiers())) {
                                g gVar = new g();
                                gVar.f(field.getName());
                                gVar.e(field);
                                this.f72533e.add(gVar);
                                field.setAccessible(true);
                            }
                        }
                    } catch (Error e10) {
                        e = e10;
                        e.printStackTrace();
                        J4.d.E1();
                        J4.d.c2(e);
                        return this.f72533e;
                    } catch (Exception e11) {
                        e = e11;
                        e.printStackTrace();
                        J4.d.E1();
                        J4.d.c2(e);
                        return this.f72533e;
                    }
                }
            }
            return this.f72533e;
        }

        public List<Method> d(String name) {
            if (this.f72530b == null) {
                this.f72530b = new SteppedArrayList();
                h(this.f72529a);
            }
            return this.f72535g.get(name);
        }

        public List<Field> e() {
            a();
            return this.f72532d;
        }

        public boolean g() {
            if (this.f72534f == null) {
                this.f72534f = Boolean.valueOf(f(this.f72529a, "parallelRepeat") || f(this.f72529a, "disabledParallelRepeat"));
            }
            return this.f72534f.booleanValue();
        }

        public final void h(Class cls) {
            Method[] declaredMethods = cls.getDeclaredMethods();
            if (declaredMethods != null) {
                this.f72530b.addAll(Arrays.asList(declaredMethods));
                for (Method method : declaredMethods) {
                    if (!Modifier.isPrivate(method.getModifiers())) {
                        String name = method.getName();
                        List<Method> list = this.f72535g.get(name);
                        if (list == null) {
                            list = new SteppedArrayList<>();
                            this.f72535g.put(name, list);
                        }
                        list.add(method);
                    }
                }
                Class superclass = cls.getSuperclass();
                if (superclass == null || superclass == Object.class || superclass == Component.class) {
                    return;
                }
                h(superclass);
            }
        }
    }

    public JavaMetaInfo() {
    }

    public static void c(List<Field> out, Class cls) {
        try {
            for (Field field : cls.getDeclaredFields()) {
                out.add(field);
            }
            try {
                if (cls.getSuperclass() == null || cls.getSuperclass() == Object.class || cls.getSuperclass() == Component.class) {
                    return;
                }
                for (int i10 = 0; i10 < j.k0(); i10++) {
                    if (cls == j.j0(i10).a()) {
                        return;
                    }
                }
                c(out, cls.getSuperclass());
            } catch (RuntimeException e10) {
                throw new RuntimeException(e10);
            }
        } catch (NoClassDefFoundError e11) {
            throw new RuntimeException(e11);
        }
    }

    public void a(Class classAddress) {
        if (classAddress == null) {
            throw new RuntimeException();
        }
        synchronized (this.f72524n) {
            a aVar = new a(classAddress);
            this.f72527q.add(aVar);
            this.f72528r.put(classAddress, aVar);
        }
    }

    public void b() {
        synchronized (this.f72524n) {
            this.f72526p.clear();
            this.f72527q.clear();
            this.f72528r.clear();
        }
    }

    public Field[] d(Class classAddress) {
        synchronized (this.f72524n) {
            try {
                a aVar = this.f72528r.get(classAddress);
                if (aVar == null) {
                    return null;
                }
                return aVar.a();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public List<Method> e(Class classAddress) {
        synchronized (this.f72524n) {
            try {
                a aVar = this.f72528r.get(classAddress);
                if (aVar == null) {
                    return null;
                }
                return aVar.b();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public File f() {
        return new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + b.O(this.f72511a) + ".meta/containerPart.javac");
    }

    public String g() {
        return this.originalFileName;
    }

    public List<g> h(Class classAddress) {
        synchronized (this.f72524n) {
            try {
                a aVar = this.f72528r.get(classAddress);
                if (aVar == null) {
                    return null;
                }
                return aVar.c();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public List<Method> i(Class classAddress, String name) {
        synchronized (this.f72524n) {
            try {
                a aVar = this.f72528r.get(classAddress);
                if (aVar == null) {
                    return null;
                }
                return aVar.d(name);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public List<Field> j(Class classAddress) {
        synchronized (this.f72524n) {
            try {
                a aVar = this.f72528r.get(classAddress);
                if (aVar == null) {
                    return null;
                }
                return aVar.e();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean k() {
        List<e> list = this.f72514d;
        if (list == null) {
            return false;
        }
        Iterator<e> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().d()) {
                return true;
            }
        }
        return false;
    }

    public boolean l(Class classAddress) {
        synchronized (this.f72524n) {
            try {
                a aVar = this.f72528r.get(classAddress);
                if (aVar == null) {
                    return false;
                }
                return aVar.g();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void m(String filePath, String meta, String className) {
        this.f72511a = filePath;
        this.f72512b = meta;
        this.f72515e = className;
        this.originalFileName = b.v(filePath);
    }

    public JavaMetaInfo(String filePath, String meta, String className) {
        this.f72511a = filePath;
        this.f72512b = meta;
        this.f72515e = className;
        this.originalFileName = b.v(filePath);
    }

    public JavaMetaInfo(String filePath, String meta, String className, boolean fromJar) {
        this.f72511a = filePath;
        this.f72512b = meta;
        this.f72515e = className;
        this.f72522l = fromJar;
        this.originalFileName = b.v(filePath);
    }
}
