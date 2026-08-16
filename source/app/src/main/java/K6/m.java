package K6;

import JAVARuntime.Component;
import JAVARuntime.JRDoc_EN;
import JAVARuntime.JRDoc_PT;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import d8.r;
import e8.C13044a;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class m {

    public final Map<String, Class<?>> f10917a = new ConcurrentHashMap();

    public final Map<Class<?>, e8.d> f10918b = new ConcurrentHashMap();

    public final Map<Class<?>, List<f>> f10919c = new ConcurrentHashMap();

    public final Map<Class<?>, List<f>> f10920d = new ConcurrentHashMap();

    public static String g(Field field) {
        JRDoc_EN jRDoc_EN = (JRDoc_EN) field.getAnnotation(JRDoc_EN.class);
        JRDoc_PT jRDoc_PT = (JRDoc_PT) field.getAnnotation(JRDoc_PT.class);
        return (jRDoc_PT == null || !Lang.o().equals("pt-br")) ? jRDoc_EN != null ? jRDoc_EN.value() : "" : jRDoc_PT.value();
    }

    public static String h(Method method) {
        JRDoc_EN jRDoc_EN = (JRDoc_EN) method.getAnnotation(JRDoc_EN.class);
        JRDoc_PT jRDoc_PT = (JRDoc_PT) method.getAnnotation(JRDoc_PT.class);
        return (jRDoc_PT == null || !Lang.o().equals("pt-br")) ? jRDoc_EN != null ? jRDoc_EN.value() : "" : jRDoc_PT.value();
    }

    public final void a(List<f> candidates) {
        for (int i10 = 0; i10 < d8.j.k0(); i10++) {
            e8.c j02 = d8.j.j0(i10);
            f fVar = new f(j02.d(), j02.d());
            fVar.f10887b = j02.d();
            fVar.f10891f = "type";
            fVar.f10889d = j02.d();
            fVar.f10890e = "type";
            fVar.f10899n = R.drawable.letter_c;
            fVar.f10898m = true;
            candidates.add(fVar);
        }
        for (int i11 = 0; i11 < d8.j.K0(); i11++) {
            r J02 = d8.j.J0(i11);
            f fVar2 = new f(J02.d(), J02.d());
            fVar2.f10887b = J02.d();
            fVar2.f10891f = "type";
            fVar2.f10889d = J02.d();
            fVar2.f10890e = "type";
            fVar2.f10899n = R.drawable.letter_c;
            fVar2.f10898m = true;
            candidates.add(fVar2);
        }
    }

    public List<f> b(List<r> loadedClassList, String className) {
        List<f> c10 = c(loadedClassList, className);
        a(c10);
        return e.d(c10);
    }

    public final List<f> c(List<r> loadedClassList, String className) {
        Class<Component> cls;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (loadedClassList.isEmpty()) {
            if (className != null) {
                cls = (Class) this.f10917a.get(className);
                if (cls == null) {
                    cls = d8.k.u(className);
                }
            } else {
                cls = null;
            }
            if (cls == null) {
                cls = Component.class;
            }
            e(cls, steppedArrayList);
        } else {
            Iterator<r> it = loadedClassList.iterator();
            while (it.hasNext()) {
                Class<?> cls2 = it.next().f84454c;
                this.f10917a.put(cls2.getSimpleName(), cls2);
                this.f10917a.put(cls2.getName(), cls2);
                e(cls2.getSuperclass(), steppedArrayList);
            }
        }
        return steppedArrayList;
    }

    public List<f> d(Class<?> cls, boolean isStatic) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (isStatic) {
            f(cls, steppedArrayList);
        } else {
            e(cls, steppedArrayList);
        }
        return steppedArrayList;
    }

    public final void e(Class<?> cls, List<f> out) {
        char c10;
        Class<H6.g> cls2;
        Method[] methodArr;
        int i10;
        Class<H6.g> cls3;
        Field[] fieldArr;
        char c11;
        Method method;
        if (cls == null) {
            return;
        }
        List<f> list = this.f10919c.get(cls);
        if (list != null) {
            out.addAll(list);
            return;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        Class<?> cls4 = cls;
        while (cls4 != null && cls4 != Object.class) {
            if (i(cls4)) {
                cls4 = cls4.getSuperclass();
            } else {
                e8.d dVar = this.f10918b.get(cls4);
                if (dVar == null) {
                    dVar = new e8.d();
                    dVar.c(cls4);
                    this.f10918b.put(cls4, dVar);
                }
                int i11 = 0;
                while (true) {
                    c10 = '\u0175';
                    if (i11 >= dVar.b()) {
                        break;
                    }
                    C13044a a10 = dVar.a(i11);
                    if (!a10.f85395e) {
                        f fVar = new f(a10.c() + " : " + a10.d().getSimpleName(), a10.d().getName(), a10.c());
                        fVar.f10891f = "field";
                        fVar.f10889d = a10.d().getName();
                        fVar.f10890e = "instance";
                        fVar.f10895j = true;
                        fVar.f10899n = R.drawable.letter_v;
                        e8.b bVar = a10.f85392b;
                        fVar.f10900o = (bVar == null || (method = bVar.f85398c) == null) ? null : h(method);
                        steppedArrayList.add(fVar);
                    }
                    i11++;
                }
                Field[] declaredFields = cls4.getDeclaredFields();
                int length = declaredFields.length;
                int i12 = 0;
                while (true) {
                    cls2 = H6.g.class;
                    if (i12 >= length) {
                        break;
                    }
                    Field field = declaredFields[i12];
                    if (field.isSynthetic() || Modifier.isStatic(field.getModifiers()) || field.getAnnotation(cls2) != null) {
                        fieldArr = declaredFields;
                        c11 = c10;
                    } else {
                        String g10 = g(field);
                        fieldArr = declaredFields;
                        f fVar2 = new f(field.getName() + " : " + field.getType().getSimpleName(), field.getType().getName(), field.getName());
                        fVar2.f10891f = "field";
                        fVar2.f10889d = field.getType().getName();
                        fVar2.f10890e = "instance";
                        fVar2.f10895j = true;
                        c11 = '\u0175';
                        fVar2.f10899n = R.drawable.letter_v;
                        fVar2.f10900o = g10;
                        steppedArrayList.add(fVar2);
                    }
                    i12++;
                    c10 = c11;
                    declaredFields = fieldArr;
                }
                Method[] declaredMethods = cls4.getDeclaredMethods();
                int length2 = declaredMethods.length;
                int i13 = 0;
                while (i13 < length2) {
                    Method method2 = declaredMethods[i13];
                    if (method2.isSynthetic() || method2.isBridge() || Modifier.isStatic(method2.getModifiers()) || method2.getAnnotation(cls2) != null) {
                        methodArr = declaredMethods;
                        i10 = length2;
                        cls3 = cls2;
                    } else {
                        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
                        Class<?>[] parameterTypes = method2.getParameterTypes();
                        methodArr = declaredMethods;
                        String str = "";
                        boolean z10 = false;
                        int i14 = 0;
                        while (i14 < parameterTypes.length) {
                            Class<?> cls5 = parameterTypes[i14];
                            if (i14 > 0) {
                                str = str + ", ";
                            }
                            str = str + cls5.getSimpleName();
                            steppedArrayList2.add(cls5.getName());
                            i14++;
                            z10 = true;
                        }
                        String simpleName = method2.getReturnType().getSimpleName();
                        if (method2.getReturnType() == Void.TYPE) {
                            simpleName = "void";
                        }
                        String h10 = h(method2);
                        StringBuilder sb2 = new StringBuilder();
                        i10 = length2;
                        sb2.append(method2.getName());
                        sb2.append("(");
                        sb2.append(str);
                        cls3 = cls2;
                        sb2.append(") -> ");
                        sb2.append(simpleName);
                        f fVar3 = new f(sb2.toString(), method2.getName());
                        fVar3.f10887b = method2.getReturnType().getName();
                        fVar3.f10891f = "method";
                        fVar3.f10889d = "(" + str + ") -> " + simpleName;
                        fVar3.f10890e = "instance";
                        fVar3.f10895j = true;
                        fVar3.f10896k = true;
                        fVar3.f10897l = z10;
                        fVar3.f10892g.addAll(steppedArrayList2);
                        fVar3.f10899n = R.drawable.letter_m;
                        fVar3.f10900o = h10;
                        steppedArrayList.add(fVar3);
                    }
                    i13++;
                    declaredMethods = methodArr;
                    length2 = i10;
                    cls2 = cls3;
                }
                cls4 = cls4.getSuperclass();
            }
        }
        List<f> d10 = e.d(steppedArrayList);
        this.f10919c.put(cls, d10);
        out.addAll(d10);
    }

    public final void f(Class<?> cls, List<f> out) {
        char c10;
        Class<H6.g> cls2;
        Method[] methodArr;
        int i10;
        Class<H6.g> cls3;
        Field[] fieldArr;
        char c11;
        Method method;
        if (cls == null) {
            return;
        }
        List<f> list = this.f10920d.get(cls);
        if (list != null) {
            out.addAll(list);
            return;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        Class<?> cls4 = cls;
        while (cls4 != null && cls4 != Object.class) {
            if (i(cls4)) {
                cls4 = cls4.getSuperclass();
            } else {
                e8.d dVar = this.f10918b.get(cls4);
                if (dVar == null) {
                    dVar = new e8.d();
                    dVar.c(cls4);
                    this.f10918b.put(cls4, dVar);
                }
                int i11 = 0;
                while (true) {
                    c10 = '\u0175';
                    if (i11 >= dVar.b()) {
                        break;
                    }
                    C13044a a10 = dVar.a(i11);
                    if (a10.f85395e) {
                        f fVar = new f(a10.c() + " : " + a10.d().getSimpleName(), a10.d().getName(), a10.c());
                        fVar.f10891f = "field";
                        fVar.f10889d = a10.d().getName();
                        fVar.f10890e = "static";
                        fVar.f10895j = true;
                        fVar.f10899n = R.drawable.letter_v;
                        e8.b bVar = a10.f85392b;
                        fVar.f10900o = (bVar == null || (method = bVar.f85398c) == null) ? null : h(method);
                        steppedArrayList.add(fVar);
                    }
                    i11++;
                }
                Field[] declaredFields = cls4.getDeclaredFields();
                int length = declaredFields.length;
                int i12 = 0;
                while (true) {
                    cls2 = H6.g.class;
                    if (i12 >= length) {
                        break;
                    }
                    Field field = declaredFields[i12];
                    if (field.isSynthetic()) {
                        fieldArr = declaredFields;
                        c11 = c10;
                    } else {
                        if (field.isEnumConstant() && field.getAnnotation(cls2) == null) {
                            String g10 = g(field);
                            f fVar2 = new f(field.getName(), cls4.getName(), field.getName());
                            fVar2.f10891f = "enum";
                            fVar2.f10889d = cls4.getName();
                            fVar2.f10890e = "static";
                            fVar2.f10895j = true;
                            fVar2.f10899n = R.drawable.letter_v;
                            fVar2.f10900o = g10;
                            steppedArrayList.add(fVar2);
                        } else if (Modifier.isStatic(field.getModifiers()) && field.getAnnotation(cls2) == null) {
                            String g11 = g(field);
                            fieldArr = declaredFields;
                            f fVar3 = new f(field.getName() + " : " + field.getType().getSimpleName(), field.getType().getName(), field.getName());
                            fVar3.f10891f = "field";
                            fVar3.f10889d = field.getType().getName();
                            fVar3.f10890e = "static";
                            fVar3.f10895j = true;
                            c11 = '\u0175';
                            fVar3.f10899n = R.drawable.letter_v;
                            fVar3.f10900o = g11;
                            steppedArrayList.add(fVar3);
                        }
                        fieldArr = declaredFields;
                        c11 = '\u0175';
                    }
                    i12++;
                    c10 = c11;
                    declaredFields = fieldArr;
                }
                Method[] declaredMethods = cls4.getDeclaredMethods();
                int length2 = declaredMethods.length;
                int i13 = 0;
                while (i13 < length2) {
                    Method method2 = declaredMethods[i13];
                    if (method2.isSynthetic() || method2.isBridge() || !Modifier.isStatic(method2.getModifiers()) || method2.getAnnotation(cls2) != null) {
                        methodArr = declaredMethods;
                        i10 = length2;
                        cls3 = cls2;
                    } else {
                        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
                        Class<?>[] parameterTypes = method2.getParameterTypes();
                        methodArr = declaredMethods;
                        String str = "";
                        boolean z10 = false;
                        int i14 = 0;
                        while (i14 < parameterTypes.length) {
                            Class<?> cls5 = parameterTypes[i14];
                            if (i14 > 0) {
                                str = str + ", ";
                            }
                            str = str + cls5.getSimpleName();
                            steppedArrayList2.add(cls5.getName());
                            i14++;
                            z10 = true;
                        }
                        String simpleName = method2.getReturnType().getSimpleName();
                        if (method2.getReturnType() == Void.TYPE) {
                            simpleName = "void";
                        }
                        String h10 = h(method2);
                        StringBuilder sb2 = new StringBuilder();
                        i10 = length2;
                        sb2.append(method2.getName());
                        sb2.append("(");
                        sb2.append(str);
                        cls3 = cls2;
                        sb2.append(") -> ");
                        sb2.append(simpleName);
                        f fVar4 = new f(sb2.toString(), method2.getName());
                        fVar4.f10887b = method2.getReturnType().getName();
                        fVar4.f10891f = "method";
                        fVar4.f10889d = "(" + str + ") -> " + simpleName;
                        fVar4.f10890e = "static";
                        fVar4.f10895j = true;
                        fVar4.f10896k = true;
                        fVar4.f10897l = z10;
                        fVar4.f10892g.addAll(steppedArrayList2);
                        fVar4.f10899n = R.drawable.letter_m;
                        fVar4.f10900o = h10;
                        steppedArrayList.add(fVar4);
                    }
                    i13++;
                    declaredMethods = methodArr;
                    length2 = i10;
                    cls2 = cls3;
                }
                cls4 = cls4.getSuperclass();
            }
        }
        List<f> d10 = e.d(steppedArrayList);
        this.f10920d.put(cls, d10);
        out.addAll(d10);
    }

    public final boolean i(Class<?> cls) {
        return (cls == null || cls.getAnnotation(H6.g.class) == null) ? false : true;
    }
}
